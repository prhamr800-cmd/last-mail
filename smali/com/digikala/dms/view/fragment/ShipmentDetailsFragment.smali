###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment (com.digikala.dms.view.fragment.ShipmentDetailsFragment)
.class public Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ShipmentDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;
    }
.end annotation


# static fields
.field private static final ARG_ORDER_ID:Ljava/lang/String; = "ARG_ORDER_ID"

.field private static final LEVEL_BEARING:F = 0.0f

.field private static final LEVEL_TILT:F = 0.0f

.field private static final LEVEL_ZOOM:F = 16.0f

.field private static final TAG_REQUEST:Ljava/lang/String;


# instance fields
.field private bottomSheet:Landroid/view/View;

.field private cancelButton:Landroid/view/View;

.field private cancelImage:Landroid/widget/ImageView;

.field private cancelText:Landroid/widget/TextView;

.field private customerNameTextView:Landroid/widget/TextView;

.field private customerPhoneTextView:Landroid/widget/TextView;

.field private darkLayer:Landroid/view/View;

.field private deliverButton:Landroid/view/View;

.field private deliverImage:Landroid/widget/ImageView;

.field private deliverText:Landroid/widget/TextView;

.field private deliveryAddressTextView:Landroid/widget/TextView;

.field private deliveryDateTextView:Landroid/widget/TextView;

.field private deliveryTimeTextView:Landroid/widget/TextView;

.field private expandBottomSheet:Z

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private invoiceIdTextView:Landroid/widget/TextView;

.field private mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

.field private mListener:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;

.field private mOrderId:Ljava/lang/String;

.field private mReloadDetailsSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mShipment:Lcom/digikala/dms/model/domain/Shipment;

.field private missCallButton:Landroid/view/View;

.field private missCallImage:Landroid/widget/ImageView;

.field private missCallText:Landroid/widget/TextView;

.field private orderStateTextView:Landroid/widget/TextView;

.field private orderStateView:Landroid/view/View;

.field private partialDeliverButton:Landroid/view/View;

.field private partialDeliverImage:Landroid/widget/ImageView;

.field private partialDeliverText:Landroid/widget/TextView;

.field private paymentPriceTextView:Landroid/widget/TextView;

.field private paymentStateTextView:Landroid/widget/TextView;

.field private recipientNameTextView:Landroid/widget/TextView;

.field private recipientPhoneTextView:Landroid/widget/TextView;

.field private returnButton:Landroid/view/View;

.field private returnImage:Landroid/widget/ImageView;

.field private returnText:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;

.field private shipmentItemsRowContainer:Landroid/widget/LinearLayout;

.field private trackingIdTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->expandBottomSheet:Z

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 57
    iget-boolean v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->expandBottomSheet:Z

    return v0
.end method

