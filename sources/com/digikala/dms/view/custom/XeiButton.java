package com.digikala.dms.view.custom;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Button;
import com.digikala.dms.R;
import com.digikala.dms.helper.TypeFaceHelper;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class XeiButton extends Button {
    private static final String LANGUAGE_ENGLISH = "en";
    private static final String LANGUAGE_PERSIAN = "fa";
    private static final int LOCALE_AUTO = 0;
    private static final int LOCALE_EN_US = 1;
    private static final int LOCALE_FA_IR = 2;
    private static final int LOCALE_HYBRID = 3;
    private static final int STYLE_BOLD = 1;
    private static final int STYLE_NORMAL = 0;

    public XeiButton(Context context) {
        super(context);
        init(context, null);
    }

    public XeiButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public XeiButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs != null) {
            setLocaleTypeface(context, attrs);
        }
    }

    private void setLocaleTypeface(Context context, AttributeSet attrs) {
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.XeiLocaledView);
        try {
            int localeEnum = typedArray.getInt(0, 0);
            int styleFlag = typedArray.getInt(1, 0);
            TypeFaceHelper typeFaceHelper = TypeFaceHelper.getInstance();
            switch (localeEnum) {
                case 0:
                    String language = Locale.getDefault().getLanguage();
                    if (language.equals(LANGUAGE_ENGLISH)) {
                        switch (styleFlag) {
                            case 0:
                                setTypeface(typeFaceHelper.getTypeFace(2));
                                break;
                            case 1:
                                setTypeface(typeFaceHelper.getTypeFace(3));
                                break;
                        }
                        break;
                    } else if (language.equals(LANGUAGE_PERSIAN)) {
                        switch (styleFlag) {
                            case 0:
                                setTypeface(typeFaceHelper.getTypeFace(4));
                                break;
                            case 1:
                                setTypeface(typeFaceHelper.getTypeFace(5));
                                break;
                        }
                    }
                    break;
                case 1:
                    switch (styleFlag) {
                        case 0:
                            setTypeface(typeFaceHelper.getTypeFace(2));
                            break;
                        case 1:
                            setTypeface(typeFaceHelper.getTypeFace(3));
                            break;
                    }
                    break;
                case 2:
                    switch (styleFlag) {
                        case 0:
                            setTypeface(typeFaceHelper.getTypeFace(4));
                            break;
                        case 1:
                            setTypeface(typeFaceHelper.getTypeFace(5));
                            break;
                    }
                    break;
            }
        } catch (Exception e) {
        } catch (Throwable th) {
            typedArray.recycle();
            throw th;
        }
        typedArray.recycle();
    }
}
