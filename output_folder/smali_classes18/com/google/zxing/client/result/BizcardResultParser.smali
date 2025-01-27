.class public final Lcom/google/zxing/client/result/BizcardResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "BizcardResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static buildName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "firstName"    # Ljava/lang/String;
    .param p1, "lastName"    # Ljava/lang/String;

    .line 93
    if-nez p0, :cond_0

    .line 94
    return-object p1

    .line 96
    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "number3"    # Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v0, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 77
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    if-eqz p2, :cond_2

    .line 83
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 86
    .local v2, "size":I
    move v2, v1

    if-nez v1, :cond_3

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 89
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 29
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/BizcardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 40
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "BIZCARD:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    return-object v1

    .line 43
    :cond_0
    const-string v0, "N:"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "firstName":Ljava/lang/String;
    const-string v3, "X:"

    invoke-static {v3, v2, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "lastName":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->buildName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "fullName":Ljava/lang/String;
    const-string v5, "T:"

    invoke-static {v5, v2, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .local v5, "title":Ljava/lang/String;
    move-object/from16 v20, v5

    .line 47
    const-string v6, "C:"

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v23

    .local v23, "org":Ljava/lang/String;
    move-object/from16 v18, v23

    .line 48
    const-string v6, "A:"

    invoke-static {v6, v2}, Lcom/google/zxing/client/result/BizcardResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .local v24, "addresses":[Ljava/lang/String;
    move-object/from16 v16, v24

    .line 49
    const-string v6, "B:"

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    .line 50
    .local v15, "phoneNumber1":Ljava/lang/String;
    const-string v6, "M:"

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 51
    .local v14, "phoneNumber2":Ljava/lang/String;
    const-string v6, "F:"

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 52
    .local v13, "phoneNumber3":Ljava/lang/String;
    const-string v6, "E:"

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "email":Ljava/lang/String;
    new-instance v25, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object/from16 v6, v25

    invoke-static {v4}, Lcom/google/zxing/client/result/BizcardResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 57
    invoke-static {v15, v14, v13}, Lcom/google/zxing/client/result/BizcardResultParser;->buildPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 59
    invoke-static {v1}, Lcom/google/zxing/client/result/BizcardResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    move-object/from16 v26, v13

    .end local v13    # "phoneNumber3":Ljava/lang/String;
    .local v26, "phoneNumber3":Ljava/lang/String;
    move-object/from16 v13, v17

    move-object/from16 v27, v14

    .end local v14    # "phoneNumber2":Ljava/lang/String;
    .local v27, "phoneNumber2":Ljava/lang/String;
    move-object/from16 v14, v17

    move-object/from16 v28, v15

    .end local v15    # "phoneNumber1":Ljava/lang/String;
    .local v28, "phoneNumber1":Ljava/lang/String;
    move-object/from16 v15, v17

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    return-object v25
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/BizcardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
