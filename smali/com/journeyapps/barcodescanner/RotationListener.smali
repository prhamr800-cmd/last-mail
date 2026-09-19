###### Class com.journeyapps.barcodescanner.RotationListener (com.journeyapps.barcodescanner.RotationListener)
.class public Lcom/journeyapps/barcodescanner/RotationListener;
.super Ljava/lang/Object;
.source "RotationListener.java"


# instance fields
.field private callback:Lcom/journeyapps/barcodescanner/RotationCallback;

.field private lastRotation:I

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/RotationListener;

    .line 15
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/RotationListener;)Lcom/journeyapps/barcodescanner/RotationCallback;
    .registers 2
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/RotationListener;

    .line 15
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/RotationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/RotationListener;

    .line 15
    iget v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    return v0
.end method

.method static synthetic access$202(Lcom/journeyapps/barcodescanner/RotationListener;I)I
    .registers 2
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/RotationListener;
    .param p1, "x1"    # I

    .line 15
    iput p1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    return p1
.end method


# virtual methods
.method public listen(Landroid/content/Context;Lcom/journeyapps/barcodescanner/RotationCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 27
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/RotationListener;->stop()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 33
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 35
    const-string/jumbo v0, "window"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    .line 38
    new-instance v0, Lcom/journeyapps/barcodescanner/RotationListener$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/journeyapps/barcodescanner/RotationListener$1;-><init>(Lcom/journeyapps/barcodescanner/RotationListener;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 52
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 54
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    .line 55
    return-void
.end method

.method public stop()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 63
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 64
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    .line 65
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 66
    return-void
.end method

###### Class com.journeyapps.barcodescanner.RotationListener.AnonymousClass1 (com.journeyapps.barcodescanner.RotationListener$1)
.class Lcom/journeyapps/barcodescanner/RotationListener$1;
.super Landroid/view/OrientationEventListener;
.source "RotationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/RotationListener;->listen(Landroid/content/Context;Lcom/journeyapps/barcodescanner/RotationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/RotationListener;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/RotationListener;Landroid/content/Context;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/journeyapps/barcodescanner/RotationListener;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .line 38
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 6
    .param p1, "orientation"    # I

    .line 41
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/RotationListener;->access$000(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;

    move-result-object v0

    .line 42
    .local v0, "localWindowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/RotationListener;->access$100(Lcom/journeyapps/barcodescanner/RotationListener;)Lcom/journeyapps/barcodescanner/RotationCallback;

    move-result-object v1

    .line 43
    .local v1, "localCallback":Lcom/journeyapps/barcodescanner/RotationCallback;
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/RotationListener;->access$000(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_2e

    .line 44
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 45
    .local v2, "newRotation":I
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v3}, Lcom/journeyapps/barcodescanner/RotationListener;->access$200(Lcom/journeyapps/barcodescanner/RotationListener;)I

    move-result v3

    if-eq v2, v3, :cond_2e

    .line 46
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v3, v2}, Lcom/journeyapps/barcodescanner/RotationListener;->access$202(Lcom/journeyapps/barcodescanner/RotationListener;I)I

    .line 47
    invoke-interface {v1, v2}, Lcom/journeyapps/barcodescanner/RotationCallback;->onRotationChanged(I)V

    .line 50
    .end local v2    # "newRotation":I
    :cond_2e
    return-void
.end method
