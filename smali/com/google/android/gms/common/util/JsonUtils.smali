###### Class com.google.android.gms.common.util.JsonUtils (com.google.android.gms.common.util.JsonUtils)
.class public final Lcom/google/android/gms/common/util/JsonUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static final zzhb:Ljava/util/regex/Pattern;

.field private static final zzhc:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 100
    const-string v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzhb:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    .line 102
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzhc:Ljava/util/regex/Pattern;

    .line 103
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 62
    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 63
    return v0

    .line 64
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_87

    if-nez p1, :cond_d

    goto/16 :goto_87

    .line 66
    :cond_d
    instance-of v2, p0, Lorg/json/JSONObject;

    if-eqz v2, :cond_4e

    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_4e

    .line 67
    check-cast p0, Lorg/json/JSONObject;

    .line 68
    check-cast p1, Lorg/json/JSONObject;

    .line 69
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eq v2, v3, :cond_24

    .line 70
    return v1

    .line 71
    :cond_24
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 75
    return v1

    .line 76
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 77
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    invoke-static {v4, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_47} :catch_4b

    if-nez v3, :cond_4a

    .line 79
    return v1

    .line 80
    :cond_4a
    goto :goto_28

    .line 81
    :catch_4b
    move-exception p0

    .line 82
    return v1

    .line 83
    :cond_4d
    return v0

    .line 84
    :cond_4e
    instance-of v2, p0, Lorg/json/JSONArray;

    if-eqz v2, :cond_82

    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_82

    .line 85
    check-cast p0, Lorg/json/JSONArray;

    .line 86
    check-cast p1, Lorg/json/JSONArray;

    .line 87
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v2, v3, :cond_65

    .line 88
    return v1

    .line 89
    :cond_65
    const/4 v2, 0x0

    :goto_66
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_81

    .line 90
    :try_start_6c
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 91
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 92
    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_78} :catch_7f

    if-nez v3, :cond_7b

    .line 93
    return v1

    .line 94
    :cond_7b
    nop

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 95
    :catch_7f
    move-exception p0

    .line 96
    return v1

    .line 98
    :cond_81
    return v0

    .line 99
    :cond_82
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 65
    :cond_87
    :goto_87
    return v1
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 34
    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzhc:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 37
    if-nez v1, :cond_1a

    .line 38
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    :cond_1a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 40
    const/16 v3, 0x22

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_54

    packed-switch v2, :pswitch_data_72

    packed-switch v2, :pswitch_data_7c

    goto :goto_4d

    .line 53
    :pswitch_36
    const-string v2, "\\\\r"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 54
    goto :goto_d

    .line 49
    :pswitch_3c
    const-string v2, "\\\\f"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 50
    goto :goto_d

    .line 51
    :pswitch_42
    const-string v2, "\\\\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 52
    goto :goto_d

    .line 55
    :pswitch_48
    const-string v2, "\\\\t"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 56
    :goto_4d
    goto :goto_d

    .line 47
    :pswitch_4e
    const-string v2, "\\\\b"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 48
    goto :goto_d

    .line 43
    :cond_54
    const-string v2, "\\\\\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 44
    goto :goto_d

    .line 45
    :cond_5a
    const-string v2, "\\\\/"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 46
    goto :goto_d

    .line 41
    :cond_60
    const-string v2, "\\\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 42
    goto :goto_d

    .line 57
    :cond_66
    if-nez v1, :cond_69

    .line 58
    return-object p0

    .line 59
    :cond_69
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_71
    return-object p0

    :pswitch_data_72
    .packed-switch 0x8
        :pswitch_4e
        :pswitch_48
        :pswitch_42
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0xc
        :pswitch_3c
        :pswitch_36
    .end packed-switch
.end method

.method public static unescapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzd;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzhb:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 7
    if-nez v1, :cond_1e

    .line 8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 9
    :cond_1e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 10
    const/16 v3, 0x22

    if-eq v2, v3, :cond_79

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_73

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_6d

    const/16 v3, 0x62

    if-eq v2, v3, :cond_67

    const/16 v3, 0x66

    if-eq v2, v3, :cond_61

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x72

    if-eq v2, v3, :cond_55

    const/16 v3, 0x74

    if-ne v2, v3, :cond_4d

    .line 25
    const-string v2, "\t"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 26
    goto :goto_11

    .line 27
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Found an escaped character that should never be."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_55
    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 24
    goto :goto_11

    .line 21
    :cond_5b
    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 22
    goto :goto_11

    .line 19
    :cond_61
    const-string v2, "\u000c"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 20
    goto :goto_11

    .line 17
    :cond_67
    const-string v2, "\u0008"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 18
    goto :goto_11

    .line 13
    :cond_6d
    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 14
    goto :goto_11

    .line 15
    :cond_73
    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 16
    goto :goto_11

    .line 11
    :cond_79
    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 12
    goto :goto_11

    .line 28
    :cond_7f
    if-nez v1, :cond_82

    .line 29
    return-object p0

    .line 30
    :cond_82
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_8a
    return-object p0
.end method
