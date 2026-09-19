package com.digikala.dms.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.digikala.dms.R;
import com.digikala.dms.model.domain.ServerMessages;
import com.digikala.dms.view.custom.XeiTextView;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class InboxRecyclerViewAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private List<ServerMessages> list;

    public InboxRecyclerViewAdapter(List<ServerMessages> list, Context context) {
        this.list = Collections.emptyList();
        this.list = list;
        this.context = context;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.activity_inbox_raw, parent, false);
        ViewHolder viewHolder = new ViewHolder(v);
        return viewHolder;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        holder.bind(this.list.get(position), this.context);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
    }

    public void insert(int position, ServerMessages data) {
        this.list.add(position, data);
        notifyItemInserted(position);
    }

    public void remove(ServerMessages data) {
        int position = this.list.indexOf(data);
        this.list.remove(position);
        notifyItemRemoved(position);
    }

    class ViewHolder extends RecyclerView.ViewHolder {
        private Context context;
        private ServerMessages message;
        private XeiTextView messageTextView;
        private XeiTextView titleTextView;

        ViewHolder(View itemView) {
            super(itemView);
            this.titleTextView = (XeiTextView) itemView.findViewById(R.id.titleTextView);
            this.messageTextView = (XeiTextView) itemView.findViewById(R.id.messageTextView);
        }

        public void bind(ServerMessages message, Context context) {
            this.message = message;
            this.context = context;
            this.titleTextView.setText(this.message.getTitle());
            this.messageTextView.setText(this.message.getMessage());
        }
    }
}
