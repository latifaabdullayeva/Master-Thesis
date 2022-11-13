package com.example.mymascotapp;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.Vibrator;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.TextView;

import com.example.mymascotapp.network.api.devices.ApiDevicesResponse;
import com.example.mymascotapp.network.api.devices.Device;
import com.example.mymascotapp.network.api.devices.DeviceRepository;
import com.example.mymascotapp.network.api.distance.DistanceRepository;
import com.example.mymascotapp.network.api.personality.ApiPersonalityResponse;
import com.example.mymascotapp.network.api.personality.Personality;
import com.example.mymascotapp.network.api.personality.PersonalityRepository;

import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconConsumer;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.Region;

import java.util.Collection;
import java.util.Objects;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import static java.lang.Math.round;

public class ShowAllDistances extends AppCompatActivity implements BeaconConsumer {
    protected static final String TAG = "ShowAllDistances";

    DistanceRepository distanceRepository;
    DeviceRepository deviceRepository;
    PersonalityRepository personalityRepository;

    String beaconTagValue, deviceTypeValue, mascotNameValue, devicePersValue;

    private BeaconManager beaconManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d("FLOW", "ShowAllDistances");
        setContentView(R.layout.activity_show_all_distances);

        Objects.requireNonNull(getSupportActionBar()).setTitle("All Distances");

        String serverAddress = getIntent().getExtras()
                .getString("serverAddress");

        distanceRepository = new DistanceRepository(serverAddress);
        deviceRepository = new DeviceRepository(serverAddress);
        personalityRepository = new PersonalityRepository(serverAddress);

        beaconManager = BeaconManager.getInstanceForApplication(this);

        TextView beaconTag = findViewById(R.id.passBeaconUUID);
        beaconTagValue = getIntent().getStringExtra("BEACONUUID");
        beaconTag.setText(beaconTagValue);

        TextView deviceType = findViewById(R.id.passDeviceType);
        deviceTypeValue = getIntent().getStringExtra("DEVICETYPE");
        deviceType.setText(deviceTypeValue);

        TextView mascotName = findViewById(R.id.passMascotName);
        mascotNameValue = getIntent().getStringExtra("DEVICENAME");
        mascotName.setText(mascotNameValue);

