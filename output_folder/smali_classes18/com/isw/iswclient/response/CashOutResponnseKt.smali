.class public final Lcom/isw/iswclient/response/CashOutResponnseKt;
.super Ljava/lang/Object;
.source "CashOutResponnse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aR\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "toTransactionResponse",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "Lcom/isw/iswclient/response/CashOutResponnse;",
        "stan",
        "",
        "cardData",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "transactionTime",
        "",
        "iswParameters",
        "Lcom/isw/iswclient/request/IswParameters;",
        "amount",
        "interswitchThreshold",
        "errorMessage",
        "reqRRN",
        "epmslib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toTransactionResponse(Lcom/isw/iswclient/response/CashOutResponnse;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/CardData;JLcom/isw/iswclient/request/IswParameters;JJLjava/lang/String;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 15
    .param p0, "$this$toTransactionResponse"    # Lcom/isw/iswclient/response/CashOutResponnse;
    .param p1, "stan"    # Ljava/lang/String;
    .param p2, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .param p3, "transactionTime"    # J
    .param p5, "iswParameters"    # Lcom/isw/iswclient/request/IswParameters;
    .param p6, "amount"    # J
    .param p8, "interswitchThreshold"    # J
    .param p10, "errorMessage"    # Ljava/lang/String;
    .param p11, "reqRRN"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object v2, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "stan"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cardData"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "iswParameters"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "reqRRN"

    move-object/from16 v5, p11

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {v1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;-><init>()V

    move-object v6, v1

    .local v6, "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v7, 0x0

    .line 59
    .local v7, "$i$a$-also-CashOutResponnseKt$toTransactionResponse$1":I
    move-wide/from16 v8, p6

    invoke-virtual {v6, v8, v9}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAmount(J)V

    .line 60
    invoke-virtual {p0}, Lcom/isw/iswclient/response/CashOutResponnse;->getReferenceNumber()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    move-object v10, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/isw/iswclient/response/CashOutResponnse;->getReferenceNumber()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v6, v10}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setRRN(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/isw/iswclient/response/CashOutResponnse;->getField39()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseCode(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/isw/iswclient/response/CashOutResponnse;->getAuthId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAuthCode(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v6, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSTAN(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p5 .. p5}, Lcom/isw/iswclient/request/IswParameters;->getRemark()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setEchoData(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getPan()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    const/16 v12, 0xc

    const-string/jumbo v13, "xxxxxx"

    invoke-static {v10, v13, v11, v12}, Lorg/apache/commons/lang/StringUtils;->overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "overlay(cardData.pan, \"xxxxxx\", 6, 12)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMaskedPan(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getExpiryDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardExpiry(Ljava/lang/String;)V

    .line 67
    const-string v10, ""

    invoke-virtual {v6, v10}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 68
    move-wide/from16 v10, p3

    invoke-virtual {v6, v10, v11}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionTimeInMillis(J)V

    .line 69
    sget-object v12, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 70
    invoke-virtual/range {p5 .. p5}, Lcom/isw/iswclient/request/IswParameters;->getTerminalId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTerminalId(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p5 .. p5}, Lcom/isw/iswclient/request/IswParameters;->getMerchantId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMerchantId(Ljava/lang/String;)V

    .line 72
    new-instance v12, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "MMddhhmmss"

    invoke-direct {v12, v14, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "SimpleDateFormat(\"MMddhh\u2026).format(transactionTime)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransmissionDateTime(Ljava/lang/String;)V

    .line 73
    new-instance v12, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "hhmmss"

    invoke-direct {v12, v14, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "SimpleDateFormat(\"hhmmss\u2026).format(transactionTime)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setLocalTime_12(Ljava/lang/String;)V

    .line 74
    new-instance v12, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "MMdd"

    invoke-direct {v12, v14, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "SimpleDateFormat(\"MMdd\",\u2026).format(transactionTime)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setLocalDate_13(Ljava/lang/String;)V

    .line 75
    sget-object v12, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 76
    sget-object v12, Lcom/danbamitale/epmslib/entities/PosMode;->ISW:Lcom/danbamitale/epmslib/entities/PosMode;

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSource(Lcom/danbamitale/epmslib/entities/PosMode;)V

    .line 77
    move-object/from16 v12, p10

    invoke-virtual {v6, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 78
    move-wide/from16 v13, p8

    invoke-virtual {v6, v13, v14}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setInterSwitchThreshold(J)V

    .line 79
    nop

    .line 58
    .end local v6    # "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v7    # "$i$a$-also-CashOutResponnseKt$toTransactionResponse$1":I
    nop

    .line 79
    return-object v1
.end method

.method public static synthetic toTransactionResponse$default(Lcom/isw/iswclient/response/CashOutResponnse;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/CardData;JLcom/isw/iswclient/request/IswParameters;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 15

    .line 49
    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 55
    const-wide/16 v1, 0x0

    move-wide v11, v1

    goto :goto_0

    .line 49
    :cond_0
    move-wide/from16 v11, p8

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    move-object v13, v1

    goto :goto_1

    .line 49
    :cond_1
    move-object/from16 v13, p10

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 57
    const-string v0, ""

    move-object v14, v0

    goto :goto_2

    .line 49
    :cond_2
    move-object/from16 v14, p11

    :goto_2
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-static/range {v3 .. v14}, Lcom/isw/iswclient/response/CashOutResponnseKt;->toTransactionResponse(Lcom/isw/iswclient/response/CashOutResponnse;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/CardData;JLcom/isw/iswclient/request/IswParameters;JJLjava/lang/String;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v0

    return-object v0
.end method