.method static synthetic access$002(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->expandBottomSheet:Z

    return p1
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 57
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->darkLayer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Lcom/digikala/dms/model/domain/Shipment;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 57
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/support/design/widget/BottomSheetBehavior;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 57
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;
    .param p1, "x1"    # Lcom/digikala/dms/model/domain/Shipment;

    .line 57
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->reloadShipment(Lcom/digikala/dms/model/domain/Shipment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 57
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mReloadDetailsSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 57
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->renderUi()V

    return-void
.end method

.method private addMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;F)Lcom/google/android/gms/maps/model/Marker;
    .registers 6
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hue"    # F

    .line 679
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 680
    .local v0, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 681
    invoke-static {p3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 682
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    return-object v1
.end method

.method private expandStateDialog()V
    .registers 4

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->expandBottomSheet:Z

    .line 508
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 511
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->darkLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->darkLayer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    return-void
.end method

.method private goToLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 6
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 668
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 669
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 670
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 671
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 672
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 675
    .local v0, "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 676
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 6
    .param p1, "rootView"    # Landroid/view/View;

    .line 616
    const v0, 0x7f090135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->bottomSheet:Landroid/view/View;

    .line 618
    const v0, 0x7f090136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    .line 619
    const v0, 0x7f090134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateView:Landroid/view/View;

    .line 620
    const v0, 0x7f090142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->paymentStateTextView:Landroid/widget/TextView;

    .line 621
    const v0, 0x7f090141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->paymentPriceTextView:Landroid/widget/TextView;

    .line 622
    const v0, 0x7f09007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->customerNameTextView:Landroid/widget/TextView;

    .line 623
    const v0, 0x7f09007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->customerPhoneTextView:Landroid/widget/TextView;

    .line 624
    const v0, 0x7f090150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->recipientNameTextView:Landroid/widget/TextView;

    .line 625
    const v0, 0x7f090151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->recipientPhoneTextView:Landroid/widget/TextView;

    .line 626
    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliveryDateTextView:Landroid/widget/TextView;

    .line 627
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliveryTimeTextView:Landroid/widget/TextView;

    .line 628
    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliveryAddressTextView:Landroid/widget/TextView;

    .line 629
    const v0, 0x7f0901d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->trackingIdTextView:Landroid/widget/TextView;

    .line 630
    const v0, 0x7f0900e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->invoiceIdTextView:Landroid/widget/TextView;

    .line 631
    const v0, 0x7f090169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->shipmentItemsRowContainer:Landroid/widget/LinearLayout;

    .line 632
    const v0, 0x7f0900bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliverButton:Landroid/view/View;

    .line 633
    const v0, 0x7f0900c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverButton:Landroid/view/View;

    .line 634
    const v0, 0x7f0900c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->missCallButton:Landroid/view/View;

    .line 635
    const v0, 0x7f0900c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->returnButton:Landroid/view/View;

    .line 636
    const v0, 0x7f0900be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->cancelButton:Landroid/view/View;

    .line 637
    const v0, 0x7f0900bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliverImage:Landroid/widget/ImageView;

    .line 638
    const v0, 0x7f0900c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverImage:Landroid/widget/ImageView;

    .line 639
    const v0, 0x7f0900c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->missCallImage:Landroid/widget/ImageView;

    .line 640
    const v0, 0x7f0900c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->returnImage:Landroid/widget/ImageView;

    .line 641
    const v0, 0x7f0900bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->cancelImage:Landroid/widget/ImageView;

    .line 642
    const v0, 0x7f0900bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliverText:Landroid/widget/TextView;

    .line 643
    const v0, 0x7f0900c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverText:Landroid/widget/TextView;

    .line 644
    const v0, 0x7f0900c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->missCallText:Landroid/widget/TextView;

    .line 645
    const v0, 0x7f0900c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->returnText:Landroid/widget/TextView;

    .line 646
    const v0, 0x7f0900c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->cancelText:Landroid/widget/TextView;

    .line 647
    const v0, 0x7f090080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->darkLayer:Landroid/view/View;

    .line 648
    const v0, 0x7f0900ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mReloadDetailsSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 649
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mReloadDetailsSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f060032

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 650
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mReloadDetailsSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 651
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;
    .registers 4
    .param p0, "orderId"    # Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;-><init>()V

    .line 117
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "ARG_ORDER_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method private reloadShipment(Lcom/digikala/dms/model/domain/Shipment;)V
    .registers 5
    .param p1, "shipment"    # Lcom/digikala/dms/model/domain/Shipment;

    .line 582
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setOrderId(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getPodCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setPodCode(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getInvoiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setInvoiceId(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getPriority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setPriority(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setPaymentStatus(I)V

    .line 587
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getPayableAmount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/model/domain/Shipment;->setPayableAmount(J)V

    .line 588
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getRemainingAmount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/model/domain/Shipment;->setRemainingAmount(J)V

    .line 589
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getCustomerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setCustomerName(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getCustomerPhoneNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setCustomerPhoneNo(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getRecipientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setRecipientName(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getRecipientPhoneNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setRecipientPhoneNo(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setDeliveryTime(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/Shipment;->setDeliveryAddress(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/model/domain/LatLong;->setLatitude(D)V

    .line 596
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/model/domain/LatLong;->setLongitude(D)V

    .line 598
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->removeAll(Ljava/util/Collection;)Z

    .line 599
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->addAll(Ljava/util/Collection;)Z

    .line 603
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v0

    .line 604
    .local v0, "status":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_ca

    const/4 v2, 0x2

    if-eq v0, v2, :cond_ca

    const/4 v2, 0x3

    if-eq v0, v2, :cond_ca

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c4

    goto :goto_ca

    .line 607
    :cond_c4
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1, v0}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    goto :goto_cf

    .line 605
    :cond_ca
    :goto_ca
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v2, v1}, Lcom/digikala/dms/model/domain/Shipment;->setStatus(I)V

    .line 609
    :goto_cf
    return-void
.end method

.method private renderUi()V
    .registers 25

    .line 173
    move-object/from16 v1, p0

    const v2, 0x7f0600bb

    :try_start_5
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->bottomSheet:Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 175
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    new-instance v3, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;

    invoke-direct {v3, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;-><init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    .line 215
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v0

    .line 216
    .local v0, "status":I
    const/4 v3, 0x5

    packed-switch v0, :pswitch_data_4fa

    .line 253
    iget-object v3, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    goto/16 :goto_11f

    .line 246
    :pswitch_25
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    const v5, 0x7f1000c4

    invoke-virtual {v1, v5}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06002d

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 248
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->cancelImage:Landroid/widget/ImageView;

    const v5, 0x7f0800dc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->cancelText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    goto/16 :goto_139

    .line 232
    :pswitch_58
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    const v5, 0x7f1000c5

    invoke-virtual {v1, v5}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06008a

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 234
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->missCallImage:Landroid/widget/ImageView;

    const v5, 0x7f080093

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->missCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    goto/16 :goto_139

    .line 225
    :pswitch_8b
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    const v5, 0x7f1000c7

    invoke-virtual {v1, v5}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0600a8

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 227
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverImage:Landroid/widget/ImageView;

    const v5, 0x7f0800d8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    goto/16 :goto_139

    .line 239
    :pswitch_be
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    const v5, 0x7f1000c8

    invoke-virtual {v1, v5}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 241
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->returnImage:Landroid/widget/ImageView;

    const v5, 0x7f0800c5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->returnText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 244
    goto :goto_139

    .line 218
    :pswitch_ed
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    const v5, 0x7f1000c3

    invoke-virtual {v1, v5}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060040

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 220
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliverImage:Landroid/widget/ImageView;

    const v5, 0x7f0800a0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliverText:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    goto :goto_139

    .line 253
    :goto_11f
    const v4, 0x7f100099

    invoke-virtual {v1, v4}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v3, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06005c

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_139} :catch_13a

    .line 259
    .end local v0    # "status":I
    :goto_139
    goto :goto_13e

    .line 257
    :catch_13a
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13e
    const/4 v3, 0x1

    :try_start_13f
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentStatus()I

    move-result v0

    if-ne v0, v3, :cond_150

    .line 262
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->paymentStateTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "\u067e\u0631\u062f\u0627\u062e\u062a \u062f\u0631 \u0645\u062d\u0644"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_158

    .line 264
    :cond_150
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->paymentStateTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "\u067e\u0631\u062f\u0627\u062e\u062a \u0634\u062f\u0647"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_158} :catch_159

    .line 269
    :goto_158
    goto :goto_15d

    .line 267
    :catch_159
    move-exception v0

    .line 268
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15d
    :try_start_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getRemainingAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/digikala/dms/util/Util;->formatPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u0631\u06cc\u0627\u0644"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "payableText":Ljava/lang/String;
    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->paymentPriceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_187} :catch_188

    .line 275
    .end local v0    # "payableText":Ljava/lang/String;
    goto :goto_18c

    .line 273
    :catch_188
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18c
    :try_start_18c
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->customerNameTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getCustomerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_197} :catch_198

    .line 280
    goto :goto_19c

    .line 278
    :catch_198
    move-exception v0

    .line 279
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19c
    const/4 v4, 0x0

    :try_start_19d
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->customerPhoneTextView:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getCustomerPhoneNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getCustomerPhoneNo()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "phoneNumbers":[Ljava/lang/String;
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "phoneNumber":Ljava/lang/String;
    iget-object v6, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->customerPhoneTextView:Landroid/widget/TextView;

    new-instance v7, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$3;

    invoke-direct {v7, v1, v5}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$3;-><init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1c8} :catch_1c9

    .line 297
    .end local v0    # "phoneNumbers":[Ljava/lang/String;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    goto :goto_1cd

    .line 295
    :catch_1c9
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1cd
    :try_start_1cd
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->recipientNameTextView:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getRecipientName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d8} :catch_1d9

    .line 302
    goto :goto_1dd

    .line 300
    :catch_1d9
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1dd
    :try_start_1dd
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->recipientPhoneTextView:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getRecipientPhoneNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getRecipientPhoneNo()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "phoneNumbers":[Ljava/lang/String;
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "phoneNumber":Ljava/lang/String;
    iget-object v6, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->recipientPhoneTextView:Landroid/widget/TextView;

    new-instance v7, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$4;

    invoke-direct {v7, v1, v5}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$4;-><init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_208} :catch_209

    .line 319
    .end local v0    # "phoneNumbers":[Ljava/lang/String;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    goto :goto_20d

    .line 317
    :catch_209
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20d
    :try_start_20d
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryTime()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\s+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "dateTime":[Ljava/lang/String;
    iget-object v5, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliveryDateTextView:Landroid/widget/TextView;

    aget-object v6, v0, v4

    invoke-static {v6}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v5, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliveryTimeTextView:Landroid/widget/TextView;

    aget-object v6, v0, v3

    invoke-static {v6}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_22f} :catch_230

    .line 328
    .end local v0    # "dateTime":[Ljava/lang/String;
    goto :goto_234

    .line 326
    :catch_230
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_234
    :try_start_234
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliveryAddressTextView:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_23f} :catch_240

    .line 334
    goto :goto_244

    .line 332
    :catch_240
    move-exception v0

    .line 333
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_244
    :try_start_244
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->trackingIdTextView:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_253} :catch_254

    .line 339
    goto :goto_258

    .line 337
    :catch_254
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_258
    :try_start_258
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->invoiceIdTextView:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/Shipment;->getInvoiceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/digikala/dms/util/Util;->persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_267} :catch_268

    .line 345
    goto :goto_26c

    .line 343
    :catch_268
    move-exception v0

    .line 344
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26c
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v5

    .line 355
    .local v5, "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->shipmentItemsRowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_28b

    .line 357
    :try_start_27a
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->shipmentItemsRowContainer:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->shipmentItemsRowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->removeViews(II)V
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_286} :catch_287

    .line 361
    goto :goto_28b

    .line 359
    :catch_287
    move-exception v0

    .line 360
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28b
    :goto_28b
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliveryAddressTextView:Landroid/widget/TextView;

    new-instance v6, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;

    invoke-direct {v6, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;-><init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_296
    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v6

    if-ge v0, v6, :cond_451

    .line 398
    iget-object v6, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v6

    .line 401
    .local v6, "shipmentItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    invoke-virtual {v5, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/BasketItems;

    .line 402
    .local v7, "basketItem":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 403
    .local v8, "basketinflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0c0085

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 404
    .local v9, "basketRow":Landroid/view/View;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 405
    .local v11, "basketParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    const v14, 0x7f090166

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 407
    .local v14, "basket":Landroid/widget/TextView;
    iget-object v15, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v15}, Lcom/digikala/dms/model/domain/Shipment;->getFmcg()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_2fb

    .line 408
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0633\u0628\u062f "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/BasketItems;->getBasketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_314

    .line 410
    :cond_2fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "\u0641\u0642\u0631\u0647 "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/digikala/dms/model/domain/BasketItems;->getBasketId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :goto_314
    const-string v2, "basket0"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual/range {v16 .. v16}, Lcom/digikala/dms/model/domain/BasketItems;->getBasketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->shipmentItemsRowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33a
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v3

    if-ge v2, v3, :cond_446

    .line 417
    invoke-virtual {v6, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 418
    .local v3, "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    .line 419
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f0c008e

    invoke-virtual {v15, v12, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 420
    .local v12, "row":Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v10, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 421
    .local v10, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x24

    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 422
    invoke-virtual {v12, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    const v4, 0x7f090168

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 424
    .local v4, "codeTextView":Landroid/widget/TextView;
    const v13, 0x7f09016b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 425
    .local v13, "descTextView":Landroid/widget/TextView;
    move-object/from16 v17, v5

    .end local v5    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .local v17, "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    const v5, 0x7f09016a

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 426
    .local v5, "countTextView":Landroid/widget/TextView;
    move-object/from16 v18, v6

    .end local v6    # "shipmentItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    .local v18, "shipmentItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    const v6, 0x7f09016c

    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 427
    .local v6, "priceTextView":Landroid/widget/TextView;
    move-object/from16 v19, v7

    .end local v7    # "basketItem":Lcom/digikala/dms/model/domain/BasketItems;
    .local v19, "basketItem":Lcom/digikala/dms/model/domain/BasketItems;
    iget-object v7, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    if-eqz v7, :cond_397

    .line 428
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShipmentItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_397
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShipmentItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v4

    .end local v4    # "codeTextView":Landroid/widget/TextView;
    .local v20, "codeTextView":Landroid/widget/TextView;
    const-string v4, "\\s+"

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "desc":[Ljava/lang/String;
    array-length v7, v4

    move-object/from16 v21, v8

    .end local v8    # "basketinflater":Landroid/view/LayoutInflater;
    .local v21, "basketinflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x3

    if-lt v7, v8, :cond_3f2

    .line 432
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3aa
    array-length v8, v4

    if-ge v7, v8, :cond_3ed

    .line 434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v9

    const/16 v16, 0x0

    .end local v9    # "basketRow":Landroid/view/View;
    .local v22, "basketRow":Landroid/view/View;
    aget-object v9, v4, v16

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v10

    const/4 v9, 0x1

    .end local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v23, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    aget-object v10, v4, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBrandName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    goto :goto_3aa

    .line 439
    .end local v7    # "k":I
    .end local v22    # "basketRow":Landroid/view/View;
    .end local v23    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "basketRow":Landroid/view/View;
    .restart local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3ed
    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .end local v9    # "basketRow":Landroid/view/View;
    .end local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v22    # "basketRow":Landroid/view/View;
    .restart local v23    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_415

    .line 437
    .end local v22    # "basketRow":Landroid/view/View;
    .end local v23    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "basketRow":Landroid/view/View;
    .restart local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3f2
    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .end local v9    # "basketRow":Landroid/view/View;
    .end local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v22    # "basketRow":Landroid/view/View;
    .restart local v23    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShipmentItem;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShipmentItem;->getBrandName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :goto_415
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/ShipmentItem;->getAmountPerQuantity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/digikala/dms/util/Util;->formatPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v7, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->shipmentItemsRowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    .end local v3    # "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v4    # "desc":[Ljava/lang/String;
    .end local v5    # "countTextView":Landroid/widget/TextView;
    .end local v6    # "priceTextView":Landroid/widget/TextView;
    .end local v12    # "row":Landroid/view/View;
    .end local v13    # "descTextView":Landroid/widget/TextView;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v20    # "codeTextView":Landroid/widget/TextView;
    .end local v23    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x2

    const/4 v13, -0x1

    goto/16 :goto_33a

    .line 397
    .end local v2    # "i":I
    .end local v11    # "basketParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "basket":Landroid/widget/TextView;
    .end local v17    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .end local v18    # "shipmentItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    .end local v19    # "basketItem":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v21    # "basketinflater":Landroid/view/LayoutInflater;
    .end local v22    # "basketRow":Landroid/view/View;
    .local v5, "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    :cond_446
    move-object/from16 v17, v5

    .end local v5    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v17    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7f0600bb

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_296

    .line 445
    .end local v0    # "j":I
    .end local v17    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v5    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    :cond_451
    move-object/from16 v17, v5

    .end local v5    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    .restart local v17    # "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_4cb

    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4cb

    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 446
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_4cb

    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 447
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4cb

    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 448
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getBasketItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/BasketItems;->getOrderItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->getTotalCount()I

    move-result v0

    if-ne v0, v3, :cond_4cb

    .line 450
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 451
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverImage:Landroid/widget/ImageView;

    const v2, 0x7f0800d7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    :cond_4cb
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->deliverButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->partialDeliverButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->missCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->returnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->cancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->orderStateTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;

    invoke-direct {v2, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;-><init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->darkLayer:Landroid/view/View;

    new-instance v2, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$7;

    invoke-direct {v2, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$7;-><init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    return-void

    nop

    :pswitch_data_4fa
    .packed-switch 0x5
        :pswitch_ed
        :pswitch_be
        :pswitch_8b
        :pswitch_58
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public collapseStateDialog()V
    .registers 3

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->expandBottomSheet:Z

    .line 499
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 504
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 527
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 528
    instance-of v0, p1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;

    if-eqz v0, :cond_d

    .line 529
    move-object v0, p1

    check-cast v0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mListener:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;

    .line 534
    return-void

    .line 531
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement OnStateButtonClickListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onButtonPressed(I)V
    .registers 3
    .param p1, "action"    # I

    .line 491
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mListener:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;

    if-eqz v0, :cond_c

    .line 492
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mListener:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;

    invoke-interface {v0, p1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;->onStateButtonClick(I)V

    .line 493
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->collapseStateDialog()V

    .line 495
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->onButtonPressed(I)V

    .line 545
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 128
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_ORDER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mOrderId:Ljava/lang/String;

    .line 130
    :cond_15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 135
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 136
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_13

    .line 137
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_13
    const v0, 0x7f0c004e

    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->rootView:Landroid/view/View;
    :try_end_1d
    .catch Landroid/view/InflateException; {:try_start_17 .. :try_end_1d} :catch_1e

    .line 145
    goto :goto_2b

    .line 141
    :catch_1e
    move-exception v0

    .line 143
    .local v0, "e":Landroid/view/InflateException;
    invoke-virtual {v0}, Landroid/view/InflateException;->printStackTrace()V

    .line 144
    sget-object v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->TAG_REQUEST:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/InflateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "e":Landroid/view/InflateException;
    :goto_2b
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 150
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 151
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "orderId"

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mOrderId:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    .line 154
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 155
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    if-eqz v1, :cond_54

    .line 156
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->init(Landroid/view/View;)V

    .line 157
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->renderUi()V

    .line 160
    :cond_54
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 161
    .local v1, "backButton":Landroid/widget/ImageButton;
    new-instance v2, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$1;

    invoke-direct {v2, p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$1;-><init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->rootView:Landroid/view/View;

    return-object v2
.end method

.method public onDetach()V
    .registers 2

    .line 538
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mListener:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;

    .line 540
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 7
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 655
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 658
    :try_start_2
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 659
    .local v0, "shipmentLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mShipment:Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Shipment;->getCustomerName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x43520000    # 210.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->addMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;F)Lcom/google/android/gms/maps/model/Marker;

    .line 660
    invoke-direct {p0, v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->goToLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2a

    .line 664
    .end local v0    # "shipmentLatLng":Lcom/google/android/gms/maps/model/LatLng;
    goto :goto_48

    .line 661
    :catch_2a
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 663
    sget-object v1, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48
    return-void
.end method

.method public onRefresh()V
    .registers 6

    .line 550
    invoke-static {}, Lio/realm/internal/SyncObjectServerFacade;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "batchId":Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 552
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->mOrderId:Ljava/lang/String;

    sget-object v2, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v3, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;-><init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/digikala/dms/helper/webservice/WebApi;->makeGetShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    goto :goto_2a

    .line 577
    :cond_1c
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "pack id is null !!!"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 579
    :goto_2a
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 519
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 523
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.AnonymousClass1 (com.digikala.dms.view.fragment.ShipmentDetailsFragment$1)
.class Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$1;
.super Ljava/lang/Object;
.source "ShipmentDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 161
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$1;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 165
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.AnonymousClass2 (com.digikala.dms.view.fragment.ShipmentDetailsFragment$2)
.class Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "ShipmentDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->renderUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 175
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

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

    .line 211
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 7
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newState"    # I

    .line 178
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_6a

    goto :goto_68

    .line 193
    :pswitch_5
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$000(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 194
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v1, v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$002(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Z)Z

    .line 196
    :cond_12
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$100(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :try_start_1d
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v1, v0}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setStateDialogOpen(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29

    .line 201
    goto :goto_68

    .line 199
    :catch_29
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_68

    .line 184
    :pswitch_2e
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$000(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3c

    .line 185
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v1, v2}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$002(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Z)Z

    .line 187
    :cond_3c
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$100(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$100(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x10a0000

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$2;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setStateDialogOpen(Z)V

    .line 191
    goto :goto_68

    .line 182
    :pswitch_66
    goto :goto_68

    .line 180
    :pswitch_67
    nop

    .line 207
    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_67
        :pswitch_66
        :pswitch_2e
        :pswitch_5
    .end packed-switch
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.AnonymousClass3 (com.digikala.dms.view.fragment.ShipmentDetailsFragment$3)
.class Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$3;
.super Ljava/lang/Object;
.source "ShipmentDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->renderUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 285
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$3;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$3;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$3;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$3;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->call(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 292
    goto :goto_10

    .line 290
    :catch_c
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.AnonymousClass4 (com.digikala.dms.view.fragment.ShipmentDetailsFragment$4)
.class Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$4;
.super Ljava/lang/Object;
.source "ShipmentDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->renderUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 307
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$4;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$4;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$4;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->call(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 314
    goto :goto_10

    .line 312
    :catch_c
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.AnonymousClass5 (com.digikala.dms.view.fragment.ShipmentDetailsFragment$5)
.class Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;
.super Ljava/lang/Object;
.source "ShipmentDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->renderUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 365
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$200(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$200(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$200(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$200(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-nez v0, :cond_50

    goto :goto_b4

    .line 379
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo:0,0?q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$200(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v2}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$200(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Lcom/digikala/dms/model/domain/Shipment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&z=16"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 380
    .local v0, "location":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 382
    .local v2, "mapIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v3}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 383
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 384
    .local v5, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_ab

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    .line 386
    .local v1, "isIntentSafe":Z
    :goto_ac
    if-eqz v1, :cond_c4

    .line 387
    iget-object v4, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v4, v2}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_c4

    .line 369
    .end local v0    # "location":Landroid/net/Uri;
    .end local v1    # "isIntentSafe":Z
    .end local v2    # "mapIntent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_b4
    :goto_b4
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$5;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "\u0644\u0648\u06a9\u06cc\u0634\u0646 \u062b\u0628\u062a \u0646\u0634\u062f\u0647 \u0627\u0633\u062a"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 393
    :cond_c4
    :goto_c4
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.AnonymousClass6 (com.digikala.dms.view.fragment.ShipmentDetailsFragment$6)
.class Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;
.super Ljava/lang/Object;
.source "ShipmentDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->renderUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 461
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 464
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$000(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 465
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$002(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Z)Z

    .line 466
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$300(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 467
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setStateDialogOpen(Z)V

    goto :goto_3f

    .line 469
    :cond_24
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$002(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Z)Z

    .line 470
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$300(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 471
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$6;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setStateDialogOpen(Z)V

    .line 473
    :goto_3f
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.AnonymousClass7 (com.digikala.dms.view.fragment.ShipmentDetailsFragment$7)
.class Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$7;
.super Ljava/lang/Object;
.source "ShipmentDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->renderUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 476
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 479
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$002(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Z)Z

    .line 480
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$300(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 481
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$7;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/activity/ShipmentActivity;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setStateDialogOpen(Z)V

    .line 482
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.AnonymousClass8 (com.digikala.dms.view.fragment.ShipmentDetailsFragment$8)
.class Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;
.super Ljava/lang/Object;
.source "ShipmentDetailsFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Ljava/util/ArrayList<",
        "Lcom/digikala/dms/model/domain/Shipment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    .line 552
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 570
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v0, "Response"

    const-string v1, "Response Error"

    invoke-static {v0, v1, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 573
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$500(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 574
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 552
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;)V"
        }
    .end annotation

    .line 555
    .local p1, "shipments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/domain/Shipment;>;"
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/Shipment;

    .line 558
    .local v1, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 559
    .local v2, "realm":Lio/realm/Realm;
    invoke-virtual {v2}, Lio/realm/Realm;->beginTransaction()V

    .line 560
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v3, v1}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$400(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;Lcom/digikala/dms/model/domain/Shipment;)V

    .line 561
    invoke-virtual {v2}, Lio/realm/Realm;->commitTransaction()V

    .line 562
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    .line 564
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$500(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 565
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$8;->this$0:Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;->access$600(Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;)V

    .line 566
    return-void
.end method

###### Class com.digikala.dms.view.fragment.ShipmentDetailsFragment.OnStateButtonClickListener (com.digikala.dms.view.fragment.ShipmentDetailsFragment$OnStateButtonClickListener)
.class public interface abstract Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment$OnStateButtonClickListener;
.super Ljava/lang/Object;
.source "ShipmentDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/ShipmentDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStateButtonClickListener"
.end annotation


# virtual methods
.method public abstract onStateButtonClick(I)V
.end method
