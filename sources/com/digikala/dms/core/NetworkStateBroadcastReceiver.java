package com.digikala.dms.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import android.widget.Toast;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.view.activity.MainActivity;
import io.realm.Realm;
import io.realm.RealmResults;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkStateBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG_DEBUG = NetworkStateBroadcastReceiver.class.getSimpleName();
    private static final String TAG_REQUEST = MainActivity.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        isNetworkAvailable(context);
    }

    private boolean isNetworkAvailable(Context context) {
        NetworkInfo networkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (networkInfo = connectivityManager.getActiveNetworkInfo()) != null && networkInfo.isConnected()) {
                syncToServer();
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void syncToServer() {
        final Realm realm = Realm.getDefaultInstance();
        RealmResults<Courier> loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            String deliveryId = ((Courier) loggedInDeliveries.get(0)).getId();
            String batchId = ((Courier) loggedInDeliveries.get(0)).getBatch().getId();
            final RealmResults<Shipment> notSyncedShipments = realm.where(Shipment.class).equalTo(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER, (Boolean) false).findAll();
            if (!notSyncedShipments.isEmpty()) {
                WebApi.makeSyncShipmentsWithBackOfficeRequest(deliveryId, batchId, notSyncedShipments, new Response.Listener<JSONObject>() { // from class: com.digikala.dms.core.NetworkStateBroadcastReceiver.1
                    @Override // com.android.volley.Response.Listener
                    public void onResponse(JSONObject response) {
                        AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                        AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                        try {
                            boolean successfullySynced = response.getBoolean("Data");
                            if (successfullySynced) {
                                AnswersHelper.finalizeTripBackgroundEvent("Success", "");
                                AnalyticHelper.finalizeTripBackgroundEvent("Success", "");
                                realm.beginTransaction();
                                for (int i = 0; i < notSyncedShipments.size(); i++) {
                                    ((Shipment) notSyncedShipments.get(i)).setTupleIsSyncedWithServer(true);
                                }
                                realm.commitTransaction();
                                return;
                            }
                            AnswersHelper.finalizeTripBackgroundEvent("Error", "Error1");
                            AnalyticHelper.finalizeTripBackgroundEvent("Error", "Error1");
                            Log.e(NetworkStateBroadcastReceiver.TAG_DEBUG, "Unsuccessful Sync Process!");
                        } catch (JSONException joe) {
                            if (joe != null) {
                                AnswersHelper.finalizeTripBackgroundEvent("Error", joe.getMessage() + "");
                                AnalyticHelper.finalizeTripBackgroundEvent("Error", joe.getMessage() + "");
                            } else {
                                AnswersHelper.finalizeTripBackgroundEvent("Error", "Json Error");
                                AnalyticHelper.finalizeTripBackgroundEvent("Error", "Json Error");
                            }
                            Log.e(NetworkStateBroadcastReceiver.TAG_DEBUG, "JSONObject exception on the response of \"SyncShipmentsWithBackOffice\" request" + joe.getMessage());
                        }
                    }
                }, new Response.ErrorListener() { // from class: com.digikala.dms.core.NetworkStateBroadcastReceiver.2
                    @Override // com.android.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError error) {
                        if (error != null) {
                            AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", error + "");
                            AnalyticHelper.responseRequestEvent("Response", "Response Error", error.getMessage() + "");
                            AnswersHelper.finalizeTripBackgroundEvent("Error", error.getMessage() + "");
                            AnalyticHelper.finalizeTripBackgroundEvent("Error", error.getMessage() + "");
                        } else {
                            AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", "Volley Error");
                            AnalyticHelper.responseRequestEvent("Response", "Response Error", "Volley Error");
                            AnswersHelper.finalizeTripBackgroundEvent("Error", "Volley Error");
                            AnalyticHelper.finalizeTripBackgroundEvent("Error", "Volley Error");
                        }
                        Log.e(NetworkStateBroadcastReceiver.TAG_DEBUG, "Cannot sync shipments with the server: " + error.getMessage());
                        Toast.makeText(App.getApplication(), error.getMessage(), 0).show();
                    }
                });
                return;
            }
            return;
        }
        Log.e(TAG_DEBUG, "There is no exactly one logged-in delivery!");
    }
}
