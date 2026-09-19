###### Class io.realm.ProxyUtils (io.realm.ProxyUtils)
.class Lio/realm/ProxyUtils;
.super Ljava/lang/Object;
.source "ProxyUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRealmListWithJsonStream(Ljava/lang/Class;Landroid/util/JsonReader;)Lio/realm/RealmList;
    .registers 8
    .param p1, "jsonReader"    # Landroid/util/JsonReader;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Landroid/util/JsonReader;",
            ")",
            "Lio/realm/RealmList<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    .local p0, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 143
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 144
    return-object v1

    .line 147
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 148
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    .line 150
    .local v0, "realmList":Lio/realm/RealmList;
    const-class v2, Ljava/lang/Boolean;

    if-ne p0, v2, :cond_38

    .line 151
    :goto_17
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 152
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_2c

    .line 153
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 154
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 156
    :cond_2c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 159
    :cond_38
    const-class v2, Ljava/lang/Float;

    if-ne p0, v2, :cond_5e

    .line 160
    :goto_3c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 161
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_51

    .line 162
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 163
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 165
    :cond_51
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 168
    :cond_5e
    const-class v2, Ljava/lang/Double;

    if-ne p0, v2, :cond_83

    .line 169
    :goto_62
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 170
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_77

    .line 171
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 172
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 174
    :cond_77
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 177
    :cond_83
    const-class v2, Ljava/lang/String;

    if-ne p0, v2, :cond_a4

    .line 178
    :goto_87
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 179
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_9c

    .line 180
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 181
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 183
    :cond_9c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 186
    :cond_a4
    const-class v2, [B

    if-ne p0, v2, :cond_c9

    .line 187
    :goto_a8
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 188
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_bd

    .line 189
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 190
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 192
    :cond_bd
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/realm/internal/android/JsonUtils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 195
    :cond_c9
    const-class v2, Ljava/util/Date;

    if-ne p0, v2, :cond_ff

    .line 196
    :goto_cd
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 197
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    .line 198
    .local v2, "token":Landroid/util/JsonToken;
    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_e2

    .line 199
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 200
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 201
    :cond_e2
    sget-object v3, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_f3

    .line 202
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 204
    :cond_f3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v2    # "token":Landroid/util/JsonToken;
    :goto_fe
    goto :goto_cd

    .line 207
    :cond_ff
    const-class v2, Ljava/lang/Long;

    if-ne p0, v2, :cond_124

    .line 208
    :goto_103
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 209
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_118

    .line 210
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 211
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 213
    :cond_118
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 216
    :cond_124
    const-class v2, Ljava/lang/Integer;

    if-ne p0, v2, :cond_14a

    .line 217
    :goto_128
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 218
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_13d

    .line 219
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 220
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_128

    .line 222
    :cond_13d
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_128

    .line 225
    :cond_14a
    const-class v2, Ljava/lang/Short;

    if-ne p0, v2, :cond_171

    .line 226
    :goto_14e
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 227
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_163

    .line 228
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 229
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_14e

    .line 231
    :cond_163
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_14e

    .line 234
    :cond_171
    const-class v2, Ljava/lang/Byte;

    if-ne p0, v2, :cond_198

    .line 235
    :goto_175
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 236
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_18a

    .line 237
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 238
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_175

    .line 240
    :cond_18a
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_175

    .line 244
    :cond_198
    invoke-static {p0}, Lio/realm/ProxyUtils;->throwWrongElementType(Ljava/lang/Class;)V

    .line 247
    :cond_19b
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 249
    return-object v0
.end method

.method static setRealmListWithJsonObject(Lio/realm/RealmList;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmList<",
            "TE;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    .local p0, "realmList":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 50
    return-void

    .line 53
    :cond_7
    invoke-virtual {p0}, Lio/realm/RealmList;->getOsList()Lio/realm/internal/OsList;

    move-result-object v0

    .line 54
    .local v0, "osList":Lio/realm/internal/OsList;
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 55
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 56
    return-void

    .line 59
    :cond_15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 60
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 61
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 63
    .local v2, "arraySize":I
    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3f

    .line 64
    nop

    .local v5, "i":I
    :goto_28
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    if-ge v3, v2, :cond_129

    .line 65
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 66
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_3c

    .line 68
    :cond_35
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lio/realm/internal/OsList;->addBoolean(Z)V

    .line 64
    :goto_3c
    add-int/lit8 v5, v3, 0x1

    goto :goto_28

    .line 71
    .end local v3    # "i":I
    :cond_3f
    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_5e

    .line 72
    nop

    .restart local v5    # "i":I
    :goto_46
    move v3, v5

    .end local v5    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v2, :cond_129

    .line 73
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 74
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_5b

    .line 76
    :cond_53
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v0, v4}, Lio/realm/internal/OsList;->addFloat(F)V

    .line 72
    :goto_5b
    add-int/lit8 v5, v3, 0x1

    goto :goto_46

    .line 79
    .end local v3    # "i":I
    :cond_5e
    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    if-ne v3, v4, :cond_7c

    .line 80
    nop

    .restart local v5    # "i":I
    :goto_65
    move v3, v5

    .end local v5    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v2, :cond_129

    .line 81
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 82
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_79

    .line 84
    :cond_72
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addDouble(D)V

    .line 80
    :goto_79
    add-int/lit8 v5, v3, 0x1

    goto :goto_65

    .line 87
    .end local v3    # "i":I
    :cond_7c
    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_9a

    .line 88
    nop

    .restart local v5    # "i":I
    :goto_83
    move v3, v5

    .end local v5    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v2, :cond_129

    .line 89
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 90
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_97

    .line 92
    :cond_90
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    .line 88
    :goto_97
    add-int/lit8 v5, v3, 0x1

    goto :goto_83

    .line 95
    .end local v3    # "i":I
    :cond_9a
    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, [B

    if-ne v3, v4, :cond_bc

    .line 96
    nop

    .restart local v5    # "i":I
    :goto_a1
    move v3, v5

    .end local v5    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v2, :cond_129

    .line 97
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 98
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_b9

    .line 100
    :cond_ae
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/realm/internal/OsList;->addBinary([B)V

    .line 96
    :goto_b9
    add-int/lit8 v5, v3, 0x1

    goto :goto_a1

    .line 103
    .end local v3    # "i":I
    :cond_bc
    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/util/Date;

    if-ne v3, v4, :cond_f2

    .line 104
    nop

    .restart local v5    # "i":I
    :goto_c3
    move v3, v5

    .end local v5    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v2, :cond_129

    .line 105
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 106
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    .line 107
    goto :goto_ef

    .line 110
    :cond_d0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 111
    .local v4, "timestamp":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_e3

    .line 112
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/realm/internal/OsList;->addDate(Ljava/util/Date;)V

    goto :goto_ef

    .line 114
    :cond_e3
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Lio/realm/internal/OsList;->addDate(Ljava/util/Date;)V

    .line 104
    .end local v4    # "timestamp":Ljava/lang/Object;
    :goto_ef
    add-int/lit8 v5, v3, 0x1

    goto :goto_c3

    .line 117
    .end local v3    # "i":I
    :cond_f2
    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    if-eq v3, v4, :cond_111

    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-eq v3, v4, :cond_111

    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/Short;

    if-eq v3, v4, :cond_111

    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/Byte;

    if-ne v3, v4, :cond_10b

    goto :goto_111

    .line 127
    :cond_10b
    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-static {v3}, Lio/realm/ProxyUtils;->throwWrongElementType(Ljava/lang/Class;)V

    goto :goto_129

    .line 119
    :cond_111
    :goto_111
    nop

    .restart local v5    # "i":I
    :goto_112
    move v3, v5

    .end local v5    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v2, :cond_129

    .line 120
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 121
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_126

    .line 123
    :cond_11f
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addLong(J)V

    .line 119
    :goto_126
    add-int/lit8 v5, v3, 0x1

    goto :goto_112

    .line 129
    .end local v3    # "i":I
    :cond_129
    :goto_129
    return-void
.end method

.method private static throwWrongElementType(Ljava/lang/Class;)V
    .registers 5
    .param p0, "clazz"    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "Element type \'%s\' is not handled."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
