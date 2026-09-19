###### Class com.google.firebase.components.Dependency (com.google.firebase.components.Dependency)
.class public final Lcom/google/firebase/components/Dependency;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.0.2"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final zza:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzb:I

.field private final zzc:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .registers 5
    .param p2, "type"    # I
    .param p3, "injection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 45
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .end local p1    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Null dependency anInterface."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/components/Dependency;->zza:Ljava/lang/Class;

    .line 47
    nop

    .end local p2    # "type":I
    iput p2, p0, Lcom/google/firebase/components/Dependency;->zzb:I

    .line 48
    nop

    .end local p0    # "this":Lcom/google/firebase/components/Dependency;
    .end local p3    # "injection":I
    iput p3, p0, Lcom/google/firebase/components/Dependency;->zzc:I

    .line 49
    return-void
.end method

.method public static optional(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 53
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .end local p0    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static optionalProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 63
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .end local p0    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 58
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .end local p0    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 68
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .end local p0    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 86
    nop

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, Lcom/google/firebase/components/Dependency;

    .line 87
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->zza:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/firebase/components/Dependency;->zza:Ljava/lang/Class;

    if-ne v0, v2, :cond_1c

    iget v0, p0, Lcom/google/firebase/components/Dependency;->zzb:I

    iget v2, p1, Lcom/google/firebase/components/Dependency;->zzb:I

    if-ne v0, v2, :cond_1c

    .end local p0    # "this":Lcom/google/firebase/components/Dependency;
    iget v0, p0, Lcom/google/firebase/components/Dependency;->zzc:I

    iget p1, p1, Lcom/google/firebase/components/Dependency;->zzc:I

    if-ne v0, p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v1

    .line 89
    :cond_1d
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->zza:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 96
    mul-int v0, v0, v1

    .line 97
    iget v2, p0, Lcom/google/firebase/components/Dependency;->zzb:I

    xor-int/2addr v0, v2

    .line 98
    mul-int v0, v0, v1

    .line 99
    iget v1, p0, Lcom/google/firebase/components/Dependency;->zzc:I

    xor-int/2addr v0, v1

    .line 100
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependency{anInterface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/components/Dependency;->zza:Ljava/lang/Class;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", required="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/Dependency;->zzb:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    .line 109
    const/4 v1, 0x1

    goto :goto_1b

    .line 108
    :cond_19
    nop

    .line 109
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", direct="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/Dependency;->zzc:I

    if-nez v1, :cond_29

    .line 111
    const/4 v2, 0x1

    goto :goto_2a

    .line 110
    :cond_29
    nop

    .line 111
    :goto_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->zza:Ljava/lang/Class;

    return-object v0
.end method

.method public final zzb()Z
    .registers 3

    .line 76
    iget v0, p0, Lcom/google/firebase/components/Dependency;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 80
    iget v0, p0, Lcom/google/firebase/components/Dependency;->zzc:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
