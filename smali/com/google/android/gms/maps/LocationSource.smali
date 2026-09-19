###### Class com.google.android.gms.maps.LocationSource (com.google.android.gms.maps.LocationSource)
.class public interface abstract Lcom/google/android/gms/maps/LocationSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;
    }
.end annotation


# virtual methods
.method public abstract activate(Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)V
.end method

.method public abstract deactivate()V
.end method

###### Class com.google.android.gms.maps.LocationSource.OnLocationChangedListener (com.google.android.gms.maps.LocationSource$OnLocationChangedListener)
.class public interface abstract Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/LocationSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLocationChangedListener"
.end annotation


# virtual methods
.method public abstract onLocationChanged(Landroid/location/Location;)V
.end method
