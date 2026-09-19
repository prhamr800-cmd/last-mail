###### Class com.crashlytics.android.core.internal.models.ThreadData (com.crashlytics.android.core.internal.models.ThreadData)
.class public Lcom/crashlytics/android/core/internal/models/ThreadData;
.super Ljava/lang/Object;
.source "ThreadData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
    }
.end annotation


# static fields
.field public static final IMPORTANCE_CRASHED_THREAD:I = 0x4


# instance fields
.field public final frames:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

.field public final importance:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V
    .registers 4
    .param p1, "importance"    # I
    .param p2, "frames"    # [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/crashlytics/android/core/internal/models/ThreadData;-><init>(Ljava/lang/String;I[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "importance"    # I
    .param p3, "frames"    # [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/crashlytics/android/core/internal/models/ThreadData;->name:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/crashlytics/android/core/internal/models/ThreadData;->importance:I

    .line 84
    iput-object p3, p0, Lcom/crashlytics/android/core/internal/models/ThreadData;->frames:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 85
    return-void
.end method

###### Class com.crashlytics.android.core.internal.models.ThreadData.FrameData (com.crashlytics.android.core.internal.models.ThreadData$FrameData)
.class public final Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
.super Ljava/lang/Object;
.source "ThreadData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/internal/models/ThreadData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameData"
.end annotation


# instance fields
.field public final address:J

.field public final file:Ljava/lang/String;

.field public final importance:I

.field public final offset:J

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(JI)V
    .registers 5
    .param p1, "address"    # J
    .param p3, "importance"    # I

    .line 46
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;-><init>(JLjava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .registers 13
    .param p1, "address"    # J
    .param p3, "symbol"    # Ljava/lang/String;
    .param p4, "importance"    # I

    .line 50
    const-string v4, ""

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;-><init>(JLjava/lang/String;Ljava/lang/String;JI)V

    .line 51
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JI)V
    .registers 8
    .param p1, "address"    # J
    .param p3, "symbol"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "importance"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->address:J

    .line 55
    iput-object p3, p0, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->symbol:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->file:Ljava/lang/String;

    .line 57
    iput-wide p5, p0, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->offset:J

    .line 58
    iput p7, p0, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->importance:I

    .line 59
    return-void
.end method
