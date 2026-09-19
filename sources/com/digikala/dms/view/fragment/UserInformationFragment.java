package com.digikala.dms.view.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.digikala.dms.R;
import com.digikala.dms.adapter.UserInformationCardViewAdapter;
import com.digikala.dms.model.domain.CardType;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.ShipmentActivity;
import com.digikala.dms.view.custom.XeiButton;
import com.digikala.dms.view.custom.XeiEditText;
import io.realm.Realm;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class UserInformationFragment extends Fragment {
    public static final String ARG_COMPLETE_FLAG = "complete";
    public static final String ARG_PARTIAL_FLAG = "partial";
    private static final String ARG_PAYMENT_METHOD = "payment_method";
    private String PaymentMethod;
    private UserInformationCardViewAdapter adapter;
    private Spinner cardSpinner;
    private String cardTypeIdSelected;
    private String flag;
    private OnApplyButtonUserInformationClickListener mListener;

    public interface OnApplyButtonUserInformationClickListener {
        void onApplyButtonClick(String str, String str2, String str3, String str4, String str5);
    }

    public static UserInformationFragment newInstance(String flag, String PaymentMethod) {
        UserInformationFragment fragment = new UserInformationFragment();
        Bundle args = new Bundle();
        args.putString("complete", flag);
        args.putString(ARG_PAYMENT_METHOD, PaymentMethod);
        fragment.setArguments(args);
        return fragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getCardTypes();
        if (getArguments() != null) {
            this.flag = getArguments().getString("complete");
            this.PaymentMethod = getArguments().getString(ARG_PAYMENT_METHOD);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_user_information, container, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.cardSpinner = (Spinner) view.findViewById(R.id.cardSpinner);
        this.adapter = new UserInformationCardViewAdapter(getContext(), getCardTypes());
        this.cardSpinner.setAdapter((SpinnerAdapter) this.adapter);
        this.cardSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.digikala.dms.view.fragment.UserInformationFragment.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parentView, View selectedItemView, int position, long id) {
                UserInformationFragment.this.cardTypeIdSelected = (String) UserInformationFragment.this.adapter.getItem(position);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parentView) {
            }
        });
        final XeiEditText cardNumber = (XeiEditText) view.findViewById(R.id.cardNumberEditText);
        final XeiEditText comment = (XeiEditText) view.findViewById(R.id.commentEditText);
        ImageButton backButton = (ImageButton) view.findViewById(R.id.back_button);
        backButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.UserInformationFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ((ShipmentActivity) UserInformationFragment.this.getActivity()).setToZero(false);
                UserInformationFragment.this.getActivity().onBackPressed();
            }
        });
        XeiButton applyButton = (XeiButton) view.findViewById(R.id.applyButton);
        applyButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.UserInformationFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Util.hideKeyboard(UserInformationFragment.this.getActivity());
                UserInformationFragment.this.mListener.onApplyButtonClick(UserInformationFragment.this.flag, UserInformationFragment.this.cardTypeIdSelected, cardNumber.getText().toString(), comment.getText().toString(), UserInformationFragment.this.PaymentMethod);
            }
        });
    }

    private List<CardType> getCardTypes() {
        Realm realm = Realm.getDefaultInstance();
        return realm.where(CardType.class).findAll();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnApplyButtonUserInformationClickListener) {
            this.mListener = (OnApplyButtonUserInformationClickListener) context;
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
