package com.digikala.dms.helper.touch;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.v4.internal.view.SupportMenu;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class SwipeMenuCallback extends ItemTouchHelper.Callback {
    private static final float buttonWidth = 300.0f;
    private SwipeControllerActions buttonsActions;
    private boolean swipeBack = false;
    private ButtonsState buttonShowedState = ButtonsState.GONE;
    private RectF buttonInstance = null;
    private RecyclerView.ViewHolder currentItemViewHolder = null;

    public SwipeMenuCallback(SwipeControllerActions buttonsActions) {
        this.buttonsActions = null;
        this.buttonsActions = buttonsActions;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return makeMovementFlags(0, 4);
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder target) {
        return false;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int direction) {
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public int convertToAbsoluteDirection(int flags, int layoutDirection) {
        if (this.swipeBack) {
            this.swipeBack = this.buttonShowedState != ButtonsState.GONE;
            return 0;
        }
        return super.convertToAbsoluteDirection(flags, layoutDirection);
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public void onChildDraw(Canvas c, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float dX, float dY, int actionState, boolean isCurrentlyActive) {
        if (actionState == 1) {
            if (this.buttonShowedState != ButtonsState.GONE) {
                if (this.buttonShowedState == ButtonsState.RIGHT_VISIBLE) {
                    dX = Math.min(dX, -300.0f);
                }
                super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
            } else {
                setTouchListener(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
            }
        }
        if (this.buttonShowedState == ButtonsState.GONE) {
            super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
        }
        this.currentItemViewHolder = viewHolder;
    }

    private void setTouchListener(final Canvas c, final RecyclerView recyclerView, final RecyclerView.ViewHolder viewHolder, final float dX, final float dY, final int actionState, final boolean isCurrentlyActive) {
        recyclerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.digikala.dms.helper.touch.SwipeMenuCallback.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                SwipeMenuCallback swipeMenuCallback = SwipeMenuCallback.this;
                boolean z = true;
                if (event.getAction() != 3 && event.getAction() != 1) {
                    z = false;
                }
                swipeMenuCallback.swipeBack = z;
                if (SwipeMenuCallback.this.swipeBack) {
                    if (dX < -300.0f) {
                        SwipeMenuCallback.this.buttonShowedState = ButtonsState.RIGHT_VISIBLE;
                    }
                    if (SwipeMenuCallback.this.buttonShowedState != ButtonsState.GONE) {
                        SwipeMenuCallback.this.setTouchDownListener(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
                        SwipeMenuCallback.this.setItemsClickable(recyclerView, false);
                    }
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTouchDownListener(final Canvas c, final RecyclerView recyclerView, final RecyclerView.ViewHolder viewHolder, final float dX, final float dY, final int actionState, final boolean isCurrentlyActive) {
        recyclerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.digikala.dms.helper.touch.SwipeMenuCallback.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == 0) {
                    SwipeMenuCallback.this.setTouchUpListener(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
                    return false;
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTouchUpListener(final Canvas c, final RecyclerView recyclerView, final RecyclerView.ViewHolder viewHolder, float dX, final float dY, final int actionState, final boolean isCurrentlyActive) {
        recyclerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.digikala.dms.helper.touch.SwipeMenuCallback.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == 1) {
                    SwipeMenuCallback.super.onChildDraw(c, recyclerView, viewHolder, 0.0f, dY, actionState, isCurrentlyActive);
                    recyclerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.digikala.dms.helper.touch.SwipeMenuCallback.3.1
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View v2, MotionEvent event2) {
                            return false;
                        }
                    });
                    SwipeMenuCallback.this.setItemsClickable(recyclerView, true);
                    SwipeMenuCallback.this.swipeBack = false;
                    if (SwipeMenuCallback.this.buttonsActions != null && SwipeMenuCallback.this.buttonInstance != null && SwipeMenuCallback.this.buttonInstance.contains(event.getX(), event.getY()) && SwipeMenuCallback.this.buttonShowedState == ButtonsState.RIGHT_VISIBLE) {
                        SwipeMenuCallback.this.buttonsActions.onRightClicked(viewHolder.getAdapterPosition());
                    }
                    SwipeMenuCallback.this.buttonShowedState = ButtonsState.GONE;
                    SwipeMenuCallback.this.currentItemViewHolder = null;
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemsClickable(RecyclerView recyclerView, boolean isClickable) {
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            recyclerView.getChildAt(i).setClickable(isClickable);
        }
    }

    private void drawButtons(Canvas c, RecyclerView.ViewHolder viewHolder) {
        View itemView = viewHolder.itemView;
        Paint p = new Paint();
        RectF rightButton = new RectF(itemView.getRight() - 300.0f, itemView.getTop() + 10, itemView.getRight(), itemView.getBottom() - 10);
        p.setColor(-3355444);
        c.drawRoundRect(rightButton, 1.0f, 1.0f, p);
        drawText("برگشت کالا از مرجوعی", c, rightButton, p);
        this.buttonInstance = null;
        if (this.buttonShowedState == ButtonsState.RIGHT_VISIBLE) {
            this.buttonInstance = rightButton;
        }
    }

    private void drawText(String text, Canvas c, RectF button, Paint p) {
        p.setColor(SupportMenu.CATEGORY_MASK);
        p.setAntiAlias(true);
        p.setTextSize(30.0f);
        float textWidth = p.measureText(text);
        c.drawText(text, button.centerX() - (textWidth / 2.0f), button.centerY() + (30.0f / 2.0f), p);
    }

    public void onDraw(Canvas c) {
        if (this.currentItemViewHolder != null) {
            drawButtons(c, this.currentItemViewHolder);
        }
    }
}
