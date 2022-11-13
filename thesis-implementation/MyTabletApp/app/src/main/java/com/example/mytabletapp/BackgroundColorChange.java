package com.example.mytabletapp;

import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import android.widget.LinearLayout;

import com.example.mytabletapp.api.devices.Device;
import com.example.mytabletapp.api.devices.DeviceRepository;
import com.example.mytabletapp.api.distance.ApiDistanceResponse;
import com.example.mytabletapp.api.distance.Distance;
import com.example.mytabletapp.api.distance.DistanceRepository;
import com.example.mytabletapp.api.personality.ApiPersonalityResponse;
import com.example.mytabletapp.api.personality.Personality;
import com.example.mytabletapp.api.personality.PersonalityRepository;

import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class BackgroundColorChange extends AppCompatActivity {
    protected static final String TAG = "BackgroundColorChange";
    DistanceRepository distanceRepository;
    DeviceRepository deviceRepository;
    PersonalityRepository personalityRepository;

    String beaconTagValue, deviceTypeValue;
    Button redButton, greenButton;
    LinearLayout linearLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_background_color_change);
        linearLayout = findViewById(R.id.linearLayout);

        setupActionBar();

        String serverAddress = getIntent().getExtras()
                .getString("serverAddress");

        distanceRepository = new DistanceRepository(serverAddress);
        deviceRepository = new DeviceRepository(serverAddress);
        personalityRepository = new PersonalityRepository(serverAddress);


        beaconTagValue = getIntent().getStringExtra("BEACONUUID");
        deviceTypeValue = getIntent().getStringExtra("DEVICETYPE");

        Timer timer = new Timer();
        timer.schedule(new TimerTask() {

            @Override
            public void run() {
                distanceRepository.getNetworkRequest(new Callback<ApiDistanceResponse>() {
                    @Override
                    public void onResponse(Call<ApiDistanceResponse> call, Response<ApiDistanceResponse> response) {
                        if (!response.isSuccessful()) {
                            Log.d(TAG, "Code: " + response.code());
                            return;
                        }
                        ApiDistanceResponse distanceResponse = response.body();
                        if (distanceResponse != null) {
                            int count = 0;
                            for (Distance distance : distanceResponse.getContent()) {
                                if (distance.getFromDevice().getDeviceType().equals("Mascot")
                                        && distance.getToDevice().getDeviceType().equals("Tablet")
                                        && distance.getDistance() <= 50) {
                                    Log.d(TAG, "Distance fits Proxemics -> " + distance.getDistance()
                                            + "; from = " + distance.getFromDevice().getDeviceId()
                                            + "; to = " + distance.getToDevice().getDeviceId());
                                    getPersonalityOfApproachingMascot(distance.getFromDevice(),
                                            distance.getToDevice().getDeviceId());
                                } else {
                                    count++;
                                    Log.d(TAG, "Distance does NOT fit Proxemics: " +
                                            distance.getDistance() + "; from = " +
                                            distance.getFromDevice().getDeviceId() + "; to = "
                                            + distance.getToDevice().getDeviceId());
                                    if (count == distanceResponse.getContent().size()) {
                                        linearLayout.setBackgroundColor(Color.parseColor("#ffffff"));
                                        Log.d(TAG, "WHITE");
                                    }
                                }
                            }
                        }
                    }

                    @Override
                    public void onFailure(Call<ApiDistanceResponse> call, Throwable t) {
                        Log.d(TAG, t.getMessage());
                    }
                });
            }
        }, 0, 1000);
    }

    private void getPersonalityOfApproachingMascot(Device device, Integer myTabletID) {
        personalityRepository.getNetworkRequest(new Callback<ApiPersonalityResponse>() {
            @Override
            public void onResponse(Call<ApiPersonalityResponse> call, Response<ApiPersonalityResponse> response) {
                if (!response.isSuccessful()) {
                    Log.d(TAG, "PersonalityRepository Code: " + response.code());
                    return;
                }
                ApiPersonalityResponse personalities = response.body();
                if (personalities != null) {
                    for (Personality personality : personalities.getContent()) {
                        if (personality.getPersonality_name().equals(device.getDevicePersonality().getPersonality_name())) {
                            String myColor = personality.getScreen_color();
                            linearLayout.setBackgroundColor(Color.parseColor(myColor));
                        }
                    }
                }
            }

            @Override
            public void onFailure(Call<ApiPersonalityResponse> call, Throwable t) {
                Log.d(TAG, "error loading from API: " + t.getMessage());
            }
        });
    }

    private void setupActionBar() {
        ActionBar actionBar = Objects.requireNonNull(getSupportActionBar());
        actionBar.setDisplayShowHomeEnabled(true);
        actionBar.setTitle("Color Change");
    }

}