###### Class com.google.firebase.components.zzb (com.google.firebase.components.zzb)
.class final synthetic Lcom/google/firebase/components/zzb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.0.2"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field private final zza:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/zzb;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/firebase/components/ComponentFactory;
    .registers 2

    new-instance v0, Lcom/google/firebase/components/zzb;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/zzb;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p0, Lcom/google/firebase/components/zzb;->zza:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/components/Component;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
