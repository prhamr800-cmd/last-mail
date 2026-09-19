package com.digikala.dms.view.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.support.v7.app.AppCompatActivity;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.util.DownloadManager;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.fragment.AssignedShipmentsFragment;
import com.digikala.dms.view.fragment.LoginFragment;
import com.digikala.dms.view.fragment.XeiFragment;
import java.io.File;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class LauncherActivity extends AppCompatActivity implements XeiFragment.FragmentChanger, WebApiRequest.OnForceUpdateListener {
    private static final int MY_PERMISSIONS_REQUEST = 100;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_launcher);
        DownloadManager.init(this);
        WebApiRequest.setOnForceUpdateReceived(this);
        storageAllowed();
    }

    @Override // com.digikala.dms.view.fragment.XeiFragment.FragmentChanger
    public void changeFragment(Fragment fragment) {
        try {
            FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction().replace(R.id.activityLauncher_frameLayout_fragmentContainer, fragment);
            fragmentTransaction.commit();
        } catch (Exception e) {
        }
    }

    @Override // com.digikala.dms.helper.webservice.WebApiRequest.OnForceUpdateListener
    public void forceUpdate() {
        Snackbar.make(findViewById(R.id.layout), getResources().getString(R.string.force_update_message), -2).show();
        changeFragment(LoginFragment.newInstance());
    }

    @Override // com.digikala.dms.helper.webservice.WebApiRequest.OnForceUpdateListener
    public void downloadComplete(String filePath) throws XmlPullParserException, IOException {
        if (Build.VERSION.SDK_INT >= 24) {
            Uri data = FileProvider.getUriForFile(getApplicationContext(), "com.digikala.dms.provider", new File(filePath));
            Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
            intent.setData(data);
            intent.setFlags(1);
            startActivity(intent);
            changeFragment(LoginFragment.newInstance());
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setDataAndType(Uri.fromFile(new File(filePath)), "application/vnd.android.package-archive");
        intent2.setFlags(268435456);
        startActivity(intent2);
        changeFragment(LoginFragment.newInstance());
    }

    @Override // com.digikala.dms.helper.webservice.WebApiRequest.OnForceUpdateListener
    public void checkPermission() {
        storageAllowed();
    }

    private void storageAllowed() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0 || ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0 || ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0 || ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 100);
        } else {
            checkLogin();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == 100) {
            if (grantResults.length > 0 && grantResults[0] == 0) {
                checkLogin();
            } else {
                finish();
            }
        }
    }

    private void checkLogin() {
        LoginFragment.checkDeliveryLogin(new LoginFragment.OnCheckDeliveryLoginListener() { // from class: com.digikala.dms.view.activity.LauncherActivity.1
            @Override // com.digikala.dms.view.fragment.LoginFragment.OnCheckDeliveryLoginListener
            public void deliveryIsLoggedIn(Courier loggedInCourier) {
                LoginFragment.storeDeliveryId(loggedInCourier.getId());
                if (Util.getShipmentNextStepIsPriority(LauncherActivity.this.getApplicationContext())) {
                    LauncherActivity.this.startActivity(new Intent(LauncherActivity.this, (Class<?>) NewShipmentPriorityActivity.class));
                    LauncherActivity.this.finish();
                } else if (loggedInCourier.getBatch() != null && loggedInCourier.getBatch().getShipments() != null && loggedInCourier.getBatch().getShipments().size() > 0 && !loggedInCourier.isBatchFinalized()) {
                    LauncherActivity.this.startActivity(new Intent(LauncherActivity.this, (Class<?>) MainActivity.class));
                    LauncherActivity.this.finish();
                } else {
                    LauncherActivity.this.changeFragment(AssignedShipmentsFragment.newInstance());
                }
            }

            @Override // com.digikala.dms.view.fragment.LoginFragment.OnCheckDeliveryLoginListener
            public void thereIsNotAnyDeliveryLoggedIn() {
                LauncherActivity.this.changeFragment(LoginFragment.newInstance());
            }
        });
    }

    @Override // com.digikala.dms.helper.webservice.WebApiRequest.OnForceUpdateListener
    public void optionalUpdate() {
        Toast.makeText(this, "Optional Update", 0).show();
    }
}
