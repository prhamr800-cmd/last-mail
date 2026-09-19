###### Class com.google.android.gms.internal.measurement.zzzm (com.google.android.gms.internal.measurement.zzzm)
.class public final Lcom/google/android/gms/internal/measurement/zzzm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final tag:I

.field private final type:I

.field private final zzbzk:Lcom/google/android/gms/internal/measurement/zzvx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzvx<",
            "**>;"
        }
    .end annotation
.end field

.field protected final zzcfy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final zzcfz:Z


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 2
    const/16 v1, 0xb

    const/4 v3, 0x0

    const/16 v4, 0x32a

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzzm;-><init>(ILjava/lang/Class;Lcom/google/android/gms/internal/measurement/zzvx;IZ)V

    .line 3
    return-void
.end method

.method private constructor <init>(ILjava/lang/Class;Lcom/google/android/gms/internal/measurement/zzvx;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzvx<",
            "**>;IZ)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    .line 7
    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    .line 8
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfz:Z

    .line 9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzbzk:Lcom/google/android/gms/internal/measurement/zzvx;

    .line 10
    return-void
.end method

.method public static zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/measurement/zzzm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/android/gms/internal/measurement/zzzl<",
            "TM;>;T:",
            "Lcom/google/android/gms/internal/measurement/zzzr;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lcom/google/android/gms/internal/measurement/zzzm<",
            "TM;TT;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzzm;

    const/16 p2, 0xb

    const/16 p3, 0x32a

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/google/android/gms/internal/measurement/zzzm;-><init>(ILjava/lang/Class;IZ)V

    return-object p0
.end method

.method private final zze(Lcom/google/android/gms/internal/measurement/zzzi;)Ljava/lang/Object;
    .registers 6

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfz:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    .line 47
    :goto_d
    :try_start_d
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    packed-switch v1, :pswitch_data_9c

    .line 56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_2d

    .line 53
    :pswitch_15
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzr;

    .line 54
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 55
    return-object v1

    .line 48
    :pswitch_1f
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzr;

    .line 49
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    .line 50
    ushr-int/lit8 v2, v2, 0x3

    .line 51
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;I)V

    .line 52
    return-object v1

    .line 56
    :goto_2d
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_46
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_46} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_46} :catch_4f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_46} :catch_46

    .line 61
    :catch_46
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error reading extension field"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 59
    :catch_4f
    move-exception p1

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error creating instance of class "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :catch_75
    move-exception p1

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error creating instance of class "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_9c
    .packed-switch 0xa
        :pswitch_1f
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 11
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 12
    return v0

    .line 13
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzzm;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 14
    return v2

    .line 15
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzm;

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    if-ne v1, v3, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    if-ne v1, v3, :cond_25

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    if-ne v1, v3, :cond_25

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfz:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfz:Z

    if-ne v1, p1, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    add-int/lit16 v0, v0, 0x47b

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfz:Z

    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method protected final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 5

    .line 63
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcc(I)V

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    packed-switch v0, :pswitch_data_42

    .line 73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_22

    .line 72
    :pswitch_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzr;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(Lcom/google/android/gms/internal/measurement/zzzr;)V

    return-void

    .line 65
    :pswitch_13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    .line 66
    ushr-int/lit8 v0, v0, 0x3

    .line 67
    nop

    .line 68
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzr;

    .line 69
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 70
    const/4 p1, 0x4

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 71
    return-void

    .line 73
    :goto_22
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3b

    .line 74
    :catch_3b
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_42
    .packed-switch 0xa
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method final zzah(Ljava/util/List;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzzt;",
            ">;)TT;"
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 23
    return-object v0

    .line 24
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfz:Z

    if-eqz v1, :cond_56

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 27
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzzt;

    .line 28
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    array-length v5, v5

    if-eqz v5, :cond_2e

    .line 29
    nop

    .line 30
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzzi;->zzn([B)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/measurement/zzzm;->zze(Lcom/google/android/gms/internal/measurement/zzzi;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 32
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 33
    if-nez p1, :cond_38

    .line 34
    return-object v0

    .line 35
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    :goto_48
    if-ge v2, p1, :cond_54

    .line 37
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 39
    :cond_54
    nop

    .line 40
    return-object v0

    .line 41
    :cond_56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 42
    return-object v0

    .line 43
    :cond_5d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzt;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzn([B)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zze(Lcom/google/android/gms/internal/measurement/zzzi;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    return-object p1
.end method

.method protected final zzao(Ljava/lang/Object;)I
    .registers 5

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    .line 77
    ushr-int/lit8 v0, v0, 0x3

    .line 78
    nop

    .line 79
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    packed-switch v1, :pswitch_data_3c

    .line 88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->type:I

    const/16 v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :pswitch_25
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzr;

    .line 87
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result p1

    return p1

    .line 80
    :pswitch_2c
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzr;

    .line 81
    nop

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result p1

    .line 84
    add-int/2addr v0, p1

    .line 85
    return v0

    nop

    :pswitch_data_3c
    .packed-switch 0xa
        :pswitch_2c
        :pswitch_25
    .end packed-switch
.end method
