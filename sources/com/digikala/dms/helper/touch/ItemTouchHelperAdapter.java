package com.digikala.dms.helper.touch;

import android.support.v7.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public interface ItemTouchHelperAdapter {
    void onItemDismiss(int i);

    boolean onItemMove(int i, int i2, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2);
}
