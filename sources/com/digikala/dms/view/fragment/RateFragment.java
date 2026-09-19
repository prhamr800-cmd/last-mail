package com.digikala.dms.view.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.digikala.dms.R;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.domain.Rate;
import io.realm.com_digikala_dms_model_domain_RateRealmProxy;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes2.dex */
public class RateFragment extends DialogFragment {
    private static final String EXTRA_KEY_USER_ID = "user_id";
    private static final String TAG = "RateFragment";
    private static DecimalFormat df2 = new DecimalFormat("#.##");
    private static String userIdString;
    TextView delta;
    ImageView deltaIcon;
    private String rateValue;
    RatingBar ratingBar;
    TextView ratio;

    public static RateFragment newInstance(String userId) {
        Bundle args = new Bundle();
        args.putString(EXTRA_KEY_USER_ID, userId);
        userIdString = userId;
        RateFragment fragment = new RateFragment();
        fragment.setArguments(args);
        Log.e(TAG, "newInstance");
        return fragment;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.support.v4.app.Fragment
    public Context getContext() {
        return getActivity();
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        super.onCreateDialog(savedInstanceState);
        Log.e(TAG, "Dialog");
        userIdString = getArguments().getString(EXTRA_KEY_USER_ID);
        if (userIdString == null) {
            dismiss();
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        View view = LayoutInflater.from(getContext()).inflate(R.layout.fragment_rate, (ViewGroup) null);
        this.ratingBar = (RatingBar) view.findViewById(R.id.ratingBar_usersRate);
        this.deltaIcon = (ImageView) view.findViewById(R.id.imageview_delta);
        this.delta = (TextView) view.findViewById(R.id.tv_rate_delta);
        this.ratio = (TextView) view.findViewById(R.id.tv_rate_ratio_value);
        WebApi.getRateRequest("", new WebApiRequest.WebApiListener<Rate>() { // from class: com.digikala.dms.view.fragment.RateFragment.1
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(Rate response) {
                if (response != null) {
                    if (response != null) {
                        RateFragment.this.ratingBar.setRating((float) response.getRate());
                    }
                    if (response.getDelta() == 0.0d) {
                        RateFragment.this.deltaIcon.setVisibility(8);
                    }
                    if (response.getDelta() < 0.0d) {
                        RateFragment.this.deltaIcon.setImageResource(R.drawable.rectangle_red);
                    } else {
                        RateFragment.this.deltaIcon.setImageResource(R.drawable.rectangle_green);
                    }
                    RateFragment.this.delta.setText(String.valueOf(RateFragment.df2.format(response.getDelta())));
                    if (response.getRate() < 2.0d) {
                        RateFragment.this.ratio.setText("ضعیف");
                    }
                    if (response.getRate() >= 2.0d && response.getRate() < 3.5d) {
                        RateFragment.this.ratio.setText("متوسط");
                    }
                    if (response.getRate() >= 3.5d) {
                        RateFragment.this.ratio.setText("عالی");
                    }
                    Log.e(com_digikala_dms_model_domain_RateRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME, response.getRate() + "");
                }
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                Log.e(com_digikala_dms_model_domain_RateRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME, "errorMessage");
            }
        }, new WebApiRequest.LoadRequests() { // from class: com.digikala.dms.view.fragment.RateFragment.2
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.LoadRequests
            public void addRequestToLoadList(WebApiRequest<?> request, boolean loadDataOnResume) {
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.LoadRequests
            public void reloadRequests() {
            }
        }).send();
        this.ratingBar.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() { // from class: com.digikala.dms.view.fragment.RateFragment.3
            @Override // android.widget.RatingBar.OnRatingBarChangeListener
            public void onRatingChanged(RatingBar ratingBar, float v, boolean b) {
                Log.e("v", String.valueOf(v));
                RateFragment.this.rateValue = String.valueOf(Math.round(v));
            }
        });
        builder.setView(view);
        return builder.create();
    }
}
