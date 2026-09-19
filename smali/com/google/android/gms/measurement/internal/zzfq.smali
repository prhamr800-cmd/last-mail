###### Class com.google.android.gms.measurement.internal.zzfq (com.google.android.gms.measurement.internal.zzfq)
.class public final Lcom/google/android/gms/measurement/internal/zzfq;
.super Lcom/google/android/gms/measurement/internal/zzfj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 2
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;
    .registers 6

    .line 39
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    .line 40
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 41
    return-object v2

    .line 42
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 43
    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 326
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 327
    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_b
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfz;)V
    .registers 10

    .line 283
    if-nez p3, :cond_3

    .line 284
    return-void

    .line 285
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 286
    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v0, "complement"

    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string v0, "param_name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    add-int/lit8 v0, p2, 0x1

    const-string v1, "string_filter"

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 290
    if-eqz v2, :cond_9f

    .line 291
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 292
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, " {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    if-eqz v1, :cond_5b

    .line 295
    const-string v1, "UNKNOWN_MATCH_TYPE"

    .line 296
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_b0

    goto :goto_56

    .line 307
    :pswitch_44
    const-string v1, "IN_LIST"

    goto :goto_56

    .line 305
    :pswitch_47
    const-string v1, "EXACT"

    .line 306
    goto :goto_56

    .line 303
    :pswitch_4a
    const-string v1, "PARTIAL"

    .line 304
    goto :goto_56

    .line 301
    :pswitch_4d
    const-string v1, "ENDS_WITH"

    .line 302
    goto :goto_56

    .line 299
    :pswitch_50
    const-string v1, "BEGINS_WITH"

    .line 300
    goto :goto_56

    .line 297
    :pswitch_53
    const-string v1, "REGEXP"

    .line 298
    nop

    .line 308
    :goto_56
    const-string v3, "match_type"

    invoke-static {p1, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 309
    :cond_5b
    const-string v1, "expression"

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 310
    const-string v1, "case_sensitive"

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 311
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_96

    .line 312
    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 313
    const-string v1, "expression_list {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7c
    if-ge v3, v2, :cond_90

    aget-object v4, v1, v3

    .line 315
    add-int/lit8 v5, v0, 0x2

    invoke-static {p1, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 316
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 319
    :cond_90
    const-string/jumbo v1, "}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_96
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 321
    const-string/jumbo v1, "}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_9f
    const-string v1, "number_filter"

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzga;)V

    .line 323
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 324
    const-string/jumbo p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    return-void

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzga;)V
    .registers 6

    .line 260
    if-nez p4, :cond_3

    .line 261
    return-void

    .line 262
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 263
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string p3, " {\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzga;->zzawh:Ljava/lang/Integer;

    if-eqz p3, :cond_2f

    .line 266
    const-string p3, "UNKNOWN_COMPARISON_TYPE"

    .line 267
    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzga;->zzawh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    goto :goto_2a

    .line 274
    :pswitch_1e
    const-string p3, "BETWEEN"

    goto :goto_2a

    .line 272
    :pswitch_21
    const-string p3, "EQUAL"

    .line 273
    goto :goto_2a

    .line 270
    :pswitch_24
    const-string p3, "GREATER_THAN"

    .line 271
    goto :goto_2a

    .line 268
    :pswitch_27
    const-string p3, "LESS_THAN"

    .line 269
    nop

    .line 275
    :goto_2a
    const-string v0, "comparison_type"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 276
    :cond_2f
    const-string p3, "match_as_float"

    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzga;->zzawi:Ljava/lang/Boolean;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string p3, "comparison_value"

    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzga;->zzawj:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string p3, "min_comparison_value"

    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzga;->zzawk:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string p3, "max_comparison_value"

    iget-object p4, p4, Lcom/google/android/gms/internal/measurement/zzga;->zzawl:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 281
    const-string/jumbo p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgm;Ljava/lang/String;)V
    .registers 15

    .line 204
    if-nez p4, :cond_3

    .line 205
    return-void

    .line 206
    :cond_3
    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 207
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string p3, " {\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    const/16 v0, 0xa

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p3, :cond_40

    .line 210
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 211
    const-string p3, "results: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    nop

    .line 213
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v4, v3, :cond_3d

    aget-wide v6, p3, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 214
    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_36

    .line 215
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_36
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v4, v4, 0x1

    .line 213
    move v5, v7

    goto :goto_25

    .line 218
    :cond_3d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_40
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    if-eqz p3, :cond_6d

    .line 220
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 221
    const-string p3, "status: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    nop

    .line 223
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_52
    if-ge v4, v3, :cond_6a

    aget-wide v6, p3, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 224
    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_63

    .line 225
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_63
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 223
    move v5, v7

    goto :goto_52

    .line 228
    :cond_6a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/google/android/gms/measurement/internal/zzo;->zzbd(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_101

    .line 230
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    if-eqz p3, :cond_af

    .line 231
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 232
    const-string p3, "dynamic_filter_timestamps: {"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    nop

    .line 234
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    array-length p5, p3

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_89
    if-ge v0, p5, :cond_a9

    aget-object v4, p3, v0

    .line 235
    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_96

    .line 236
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_96
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    .line 234
    move v3, v5

    goto :goto_89

    .line 239
    :cond_a9
    const-string/jumbo p3, "}\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_af
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    if-eqz p3, :cond_101

    .line 241
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 242
    const-string p3, "sequence_filter_timestamps: {"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    nop

    .line 244
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    array-length p4, p3

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_c1
    if-ge p5, p4, :cond_fb

    aget-object v1, p3, p5

    .line 245
    add-int/lit8 v3, v0, 0x1

    if-eqz v0, :cond_ce

    .line 246
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_ce
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    nop

    .line 249
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_de
    if-ge v4, v1, :cond_f2

    aget-wide v6, v0, v4

    .line 250
    add-int/lit8 v8, v5, 0x1

    if-eqz v5, :cond_eb

    .line 251
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_eb
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v4, v4, 0x1

    .line 249
    move v5, v8

    goto :goto_de

    .line 254
    :cond_f2
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 p5, p5, 0x1

    .line 244
    move v0, v3

    goto :goto_c1

    .line 256
    :cond_fb
    const-string/jumbo p3, "}\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_101
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 258
    const-string/jumbo p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 330
    if-nez p3, :cond_3

    .line 331
    return-void

    .line 332
    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 333
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    return-void
.end method

.method static zza([JI)Z
    .registers 8

    .line 363
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    if-lt p1, v0, :cond_7

    .line 364
    return v1

    .line 365
    :cond_7
    div-int/lit8 v0, p1, 0x40

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v4, p1

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-eqz v0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method static zza(Ljava/util/BitSet;)[J
    .registers 11

    .line 366
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 367
    new-array v2, v0, [J

    .line 368
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v0, :cond_33

    .line 369
    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    .line 370
    const/4 v5, 0x0

    :goto_14
    if-ge v5, v1, :cond_30

    .line 371
    shl-int/lit8 v6, v4, 0x6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v7

    if-ge v6, v7, :cond_30

    .line 372
    invoke-virtual {p0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 373
    aget-wide v6, v2, v4

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    aput-wide v6, v2, v4

    .line 374
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 375
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 376
    :cond_33
    return-object v2
.end method

.method static zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgj;
    .registers 8

    .line 53
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_34

    aget-object v3, p0, v2

    .line 54
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 55
    const/4 p1, 0x0

    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 56
    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 57
    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    .line 58
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_1f

    .line 59
    check-cast p2, Ljava/lang/Long;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    goto :goto_30

    .line 60
    :cond_1f
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_28

    .line 61
    check-cast p2, Ljava/lang/String;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    goto :goto_30

    .line 62
    :cond_28
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_30

    .line 63
    check-cast p2, Ljava/lang/Double;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    .line 64
    :cond_30
    :goto_30
    return-object p0

    .line 65
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 66
    :cond_34
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 67
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 69
    iput-object p1, v1, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 70
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_4d

    .line 71
    check-cast p2, Ljava/lang/Long;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    goto :goto_5e

    .line 72
    :cond_4d
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_56

    .line 73
    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    goto :goto_5e

    .line 74
    :cond_56
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_5e

    .line 75
    check-cast p2, Ljava/lang/Double;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    .line 76
    :cond_5e
    :goto_5e
    array-length p0, p0

    aput-object v1, v0, p0

    .line 77
    return-object v0
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object p0

    .line 45
    if-eqz p0, :cond_1b

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 47
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    return-object p0

    .line 48
    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-eqz p1, :cond_14

    .line 49
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    return-object p0

    .line 50
    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    if-eqz p1, :cond_1b

    .line 51
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    return-object p0

    .line 52
    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzcu(Ljava/lang/String;)Z
    .registers 2

    .line 359
    if-eqz p0, :cond_14

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    .line 362
    return p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 439
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 338
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 339
    return-object v0

    .line 340
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 341
    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 342
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 343
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_16
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_16} :catch_1c
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    return-object p1

    .line 350
    :catchall_1a
    move-exception p1

    goto :goto_2e

    .line 346
    :catch_1c
    move-exception p1

    .line 347
    :try_start_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_1a

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    return-object v0

    .line 350
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfy;)Ljava/lang/String;
    .registers 8

    .line 179
    if-nez p1, :cond_5

    .line 180
    const-string p1, "null"

    return-object p1

    .line 181
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v1, "\nevent_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "filter_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string v1, "event_name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v1, "event_count_filter"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzga;)V

    .line 186
    const-string v1, "  filters {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    array-length v1, p1

    :goto_36
    if-ge v3, v1, :cond_41

    aget-object v2, p1, v3

    .line 188
    const/4 v5, 0x2

    invoke-direct {p0, v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfz;)V

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 190
    :cond_41
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 191
    const-string/jumbo p1, "}\n}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzgb;)Ljava/lang/String;
    .registers 7

    .line 193
    if-nez p1, :cond_5

    .line 194
    const-string p1, "null"

    return-object p1

    .line 195
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "filter_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v1, "property_name"

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    const/4 v1, 0x1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfz;)V

    .line 202
    const-string/jumbo p1, "}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/Object;)V
    .registers 4

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 18
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 19
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    .line 20
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 21
    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    return-void

    .line 22
    :cond_13
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 23
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    return-void

    .line 24
    :cond_1c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_25

    .line 25
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    return-void

    .line 26
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzgo;Ljava/lang/Object;)V
    .registers 4

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    .line 6
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    .line 7
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    .line 8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    return-void

    .line 10
    :cond_13
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 11
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    return-void

    .line 12
    :cond_1c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_25

    .line 13
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    return-void

    .line 14
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzgk;)[B
    .registers 5

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v0

    .line 29
    new-array v0, v0, [B

    .line 30
    nop

    .line 31
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v1

    .line 32
    nop

    .line 33
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 35
    return-object v0

    .line 36
    :catch_15
    move-exception p1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Data loss. Failed to serialize batch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const/4 p1, 0x0

    return-object p1
.end method

.method final zza([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 381
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 382
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 383
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 384
    :goto_13
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    .line 385
    if-lez v3, :cond_1e

    .line 386
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 387
    goto :goto_13

    .line 388
    :cond_1e
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 389
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 390
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    return-object p1

    .line 391
    :catch_29
    move-exception p1

    .line 392
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    throw p1
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    .line 436
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzaf()V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzgk;)Ljava/lang/String;
    .registers 20

    .line 78
    move-object/from16 v0, p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v1, "\nbatch {\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    if-eqz v1, :cond_25b

    .line 81
    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v8, v7

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v8, :cond_25b

    aget-object v11, v7, v10

    .line 82
    if-eqz v11, :cond_257

    .line 83
    nop

    .line 84
    if-eqz v11, :cond_257

    .line 85
    const/4 v12, 0x1

    invoke-static {v6, v12}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 86
    const-string v0, "bundle {\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, "protocol_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxt:Ljava/lang/Integer;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "platform"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayb:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v0, "gmp_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayf:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v0, "uploading_gmp_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayg:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "config_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayr:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v0, "gmp_app_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzafx:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v0, "admob_app_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxc:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v0, "app_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "app_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzts:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "app_version_major"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayn:Ljava/lang/Integer;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v0, "firebase_instance_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzafz:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v0, "dev_cert_hash"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayj:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v0, "app_store"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzage:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string/jumbo v0, "upload_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxw:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v0, "start_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxx:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v0, "end_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v0, "previous_bundle_start_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxz:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v0, "previous_bundle_end_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaya:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v0, "app_instance_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzafw:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v0, "resettable_device_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayh:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v0, "device_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayq:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v0, "ds_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayt:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v0, "limited_ad_tracking"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayi:Ljava/lang/Boolean;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v0, "os_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayc:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v0, "device_model"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayd:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string/jumbo v0, "user_default_language"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaid:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string/jumbo v0, "time_zone_offset_minutes"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaye:Ljava/lang/Integer;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v0, "bundle_sequential_index"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayk:Ljava/lang/Integer;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v0, "service_upload"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Boolean;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v0, "health_monitor"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzagy:Ljava/lang/String;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzays:Ljava/lang/Long;

    if-eqz v0, :cond_113

    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzays:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_113

    .line 118
    const-string v0, "android_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzays:Ljava/lang/Long;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_113
    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayv:Ljava/lang/Integer;

    if-eqz v0, :cond_11e

    .line 120
    const-string v0, "retry_counter"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayv:Ljava/lang/Integer;

    invoke-static {v6, v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_11e
    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    .line 122
    const/4 v13, 0x2

    if-eqz v0, :cond_16b

    .line 123
    array-length v1, v0

    const/4 v2, 0x0

    :goto_125
    if-ge v2, v1, :cond_16b

    aget-object v3, v0, v2

    .line 124
    if-eqz v3, :cond_168

    .line 125
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 126
    const-string/jumbo v4, "user_property {\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v4, "set_timestamp_millis"

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    invoke-static {v6, v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v4, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v5

    iget-object v14, v3, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v4, "string_value"

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    invoke-static {v6, v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v4, "int_value"

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    invoke-static {v6, v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v4, "double_value"

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    invoke-static {v6, v13, v4, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 133
    const-string/jumbo v3, "}\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_168
    add-int/lit8 v2, v2, 0x1

    goto :goto_125

    .line 135
    :cond_16b
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaym:[Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 136
    if-eqz v14, :cond_1c0

    .line 137
    array-length v5, v14

    const/4 v4, 0x0

    :goto_173
    if-ge v4, v5, :cond_1c0

    aget-object v3, v14, v4

    .line 138
    if-eqz v3, :cond_1b7

    .line 139
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 140
    const-string v0, "audience_membership {\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, "audience_id"

    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    invoke-static {v6, v13, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "new_audience"

    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    invoke-static {v6, v13, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    const/4 v2, 0x2

    const-string v16, "current_data"

    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object v1, v6

    move-object v9, v3

    move-object/from16 v3, v16

    move/from16 v16, v4

    move-object/from16 v4, v17

    move/from16 v17, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgm;Ljava/lang/String;)V

    .line 144
    const-string v3, "previous_data"

    iget-object v4, v9, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgm;Ljava/lang/String;)V

    .line 145
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 146
    const-string/jumbo v0, "}\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1bb

    .line 147
    :cond_1b7
    move/from16 v16, v4

    move/from16 v17, v5

    :goto_1bb
    add-int/lit8 v4, v16, 0x1

    .line 137
    move/from16 v5, v17

    goto :goto_173

    .line 148
    :cond_1c0
    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 149
    if-eqz v0, :cond_24d

    .line 150
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c6
    if-ge v2, v1, :cond_24d

    aget-object v3, v0, v2

    .line 151
    if-eqz v3, :cond_248

    .line 152
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 153
    const-string v4, "event {\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v4, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v5

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string/jumbo v4, "timestamp_millis"

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-static {v6, v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string v4, "previous_timestamp_millis"

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    invoke-static {v6, v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string v4, "count"

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    invoke-static {v6, v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 159
    if-eqz v3, :cond_23f

    .line 160
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1ff
    if-ge v5, v4, :cond_23f

    aget-object v9, v3, v5

    .line 161
    if-eqz v9, :cond_23b

    .line 162
    const/4 v11, 0x3

    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 163
    const-string v14, "param {\n"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v14, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v15

    iget-object v12, v9, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v15, v12}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v12, "string_value"

    iget-object v14, v9, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    invoke-static {v6, v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string v12, "int_value"

    iget-object v14, v9, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-static {v6, v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v12, "double_value"

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    invoke-static {v6, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 169
    const-string/jumbo v9, "}\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_23b
    add-int/lit8 v5, v5, 0x1

    .line 160
    const/4 v12, 0x1

    goto :goto_1ff

    .line 171
    :cond_23f
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 172
    const-string/jumbo v3, "}\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_248
    add-int/lit8 v2, v2, 0x1

    .line 150
    const/4 v12, 0x1

    goto/16 :goto_1c6

    .line 174
    :cond_24d
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/StringBuilder;I)V

    .line 175
    const-string/jumbo v0, "}\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_257
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_14

    .line 177
    :cond_25b
    const-string/jumbo v0, "}\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb(JJ)Z
    .registers 9

    .line 377
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_20

    cmp-long v3, p3, v1

    if-gtz v3, :cond_c

    goto :goto_20

    .line 379
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-lez v1, :cond_1e

    return v0

    :cond_1e
    const/4 p1, 0x0

    return p1

    .line 378
    :cond_20
    :goto_20
    return v0
.end method

.method final zzb([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 396
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 397
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 398
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 399
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    .line 400
    :catch_18
    move-exception p1

    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    throw p1
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 438
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)Z
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 351
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 355
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 356
    nop

    .line 357
    const/4 p1, 0x0

    return p1

    .line 358
    :cond_1c
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 433
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 434
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    .line 435
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 437
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 440
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 441
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 442
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 443
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 444
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 445
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 446
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 3
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzjr()Lcom/google/android/gms/measurement/internal/zzfq;
    .registers 2

    .line 430
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjs()Lcom/google/android/gms/measurement/internal/zzk;
    .registers 2

    .line 431
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzjs()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjt()Lcom/google/android/gms/measurement/internal/zzr;
    .registers 2

    .line 432
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    return-object v0
.end method

.method final zzmi()[I
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfq;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzm(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 404
    const/4 v1, 0x0

    if-eqz v0, :cond_b3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_b3

    .line 406
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 407
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->zzaks:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 408
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 410
    :try_start_48
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 411
    if-eqz v4, :cond_77

    .line 412
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_77

    .line 414
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 415
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 416
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_76} :catch_78

    .line 417
    goto :goto_87

    .line 418
    :cond_77
    goto :goto_2e

    .line 419
    :catch_78
    move-exception v4

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    :cond_86
    goto :goto_2e

    .line 422
    :cond_87
    :goto_87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8e

    .line 423
    return-object v1

    .line 424
    :cond_8e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 425
    nop

    .line 426
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9d
    if-ge v3, v1, :cond_b2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Integer;

    .line 427
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    .line 428
    nop

    .line 426
    move v4, v6

    goto :goto_9d

    .line 429
    :cond_b2
    return-object v0

    .line 405
    :cond_b3
    :goto_b3
    return-object v1
.end method
