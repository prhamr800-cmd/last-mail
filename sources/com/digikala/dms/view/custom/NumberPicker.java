package com.digikala.dms.view.custom;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.digikala.dms.R;
import com.digikala.dms.helper.TypeFaceHelper;

/* JADX INFO: loaded from: classes2.dex */
public class NumberPicker extends android.widget.NumberPicker {
    public NumberPicker(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.view.ViewGroup
    public void addView(View child) {
        super.addView(child);
        updateView(child);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
        updateView(child);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View child, ViewGroup.LayoutParams params) {
        super.addView(child, params);
        updateView(child);
    }

    private void updateView(View view) {
        if (view instanceof EditText) {
            ((EditText) view).setTextSize(48.0f);
            ((EditText) view).setTextColor(ContextCompat.getColor(getContext(), R.color.grey_600));
            ((EditText) view).setTypeface(TypeFaceHelper.getInstance().getTypeFace(4));
        }
    }
}
