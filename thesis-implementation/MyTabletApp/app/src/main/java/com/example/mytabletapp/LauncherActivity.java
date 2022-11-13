package com.example.mytabletapp;

import android.os.Bundle;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;

public class LauncherActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_launcher);
        Log.d("FLOW", "LauncherActivity");

        NsdHelper nsdHelper = new NsdHelper(this);
        nsdHelper.discoverServices();
    }
}
