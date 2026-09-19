package com.github.florent37.expansionpanel.viewgroup;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.github.florent37.expansionpanel.R;

/* JADX INFO: loaded from: classes2.dex */
public class ExpansionsViewGroupLinearLayout extends LinearLayout {
    private final ExpansionViewGroupManager expansionViewGroupManager;

    public ExpansionsViewGroupLinearLayout(Context context) {
        super(context);
        this.expansionViewGroupManager = new ExpansionViewGroupManager(this);
        init(context, null);
    }

    public ExpansionsViewGroupLinearLayout(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.expansionViewGroupManager = new ExpansionViewGroupManager(this);
        init(context, attrs);
    }

    public ExpansionsViewGroupLinearLayout(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.expansionViewGroupManager = new ExpansionViewGroupManager(this);
        init(context, attrs);
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attrs) {
        TypedArray a;
        if (attrs != null && (a = context.obtainStyledAttributes(attrs, R.styleable.ExpansionsViewGroupLinearLayout)) != null) {
            this.expansionViewGroupManager.setOpenOnlyOne(a.getBoolean(R.styleable.ExpansionsViewGroupLinearLayout_expansion_openOnlyOne, false));
            a.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
        this.expansionViewGroupManager.onViewAdded();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.expansionViewGroupManager.onViewAdded();
    }
}
