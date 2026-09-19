package com.digikala.dms.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.digikala.dms.R;
import com.digikala.dms.model.domain.CardType;
import com.digikala.dms.view.custom.XeiTextView;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class UserInformationCardViewAdapter extends BaseAdapter {
    private Context context;
    LayoutInflater inflater;
    private List<CardType> list;

    public UserInformationCardViewAdapter(Context context, List<CardType> list) {
        this.context = context;
        this.list = list;
        this.inflater = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.list.get(i).getId();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = this.inflater.inflate(R.layout.fragment_user_information_card_raw, (ViewGroup) null);
        XeiTextView titleTextView = (XeiTextView) view2.findViewById(R.id.titleTextView);
        titleTextView.setText(this.list.get(i).getTitle());
        return view2;
    }
}
