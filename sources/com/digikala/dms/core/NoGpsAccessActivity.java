package com.digikala.dms.core;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.digikala.dms.R;

/* JADX INFO: loaded from: classes2.dex */
public class NoGpsAccessActivity extends Activity {
    public static NoGpsAccessActivity instance;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        instance = this;
        setContentView(R.layout.activity_no_gps_access);
        setupViews();
    }

    public static NoGpsAccessActivity getInstance() {
        return instance;
    }

    private void setupViews() {
        Button turnOn = (Button) findViewById(R.id.button_turn_on);
        turnOn.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.core.NoGpsAccessActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                NoGpsAccessActivity.this.buildAlertMessageNoGps();
            }
        });
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        instance = this;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildAlertMessageNoGps() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage("Your GPS seems to be disabled, do you want to enable it?").setCancelable(false).setPositiveButton("Yes", new DialogInterface.OnClickListener() { // from class: com.digikala.dms.core.NoGpsAccessActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                NoGpsAccessActivity.this.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
            }
        }).setNegativeButton("No", new DialogInterface.OnClickListener() { // from class: com.digikala.dms.core.NoGpsAccessActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                dialog.cancel();
            }
        });
        AlertDialog alert = builder.create();
        alert.show();
    }
}
