package com.afollestad.materialdialogs;

import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.StyleRes;
import android.support.annotation.UiThread;
import android.support.v7.widget.RecyclerView;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.internal.MDAdapter;
import com.afollestad.materialdialogs.internal.MDButton;
import com.afollestad.materialdialogs.internal.MDRootLayout;
import com.afollestad.materialdialogs.internal.MDTintHelper;
import com.afollestad.materialdialogs.util.DialogUtils;
import java.util.ArrayList;
import java.util.Arrays;
import me.zhanghai.android.materialprogressbar.HorizontalProgressDrawable;
import me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable;
import me.zhanghai.android.materialprogressbar.IndeterminateHorizontalProgressDrawable;

/* JADX INFO: loaded from: classes2.dex */
class DialogInit {
    DialogInit() {
    }

    @StyleRes
    static int getTheme(@NonNull MaterialDialog.Builder builder) {
        boolean darkTheme = DialogUtils.resolveBoolean(builder.context, R.attr.md_dark_theme, builder.theme == Theme.DARK);
        builder.theme = darkTheme ? Theme.DARK : Theme.LIGHT;
        return darkTheme ? R.style.MD_Dark : R.style.MD_Light;
    }

    @LayoutRes
    static int getInflateLayout(MaterialDialog.Builder builder) {
        if (builder.customView != null) {
            return R.layout.md_dialog_custom;
        }
        if (builder.items != null || builder.adapter != null) {
            if (builder.checkBoxPrompt != null) {
                return R.layout.md_dialog_list_check;
            }
            return R.layout.md_dialog_list;
        }
        if (builder.progress > -2) {
            return R.layout.md_dialog_progress;
        }
        if (builder.indeterminateProgress) {
            if (builder.indeterminateIsHorizontalProgress) {
                return R.layout.md_dialog_progress_indeterminate_horizontal;
            }
            return R.layout.md_dialog_progress_indeterminate;
        }
        if (builder.inputCallback != null) {
            if (builder.checkBoxPrompt != null) {
                return R.layout.md_dialog_input_check;
            }
            return R.layout.md_dialog_input;
        }
        if (builder.checkBoxPrompt != null) {
            return R.layout.md_dialog_basic_check;
        }
        return R.layout.md_dialog_basic;
    }

