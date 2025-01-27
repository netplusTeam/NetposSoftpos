.class public final Lcom/google/zxing/client/result/AddressBookAUResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AddressBookAUResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "rawText"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x3

    if-gt v1, v4, :cond_1

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    const/4 v7, 0x1

    invoke-static {v5, p1, v6, v7}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v3, "value":Ljava/lang/String;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    .line 81
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 84
    return-object v2

    .line 86
    :cond_2
    sget-object v1, Lcom/google/zxing/client/result/AddressBookAUResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 27
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

    if-eqz v0, :cond_2

    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
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

    invoke-static {v6, v2}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 48
    .local v23, "phoneNumbers":[Ljava/lang/String;
    const-string v6, "MAIL"

    invoke-static {v6, v2}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

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
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    aput-object v26, v1, v7

    :goto_0
    move-object/from16 v16, v1

    .line 52
    .local v16, "addresses":[Ljava/lang/String;
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
    :cond_2
    :goto_1
    return-object v1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
