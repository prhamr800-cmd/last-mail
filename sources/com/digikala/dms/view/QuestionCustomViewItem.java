package com.digikala.dms.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.digikala.dms.view.custom.XeiTextView;

/* JADX INFO: loaded from: classes2.dex */
public class QuestionCustomViewItem {
    private View circle;
    private int id;
    private ImageView imageView;
    private RelativeLayout layout;
    private boolean selected;
    private XeiTextView textView;
    private View view;
    private View viewIcon;

    public View getView() {
        return this.view;
    }

    public void setView(View view) {
        this.view = view;
    }

    public XeiTextView getTextView() {
        return this.textView;
    }

    public void setTextView(XeiTextView textView) {
        this.textView = textView;
    }

    public View getViewIcon() {
        return this.viewIcon;
    }

    public void setViewIcon(View viewIcon) {
        this.viewIcon = viewIcon;
    }

    public ImageView getImageView() {
        return this.imageView;
    }

    public void setImageView(ImageView imageView) {
        this.imageView = imageView;
    }

    public View getCircle() {
        return this.circle;
    }

    public void setCircle(View circle) {
        this.circle = circle;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public RelativeLayout getLayout() {
        return this.layout;
    }

    public void setLayout(RelativeLayout layout) {
        this.layout = layout;
    }
}
