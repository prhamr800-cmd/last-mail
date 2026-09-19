package com.afollestad.materialdialogs;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import com.afollestad.materialdialogs.internal.MDRootLayout;

/* JADX INFO: loaded from: classes2.dex */
class DialogBase extends Dialog implements DialogInterface.OnShowListener {
    private DialogInterface.OnShowListener showListener;
    protected MDRootLayout view;

    DialogBase(Context context, int theme) {
        super(context, theme);
    }

    @Override // android.app.Dialog
    public View findViewById(int id) {
        return this.view.findViewById(id);
    }

    @Override // android.app.Dialog
    public final void setOnShowListener(DialogInterface.OnShowListener listener) {
        this.showListener = listener;
    }

    final void setOnShowListenerInternal() {
        super.setOnShowListener(this);
    }

    final void setViewInternal(View view) {
        super.setContentView(view);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialog) {
        if (this.showListener != null) {
            this.showListener.onShow(dialog);
        }
    }

    @Override // android.app.Dialog
    @Deprecated
    public void setContentView(int layoutResID) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }

    @Override // android.app.Dialog
    @Deprecated
    public void setContentView(@NonNull View view) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }

    @Override // android.app.Dialog
    @Deprecated
    public void setContentView(@NonNull View view, ViewGroup.LayoutParams params) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }
}
