###### Class com.google.zxing.client.result.WifiResultParser (com.google.zxing.client.result.WifiResultParser)
.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .registers 9
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 35
    invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 36
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "WIFI:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 37
    return-object v1

    .line 39
    :cond_10
    const-string v0, "S:"

    const/4 v3, 0x0

    const/16 v4, 0x3b

    invoke-static {v0, v2, v4, v3}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    .line 40
    .local v5, "ssid":Ljava/lang/String;
    move-object v5, v0

    if-eqz v0, :cond_45

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_45

    .line 43
    :cond_24
    const-string v0, "P:"

    invoke-static {v0, v2, v4, v3}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "pass":Ljava/lang/String;
    const-string v6, "T:"

    invoke-static {v6, v2, v4, v3}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v1, "type":Ljava/lang/String;
    move-object v1, v6

    if-nez v6, :cond_35

    .line 46
    const-string v1, "nopass"

    .line 48
    :cond_35
    const-string v6, "H:"

    invoke-static {v6, v2, v4, v3}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 49
    .local v3, "hidden":Z
    new-instance v4, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct {v4, v1, v5, v0, v3}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v4

    .line 41
    .end local v0    # "pass":Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    .end local v3    # "hidden":Z
    :cond_45
    :goto_45
    return-object v1
.end method
