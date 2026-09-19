package com.digikala.dms.view.fragment;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.digikala.dms.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class DeliveryLocationFragment extends Fragment {
    public static final String ARG_COMPLETE_FLAG = "complete";
    public static final String ARG_PARTIAL_FLAG = "partial";
    private static final String TAG_REQUEST = DeliveryLocationFragment.class.getSimpleName();
    private String flag;
    private ArrayList<String> radioOptions = new ArrayList<>();
    RadioButton rb1;
    RadioButton rb2;
    RadioGroup rg;
    private View view;

    public static DeliveryLocationFragment newInstance(String flag) {
        DeliveryLocationFragment fragment = new DeliveryLocationFragment();
        Bundle args = new Bundle();
        args.putString("complete", flag);
        fragment.setArguments(args);
        return fragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            this.flag = getArguments().getString("complete");
        }
    }

    @Override // android.support.v4.app.Fragment
    @SuppressLint({"ResourceType"})
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.view = inflater.inflate(R.layout.fragment_delivery_location, container, false);
        this.radioOptions.add("1");
        this.radioOptions.add("2");
        this.radioOptions.add("3");
        addRadioButtons("title ", this.radioOptions);
        return this.view;
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
    }

    public void addRadioButtons(String title, ArrayList<String> radio) {
        for (int row = 0; row < 1; row++) {
            LinearLayout linearLayout = (LinearLayout) this.view.findViewById(R.id.ll_fragmentDeliveryLocation_container);
            TextView textView = (TextView) this.view.findViewById(R.id.tv_fragmentDeliveryLocation_question);
            ViewGroup.LayoutParams params = new LinearLayout.LayoutParams(-1, -1);
            RadioGroup radioGroup = new RadioGroup(getContext());
            ((ViewGroup) this.view.findViewById(R.id.radio)).addView(radioGroup);
            textView.setLayoutParams(params);
            radioGroup.setLayoutParams(params);
            textView.setText(title);
            for (int i = 0; i < radio.size(); i++) {
                RadioButton rdbtn = new RadioButton(getContext());
                rdbtn.setId(i);
                rdbtn.setText("Radio " + radio.get(i));
                radioGroup.addView(rdbtn);
            }
            if (radioGroup.getParent() != null) {
                ((ViewGroup) radioGroup.getParent()).removeView(radioGroup);
            }
            if (textView.getParent() != null) {
                ((ViewGroup) textView.getParent()).removeView(textView);
            }
            radioGroup.getCheckedRadioButtonId();
            linearLayout.addView(textView);
            linearLayout.addView(radioGroup);
        }
    }
}
