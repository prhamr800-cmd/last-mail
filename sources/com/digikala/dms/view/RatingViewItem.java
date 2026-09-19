package com.digikala.dms.view;

import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class RatingViewItem {
    private int id;
    private boolean selected;
    private TextView textView;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public TextView getTextView() {
        return this.textView;
    }

    public void setTextView(TextView textView) {
        this.textView = textView;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
}
