package com.digikala.dms.view.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.helper.LocationHelper;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.design.ReturnedShipment;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Constant;
import com.digikala.dms.util.Util;
import com.google.android.gms.measurement.AppMeasurement;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RejectReasonFragment extends DialogFragment {
    private static final String ORDER_ID = "orderId";
    private static final String TAG_REQUEST = RejectReasonFragment.class.getSimpleName();
    TextView cancelButton;
    ListView listView;
    private String mOrderId;

    public static RejectReasonFragment newInstance(String orderId) {
        RejectReasonFragment fragment = new RejectReasonFragment();
        Bundle args = new Bundle();
        args.putString("orderId", orderId);
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
            this.mOrderId = getArguments().getString("orderId");
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        final Realm mRealm = Realm.getDefaultInstance();
        final Shipment mShipment = (Shipment) mRealm.where(Shipment.class).equalTo("orderId", this.mOrderId).findFirst();
        RealmResults<RejectReason> realmRejectReasons = mRealm.where(RejectReason.class).equalTo(AppMeasurement.Param.TYPE, Constant.INSTANCE.getEXTRA_REASON_TYPE_CANCEL()).findAll();
        final List<RejectReason> rejectReasons1 = mRealm.copyToRealm(realmRejectReasons);
        if (mShipment != null) {
            String[] rejectReasons = new String[0];
            try {
                rejectReasons = new String[rejectReasons1.size()];
            } catch (Exception e) {
                e.printStackTrace();
            }
            for (int i = 0; i < rejectReasons1.size(); i++) {
                rejectReasons[i] = rejectReasons1.get(i).getTitle();
            }
            ArrayAdapter<String> adapter = new ArrayAdapter<>(getContext(), R.layout.row_reject_reason, R.id.text1, rejectReasons);
            this.listView.setAdapter((ListAdapter) adapter);
            this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.digikala.dms.view.fragment.RejectReasonFragment.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> parent, View view2, int position, long id) {
                    ReturnedShipment returnedShipment = new ReturnedShipment();
                    returnedShipment.setShipmentId(RejectReasonFragment.this.mOrderId);
                    returnedShipment.setReasonId(((RejectReason) rejectReasons1.get(position)).getId());
                    LatLong latLong = LocationHelper.getLocation();
                    String time = Util.getCurrentDateTime();
                    mRealm.beginTransaction();
                    LatLong location = (LatLong) mRealm.createObject(LatLong.class);
                    if (latLong != null) {
                        location.setLatitude(latLong.getLatitude());
                        location.setLongitude(latLong.getLongitude());
                    }
                    mShipment.setStatus(6);
                    mShipment.setRejectReasonId(Integer.parseInt(((RejectReason) rejectReasons1.get(position)).getId()));
                    mShipment.setConfirmTime(time);
                    mShipment.setConfirmLocation(location);
                    mShipment.setTupleIsSyncedWithServer(false);
                    mShipment.setSignature("");
                    mRealm.commitTransaction();
                    Util.saveLatestShipmentIDToSharedPreference(RejectReasonFragment.this.getActivity(), mShipment.getOrderId());
                    String timeScope = "";
                    try {
                        String[] dateTime = mShipment.getDeliveryTime().split("\\s+");
                        timeScope = dateTime[1];
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    AnswersHelper.logCloseShipment("Returned", timeScope, latLong, "paymentType", -1);
                    AnalyticHelper.closeShipmentEvent("Returned", latLong);
                    for (int i2 = 0; i2 < mShipment.getBasketItems().size(); i2++) {
                        for (int j = 0; j < mShipment.getBasketItems().get(i2).getOrderItems().size(); j++) {
                            AnswersHelper.logReturnShipment(mShipment.getBasketItems().get(i2).getOrderItems().get(j).getOrderItemId(), ((RejectReason) rejectReasons1.get(position)).getId(), ((RejectReason) rejectReasons1.get(position)).getTitle());
                            AnalyticHelper.returnShipment(mShipment.getBasketItems().get(i2).getOrderItems().get(j).getOrderItemId(), ((RejectReason) rejectReasons1.get(position)).getId(), ((RejectReason) rejectReasons1.get(position)).getTitle());
                        }
                    }
                    String batchId = Util.getBatchId(RejectReasonFragment.this.getActivity());
                    String gpsStatus = Util.getGpsStatus(RejectReasonFragment.this.getActivity());
                    if (batchId == null) {
                        Toast.makeText(RejectReasonFragment.this.getActivity(), "pack id is null !!!", 1).show();
                    } else {
                        WebApi.makeRejectShipmentRequest(batchId, returnedShipment, location, gpsStatus, RejectReasonFragment.TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.fragment.RejectReasonFragment.1.1
                            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                            public void onResponse(Boolean response) {
                                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                                if (response.booleanValue()) {
                                    mRealm.beginTransaction();
                                    mShipment.setTupleIsSyncedWithServer(true);
                                    mRealm.commitTransaction();
                                    if (!RejectReasonFragment.this.isDetached() && RejectReasonFragment.this.getActivity() != null) {
                                        RejectReasonFragment.this.getActivity().finish();
                                    }
                                }
                            }

                            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                            public void onErrorResponse(String errorMessage) {
                                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                                AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                                Toast.makeText(RejectReasonFragment.this.getContext(), errorMessage, 0).show();
                                if (!RejectReasonFragment.this.isDetached() && RejectReasonFragment.this.getActivity() != null) {
                                    RejectReasonFragment.this.getActivity().finish();
                                }
                            }
                        }, null).send();
                    }
                }
            });
        }
        this.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.RejectReasonFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                RejectReasonFragment.this.dismiss();
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_reject_reason, container, false);
        this.listView = (ListView) rootView.findViewById(R.id.reject_reason_list_view);
        this.cancelButton = (TextView) rootView.findViewById(R.id.cancel_button);
        return rootView;
    }
}
