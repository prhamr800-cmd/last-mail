package com.digikala.dms.view.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.digikala.dms.R;
import com.digikala.dms.adapter.PartialDeliverDialogPagerAdapter;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.util.Constant;
import com.google.android.gms.measurement.AppMeasurement;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PartialDialogFragment extends DialogFragment {
    public static final String ARG_ITEM_COUNT = "item_count";
    private static final int ITEM_COUNT_PAGE = 0;
    private static final int PARTIAL_REASONS_PAGE = 1;
    private static OnItemChangeListener onItemChangeListener;
    List<RejectReason> RejectReasonsData;
    private int count;
    private int reasonPosition;
    private String[] rejectReasons;
    private ViewPager viewPager;

    public interface OnItemChangeListener {
        void onChange(int i, int i2);
    }

    public static PartialDialogFragment newInstance(int count) {
        PartialDialogFragment fragment = new PartialDialogFragment();
        Bundle args = new Bundle();
        args.putInt(ARG_ITEM_COUNT, count);
        fragment.setArguments(args);
        return fragment;
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = super.onCreateDialog(savedInstanceState);
        dialog.getWindow().requestFeature(1);
        return dialog;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            getRejectReasonFromDatabase();
            this.RejectReasonsData = getRejectReasonFromDatabase();
            String[] rejectReasons = new String[0];
            try {
                rejectReasons = new String[this.RejectReasonsData.size()];
            } catch (Exception e) {
                e.printStackTrace();
            }
            for (int i = 0; i < this.RejectReasonsData.size(); i++) {
                rejectReasons[i] = this.RejectReasonsData.get(i).getTitle();
            }
            this.count = getArguments().getInt(ARG_ITEM_COUNT);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.partial_deliver_dialog, container, false);
        this.viewPager = (ViewPager) view.findViewById(R.id.partial_deliver_view_pager);
        this.viewPager.setAdapter(new PartialDeliverDialogPagerAdapter(getChildFragmentManager(), this.rejectReasons, this.count));
        this.viewPager.setCurrentItem(1);
        return view;
    }

    public void changeToItemCountPage(int reasonPosition) {
        this.reasonPosition = reasonPosition;
        if (this.count == 1) {
            onConfirmButtonClick(1);
        } else {
            this.viewPager.setCurrentItem(0, true);
        }
    }

    public void onConfirmButtonClick(int count) {
        if (onItemChangeListener != null) {
            onItemChangeListener.onChange(this.reasonPosition, count);
        }
    }

    public static void setOnItemChangeListener(OnItemChangeListener onItemChangeListener2) {
        onItemChangeListener = onItemChangeListener2;
    }

    public List<RejectReason> getRejectReasonFromDatabase() {
        Realm realm = Realm.getDefaultInstance();
        RealmResults<RejectReason> results = realm.where(RejectReason.class).equalTo(AppMeasurement.Param.TYPE, Constant.INSTANCE.getEXTRA_REASON_TYPE_RETURN()).findAll();
        List<RejectReason> rejectReasons = realm.copyFromRealm(results);
        realm.close();
        return rejectReasons;
    }
}
