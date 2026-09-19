package com.digikala.dms.view.fragment.dialog;

import android.app.Dialog;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialogFragment;
import android.support.design.widget.CoordinatorLayout;
import android.support.v7.widget.CardView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.digikala.dms.R;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.model.domain.ShipmentItem;
import com.digikala.dms.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public class AssignedShipmentDetailsModalBottomSheet extends BottomSheetDialogFragment {
    private BottomSheetBehavior.BottomSheetCallback mBottomSheetBehaviorCallback = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet.1
        @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View bottomSheet, int newState) {
            if (newState == 5) {
                AssignedShipmentDetailsModalBottomSheet.this.dismiss();
            } else if (newState == 3) {
                AssignedShipmentDetailsModalBottomSheet.this.mBottomSheetIsExpanded = true;
            }
        }

        @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View bottomSheet, float slideOffset) {
        }
    };
    private Boolean mBottomSheetIsExpanded;
    private Shipment mShipment;

    public void setShipment(Shipment shipment) {
        this.mShipment = shipment;
    }

    public void setBottomSheetIsExpanded(Boolean expandedBottomSheets) {
        this.mBottomSheetIsExpanded = expandedBottomSheets;
    }

    @Override // android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    public void setupDialog(Dialog dialog, int style) {
        super.setupDialog(dialog, style);
        View contentView = View.inflate(getContext(), R.layout.fragment_dialog_bottomsheet_assignedshipmentdetails, null);
        dialog.setContentView(contentView);
        final CardView postalAddressCardView = (CardView) dialog.findViewById(R.id.fragmentDialogBottomsheetAssignShipmentDetails_cardView_postalAddress);
        CoordinatorLayout.LayoutParams params = (CoordinatorLayout.LayoutParams) ((View) contentView.getParent()).getLayoutParams();
        final CoordinatorLayout.Behavior behavior = params.getBehavior();
        if (behavior != null && (behavior instanceof BottomSheetBehavior)) {
            ((BottomSheetBehavior) behavior).setBottomSheetCallback(this.mBottomSheetBehaviorCallback);
            postalAddressCardView.post(new Runnable() { // from class: com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet.2
                @Override // java.lang.Runnable
                public void run() {
                    ((BottomSheetBehavior) behavior).setPeekHeight(postalAddressCardView.getHeight());
                }
            });
        }
        fillData(dialog);
    }

    private void fillData(Dialog dialog) {
        TextView tv = (TextView) dialog.findViewById(R.id.delivery_address_text_view);
        LinearLayout shipmentItemsRowContainer = (LinearLayout) dialog.findViewById(R.id.rw_container);
        try {
            tv.setText(Util.persianizeDigitsInString(this.mShipment.getDeliveryAddress()));
            this.mShipment.getBasketCount();
            for (int i = 0; i < this.mShipment.getBasketItems().size(); i++) {
                for (int j = 0; j < this.mShipment.getBasketItems().get(i).getOrderItems().size(); j++) {
                    ShipmentItem item = this.mShipment.getBasketItems().get(i).getOrderItems().get(j);
                    View row = View.inflate(getContext(), R.layout.shipment_detail_countainer_layout, null);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = 36;
                    row.setLayoutParams(layoutParams);
                    TextView codeTextView = (TextView) row.findViewById(R.id.rw_code);
                    TextView descTextView = (TextView) row.findViewById(R.id.rw_desc);
                    TextView countTextView = (TextView) row.findViewById(R.id.rw_count);
                    codeTextView.setText(Util.persianizeDigitsInString(item.getOrderItemId()));
                    descTextView.setText(item.getDescription());
                    countTextView.setText(Util.persianizeDigitsInString(String.valueOf(item.getTotalCount())));
                    shipmentItemsRowContainer.addView(row);
                }
            }
        } catch (Exception e) {
        }
    }
}
