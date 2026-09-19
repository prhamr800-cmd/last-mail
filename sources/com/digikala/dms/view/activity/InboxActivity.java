package com.digikala.dms.view.activity;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import com.digikala.dms.R;
import com.digikala.dms.adapter.InboxRecyclerViewAdapter;
import com.digikala.dms.model.domain.ServerMessages;
import io.realm.Realm;

/* JADX INFO: loaded from: classes2.dex */
public class InboxActivity extends AppCompatActivity {
    private InboxRecyclerViewAdapter adapter;
    private LinearLayoutManager linearLayoutManager;
    private RecyclerView recyclerView;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_inbox);
        initUI();
    }

    private void initUI() {
        this.recyclerView = (RecyclerView) findViewById(R.id.recyclerView);
        this.adapter = new InboxRecyclerViewAdapter(Realm.getDefaultInstance().where(ServerMessages.class).findAll(), this);
        this.recyclerView.setAdapter(this.adapter);
        this.linearLayoutManager = new LinearLayoutManager(this);
        this.recyclerView.setLayoutManager(this.linearLayoutManager);
    }
}