    @UiThread
    static void init(MaterialDialog materialDialog) {
        boolean zResolveBoolean;
        int i;
        int i2;
        View view;
        MaterialDialog.Builder builder = materialDialog.builder;
        materialDialog.setCancelable(builder.cancelable);
        materialDialog.setCanceledOnTouchOutside(builder.canceledOnTouchOutside);
        if (builder.backgroundColor == 0) {
            builder.backgroundColor = DialogUtils.resolveColor(builder.context, R.attr.md_background_color, DialogUtils.resolveColor(materialDialog.getContext(), R.attr.colorBackgroundFloating));
        }
        if (builder.backgroundColor != 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(builder.context.getResources().getDimension(R.dimen.md_bg_corner_radius));
            gradientDrawable.setColor(builder.backgroundColor);
            materialDialog.getWindow().setBackgroundDrawable(gradientDrawable);
        }
        if (!builder.positiveColorSet) {
            builder.positiveColor = DialogUtils.resolveActionTextColorStateList(builder.context, R.attr.md_positive_color, builder.positiveColor);
        }
        if (!builder.neutralColorSet) {
            builder.neutralColor = DialogUtils.resolveActionTextColorStateList(builder.context, R.attr.md_neutral_color, builder.neutralColor);
        }
        if (!builder.negativeColorSet) {
            builder.negativeColor = DialogUtils.resolveActionTextColorStateList(builder.context, R.attr.md_negative_color, builder.negativeColor);
        }
        if (!builder.widgetColorSet) {
            builder.widgetColor = DialogUtils.resolveColor(builder.context, R.attr.md_widget_color, builder.widgetColor);
        }
        if (!builder.titleColorSet) {
            builder.titleColor = DialogUtils.resolveColor(builder.context, R.attr.md_title_color, DialogUtils.resolveColor(materialDialog.getContext(), android.R.attr.textColorPrimary));
        }
        if (!builder.contentColorSet) {
            builder.contentColor = DialogUtils.resolveColor(builder.context, R.attr.md_content_color, DialogUtils.resolveColor(materialDialog.getContext(), android.R.attr.textColorSecondary));
        }
        if (!builder.itemColorSet) {
            builder.itemColor = DialogUtils.resolveColor(builder.context, R.attr.md_item_color, builder.contentColor);
        }
        materialDialog.title = (TextView) materialDialog.view.findViewById(R.id.md_title);
        materialDialog.icon = (ImageView) materialDialog.view.findViewById(R.id.md_icon);
        materialDialog.titleFrame = materialDialog.view.findViewById(R.id.md_titleFrame);
        materialDialog.content = (TextView) materialDialog.view.findViewById(R.id.md_content);
        materialDialog.recyclerView = (RecyclerView) materialDialog.view.findViewById(R.id.md_contentRecyclerView);
        materialDialog.checkBoxPrompt = (CheckBox) materialDialog.view.findViewById(R.id.md_promptCheckbox);
        materialDialog.positiveButton = (MDButton) materialDialog.view.findViewById(R.id.md_buttonDefaultPositive);
        materialDialog.neutralButton = (MDButton) materialDialog.view.findViewById(R.id.md_buttonDefaultNeutral);
        materialDialog.negativeButton = (MDButton) materialDialog.view.findViewById(R.id.md_buttonDefaultNegative);
        if (builder.inputCallback != null && builder.positiveText == null) {
            builder.positiveText = builder.context.getText(android.R.string.ok);
        }
        materialDialog.positiveButton.setVisibility(builder.positiveText != null ? 0 : 8);
        materialDialog.neutralButton.setVisibility(builder.neutralText != null ? 0 : 8);
        materialDialog.negativeButton.setVisibility(builder.negativeText != null ? 0 : 8);
        materialDialog.positiveButton.setFocusable(true);
        materialDialog.neutralButton.setFocusable(true);
        materialDialog.negativeButton.setFocusable(true);
        if (builder.positiveFocus) {
            materialDialog.positiveButton.requestFocus();
        }
        if (builder.neutralFocus) {
            materialDialog.neutralButton.requestFocus();
        }
        if (builder.negativeFocus) {
            materialDialog.negativeButton.requestFocus();
        }
        if (builder.icon != null) {
            materialDialog.icon.setVisibility(0);
            materialDialog.icon.setImageDrawable(builder.icon);
        } else {
            Drawable drawableResolveDrawable = DialogUtils.resolveDrawable(builder.context, R.attr.md_icon);
            if (drawableResolveDrawable != null) {
                materialDialog.icon.setVisibility(0);
                materialDialog.icon.setImageDrawable(drawableResolveDrawable);
            } else {
                materialDialog.icon.setVisibility(8);
            }
        }
        int dimensionPixelSize = builder.maxIconSize;
        if (dimensionPixelSize == -1) {
            dimensionPixelSize = DialogUtils.resolveDimension(builder.context, R.attr.md_icon_max_size);
        }
        if (builder.limitIconToDefaultSize || DialogUtils.resolveBoolean(builder.context, R.attr.md_icon_limit_icon_to_default_size)) {
            dimensionPixelSize = builder.context.getResources().getDimensionPixelSize(R.dimen.md_icon_max_size);
        }
        if (dimensionPixelSize > -1) {
            materialDialog.icon.setAdjustViewBounds(true);
            materialDialog.icon.setMaxHeight(dimensionPixelSize);
            materialDialog.icon.setMaxWidth(dimensionPixelSize);
            materialDialog.icon.requestLayout();
        }
        if (!builder.dividerColorSet) {
            builder.dividerColor = DialogUtils.resolveColor(builder.context, R.attr.md_divider_color, DialogUtils.resolveColor(materialDialog.getContext(), R.attr.md_divider));
        }
        materialDialog.view.setDividerColor(builder.dividerColor);
        if (materialDialog.title != null) {
            materialDialog.setTypeface(materialDialog.title, builder.mediumFont);
            materialDialog.title.setTextColor(builder.titleColor);
            materialDialog.title.setGravity(builder.titleGravity.getGravityInt());
            if (Build.VERSION.SDK_INT >= 17) {
                materialDialog.title.setTextAlignment(builder.titleGravity.getTextAlignment());
            }
            if (builder.title == null) {
                materialDialog.titleFrame.setVisibility(8);
            } else {
                materialDialog.title.setText(builder.title);
                materialDialog.titleFrame.setVisibility(0);
            }
        }
        if (materialDialog.content != null) {
            materialDialog.content.setMovementMethod(new LinkMovementMethod());
            materialDialog.setTypeface(materialDialog.content, builder.regularFont);
            materialDialog.content.setLineSpacing(0.0f, builder.contentLineSpacingMultiplier);
            if (builder.linkColor == null) {
                materialDialog.content.setLinkTextColor(DialogUtils.resolveColor(materialDialog.getContext(), android.R.attr.textColorPrimary));
            } else {
                materialDialog.content.setLinkTextColor(builder.linkColor);
            }
            materialDialog.content.setTextColor(builder.contentColor);
            materialDialog.content.setGravity(builder.contentGravity.getGravityInt());
            if (Build.VERSION.SDK_INT >= 17) {
                materialDialog.content.setTextAlignment(builder.contentGravity.getTextAlignment());
            }
            if (builder.content != null) {
                materialDialog.content.setText(builder.content);
                materialDialog.content.setVisibility(0);
            } else {
                materialDialog.content.setVisibility(8);
            }
        }
        if (materialDialog.checkBoxPrompt != null) {
            materialDialog.checkBoxPrompt.setText(builder.checkBoxPrompt);
            materialDialog.checkBoxPrompt.setChecked(builder.checkBoxPromptInitiallyChecked);
            materialDialog.checkBoxPrompt.setOnCheckedChangeListener(builder.checkBoxPromptListener);
            materialDialog.setTypeface(materialDialog.checkBoxPrompt, builder.regularFont);
            materialDialog.checkBoxPrompt.setTextColor(builder.contentColor);
            MDTintHelper.setTint(materialDialog.checkBoxPrompt, builder.widgetColor);
        }
        materialDialog.view.setButtonGravity(builder.buttonsGravity);
        materialDialog.view.setButtonStackedGravity(builder.btnStackedGravity);
        materialDialog.view.setStackingBehavior(builder.stackingBehavior);
        if (Build.VERSION.SDK_INT < 14 || (zResolveBoolean = DialogUtils.resolveBoolean(builder.context, android.R.attr.textAllCaps, true))) {
            zResolveBoolean = DialogUtils.resolveBoolean(builder.context, R.attr.textAllCaps, true);
        }
        MDButton mDButton = materialDialog.positiveButton;
        materialDialog.setTypeface(mDButton, builder.mediumFont);
        mDButton.setAllCapsCompat(zResolveBoolean);
        mDButton.setText(builder.positiveText);
        mDButton.setTextColor(builder.positiveColor);
        materialDialog.positiveButton.setStackedSelector(materialDialog.getButtonSelector(DialogAction.POSITIVE, true));
        materialDialog.positiveButton.setDefaultSelector(materialDialog.getButtonSelector(DialogAction.POSITIVE, false));
        materialDialog.positiveButton.setTag(DialogAction.POSITIVE);
        materialDialog.positiveButton.setOnClickListener(materialDialog);
        MDButton mDButton2 = materialDialog.negativeButton;
        materialDialog.setTypeface(mDButton2, builder.mediumFont);
        mDButton2.setAllCapsCompat(zResolveBoolean);
        mDButton2.setText(builder.negativeText);
        mDButton2.setTextColor(builder.negativeColor);
        materialDialog.negativeButton.setStackedSelector(materialDialog.getButtonSelector(DialogAction.NEGATIVE, true));
        materialDialog.negativeButton.setDefaultSelector(materialDialog.getButtonSelector(DialogAction.NEGATIVE, false));
        materialDialog.negativeButton.setTag(DialogAction.NEGATIVE);
        materialDialog.negativeButton.setOnClickListener(materialDialog);
        MDButton mDButton3 = materialDialog.neutralButton;
        materialDialog.setTypeface(mDButton3, builder.mediumFont);
        mDButton3.setAllCapsCompat(zResolveBoolean);
        mDButton3.setText(builder.neutralText);
        mDButton3.setTextColor(builder.neutralColor);
        materialDialog.neutralButton.setStackedSelector(materialDialog.getButtonSelector(DialogAction.NEUTRAL, true));
        materialDialog.neutralButton.setDefaultSelector(materialDialog.getButtonSelector(DialogAction.NEUTRAL, false));
        materialDialog.neutralButton.setTag(DialogAction.NEUTRAL);
        materialDialog.neutralButton.setOnClickListener(materialDialog);
        if (builder.listCallbackMultiChoice != null) {
            materialDialog.selectedIndicesList = new ArrayList();
        }
        if (materialDialog.recyclerView != null) {
            if (builder.adapter == null) {
                if (builder.listCallbackSingleChoice != null) {
                    materialDialog.listType = MaterialDialog.ListType.SINGLE;
                } else if (builder.listCallbackMultiChoice != null) {
                    materialDialog.listType = MaterialDialog.ListType.MULTI;
                    if (builder.selectedIndices != null) {
                        materialDialog.selectedIndicesList = new ArrayList(Arrays.asList(builder.selectedIndices));
                        builder.selectedIndices = null;
                    }
                } else {
                    materialDialog.listType = MaterialDialog.ListType.REGULAR;
                }
                builder.adapter = new DefaultRvAdapter(materialDialog, MaterialDialog.ListType.getLayoutForType(materialDialog.listType));
            } else if (builder.adapter instanceof MDAdapter) {
                ((MDAdapter) builder.adapter).setDialog(materialDialog);
            }
        }
        setupProgressDialog(materialDialog);
        setupInputDialog(materialDialog);
        if (builder.customView != null) {
            ((MDRootLayout) materialDialog.view.findViewById(R.id.md_root)).noTitleNoPadding();
            FrameLayout frameLayout = (FrameLayout) materialDialog.view.findViewById(R.id.md_customViewFrame);
            materialDialog.customViewFrame = frameLayout;
            View view2 = builder.customView;
            if (view2.getParent() != null) {
                ((ViewGroup) view2.getParent()).removeView(view2);
            }
            if (builder.wrapCustomViewInScroll) {
                Resources resources = materialDialog.getContext().getResources();
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.md_dialog_frame_margin);
                ScrollView scrollView = new ScrollView(materialDialog.getContext());
                int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.md_content_padding_top);
                int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.md_content_padding_bottom);
                scrollView.setClipToPadding(false);
                if (view2 instanceof EditText) {
                    scrollView.setPadding(dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize2, dimensionPixelSize4);
                } else {
                    scrollView.setPadding(0, dimensionPixelSize3, 0, dimensionPixelSize4);
                    view2.setPadding(dimensionPixelSize2, 0, dimensionPixelSize2, 0);
                }
                i = -2;
                i2 = -1;
                scrollView.addView(view2, new FrameLayout.LayoutParams(-1, -2));
                view = scrollView;
            } else {
                i = -2;
                i2 = -1;
                view = view2;
            }
            frameLayout.addView(view, new ViewGroup.LayoutParams(i2, i));
        }
        if (builder.showListener != null) {
            materialDialog.setOnShowListener(builder.showListener);
        }
        if (builder.cancelListener != null) {
            materialDialog.setOnCancelListener(builder.cancelListener);
        }
        if (builder.dismissListener != null) {
            materialDialog.setOnDismissListener(builder.dismissListener);
        }
        if (builder.keyListener != null) {
            materialDialog.setOnKeyListener(builder.keyListener);
        }
        materialDialog.setOnShowListenerInternal();
        materialDialog.invalidateList();
        materialDialog.setViewInternal(materialDialog.view);
        materialDialog.checkIfListInitScroll();
        Display defaultDisplay = materialDialog.getWindow().getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i3 = point.x;
        int i4 = point.y;
        int dimensionPixelSize5 = builder.context.getResources().getDimensionPixelSize(R.dimen.md_dialog_vertical_margin);
        int dimensionPixelSize6 = builder.context.getResources().getDimensionPixelSize(R.dimen.md_dialog_horizontal_margin);
        materialDialog.view.setMaxHeight(i4 - (dimensionPixelSize5 * 2));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(materialDialog.getWindow().getAttributes());
        layoutParams.width = Math.min(builder.context.getResources().getDimensionPixelSize(R.dimen.md_dialog_max_width), i3 - (dimensionPixelSize6 * 2));
        materialDialog.getWindow().setAttributes(layoutParams);
    }

    private static void fixCanvasScalingWhenHardwareAccelerated(ProgressBar pb) {
        if (Build.VERSION.SDK_INT < 18 && pb.isHardwareAccelerated() && pb.getLayerType() != 1) {
            pb.setLayerType(1, null);
        }
    }

    private static void setupProgressDialog(MaterialDialog dialog) {
        MaterialDialog.Builder builder = dialog.builder;
        if (builder.indeterminateProgress || builder.progress > -2) {
            dialog.progressBar = (ProgressBar) dialog.view.findViewById(android.R.id.progress);
            if (dialog.progressBar == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 14) {
                if (builder.indeterminateProgress) {
                    if (builder.indeterminateIsHorizontalProgress) {
                        IndeterminateHorizontalProgressDrawable d = new IndeterminateHorizontalProgressDrawable(builder.getContext());
                        d.setTint(builder.widgetColor);
                        dialog.progressBar.setProgressDrawable(d);
                        dialog.progressBar.setIndeterminateDrawable(d);
                    } else {
                        IndeterminateCircularProgressDrawable d2 = new IndeterminateCircularProgressDrawable(builder.getContext());
                        d2.setTint(builder.widgetColor);
                        dialog.progressBar.setProgressDrawable(d2);
                        dialog.progressBar.setIndeterminateDrawable(d2);
                    }
                } else {
                    HorizontalProgressDrawable d3 = new HorizontalProgressDrawable(builder.getContext());
                    d3.setTint(builder.widgetColor);
                    dialog.progressBar.setProgressDrawable(d3);
                    dialog.progressBar.setIndeterminateDrawable(d3);
                }
            } else {
                MDTintHelper.setTint(dialog.progressBar, builder.widgetColor);
            }
            if (!builder.indeterminateProgress || builder.indeterminateIsHorizontalProgress) {
                dialog.progressBar.setIndeterminate(builder.indeterminateProgress && builder.indeterminateIsHorizontalProgress);
                dialog.progressBar.setProgress(0);
                dialog.progressBar.setMax(builder.progressMax);
                dialog.progressLabel = (TextView) dialog.view.findViewById(R.id.md_label);
                if (dialog.progressLabel != null) {
                    dialog.progressLabel.setTextColor(builder.contentColor);
                    dialog.setTypeface(dialog.progressLabel, builder.mediumFont);
                    dialog.progressLabel.setText(builder.progressPercentFormat.format(0L));
                }
                dialog.progressMinMax = (TextView) dialog.view.findViewById(R.id.md_minMax);
                if (dialog.progressMinMax != null) {
                    dialog.progressMinMax.setTextColor(builder.contentColor);
                    dialog.setTypeface(dialog.progressMinMax, builder.regularFont);
                    if (builder.showMinMax) {
                        dialog.progressMinMax.setVisibility(0);
                        dialog.progressMinMax.setText(String.format(builder.progressNumberFormat, 0, Integer.valueOf(builder.progressMax)));
                        ViewGroup.MarginLayoutParams lp = (ViewGroup.MarginLayoutParams) dialog.progressBar.getLayoutParams();
                        lp.leftMargin = 0;
                        lp.rightMargin = 0;
                    } else {
                        dialog.progressMinMax.setVisibility(8);
                    }
                } else {
                    builder.showMinMax = false;
                }
            }
        }
        if (dialog.progressBar != null) {
            fixCanvasScalingWhenHardwareAccelerated(dialog.progressBar);
        }
    }

    private static void setupInputDialog(MaterialDialog dialog) {
        MaterialDialog.Builder builder = dialog.builder;
        dialog.input = (EditText) dialog.view.findViewById(android.R.id.input);
        if (dialog.input == null) {
            return;
        }
        dialog.setTypeface(dialog.input, builder.regularFont);
        if (builder.inputPrefill != null) {
            dialog.input.setText(builder.inputPrefill);
        }
        dialog.setInternalInputCallback();
        dialog.input.setHint(builder.inputHint);
        dialog.input.setSingleLine();
        dialog.input.setTextColor(builder.contentColor);
        dialog.input.setHintTextColor(DialogUtils.adjustAlpha(builder.contentColor, 0.3f));
        MDTintHelper.setTint(dialog.input, dialog.builder.widgetColor);
        if (builder.inputType != -1) {
            dialog.input.setInputType(builder.inputType);
            if (builder.inputType != 144 && (builder.inputType & 128) == 128) {
                dialog.input.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
        dialog.inputMinMax = (TextView) dialog.view.findViewById(R.id.md_minMax);
        if (builder.inputMinLength > 0 || builder.inputMaxLength > -1) {
            dialog.invalidateInputMinMaxIndicator(dialog.input.getText().toString().length(), !builder.inputAllowEmpty);
        } else {
            dialog.inputMinMax.setVisibility(8);
            dialog.inputMinMax = null;
        }
    }
}
