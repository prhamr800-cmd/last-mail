package com.digikala.dms.view.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.digikala.dms.R;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.util.Constant;
import com.google.android.gms.measurement.AppMeasurement;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PartialReasonFragment extends Fragment {
    ListView listView;
    private String[] rejectReasons;
    ArrayList<RejectReason> rejectReasons1;

    public static PartialReasonFragment newInstance(String[] rejectReasons) {
        PartialReasonFragment fragment = new PartialReasonFragment();
        Bundle args = new Bundle();
        fragment.setArguments(args);
        return fragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.rejectReasons1 = new ArrayList<>();
        this.rejectReasons1.addAll(getRejectReasonFromDatabase());
        String[] rejectReasons = new String[0];
        try {
            rejectReasons = new String[this.rejectReasons1.size()];
        } catch (Exception e) {
            e.printStackTrace();
        }
        for (int i = 0; i < this.rejectReasons1.size(); i++) {
            rejectReasons[i] = this.rejectReasons1.get(i).getTitle();
        }
        ArrayAdapter<String> adapter = new ArrayAdapter<>(getContext(), R.layout.row_reject_reason, R.id.text1, rejectReasons);
        this.listView.setAdapter((ListAdapter) adapter);
        this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.digikala.dms.view.fragment.PartialReasonFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view2, int position, long id) {
                ((PartialDialogFragment) PartialReasonFragment.this.getParentFragment()).changeToItemCountPage(position);
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_partial_reason, container, false);
        this.listView = (ListView) rootView.findViewById(R.id.partial_reject_reason_list_view);
        return rootView;
    }

    public List<RejectReason> getRejectReasonFromDatabase() {
        Realm realm = Realm.getDefaultInstance();
        RealmResults<RejectReason> results = realm.where(RejectReason.class).equalTo(AppMeasurement.Param.TYPE, Constant.INSTANCE.getEXTRA_REASON_TYPE_RETURN()).findAll();
        List<RejectReason> rejectReasons = realm.copyFromRealm(results);
        realm.close();
        return rejectReasons;
    }
}
