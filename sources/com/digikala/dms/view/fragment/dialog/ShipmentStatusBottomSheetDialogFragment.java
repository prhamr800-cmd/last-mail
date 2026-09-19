package com.digikala.dms.view.fragment.dialog;

import android.app.Dialog;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialogFragment;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.digikala.dms.R;
import com.digikala.dms.helper.TypeFaceHelper;
import com.digikala.dms.model.domain.Shipment;

/* JADX INFO: loaded from: classes2.dex */
public class ShipmentStatusBottomSheetDialogFragment extends BottomSheetDialogFragment implements View.OnClickListener {
    private View cancelButton;
    private ImageView cancelImage;
    private TextView cancelText;
    private View contentView;
    private View deliverButton;
    private ImageView deliverImage;
    private TextView deliverText;
    private Dialog dialog;
    private OnStatusClickListener listener;
    private BottomSheetBehavior.BottomSheetCallback mBottomSheetBehaviorCallback = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.digikala.dms.view.fragment.dialog.ShipmentStatusBottomSheetDialogFragment.1
        @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View bottomSheet, int newState) {
            if (newState == 5) {
                ShipmentStatusBottomSheetDialogFragment.this.dismiss();
            }
        }

        @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View bottomSheet, float slideOffset) {
        }
    };
    private View missCallButton;
    private ImageView missCallImage;
    private TextView missCallText;
    private TextView orderStateTextView;
    private View partialDeliverButton;
    private ImageView partialDeliverImage;
    private TextView partialDeliverText;
    private View returnButton;
    private ImageView returnImage;
    private TextView returnText;
    private Shipment shipment;
    private int status;

    public interface OnStatusClickListener {
        void onStatusClick(int i);
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setShipment(Shipment shipment) {
        this.shipment = shipment;
    }

    public void setOnStatusClickListener(OnStatusClickListener listener) {
        this.listener = listener;
    }

    @Override // android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    public void setupDialog(Dialog dialog, int Style) {
        this.contentView = View.inflate(getContext(), R.layout.fragment_dialog_bottomsheet_shipment_status, null);
        dialog.setContentView(this.contentView);
        this.dialog = dialog;
        initUI();
        renderUI();
    }

    private void renderUI() {
        this.orderStateTextView.setOnClickListener(this);
        this.deliverButton.setOnClickListener(this);
        this.partialDeliverButton.setOnClickListener(this);
        this.missCallButton.setOnClickListener(this);
        this.returnButton.setOnClickListener(this);
        this.cancelButton.setOnClickListener(this);
        switch (this.status) {
            case 5:
                this.orderStateTextView.setText(getString(R.string.status_deliver));
                this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.delivered));
                this.deliverImage.setImageResource(R.drawable.ic_checkmark_hover);
                this.deliverText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                break;
            case 6:
                this.orderStateTextView.setText(getString(R.string.status_return));
                this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.returned));
                this.returnImage.setImageResource(R.drawable.ic_returned_hover);
                this.returnText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                break;
            case 7:
                this.orderStateTextView.setText(getString(R.string.status_partial_deliver));
                this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.partial_delivered));
                this.partialDeliverImage.setImageResource(R.drawable.ic_to_do_hover);
                this.partialDeliverText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                break;
            case 8:
                this.orderStateTextView.setText(getString(R.string.status_miss_call));
                this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.miss_call));
                this.missCallImage.setImageResource(R.drawable.ic_absence_hover);
                this.missCallText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                break;
            case 9:
                this.orderStateTextView.setText(getString(R.string.status_left));
                this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.canceled));
                this.cancelImage.setImageResource(R.drawable.ic_unsend_hover);
                this.cancelText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                break;
            default:
                this.orderStateTextView.setText(getString(R.string.order_state));
                this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.grey_100));
                break;
        }
        if (this.shipment.getBasketItems() != null && this.shipment.getBasketItems().size() == 1 && this.shipment.getBasketItems().get(0).getOrderItems().size() == 1) {
            this.partialDeliverButton.setEnabled(false);
            this.partialDeliverText.setTextColor(getResources().getColor(R.color.partial_disable));
            this.partialDeliverImage.setImageResource(R.drawable.ic_to_do_disable);
        }
    }

    private void initUI() {
        this.orderStateTextView = (TextView) this.contentView.findViewById(R.id.order_state_text_view);
        this.deliverImage = (ImageView) this.contentView.findViewById(R.id.fragment_shipment_details_deliver_image);
        this.partialDeliverImage = (ImageView) this.contentView.findViewById(R.id.fragment_shipment_details_partial_deliver_image);
        this.missCallImage = (ImageView) this.contentView.findViewById(R.id.fragment_shipment_details_miss_call_image);
        this.returnImage = (ImageView) this.contentView.findViewById(R.id.fragment_shipment_details_returned_image);
        this.cancelImage = (ImageView) this.contentView.findViewById(R.id.fragment_shipment_details_left_image);
        this.deliverText = (TextView) this.contentView.findViewById(R.id.fragment_shipment_details_deliver_text);
        this.partialDeliverText = (TextView) this.contentView.findViewById(R.id.fragment_shipment_details_partial_deliver_text);
        this.missCallText = (TextView) this.contentView.findViewById(R.id.fragment_shipment_details_miss_call_text);
        this.returnText = (TextView) this.contentView.findViewById(R.id.fragment_shipment_details_returned_text);
        this.cancelText = (TextView) this.contentView.findViewById(R.id.fragment_shipment_details_left_text);
        this.deliverButton = this.contentView.findViewById(R.id.fragment_shipment_details_deliver);
        this.partialDeliverButton = this.contentView.findViewById(R.id.fragment_shipment_details_partial_deliver);
        this.missCallButton = this.contentView.findViewById(R.id.fragment_shipment_details_miss_call);
        this.returnButton = this.contentView.findViewById(R.id.fragment_shipment_details_returned);
        this.cancelButton = this.contentView.findViewById(R.id.fragment_shipment_details_left);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.orderStateTextView) {
            this.dialog.dismiss();
        } else {
            this.listener.onStatusClick(view.getId());
            this.dialog.dismiss();
        }
    }
}
