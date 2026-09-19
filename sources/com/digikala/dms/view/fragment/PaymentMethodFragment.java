package com.digikala.dms.view.fragment;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.digikala.dms.R;
import com.digikala.dms.view.fragment.UserInformationFragment;
import com.github.jorgecastilloprz.FABProgressCircle;

/* JADX INFO: loaded from: classes2.dex */
public class PaymentMethodFragment extends Fragment {
    public static final String ARG_COMPLETE_FLAG = "complete";
    public static final String ARG_PARTIAL_FLAG = "partial";
    private static final String TAG_REQUEST = PaymentMethodFragment.class.getSimpleName();
    private String PaymentMethod;
    private FloatingActionButton fab;
    private FABProgressCircle fabProgressCircle;
    private String flag;
    private OnButtonPaymentMethodClickListener mListener;

    public interface OnButtonPaymentMethodClickListener {
        void onPaymentMethodButtonClick(String str, String str2);
    }

    public static PaymentMethodFragment newInstance(String flag) {
        PaymentMethodFragment fragment = new PaymentMethodFragment();
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
        View view = inflater.inflate(R.layout.fragment_payment_method, container, false);
        this.fab = (FloatingActionButton) view.findViewById(R.id.fragmentPaymentMethod_fab);
        this.fabProgressCircle = (FABProgressCircle) view.findViewById(R.id.fabProgressCircle_signature_confirm);
        ImageView backButton = (ImageView) view.findViewById(R.id.back_button);
        RadioGroup radioGroup = (RadioGroup) view.findViewById(R.id.radio);
        RadioButton pos = (RadioButton) view.findViewById(R.id.radioPOS);
        final RadioButton cash = (RadioButton) view.findViewById(R.id.radioCash);
        int selectedId = radioGroup.getCheckedRadioButtonId();
        RadioButton radioButton = (RadioButton) view.findViewById(selectedId);
        if (radioButton.getId() == cash.getId()) {
            this.PaymentMethod = "cash";
        } else if (radioButton.getId() == pos.getId()) {
            this.PaymentMethod = "pos";
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.digikala.dms.view.fragment.PaymentMethodFragment.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                if (checkedId == cash.getId()) {
                    PaymentMethodFragment.this.PaymentMethod = "cash";
                } else {
                    PaymentMethodFragment.this.PaymentMethod = "pos";
                }
                Log.e("radioButton", " " + PaymentMethodFragment.this.PaymentMethod + " " + checkedId);
            }
        });
        Log.e("radioButton", " " + this.PaymentMethod + " " + radioButton.getId());
        backButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.PaymentMethodFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PaymentMethodFragment.this.getActivity().onBackPressed();
            }
        });
        this.fab.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.PaymentMethodFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PaymentMethodFragment.this.mListener.onPaymentMethodButtonClick(PaymentMethodFragment.this.flag, PaymentMethodFragment.this.PaymentMethod);
            }
        });
        return view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof UserInformationFragment.OnApplyButtonUserInformationClickListener) {
            this.mListener = (OnButtonPaymentMethodClickListener) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnStateButtonClickListener");
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mListener = null;
    }
}
