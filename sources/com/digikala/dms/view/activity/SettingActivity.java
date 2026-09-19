package com.digikala.dms.view.activity;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.custom.XeiTextView;
import com.digikala.dms.view.fragment.LoginFragment;
import com.pnikosis.materialishprogress.ProgressWheel;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class SettingActivity extends AppCompatActivity {
    private LinearLayout changePassword;
    private View darkLayout;
    private boolean firstSpinnerListenerCalled;
    private XeiTextView languageTextView;
    private PopupWindow popupWindow;
    private boolean isPopupOpen = false;
    String tagRequest = SettingActivity.class.getSimpleName();

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_setting);
        this.darkLayout = findViewById(R.id.dark_layer);
        this.languageTextView = (XeiTextView) findViewById(R.id.languageTextView);
        this.changePassword = (LinearLayout) findViewById(R.id.changePassword);
        this.languageTextView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.SettingActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SettingActivity.this.showPopupWindows();
            }
        });
        String[] languageKey = getResources().getStringArray(R.array.language_key_array);
        String[] language = getResources().getStringArray(R.array.language_title_array);
        String savedLanguage = Util.getLanguageFromSharedPreference(this);
        int defaultSelectedPosition = 0;
        for (int i = 0; i < languageKey.length; i++) {
            if (languageKey[i].equals(savedLanguage)) {
                defaultSelectedPosition = i;
            }
        }
        this.languageTextView.setText(language[defaultSelectedPosition]);
        this.changePassword.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.SettingActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SettingActivity.this.showChangePasswordDialog();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLocale(String language) {
        Locale locale = new Locale(language);
        Locale.setDefault(locale);
        Configuration config = new Configuration();
        config.locale = locale;
        getResources().updateConfiguration(config, null);
    }

    public void toolbarBackOnClick(View view) {
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopupWindows() {
        this.isPopupOpen = true;
        LayoutInflater layoutInflater = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
        View popupView = layoutInflater.inflate(R.layout.popup_windows_language_select, (ViewGroup) null);
        TextView persianTextView = (TextView) popupView.findViewById(R.id.persianTextView);
        TextView englishTextView = (TextView) popupView.findViewById(R.id.englishTextView);
        final String[] languageKey = getResources().getStringArray(R.array.language_key_array);
        String[] language = getResources().getStringArray(R.array.language_title_array);
        persianTextView.setText(language[0]);
        englishTextView.setText(language[1]);
        persianTextView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.SettingActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnswersHelper.settingActivityEvent("Change Language");
                AnalyticHelper.settingActivityEvent("Change Language");
                SettingActivity.this.setLocale(languageKey[0]);
                Util.saveLanguageToSharedPreference(SettingActivity.this, languageKey[0]);
                Intent intent = new Intent(SettingActivity.this, (Class<?>) SettingActivity.class);
                SettingActivity.this.startActivity(intent);
                SettingActivity.this.finish();
            }
        });
        englishTextView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.SettingActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnswersHelper.settingActivityEvent("Change Language");
                AnalyticHelper.settingActivityEvent("Change Language");
                SettingActivity.this.setLocale(languageKey[1]);
                Util.saveLanguageToSharedPreference(SettingActivity.this, languageKey[1]);
                Intent intent = new Intent(SettingActivity.this, (Class<?>) SettingActivity.class);
                SettingActivity.this.startActivity(intent);
                SettingActivity.this.finish();
            }
        });
        this.popupWindow = new PopupWindow(popupView, -2, -2);
        this.popupWindow.setTouchable(true);
        this.popupWindow.setOutsideTouchable(false);
        this.popupWindow.showAsDropDown(this.languageTextView, -this.languageTextView.getWidth(), -this.languageTextView.getHeight());
        this.darkLayout.setVisibility(0);
        this.darkLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.SettingActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SettingActivity.this.isPopupOpen = false;
                SettingActivity.this.popupWindow.dismiss();
                SettingActivity.this.darkLayout.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showChangePasswordDialog() {
        final Dialog changePassDialog = new Dialog(this, 0);
        changePassDialog.requestWindowFeature(1);
        changePassDialog.setContentView(R.layout.change_password_dialog);
        int width = getResources().getDisplayMetrics().widthPixels;
        int height = getResources().getDisplayMetrics().heightPixels;
        changePassDialog.getWindow().setLayout(width, height);
        changePassDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        Button changePassword_btn = (Button) changePassDialog.findViewById(R.id.changePassword_btn);
        final ProgressWheel progressWheel = (ProgressWheel) changePassDialog.findViewById(R.id.changePassword_progressWheel_loading);
        final EditText oldPassword_et = (EditText) changePassDialog.findViewById(R.id.oldPassword_et);
        final EditText newPassword_et = (EditText) changePassDialog.findViewById(R.id.newPassword_et);
        final EditText newPassword_confirm_et = (EditText) changePassDialog.findViewById(R.id.newPassword_confirm_et);
        final TextInputLayout newPassword_inputLayout = (TextInputLayout) changePassDialog.findViewById(R.id.newPassword_inputLayout);
        final TextInputLayout oldPassword_inputLayout = (TextInputLayout) changePassDialog.findViewById(R.id.oldPassword_inputLayout);
        final TextInputLayout confirm_newPassword_inputLayout = (TextInputLayout) changePassDialog.findViewById(R.id.newPassword_confirm_inputLayout);
        changePassword_btn.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.SettingActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                String oldPassword = oldPassword_et.getText().toString();
                String newPassword = newPassword_et.getText().toString();
                String newPassword_confirm = newPassword_confirm_et.getText().toString();
                String deliveryId = Util.getDeliveryId(SettingActivity.this.getApplicationContext());
                oldPassword_inputLayout.setError(null);
                newPassword_inputLayout.setError(null);
                confirm_newPassword_inputLayout.setError(null);
                if (oldPassword.isEmpty()) {
                    oldPassword_inputLayout.requestFocus();
                    oldPassword_inputLayout.setError(SettingActivity.this.getString(R.string.empty_error));
                    return;
                }
                if (newPassword.isEmpty()) {
                    newPassword_inputLayout.requestFocus();
                    newPassword_inputLayout.setError(SettingActivity.this.getString(R.string.empty_error));
                    return;
                }
                if (newPassword.length() < 5) {
                    newPassword_inputLayout.requestFocus();
                    newPassword_inputLayout.setError(SettingActivity.this.getString(R.string.length_error));
                } else if (newPassword_confirm.equals(newPassword)) {
                    SettingActivity.this.hideKeyboard();
                    progressWheel.setVisibility(0);
                    WebApi.changePassword(deliveryId, oldPassword, newPassword, SettingActivity.this.tagRequest, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.activity.SettingActivity.6.1
                        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                        public void onResponse(Boolean response) {
                            progressWheel.setVisibility(8);
                            if (response.booleanValue()) {
                                changePassDialog.dismiss();
                                Log.i(SettingActivity.this.tagRequest, " if statement response is :" + response);
                                Toast.makeText(SettingActivity.this.getApplicationContext(), "رمز عبور با موفقیت عوض شد.", 0).show();
                                LoginFragment.logout();
                                return;
                            }
                            Log.i(SettingActivity.this.tagRequest, " else statement response is :" + response);
                            Toast.makeText(SettingActivity.this.getApplicationContext(), "خطایی پیش آمده، دوباره امتحان کنید.", 0).show();
                        }

                        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                        public void onErrorResponse(String errorMessage) {
                            progressWheel.setVisibility(8);
                            Toast.makeText(SettingActivity.this.getApplicationContext(), "خطایی پیش آمده، دوباره امتحان کنید.", 0).show();
                        }
                    }, null).send();
                } else {
                    confirm_newPassword_inputLayout.requestFocus();
                    confirm_newPassword_inputLayout.setError(SettingActivity.this.getString(R.string.password_not_match));
                }
            }
        });
        changePassDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideKeyboard() {
        try {
            View view = getCurrentFocus();
            if (view != null) {
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 2);
            }
        } catch (Exception e) {
        }
    }
}
