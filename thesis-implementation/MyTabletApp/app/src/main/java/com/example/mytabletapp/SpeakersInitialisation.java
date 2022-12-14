package com.example.mytabletapp;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.example.mytabletapp.api.devices.ApiDevicesResponse;
import com.example.mytabletapp.api.devices.Device;
import com.example.mytabletapp.api.devices.DeviceRepository;
import com.example.mytabletapp.api.distance.DistanceRepository;
import com.example.mytabletapp.api.personality.PersonalityRepository;

import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconConsumer;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.Region;

import java.util.ArrayList;
import java.util.Objects;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class SpeakersInitialisation extends AppCompatActivity
        implements BeaconConsumer, RecyclerViewAdapter.ItemClickListener {

    protected static final String TAG = "SpeakersInitialisation";

    DistanceRepository distanceRepository;
    DeviceRepository deviceRepository;
    PersonalityRepository personalityRepository;

    private BeaconManager beaconManager;

    private ArrayList<String> beaconListForSpeakers, deviceListForSpeakers, tempBeaconListForSpeakers;
    private RecyclerViewAdapter adapterForSpeakers;

    String deviceTypeValue = "Speakers";
    String beaconValue;
    TextView textViewSelectedBeacon;
    Button saveButton;
    int counterForAlert = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_speakers_initialisation);

        ActionBar actionBar = Objects.requireNonNull(getSupportActionBar());
        actionBar.setDisplayShowHomeEnabled(true);
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setTitle("Speakers Initialisation");
        actionBar.setDisplayHomeAsUpEnabled(true);

        String serverAddress = getIntent().getExtras()
                .getString("serverAddress");

        distanceRepository = new DistanceRepository(serverAddress);
        deviceRepository = new DeviceRepository(serverAddress);
        personalityRepository = new PersonalityRepository(serverAddress);

        this.deviceListForSpeakers = new ArrayList<>();
        this.tempBeaconListForSpeakers = new ArrayList<>();
        textViewSelectedBeacon = findViewById(R.id.showSelectedBeaconForSpeakers);

        beaconManager = BeaconManager.getInstanceForApplication(this);

        // Choose the Beacon Device out of list
        this.beaconListForSpeakers = new ArrayList<>();
        RecyclerView beaconListView = findViewById(R.id.listViewBeaconForSpeakers);
        this.adapterForSpeakers = new RecyclerViewAdapter(this, this.beaconListForSpeakers);
        beaconListView.setAdapter(adapterForSpeakers);

        saveButton = findViewById(R.id.buttonBeaconSave);

        saveButtonListener();
    }

    @Override
    public void onItemClick(View view, int position) {
        Intent myIntent = new Intent(SpeakersInitialisation.this, TabletInitialisation.class);
        beaconValue = beaconListForSpeakers.get(position);
        Toast.makeText(SpeakersInitialisation.this, "Selected Beacon: " + beaconValue, Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        beaconManager.unbind(this);
    }

    @Override
    protected void onPause() {
        super.onPause();
        beaconManager.unbind(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        beaconManager.bind(this);
    }

    @Override
    public void onBeaconServiceConnect() {
        deviceRepository.getNetworkRequest(new Callback<ApiDevicesResponse>() {
            @Override
            public void onResponse(Call<ApiDevicesResponse> call, Response<ApiDevicesResponse> response) {
                if (!response.isSuccessful()) {
                    Log.d(TAG, "Code: " + response.code());
                    return;
                }

                ApiDevicesResponse devices = response.body();
                for (Device device : Objects.requireNonNull(devices).getContent()) {
                    deviceListForSpeakers.add(device.getBeaconUuid());
                }

                beaconManager.addRangeNotifier((beacons, region) -> {
                    beaconListForSpeakers.clear();

                    if (beacons.size() > 0) {
                        for (Beacon beacon : beacons) {
                            if (!tempBeaconListForSpeakers.contains(beacon.getId1().toString())) {
                                tempBeaconListForSpeakers.add(beacon.getId1().toString());
                                // if you want to get ID of beacon -> .getId1();
                            }
                        }

                        for (String device : deviceListForSpeakers) {
                            tempBeaconListForSpeakers.remove(device);
                        }

                        beaconListForSpeakers.addAll(tempBeaconListForSpeakers);

                        String noBeaconsInRange = "Unfortunately, there are no beacons in our range :(";
                        if (beaconListForSpeakers.isEmpty()) {
                            textViewSelectedBeacon.setText(noBeaconsInRange);
                            textViewSelectedBeacon.setTypeface(Typeface.DEFAULT_BOLD);
                            AlertDialog alertDialog = new AlertDialog.Builder(SpeakersInitialisation.this).create();
                            alertDialog.setTitle("No beacons in our range :(");
                            alertDialog.setMessage("Please make sure that you have beacons near you and check whether these beacons are active or not.\n" +
                                    "You can also check either the Internet, Bluetooth or Location connection");
                            alertDialog.setButton(AlertDialog.BUTTON_POSITIVE, "OK",
                                    new DialogInterface.OnClickListener() {
                                        public void onClick(DialogInterface dialog, int which) {
                                            dialog.dismiss();
                                        }
                                    });
                            if (counterForAlert == 0) {
                                alertDialog.show();
                                counterForAlert = 1;
                            } else {
                                alertDialog.hide();

                            }
                        }
                        runOnUiThread(() -> adapterForSpeakers.notifyDataSetChanged());

                        // set up the RecyclerView
                        RecyclerView recyclerView = findViewById(R.id.listViewBeaconForSpeakers);
                        recyclerView.setLayoutManager(new LinearLayoutManager(SpeakersInitialisation.this));
                        adapterForSpeakers = new RecyclerViewAdapter(SpeakersInitialisation.this, beaconListForSpeakers);
                        adapterForSpeakers.setClickListener(SpeakersInitialisation.this);
                        recyclerView.setAdapter(adapterForSpeakers);
                    }
                });

                try {
                    beaconManager.startRangingBeaconsInRegion(new Region("myRangingUniqueId", null, null, null));
                } catch (RemoteException ignored) {
                }

            }

            @Override
            public void onFailure(Call<ApiDevicesResponse> call, Throwable t) {
                Log.d(TAG, "error loading from API... " + t.getMessage());
            }
        });
    }

    private void saveButtonListener() {
        saveButton.setOnClickListener(v -> {
            String serverAddress = getIntent().getExtras()
                    .getString("serverAddress");

            Intent myIntent = new Intent(SpeakersInitialisation.this, TabletInitialisation.class);
            myIntent.putExtra("serverAddress", serverAddress);

            if (beaconValue != null) {

                deviceRepository.sendNetworkRequest(null, null, deviceTypeValue, beaconValue, null);

                // Before starting  the ShowAllDIst Activity, check if the deviceRepository.sendNetworkRequest was successful or not
                // The way how I check, I do getRequest and check if the beacon that I have saved is in the table.
                // If not, then I will consider the request as failed
                deviceRepository.getNetworkRequest(new Callback<ApiDevicesResponse>() {
                    @Override
                    public void onResponse(Call<ApiDevicesResponse> call, Response<ApiDevicesResponse> response) {
                        if (!response.isSuccessful()) {
                            Log.d(TAG, "getNetworkRequest DeviceRepository Code: " + response.code());
                            return;
                        }
                        ApiDevicesResponse devicesResponse = response.body();
                        if (devicesResponse != null) {
                            for (Device device : devicesResponse.getContent()) {
                                // The way how I check, I do getRequest and check if the beacon that I have saved is in the table.
                                // If not, then I will consider the request as failed
                                if (device.getBeaconUuid().equals(beaconValue)) {
                                    Toast.makeText(SpeakersInitialisation.this, "You choice was successfully saved! :)", Toast.LENGTH_SHORT).show();
                                } else {
                                    Log.d(TAG, "getNetworkRequest RESPONSE WAS NOT SUCCESSFUL :(");
                                    // Show a user a message that we could not save your data
                                    Toast.makeText(SpeakersInitialisation.this, "SOMETHING WENT WRONG :(\n We could not save your data", Toast.LENGTH_SHORT).show();
                                }
                            }
                        } else {
                            Log.d(TAG, "getNetworkRequest devicesResponse is NULL");
                        }
                    }

                    @Override
                    public void onFailure(Call<ApiDevicesResponse> call, Throwable t) {
                    }
                });
                startActivity(myIntent);
            } else {
                AlertDialog alertDialog = new AlertDialog.Builder(SpeakersInitialisation.this).create();
                alertDialog.setTitle("Something went Wrong! :(");
                alertDialog.setMessage("Please make sure that you have chosen any beacon tags. \n" +
                        "We need to register each device, so the system can work properly");
                alertDialog.setButton(AlertDialog.BUTTON_POSITIVE, "OK",
                        new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int which) {
                                dialog.dismiss();
                            }
                        });
                alertDialog.show();
            }
        });
    }
}
