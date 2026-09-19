###### Class com.squareup.okhttp.Interceptor (com.squareup.okhttp.Interceptor)
.class public interface abstract Lcom/squareup/okhttp/Interceptor;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Interceptor$Chain;
    }
.end annotation


# virtual methods
.method public abstract intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.squareup.okhttp.Interceptor.Chain (com.squareup.okhttp.Interceptor$Chain)
.class public interface abstract Lcom/squareup/okhttp/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract connection()Lcom/squareup/okhttp/Connection;
.end method

.method public abstract proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract request()Lcom/squareup/okhttp/Request;
.end method
