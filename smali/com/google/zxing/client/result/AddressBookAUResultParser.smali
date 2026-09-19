###### Class com.google.zxing.client.result.AddressBookAUResultParser (com.google.zxing.client.result.AddressBookAUResultParser)
.class public final Lcom/google/zxing/client/result/AddressBookAUResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AddressBookAUResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;
    .registers 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "max"    # I
    .param p2, "rawText"    # Ljava/lang/String;
    .param p3, "trim"    # Z

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v0

    move-object v0, v2

    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "i":I
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    if-gt v1, p1, :cond_32

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static {v4, p2, v5, p3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v0, "value":Ljava/lang/String;
    move-object v0, v4

    if-eqz v4, :cond_32

    .line 80
    if-nez v3, :cond_2c

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 83
    :cond_2c
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v0    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 85
    .end local v1    # "i":I
    :cond_32
    if-nez v3, :cond_35

    .line 86
    return-object v2

    .line 88
    :cond_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 29
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 38
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "MEMORY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_70

    .line 44
    :cond_18
    const-string v0, "NAME1:"

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "name":Ljava/lang/String;
    const-string v5, "NAME2:"

    invoke-static {v5, v2, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "pronunciation":Ljava/lang/String;
    const-string v6, "TEL"

    const/4 v7, 0x3

    invoke-static {v6, v7, v2, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v23

    .line 48
    .local v23, "phoneNumbers":[Ljava/lang/String;
    const-string v6, "MAIL"

    invoke-static {v6, v7, v2, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v24

    .line 49
    .local v24, "emails":[Ljava/lang/String;
    const-string v6, "MEMORY:"

    const/4 v7, 0x0

    invoke-static {v6, v2, v3, v7}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v25

    .line 50
    .local v25, "note":Ljava/lang/String;
    const-string v6, "ADD:"

    invoke-static {v6, v2, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    move-object v6, v1

    .line 51
    .local v6, "address":Ljava/lang/String;
    move-object/from16 v26, v3

    .end local v6    # "address":Ljava/lang/String;
    .local v26, "address":Ljava/lang/String;
    if-nez v3, :cond_49

    :goto_46
    move-object/from16 v16, v1

    goto :goto_4e

    :cond_49
    new-array v1, v4, [Ljava/lang/String;

    aput-object v26, v1, v7

    goto :goto_46

    .line 52
    .local v16, "addresses":[Ljava/lang/String;
    :goto_4e
    new-instance v1, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object v6, v1

    invoke-static {v0}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v9, v5

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    move-object/from16 v15, v25

    invoke-direct/range {v6 .. v22}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 39
    .end local v0    # "name":Ljava/lang/String;
    .end local v5    # "pronunciation":Ljava/lang/String;
    .end local v16    # "addresses":[Ljava/lang/String;
    .end local v23    # "phoneNumbers":[Ljava/lang/String;
    .end local v24    # "emails":[Ljava/lang/String;
    .end local v25    # "note":Ljava/lang/String;
    .end local v26    # "address":Ljava/lang/String;
    :cond_70
    :goto_70
    return-object v1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
