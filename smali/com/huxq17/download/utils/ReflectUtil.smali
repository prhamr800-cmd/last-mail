###### Class com.huxq17.download.utils.ReflectUtil (com.huxq17.download.utils.ReflectUtil)
.class public Lcom/huxq17/download/utils/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .param p0, "targetObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "paramTypes"    # [Ljava/lang/Class;

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "returnObj":Ljava/lang/Object;
    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_32

    .line 34
    :cond_c
    const/4 v1, 0x0

    .line 35
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, "cls":Ljava/lang/Class;
    :goto_11
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_21

    .line 37
    :try_start_15
    invoke-virtual {v2, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1b

    move-object v1, v3

    .line 38
    goto :goto_21

    .line 39
    :catch_1b
    move-exception v3

    .line 35
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_11

    .line 44
    .end local v2    # "cls":Ljava/lang/Class;
    :cond_21
    :goto_21
    if-eqz v1, :cond_31

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    :try_start_27
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2d

    move-object v0, v2

    .line 50
    goto :goto_31

    .line 48
    :catch_2d
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    return-object v0

    .line 32
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_32
    :goto_32
    const/4 v1, 0x0

    return-object v1
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 10
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 12
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    :try_start_2
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 13
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_12} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_12} :catch_25
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_12} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_12} :catch_14

    move-object v0, v1

    .line 24
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_13
    goto :goto_2f

    .line 21
    :catch_14
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 23
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Do not do strange operation in the constructor."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 19
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_20
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_13

    .line 17
    :catch_25
    move-exception v1

    .line 18
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_13

    .line 15
    :catch_2a
    move-exception v1

    .line 16
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_13

    .line 25
    :goto_2f
    return-object v0
.end method
