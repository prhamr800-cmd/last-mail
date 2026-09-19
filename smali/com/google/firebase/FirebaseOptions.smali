###### Class com.google.firebase.FirebaseOptions (com.google.firebase.FirebaseOptions)
.class public final Lcom/google/firebase/FirebaseOptions;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.0.2"


# annotations
.annotation build Lcom/google/firebase/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/FirebaseOptions$Builder;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "applicationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "apiKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "databaseUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "gaTrackingId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "gcmSenderId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "storageBucket"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "projectId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 144
    nop

    .end local p1    # "applicationId":Ljava/lang/String;
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    .line 145
    nop

    .end local p2    # "apiKey":Ljava/lang/String;
    iput-object p2, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    .line 146
    nop

    .end local p3    # "databaseUrl":Ljava/lang/String;
    iput-object p3, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    .line 147
    nop

    .end local p4    # "gaTrackingId":Ljava/lang/String;
    iput-object p4, p0, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    .line 148
    nop

    .end local p5    # "gcmSenderId":Ljava/lang/String;
    iput-object p5, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    .line 149
    nop

    .end local p6    # "storageBucket":Ljava/lang/String;
    iput-object p6, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    .line 150
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions;
    .end local p7    # "projectId":Ljava/lang/String;
    iput-object p7, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 9
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;

    .line 32
    nop

    .end local p1    # "x0":Ljava/lang/String;
    .end local p2    # "x1":Ljava/lang/String;
    .end local p3    # "x2":Ljava/lang/String;
    .end local p4    # "x3":Ljava/lang/String;
    .end local p5    # "x4":Ljava/lang/String;
    .end local p6    # "x5":Ljava/lang/String;
    .end local p7    # "x6":Ljava/lang/String;
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions;
    return-void
.end method

.method public static fromResource(Landroid/content/Context;)Lcom/google/firebase/FirebaseOptions;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 160
    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 161
    const-string p0, "google_app_id"

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 163
    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_13
    new-instance p0, Lcom/google/firebase/FirebaseOptions;

    const-string v1, "google_api_key"

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "firebase_database_url"

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ga_trackingId"

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "gcm_defaultSenderId"

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "google_storage_bucket"

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "project_id"

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 230
    instance-of v0, p1, Lcom/google/firebase/FirebaseOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 231
    return v1

    .line 233
    :cond_6
    nop

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, Lcom/google/firebase/FirebaseOptions;

    .line 234
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    .line 235
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    .line 236
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    .line 237
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    .line 238
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    .line 239
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions;
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    .line 240
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x1

    return p1

    .line 234
    :cond_51
    return v1
.end method

.method public final getApiKey()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getDatabaseUrl()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final getGaTrackingId()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final getGcmSenderId()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final getProjectId()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorageBucket()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .line 245
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 251
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "applicationId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "apiKey"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "databaseUrl"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "gcmSenderId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "storageBucket"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "projectId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    return-object v0
.end method

###### Class com.google.firebase.FirebaseOptions.Builder (com.google.firebase.FirebaseOptions$Builder)
.class public final Lcom/google/firebase/FirebaseOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.0.2"


# annotations
.annotation build Lcom/google/firebase/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/FirebaseOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseOptions;)V
    .registers 3
    .param p1, "options"    # Lcom/google/firebase/FirebaseOptions;
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zza(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzb:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzb(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zza:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzc(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzc:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzd(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzd:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zze(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zze:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzf(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzf:Ljava/lang/String;

    .line 81
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions$Builder;
    .end local p1    # "options":Lcom/google/firebase/FirebaseOptions;
    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzg(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzg:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/firebase/FirebaseOptions;
    .registers 11
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 130
    new-instance v9, Lcom/google/firebase/FirebaseOptions;

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zze:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzf:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzg:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    return-object v9
.end method

.method public final setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .registers 3
    .param p1, "apiKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 86
    nop

    .end local p1    # "apiKey":Ljava/lang/String;
    const-string v0, "ApiKey must be set."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zza:Ljava/lang/String;

    .line 87
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions$Builder;
    return-object p0
.end method

.method public final setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .registers 3
    .param p1, "applicationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 92
    nop

    .end local p1    # "applicationId":Ljava/lang/String;
    const-string v0, "ApplicationId must be set."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzb:Ljava/lang/String;

    .line 93
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions$Builder;
    return-object p0
.end method

.method public final setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .registers 2
    .param p1, "databaseUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 98
    nop

    .end local p1    # "databaseUrl":Ljava/lang/String;
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzc:Ljava/lang/String;

    .line 99
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions$Builder;
    return-object p0
.end method

.method public final setGaTrackingId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .registers 2
    .param p1, "gaTrackingId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 106
    nop

    .end local p1    # "gaTrackingId":Ljava/lang/String;
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzd:Ljava/lang/String;

    .line 107
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions$Builder;
    return-object p0
.end method

.method public final setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .registers 2
    .param p1, "gcmSenderId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 112
    nop

    .end local p1    # "gcmSenderId":Ljava/lang/String;
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zze:Ljava/lang/String;

    .line 113
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions$Builder;
    return-object p0
.end method

.method public final setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .registers 2
    .param p1, "projectId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 124
    nop

    .end local p1    # "projectId":Ljava/lang/String;
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzg:Ljava/lang/String;

    .line 125
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions$Builder;
    return-object p0
.end method

.method public final setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .registers 2
    .param p1, "storageBucket"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 118
    nop

    .end local p1    # "storageBucket":Ljava/lang/String;
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzf:Ljava/lang/String;

    .line 119
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseOptions$Builder;
    return-object p0
.end method
