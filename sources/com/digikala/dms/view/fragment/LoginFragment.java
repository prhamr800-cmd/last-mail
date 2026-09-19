package com.digikala.dms.view.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.digikala.dms.BuildConfig;
import com.digikala.dms.R;
import com.digikala.dms.core.App;
import com.digikala.dms.core.ForegroundService;
import com.digikala.dms.core.GpsService;
import com.digikala.dms.helper.TypeFaceHelper;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.fabric.crashlytics.CrashlyticsHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.design.Answer;
import com.digikala.dms.model.design.ConstantValue;
import com.digikala.dms.model.design.LoginResult;
import com.digikala.dms.model.design.Question;
import com.digikala.dms.model.design.QuestionAnswer;
import com.digikala.dms.model.design.TrackingType;
import com.digikala.dms.model.domain.CardType;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.DistributionCenter;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.model.domain.UnprocessedReason;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.LauncherActivity;
import com.digikala.dms.view.activity.MainActivity;
import com.digikala.dms.view.activity.NewShipmentPriorityActivity;
import com.digikala.dms.view.custom.XeiTextView;
import com.digikala.dms.view.fragment.XeiFragment;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.iid.FirebaseInstanceId;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LoginFragment extends Fragment implements View.OnClickListener {
    public static final String EXTRA_DISTRIBUTION_CENTER_ID = "extra_distribution_center_id";
    public static final String EXTRA_DRIVER_ID = "extra_driver_id";
    public static final String EXTRA_TIME_INTERVAL = "extra_time_interval";
    private static final int MAX_LINES_TIL_ERROR = 2;
    private static final String PASSWORD = "password";
    private static final String TAG_DEBUG = LoginFragment.class.getSimpleName();
    private static final String TAG_REQUEST = LoginFragment.class.getSimpleName();
    private static final String USERNAME = "username";
    private EditText mDeliveryIdEditText;
    private TextInputLayout mDeliveryIdTextInputLayout;
    private XeiFragment.FragmentChanger mFragmentChanger;
    private Button mLoginButton;
    private EditText mPasswordEditText;
    private TextInputLayout mPasswordTextInputLayout;
    private XeiTextView mVersionTextView;

    public interface OnCheckDeliveryLoginListener {
        void deliveryIsLoggedIn(Courier courier);

        void thereIsNotAnyDeliveryLoggedIn();
    }

    public static LoginFragment newInstance() {
        return new LoginFragment();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_login, container, false);
        LinearLayout internalViewNode = (LinearLayout) view.findViewById(R.id.fragmentLoginCard_linearLayout_internalViewNode);
        this.mDeliveryIdTextInputLayout = (TextInputLayout) view.findViewById(R.id.fragmentLogin_textInputLayout_deliveryId);
        this.mPasswordTextInputLayout = (TextInputLayout) view.findViewById(R.id.fragmentLogin_textInputLayout_password);
        Typeface errorMsgTypeface = TypeFaceHelper.getInstance().getTypeFace(1);
        setTypefaceToTextInputLayoutError(this.mDeliveryIdTextInputLayout, errorMsgTypeface);
        setTypefaceToTextInputLayoutError(this.mPasswordTextInputLayout, errorMsgTypeface);
        makeTextInputLayoutErrorScrollable(this.mPasswordTextInputLayout, 2);
        this.mDeliveryIdEditText = (EditText) internalViewNode.findViewById(R.id.fragmentLogin_editText_deliveryId);
        this.mPasswordEditText = (EditText) internalViewNode.findViewById(R.id.fragmentLogin_editText_password);
        this.mLoginButton = (Button) view.findViewById(R.id.fragmentLogin_button_login);
        this.mLoginButton.setOnClickListener(this);
        this.mVersionTextView = (XeiTextView) view.findViewById(R.id.fragmentLogin_xeiTextView_version);
        this.mVersionTextView.setText(getString(R.string.login_label_versionName) + " " + Util.getAppVersionName(getContext()));
        if (savedInstanceState != null) {
            this.mDeliveryIdEditText.setText(savedInstanceState.getString(USERNAME));
            this.mPasswordEditText.setText(savedInstanceState.getString("password"));
        }
        return view;
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString(USERNAME, this.mDeliveryIdEditText.getText().toString());
        outState.putString("password", this.mPasswordEditText.getText().toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof XeiFragment.FragmentChanger) {
            this.mFragmentChanger = (XeiFragment.FragmentChanger) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement XeiFragment.FragmentChanger");
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mFragmentChanger = null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View clickedView) {
        if (clickedView.getId() == R.id.fragmentLogin_button_login) {
            this.mDeliveryIdTextInputLayout.setError(null);
            this.mPasswordTextInputLayout.setError(null);
            if (this.mDeliveryIdEditText.getText().toString().isEmpty()) {
                this.mDeliveryIdTextInputLayout.setError(getString(R.string.error_textInputLayout_deliveryName_emptyField));
            }
            if (this.mPasswordEditText.getText().toString().isEmpty()) {
                this.mPasswordTextInputLayout.setError(getString(R.string.error_textInputLayout_password_emptyField));
            }
            if (!this.mDeliveryIdEditText.getText().toString().isEmpty() && !this.mPasswordEditText.getText().toString().isEmpty()) {
                this.mLoginButton.setVisibility(8);
                login();
            }
        }
    }

    public static void checkDeliveryLogin(OnCheckDeliveryLoginListener deliveryLoggedInListener) {
        Realm realm = Realm.getDefaultInstance();
        RealmResults<Courier> result = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (result.size() == 0) {
            deliveryLoggedInListener.thereIsNotAnyDeliveryLoggedIn();
        } else if (result.size() == 1) {
            deliveryLoggedInListener.deliveryIsLoggedIn((Courier) result.get(0));
        } else {
            Log.e(TAG_DEBUG, "There exist more than one logged in delivery!");
        }
    }

    private void login() {
        int CVersion = Build.VERSION.SDK_INT;
        Log.e("CVersion", CVersion + "");
        final String deliveryName = this.mDeliveryIdEditText.getText().toString().trim();
        String password = this.mPasswordEditText.getText().toString().trim();
        WebApi.makeLoginRequest(deliveryName, password, BuildConfig.VERSION_NAME, TAG_REQUEST, new WebApiRequest.WebApiListener<LoginResult>() { // from class: com.digikala.dms.view.fragment.LoginFragment.1
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(LoginResult response) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                AnswersHelper.logInEvent(deliveryName, "Success");
                AnalyticHelper.logInEvent(deliveryName, "Success");
                CrashlyticsHelper.logUser(response.getCourier().getId(), response.getCourier().getName());
                LoginFragment.this.storeAuthToken(response.getAuthToken());
                LoginFragment.storeDeliveryId(response.getCourier().getId());
                LoginFragment.this.storeTrackingType(response.getTrackingType());
                LoginFragment.this.getConstantValueResponse(response.getCourier().getId());
                Courier courier = LoginFragment.updateCourierTable(response.getCourier());
                LoginFragment.storeDistributionPointId(response.getCourier().getDistributionCenter().getId() + "");
                LoginFragment.sendRegistrationFirebaseTokenToServer(courier.getId(), FirebaseInstanceId.getInstance().getToken());
                Util.setServerDateTimeResponse(LoginFragment.this.getActivity(), response.getDateTime());
                if (Util.getShipmentNextStepIsPriority(LoginFragment.this.getActivity())) {
                    LoginFragment.this.startActivity(new Intent(LoginFragment.this.getActivity(), (Class<?>) NewShipmentPriorityActivity.class));
                    LoginFragment.this.getActivity().finish();
                    return;
                }
                if (courier.getBatch() == null || courier.getBatch().getShipments() == null || courier.getBatch().getShipments().size() <= 0) {
                    if (LoginFragment.this.mFragmentChanger != null) {
                        LoginFragment.this.mFragmentChanger.changeFragment(AssignedShipmentsFragment.newInstance());
                        return;
                    } else {
                        Log.e(LoginFragment.TAG_DEBUG, "Can not change Fragment: mFragmentChanger is null!");
                        return;
                    }
                }
                Log.e("bug_login", FirebaseAnalytics.Event.LOGIN);
                LoginFragment.this.startActivity(new Intent(LoginFragment.this.getContext(), (Class<?>) MainActivity.class));
                LoginFragment.this.getActivity().finish();
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage + "");
                AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage + "");
                AnswersHelper.logInEvent(deliveryName, "Error");
                AnalyticHelper.logInEvent(deliveryName, "Error");
                LoginFragment.this.mPasswordTextInputLayout.setError(errorMessage);
                LoginFragment.this.mLoginButton.setVisibility(0);
                Log.e(LoginFragment.TAG_DEBUG, "Can not Login: " + errorMessage);
            }
        }, null).send();
    }

    public static void logout() {
        WebApi.makeLogoutRequest(Util.getDeliveryId(App.getApplication()), TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.fragment.LoginFragment.2
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(Boolean successfullyLogout) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                if (successfullyLogout.booleanValue()) {
                    Intent serviceIntent = new Intent(App.getApplication(), (Class<?>) ForegroundService.class);
                    App.getApplication().stopService(serviceIntent);
                    Intent gpsService = new Intent(App.getApplication(), (Class<?>) GpsService.class);
                    App.getApplication().stopService(gpsService);
                    AnswersHelper.logOutEvent(Util.getDeliveryId(App.getApplication()), "Success");
                    AnalyticHelper.logOutEvent(Util.getDeliveryId(App.getApplication()), "Success");
                    Realm tempRealm = Realm.getDefaultInstance();
                    RealmResults<Courier> loggedInDeliveries = tempRealm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
                    tempRealm.beginTransaction();
                    if (loggedInDeliveries.size() == 1) {
                        ((Courier) loggedInDeliveries.get(0)).setIsLoggedIn(false);
                        LoginFragment.sendRegistrationFirebaseTokenToServer(Util.getDeliveryId(App.getApplication()), null);
                    }
                    tempRealm.commitTransaction();
                    tempRealm.close();
                    Util.getCourierTrackingType(App.getApplication()).getHasTrack().booleanValue();
                    Util.setDeliveryAuthToken(App.getApplication(), null);
                    Util.setDeliveryId(App.getApplication(), null);
                    Util.setBachId(App.getApplication().getApplicationContext(), null);
                    Util.setDistributionPointId(App.getApplication(), null);
                    Util.setCourierTrackingType(App.getApplication(), null);
                    Realm realm = Realm.getDefaultInstance();
                    realm.executeTransaction(new Realm.Transaction() { // from class: com.digikala.dms.view.fragment.LoginFragment.2.1
                        @Override // io.realm.Realm.Transaction
                        public void execute(Realm realm2) {
                            RealmResults<CardType> rows = realm2.where(CardType.class).findAll();
                            rows.deleteAllFromRealm();
                        }
                    });
                    realm.close();
                    Intent intent = new Intent(App.getApplication(), (Class<?>) LauncherActivity.class);
                    intent.setFlags(268468224);
                    App.getApplication().startActivity(intent);
                    return;
                }
                AnswersHelper.logOutEvent(Util.getDeliveryId(App.getApplication()), "Error");
                AnalyticHelper.logOutEvent(Util.getDeliveryId(App.getApplication()), "Error");
                Log.e(LoginFragment.TAG_DEBUG, "Unsuccessful Logout Process!");
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage + "");
                AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage + "");
                AnswersHelper.logOutEvent(Util.getDeliveryId(App.getApplication()), "Error");
                AnalyticHelper.logOutEvent(Util.getDeliveryId(App.getApplication()), "Error");
                Toast.makeText(App.getApplication(), errorMessage, 0).show();
                Log.e(LoginFragment.TAG_DEBUG, "Unsuccessful Logout Process!");
            }
        }, null).send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeAuthToken(String authToken) {
        Util.setDeliveryAuthToken(App.getApplication().getApplicationContext(), authToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendRegistrationFirebaseTokenToServer(String courierId, String refreshedToken) {
    }

    public static void storeDeliveryId(String deliveryId) {
        Util.setDeliveryId(App.getApplication().getApplicationContext(), deliveryId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeTrackingType(TrackingType trackingType) {
        Util.setCourierTrackingType(App.getApplication().getApplicationContext(), trackingType);
    }

    public static void storeDistributionPointId(String id) {
        if (!id.isEmpty()) {
            Util.setDistributionPointId(App.getApplication(), id);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Courier updateCourierTable(Courier courier) {
        Realm realm = Realm.getDefaultInstance();
        RealmResults<Courier> results = realm.where(Courier.class).equalTo("id", courier.getId()).findAll();
        if (results.size() == 0) {
            realm.beginTransaction();
            Courier newCourier = (Courier) realm.createObject(Courier.class);
            newCourier.setId(courier.getId());
            newCourier.setName(courier.getName());
            newCourier.setUserName(courier.getUserName());
            newCourier.setAvatarUrl(courier.getAvatarUrl());
            DistributionCenter distributionCenter = (DistributionCenter) realm.copyToRealm(courier.getDistributionCenter());
            newCourier.setDistributionCenter(distributionCenter);
            newCourier.setIsLoggedIn(true);
            realm.commitTransaction();
            return newCourier;
        }
        if (results.size() == 1) {
            realm.beginTransaction();
            ((Courier) results.get(0)).setIsLoggedIn(true);
            ((Courier) results.get(0)).setUserName(courier.getUserName());
            realm.commitTransaction();
            return (Courier) results.get(0);
        }
        Log.e(TAG_DEBUG, "There are more than one similar courier in the Courier table!");
        return null;
    }

    private void setTypefaceToTextInputLayoutError(TextInputLayout textInputLayout, Typeface typeface) {
        LinearLayout linearLayout = (LinearLayout) textInputLayout.getChildAt(1);
        if (linearLayout.getChildAt(0) instanceof TextView) {
            ((TextView) linearLayout.getChildAt(0)).setTypeface(typeface);
            ((TextView) linearLayout.getChildAt(0)).setMaxLines(2);
            ((TextView) linearLayout.getChildAt(0)).setMovementMethod(new ScrollingMovementMethod());
        }
    }

    private void makeTextInputLayoutErrorScrollable(TextInputLayout textInputLayout, int maxLines) {
        LinearLayout linearLayout = (LinearLayout) textInputLayout.getChildAt(1);
        if (linearLayout.getChildAt(0) instanceof TextView) {
            ((TextView) linearLayout.getChildAt(0)).setMaxLines(maxLines);
            ((TextView) linearLayout.getChildAt(0)).setMovementMethod(new ScrollingMovementMethod());
        }
    }

    public void getConstantValueResponse(String deliveryId) {
        WebApi.getConstantValueResponse(deliveryId, TAG_REQUEST, new WebApiRequest.WebApiListener<ConstantValue>() { // from class: com.digikala.dms.view.fragment.LoginFragment.3
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(ConstantValue response) {
                if (response != null) {
                    if (response.getCredentials() != null) {
                        LoginFragment.storeCardTypes(response.getCredentials());
                    }
                    if (response.getCancellationReasons() != null) {
                        LoginFragment.this.storeRejectReasonItem(response.getCancellationReasons());
                    }
                    if (response.getUnprocessedReasons() != null) {
                        LoginFragment.this.storeUnprocessedReasonItem(response.getUnprocessedReasons());
                    }
                    response.getAnswersPerQuestion();
                }
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                if (errorMessage != null) {
                    Log.i(LoginFragment.TAG_DEBUG, errorMessage);
                }
            }
        }, null).send();
    }

    public static void storeCardTypes(List<CardType> cardTypes) {
        Realm realm = Realm.getDefaultInstance();
        for (CardType cardType : cardTypes) {
            realm.beginTransaction();
            CardType cardTypeRealm = (CardType) realm.createObject(CardType.class);
            cardTypeRealm.setId(cardType.getId());
            cardTypeRealm.setTitle(cardType.getTitle());
            realm.commitTransaction();
        }
        realm.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeRejectReasonItem(List<RejectReason> rejectReasons) {
        Realm realm = Realm.getDefaultInstance();
        realm.beginTransaction();
        realm.where(RejectReason.class).findAll().deleteAllFromRealm();
        realm.commitTransaction();
        for (RejectReason rejectReason : rejectReasons) {
            realm.beginTransaction();
            RejectReason rejectReasonObj = (RejectReason) realm.createObject(RejectReason.class);
            rejectReasonObj.setId(rejectReason.getId());
            rejectReasonObj.setTitle(rejectReason.getTitle());
            rejectReasonObj.setType(rejectReason.getType());
            realm.commitTransaction();
        }
        realm.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeUnprocessedReasonItem(List<UnprocessedReason> rejectReasons) {
        Realm realm = Realm.getDefaultInstance();
        realm.beginTransaction();
        realm.where(UnprocessedReason.class).findAll().deleteAllFromRealm();
        realm.commitTransaction();
        for (UnprocessedReason rejectReason : rejectReasons) {
            realm.beginTransaction();
            UnprocessedReason rejectReasonObj = (UnprocessedReason) realm.createObject(UnprocessedReason.class);
            rejectReasonObj.setId(rejectReason.getId());
            rejectReasonObj.setTitle(rejectReason.getTitle());
            realm.commitTransaction();
        }
        realm.close();
    }

    private void storeQuestionAnswer(List<QuestionAnswer> questionAnswers) {
        Realm realm = Realm.getDefaultInstance();
        realm.beginTransaction();
        realm.where(RejectReason.class).findAll().deleteAllFromRealm();
        realm.commitTransaction();
        for (QuestionAnswer questionAnswer : questionAnswers) {
            realm.beginTransaction();
            QuestionAnswer questionAnswerObj = (QuestionAnswer) realm.createObject(QuestionAnswer.class);
            for (int i = 0; i < questionAnswers.size(); i++) {
                for (int j = 0; j < questionAnswer.getAnswers().size(); j++) {
                    Answer answer = (Answer) realm.createObject(Answer.class);
                    answer.setId(questionAnswer.getAnswers().get(j).getId());
                    answer.setAnswer(questionAnswer.getAnswers().get(j).getAnswer());
                }
                Question question = new Question();
                question.setId(questionAnswer.getQuestion().getId());
                question.setQuestion(questionAnswer.getQuestion().getQuestion());
                question.setType(questionAnswer.getQuestion().getType());
                question.setRequired(questionAnswer.getQuestion().getRequired());
                realm.commitTransaction();
            }
            questionAnswerObj.setAnswers(questionAnswer.getAnswers());
            questionAnswerObj.setQuestion(questionAnswer.getQuestion());
            realm.commitTransaction();
            realm.commitTransaction();
        }
        realm.close();
    }
}
