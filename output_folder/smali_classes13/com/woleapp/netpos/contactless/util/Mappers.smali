.class public final Lcom/woleapp/netpos/contactless/util/Mappers;
.super Ljava/lang/Object;
.source "Mappers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\n\u0010\u0007\u001a\u00020\u0004*\u00020\u0008J\n\u0010\u0007\u001a\u00020\u0004*\u00020\tJ\n\u0010\n\u001a\u00020\u0006*\u00020\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/Mappers;",
        "",
        "()V",
        "mapQrTransToNormalTransRespType",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "qrTrans",
        "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
        "mapToTransactionResponse",
        "Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;",
        "Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;",
        "mapTransactionResponseToQrTransaction",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/util/Mappers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/util/Mappers;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/util/Mappers;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/Mappers;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Mappers;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapQrTransToNormalTransRespType(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 5
    .param p1, "qrTrans"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    const-string v0, "qrTrans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;-><init>()V

    move-object v1, v0

    .local v1, "$this$mapQrTransToNormalTransRespType_u24lambda_u2d0":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v2, 0x0

    .line 18
    .local v2, "$i$a$-apply-Mappers$mapQrTransToNormalTransRespType$1":I
    nop

    .line 19
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    .line 18
    :cond_0
    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setOtherId(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 21
    invoke-virtual {v1, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMaskedPan(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getAmount()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAmount(J)V

    .line 23
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransmissionDateTime(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getTransIdStan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSTAN(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getRrnOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setRRN(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getResponseCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseCode(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getCardLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getCardHolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardHolder(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getTransactionTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionTimeInMillis(J)V

    .line 30
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 31
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getTerminalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTerminalId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getMerchantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMerchantId(Ljava/lang/String;)V

    .line 33
    nop

    .line 17
    .end local v1    # "$this$mapQrTransToNormalTransRespType_u24lambda_u2d0":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v2    # "$i$a$-apply-Mappers$mapQrTransToNormalTransRespType$1":I
    nop

    .line 33
    return-object v0
.end method

.method public final mapToTransactionResponse(Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 6
    .param p1, "$this$mapToTransactionResponse"    # Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "currentDateTime":Ljava/lang/String;
    new-instance v1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {v1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;-><init>()V

    move-object v2, v1

    .local v2, "$this$mapToTransactionResponse_u24lambda_u2d1":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v3, 0x0

    .line 58
    .local v3, "$i$a$-apply-Mappers$mapToTransactionResponse$1":I
    sget-object v4, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v2, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 59
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMaskedPan(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAmount(J)V

    .line 61
    invoke-virtual {v2, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransmissionDateTime(Ljava/lang/String;)V

    .line 62
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSTAN(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getRrn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setRRN(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseCode(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getCustomerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardHolder(Ljava/lang/String;)V

    .line 67
    sget-object v4, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    const-string v5, "yyyy-MM-dd hh:mm a"

    invoke-virtual {v4, v0, v5}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->dateStr2Long(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionTimeInMillis(J)V

    .line 68
    sget-object v4, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v2, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 69
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getTerminalId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTerminalId(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMerchantId(Ljava/lang/String;)V

    .line 71
    nop

    .line 57
    .end local v2    # "$this$mapToTransactionResponse_u24lambda_u2d1":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v3    # "$i$a$-apply-Mappers$mapToTransactionResponse$1":I
    return-object v1
.end method

.method public final mapToTransactionResponse(Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 9
    .param p1, "$this$mapToTransactionResponse"    # Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "currentDateTime":Ljava/lang/String;
    const-string v1, "<b>PayByTransfer</b>"

    .line 77
    .local v1, "boldText":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    const-string v3, "fromHtml(boldText, Html.FROM_HTML_MODE_LEGACY)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .local v2, "spanned":Landroid/text/Spanned;
    new-instance v3, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;-><init>()V

    move-object v4, v3

    .local v4, "$this$mapToTransactionResponse_u24lambda_u2d2":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v5, 0x0

    .line 80
    .local v5, "$i$a$-apply-Mappers$mapToTransactionResponse$2":I
    sget-object v6, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 81
    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMaskedPan(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getAmount()I

    move-result v7

    int-to-double v7, v7

    double-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAmount(J)V

    .line 83
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getPaid_at()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransmissionDateTime(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSTAN(Ljava/lang/String;)V

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getTransaction_reference()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setRRN(Ljava/lang/String;)V

    .line 86
    const-string v6, "00"

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseCode(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getPayer_account_number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getPayer_account_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardHolder(Ljava/lang/String;)V

    .line 89
    sget-object v6, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getPaid_at()Ljava/lang/String;

    move-result-object v7

    const-string v8, "yyyy-MM-dd hh:mm:ss"

    invoke-virtual {v6, v7, v8}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->dateStr2Long(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionTimeInMillis(J)V

    .line 90
    sget-object v6, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 91
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getTerminalId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTerminalId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getMerchantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMerchantId(Ljava/lang/String;)V

    .line 93
    nop

    .line 79
    .end local v4    # "$this$mapToTransactionResponse_u24lambda_u2d2":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v5    # "$i$a$-apply-Mappers$mapToTransactionResponse$2":I
    return-object v3
.end method

.method public final mapTransactionResponseToQrTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .locals 48
    .param p1, "$this$mapTransactionResponseToQrTransaction"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "<this>"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v3

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v5

    .line 39
    nop

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardHolder()Ljava/lang/String;

    move-result-object v7

    .line 41
    nop

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherId()Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherId()Ljava/lang/String;

    move-result-object v10

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v11

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherId()Ljava/lang/String;

    move-result-object v12

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v2

    const-string v6, "00"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "APPROVED"

    goto :goto_0

    :cond_0
    const-string v2, "DECLINED"

    :goto_0
    move-object v13, v2

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v14

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v15

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionTimeInMillis()J

    move-result-wide v16

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v18

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTerminalId()Ljava/lang/String;

    move-result-object v19

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v20

    .line 36
    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/high16 v45, -0x10000

    const/16 v46, 0x1f

    const/16 v47, 0x0

    const-string v6, "NGN"

    const-string v8, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v47}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    return-object v0
.end method
