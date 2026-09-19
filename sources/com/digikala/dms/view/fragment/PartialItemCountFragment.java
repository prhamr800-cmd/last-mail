package com.digikala.dms.view.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.NumberPicker;
import android.widget.TextView;
import com.digikala.dms.R;

/* JADX INFO: loaded from: classes2.dex */
public class PartialItemCountFragment extends Fragment {
    private static final String ARG_ITEM_COUNT = "item_count";
    private int itemCount;

    public static PartialItemCountFragment newInstance(int itemCount) {
        PartialItemCountFragment fragment = new PartialItemCountFragment();
        Bundle args = new Bundle();
        args.putInt("item_count", itemCount);
        fragment.setArguments(args);
        return fragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            this.itemCount = getArguments().getInt("item_count");
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_partial_item_count, container, false);
        final NumberPicker numberPicker = (NumberPicker) rootView.findViewById(R.id.itemCount);
        TextView confirmButton = (TextView) rootView.findViewById(R.id.confirm_button);
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(this.itemCount);
        confirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.PartialItemCountFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ((PartialDialogFragment) PartialItemCountFragment.this.getParentFragment()).onConfirmButtonClick(numberPicker.getValue());
            }
        });
        return rootView;
    }
}
