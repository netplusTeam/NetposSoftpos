.class public final Lcom/google/zxing/client/result/SMSMMSResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSMMSResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 4
    .param p2, "numberPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    .local p0, "numbers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "vias":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 93
    .local v2, "numberEnd":I
    move v2, v0

    const/4 v3, 0x0

    if-gez v0, :cond_0

    .line 94
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 97
    :cond_0
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    .line 100
    .local v1, "maybeVia":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v3, "via="

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "via":Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v0    # "via":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 105
    .restart local v0    # "via":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v0    # "via":Ljava/lang/String;
    .end local v1    # "maybeVia":Ljava/lang/String;
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .locals 14
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 45
    invoke-static {p1}, Lcom/google/zxing/client/result/SMSMMSResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 46
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "sms:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMS:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "mms:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MMS:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    return-object v1

    .line 52
    :cond_0
    invoke-static {v2}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 53
    .local v0, "nameValuePairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 54
    .local v1, "subject":Ljava/lang/String;
    const/4 v3, 0x0

    .line 55
    .local v3, "body":Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "querySyntax":Z
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 57
    const-string/jumbo v5, "subject"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 58
    const-string v5, "body"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    .line 59
    const/4 v4, 0x1

    .line 63
    :cond_1
    const/16 v5, 0x3f

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v7, 0x0

    .line 66
    .local v7, "queryStart":I
    move v7, v5

    if-ltz v5, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "smsURIWithoutQuery":Ljava/lang/String;
    goto :goto_1

    .line 67
    .end local v5    # "smsURIWithoutQuery":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    .restart local v5    # "smsURIWithoutQuery":Ljava/lang/String;
    :goto_1
    const/4 v6, -0x1

    .line 74
    .local v6, "lastComma":I
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v8, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v10

    .line 76
    .local v9, "vias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    const/16 v10, 0x2c

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    move v11, v10

    .local v11, "comma":I
    if-le v10, v6, :cond_4

    .line 77
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, "numberPart":Ljava/lang/String;
    invoke-static {v8, v9, v10}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 79
    move v6, v11

    .line 80
    .end local v10    # "numberPart":Ljava/lang/String;
    goto :goto_2

    .line 81
    :cond_4
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 83
    new-instance v10, Lcom/google/zxing/client/result/SMSParsedResult;

    sget-object v12, Lcom/google/zxing/client/result/SMSMMSResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    sget-object v13, Lcom/google/zxing/client/result/SMSMMSResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    .line 84
    invoke-interface {v9, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-direct {v10, v12, v13, v1, v3}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v10
.end method
