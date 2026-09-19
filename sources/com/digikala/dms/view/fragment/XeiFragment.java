package com.digikala.dms.view.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.widget.Toast;
import com.digikala.dms.helper.webservice.WebApiRequest;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class XeiFragment extends Fragment implements WebApiRequest.LoadRequests {
    private boolean mLoadDataOnResume;
    protected String mRequestTag = getClass().getSimpleName();
    private ArrayList<WebApiRequest<?>> mWebApiRequestList;

    public interface FragmentChanger {
        void changeFragment(Fragment fragment);
    }

    protected abstract void makeApiRequests();

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        makeApiRequests();
    }

    @Override // com.digikala.dms.helper.webservice.WebApiRequest.LoadRequests
    public void addRequestToLoadList(WebApiRequest<?> request, boolean loadDataOnResume) {
        if (this.mWebApiRequestList == null) {
            this.mWebApiRequestList = new ArrayList<>();
        }
        this.mWebApiRequestList.add(request);
        this.mLoadDataOnResume = loadDataOnResume;
    }

    protected void loadData() {
        for (WebApiRequest<?> request : this.mWebApiRequestList) {
            if (request.getStatus() == WebApiRequest.RequestStatus.READY || request.getStatus() == WebApiRequest.RequestStatus.ERROR) {
                request.send();
            }
        }
    }

    @Override // com.digikala.dms.helper.webservice.WebApiRequest.LoadRequests
    public void reloadRequests() {
        if (!isDetached()) {
            Toast.makeText(getContext(), "Retry kon", 0).show();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.mLoadDataOnResume) {
            loadData();
        }
    }
}
