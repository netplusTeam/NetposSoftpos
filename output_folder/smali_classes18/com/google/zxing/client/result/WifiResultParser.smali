.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 19
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 43
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "WIFI:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    return-object v1

    .line 46
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .end local v2    # "rawText":Ljava/lang/String;
    .local v0, "rawText":Ljava/lang/String;
    const-string v2, "S:"

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    move-object v5, v1

    .line 48
    .local v5, "ssid":Ljava/lang/String;
    move-object v7, v2

    .end local v5    # "ssid":Ljava/lang/String;
    .local v7, "ssid":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 51
    :cond_1
    const-string v2, "P:"

    invoke-static {v2, v0, v3, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "pass":Ljava/lang/String;
    const-string v5, "T:"

    invoke-static {v5, v0, v3, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    .line 53
    .local v6, "type":Ljava/lang/String;
    move-object v6, v5

    if-nez v5, :cond_2

    .line 54
    const-string v6, "nopass"

    move-object v14, v6

    goto :goto_0

    .line 53
    :cond_2
    move-object v14, v6

    .line 60
    .end local v6    # "type":Ljava/lang/String;
    .local v14, "type":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 61
    .local v5, "hidden":Z
    const-string v6, "PH2:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "phase2Method":Ljava/lang/String;
    const-string v8, "H:"

    invoke-static {v8, v0, v3, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v1, "hValue":Ljava/lang/String;
    move-object v1, v8

    if-eqz v8, :cond_5

    .line 65
    if-nez v6, :cond_4

    const-string/jumbo v8, "true"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "false"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 68
    :cond_3
    move-object v6, v1

    move v15, v5

    move-object/from16 v16, v6

    goto :goto_2

    .line 66
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v15, v5

    move-object/from16 v16, v6

    goto :goto_2

    .line 63
    :cond_5
    move v15, v5

    move-object/from16 v16, v6

    .line 72
    .end local v5    # "hidden":Z
    .end local v6    # "phase2Method":Ljava/lang/String;
    .local v15, "hidden":Z
    .local v16, "phase2Method":Ljava/lang/String;
    :goto_2
    const-string v5, "I:"

    invoke-static {v5, v0, v3, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v17

    .line 73
    .local v17, "identity":Ljava/lang/String;
    const-string v5, "A:"

    invoke-static {v5, v0, v3, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v18

    .line 74
    .local v18, "anonymousIdentity":Ljava/lang/String;
    const-string v5, "E:"

    invoke-static {v5, v0, v3, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "eapMethod":Ljava/lang/String;
    new-instance v4, Lcom/google/zxing/client/result/WifiParsedResult;

    move-object v5, v4

    move-object v6, v14

    move-object v8, v2

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object v12, v3

    move-object/from16 v13, v16

    invoke-direct/range {v5 .. v13}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 49
    .end local v1    # "hValue":Ljava/lang/String;
    .end local v2    # "pass":Ljava/lang/String;
    .end local v3    # "eapMethod":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    .end local v15    # "hidden":Z
    .end local v16    # "phase2Method":Ljava/lang/String;
    .end local v17    # "identity":Ljava/lang/String;
    .end local v18    # "anonymousIdentity":Ljava/lang/String;
    :cond_6
    :goto_3
    return-object v1
.end method