        TextView devicePers = findViewById(R.id.passPersonality);
        devicePersValue = getIntent().getStringExtra("PERSONALITY");
        devicePers.setText(devicePersValue);
    }

    public void mascotVibration(ApiPersonalityResponse personalities, Beacon beacon, Device device, Vibrator vibrator, Integer myMascotId) {
        if (personalities != null) {
            for (Personality personality : personalities.getContent()) {
                Log.d(TAG, "personality = " + personality);
                Log.d(TAG, "personality.getPersonality_name() = " + personality.getPersonality_name());
                Log.d(TAG, "device.getDevicePersonality().getPersonality_name() = " + device.getDevicePersonality().getPersonality_name());

                // vibrate according approaching device's personality
                if (personality.getPersonality_name().equals(device.getDevicePersonality().getPersonality_name())) {
                    Log.d("test", "If personality DISTANCE == : " + round(beacon.getDistance() * 100));
                    vibrator.vibrate(100 * personality.getVibration_level());
                    Log.d(TAG, "personality.getVibration_level() = " + device.getDevicePersonality().getVibration_level());
                }
            }
        }
    }

    public void mascotMascotInteraction(Beacon beacon, Device device, Integer myMascotId) {

        // When the type of our device is Mascot, We get all other devices from DB that are Mascots,
        // then we check if the distance from my Mascot to any other Mascots is less or equal to 45 cm,
        // we vibrate my mascot according to the personality of other mascot

        // We check whether user's device and the approaching device both are Mascots and their distance is less or equal 45 cm
        final Vibrator vibrator = (Vibrator) getSystemService(VIBRATOR_SERVICE);
        if (round(beacon.getDistance() * 100) <= 45 && deviceTypeValue.equals("Mascot") && device.getDeviceType().equals("Mascot")) {
            Log.d("test", "If DISTANCE == : " + deviceTypeValue + "; " +
                    device.getDeviceType() + "; " + round(beacon.getDistance() * 100));
            // Add a vibration level according to the personality of a device to whom we measure the distance
            personalityRepository.getNetworkRequest(new Callback<ApiPersonalityResponse>() {
                @Override
                public void onResponse(@NonNull Call<ApiPersonalityResponse> call, @NonNull Response<ApiPersonalityResponse> response) {
                    if (!response.isSuccessful()) {
                        Log.d(TAG, "PersonalityRepository Code: " + response.code());
                        return;
                    }
                    ApiPersonalityResponse personalities = response.body();
                    mascotVibration(personalities, beacon, device, vibrator, myMascotId);
                }

                @Override
                public void onFailure(@NonNull Call<ApiPersonalityResponse> call, @NonNull Throwable t) {
                    Log.d(TAG, "error loading from API: " + t.getMessage());
                }
            });
        } else if (beacon.getDistance() > 45) {
            Log.d("test", "ELSE DISTANCE != : " + round(beacon.getDistance() * 100));
            // if the distance is more than 45 cm, cancel vibration
            vibrator.cancel();
        }
    }

    public void getDeviceRequest(Collection<Beacon> beacons) {
        deviceRepository.getNetworkRequest(new Callback<ApiDevicesResponse>() {
            @Override
            public void onResponse(@NonNull Call<ApiDevicesResponse> call, @NonNull Response<ApiDevicesResponse> response) {
                if (!response.isSuccessful()) {
                    Log.d(TAG, "Code: " + response.code());
                    return;
                }
                ApiDevicesResponse devices = response.body();

                // find my own phone (device id)
                Integer myDeviceID = null;
                if (devices != null) {
                    // we check if the beacon that the user has chosen exists in DB
                    boolean myBeaconIsInDB = false;
                    for (int i = 0; i < devices.getContent().size(); i++) {
                        if (devices.getContent().get(i).getBeaconUuid().contains(beaconTagValue)) {
                            myBeaconIsInDB = true;
                            myDeviceID = devices.getContent().get(i).getDeviceId();
                        }
                    }
                    // if the beacon exists in DB, continue, otherwise Log the message that "Your Beacon DOES NOT exists in DB"
                    if (myBeaconIsInDB && beacons.size() > 0) {
                        // if the numb of beacons in the room is not 0,
                        // for every beacon check ..
                        for (Beacon beacon : beacons) {
                            // .. if beacon that user choose is not the same as beacon in the room, then we sendRequest with (from, to, distance)
                            // if two endpoints are the same, then show the message that the distance between two identical endpoints are the same
                            if (!beaconTagValue.equals(beacon.getId1().toString())) {
                                for (Device device : devices.getContent()) {
                                    if (device.getBeaconUuid().equals(beacon.getId1().toString())) {
                                        distanceRepository.sendNetworkRequest(myDeviceID, device.getDeviceId(), round(beacon.getDistance() * 100));
                                        mascotMascotInteraction(beacon, device, myDeviceID);
                                    }
                                }
                            } else {
                                // if two endpoints are the same, then show the message that the distance between two identical endpoints are the same
                                Log.d(TAG, "= myDevice (" + beaconTagValue + "); device (" + beacon.getId1().toString() + ") = same");
                            }

                        }
                    } else {
                        Log.d(TAG, "Your Beacon DOES NOT exists in DB ");
                    }

                }
            }

            @Override
            public void onFailure(@NonNull Call<ApiDevicesResponse> call,
                                  @NonNull Throwable t) {
                Log.d(TAG, "error loading from API... " + t.getMessage());
            }
        });
    }

    @Override
    public void onBeaconServiceConnect() {
        beaconManager.addRangeNotifier((beacons, region) -> getDeviceRequest(beacons));
        try {
            beaconManager.startRangingBeaconsInRegion(new Region("myRangingUniqueId", null, null, null));
        } catch (
                RemoteException ignored) {
        }
    }


    // Disabled back button, so in this Activity user will not allowed to change anything
    @Override
    public void onBackPressed() {
        Log.d(TAG, "onBackPressed()");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        beaconManager.unbind(this);
        Log.d(TAG, "onDestroy() beaconManager = " + beaconManager + "; Consumer = " + this);
    }

    @Override
    protected void onPause() {
        super.onPause();
        beaconManager.unbind(this);
        Log.d(TAG, "onPause() beaconManager = " + beaconManager + "; Consumer = " + this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        beaconManager.bind(this);
        Log.d(TAG, "onResume() beaconManager = " + beaconManager + "; Consumer = " + this);
    }

}