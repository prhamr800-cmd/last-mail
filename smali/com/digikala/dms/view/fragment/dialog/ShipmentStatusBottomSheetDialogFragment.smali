###### Class com.digikala.dms.view.fragment.dialog.ShipmentStatusBottomSheetDialogFragment (com.digikala.dms.view.fragment.dialog.ShipmentStatusBottomSheetDialogFragment)
.class public Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "ShipmentStatusBottomSheetDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener;
    }
.end annotation


# instance fields
.field private cancelButton:Landroid/view/View;

.field private cancelImage:Landroid/widget/ImageView;

.field private cancelText:Landroid/widget/TextView;

.field private contentView:Landroid/view/View;

.field private deliverButton:Landroid/view/View;

.field private deliverImage:Landroid/widget/ImageView;

.field private deliverText:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field private listener:Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener;

.field private mBottomSheetBehaviorCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field private missCallButton:Landroid/view/View;

.field private missCallImage:Landroid/widget/ImageView;

.field private missCallText:Landroid/widget/TextView;

.field private orderStateTextView:Landroid/widget/TextView;

.field private partialDeliverButton:Landroid/view/View;

.field private partialDeliverImage:Landroid/widget/ImageView;

.field private partialDeliverText:Landroid/widget/TextView;

.field private returnButton:Landroid/view/View;

.field private returnImage:Landroid/widget/ImageView;

.field private returnText:Landroid/widget/TextView;

.field private shipment:Lcom/digikala/dms/model/domain/Shipment;

.field private status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$1;-><init>(Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->mBottomSheetBehaviorCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    return-void
.end method

.method private initUI()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->deliverImage:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverImage:Landroid/widget/ImageView;

    .line 168
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->missCallImage:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->returnImage:Landroid/widget/ImageView;

    .line 170
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->cancelImage:Landroid/widget/ImageView;

    .line 172
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->deliverText:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverText:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->missCallText:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->returnText:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->cancelText:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->deliverButton:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverButton:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->missCallButton:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->returnButton:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->cancelButton:Landroid/view/View;

    .line 185
    return-void
.end method

.method private renderUI()V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->deliverButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->missCallButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->returnButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->cancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->status:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_188

    .line 149
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    const v1, 0x7f100099

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_13e

    .line 142
    :pswitch_42
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    const v2, 0x7f1000c4

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06002d

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 144
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->cancelImage:Landroid/widget/ImageView;

    const v2, 0x7f0800dc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->cancelText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    goto/16 :goto_13e

    .line 128
    :pswitch_75
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    const v2, 0x7f1000c5

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06008a

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 130
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->missCallImage:Landroid/widget/ImageView;

    const v2, 0x7f080093

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->missCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    goto/16 :goto_13e

    .line 121
    :pswitch_a8
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    const v2, 0x7f1000c7

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600a8

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 123
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverImage:Landroid/widget/ImageView;

    const v2, 0x7f0800d8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    goto :goto_13e

    .line 135
    :pswitch_da
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    const v2, 0x7f1000c8

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600bb

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 137
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->returnImage:Landroid/widget/ImageView;

    const v2, 0x7f0800c5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->returnText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    goto :goto_13e

    .line 114
    :pswitch_10c
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    const v2, 0x7f1000c3

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060040

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->deliverImage:Landroid/widget/ImageView;

    const v2, 0x7f0800a0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->deliverText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    nop

    .line 154
    :goto_13e
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_187

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_187

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ne v0, v1, :cond_187

    .line 155
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->partialDeliverImage:Landroid/widget/ImageView;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    :cond_187
    return-void

    :pswitch_data_188
    .packed-switch 0x5
        :pswitch_10c
        :pswitch_da
        :pswitch_a8
        :pswitch_75
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->orderStateTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    .line 190
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_18

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->listener:Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener;->onStatusClick(I)V

    .line 193
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 195
    :goto_18
    return-void
.end method

.method public setOnStatusClickListener(Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener;

    .line 70
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->listener:Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener;

    .line 71
    return-void
.end method

.method public setShipment(Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 2
    .param p1, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;

    .line 66
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->shipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 67
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 62
    iput p1, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->status:I

    .line 63
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "Style"    # I

    .line 75
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0042

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 78
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->dialog:Landroid/app/Dialog;

    .line 80
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->initUI()V

    .line 100
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->renderUI()V

    .line 101
    return-void
.end method

###### Class com.digikala.dms.view.fragment.dialog.ShipmentStatusBottomSheetDialogFragment.AnonymousClass1 (com.digikala.dms.view.fragment.dialog.ShipmentStatusBottomSheetDialogFragment$1)
.class Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$1;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "ShipmentStatusBottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;

    .line 47
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$1;->this$0:Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "slideOffset"    # F

    .line 57
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newState"    # I

    .line 50
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    .line 51
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$1;->this$0:Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;->dismiss()V

    .line 53
    :cond_8
    return-void
.end method

###### Class com.digikala.dms.view.fragment.dialog.ShipmentStatusBottomSheetDialogFragment.OnStatusClickListener (com.digikala.dms.view.fragment.dialog.ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener)
.class public interface abstract Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment$OnStatusClickListener;
.super Ljava/lang/Object;
.source "ShipmentStatusBottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/dialog/ShipmentStatusBottomSheetDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStatusClickListener"
.end annotation


# virtual methods
.method public abstract onStatusClick(I)V
.end method
