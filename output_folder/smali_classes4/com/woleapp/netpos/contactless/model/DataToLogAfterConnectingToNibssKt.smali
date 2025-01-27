.class public final Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibssKt;
.super Ljava/lang/Object;
.source "DataToLogAfterConnectingToNibss.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "mapToTransactionResponse",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "transRespX",
        "Lcom/woleapp/netpos/contactless/model/TransactionResponseX;",
        "app_fcmbeasypayDebug"
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
.method public static final mapToTransactionResponse(Lcom/woleapp/netpos/contactless/model/TransactionResponseX;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 5
    .param p0, "transRespX"    # Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    const-string v0, "transRespX"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;-><init>()V

    move-object v1, v0

    .local v1, "$this$mapToTransactionResponse_u24lambda_u2d0":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v2, 0x0

    .line 67
    .local v2, "$i$a$-apply-DataToLogAfterConnectingToNibssKt$mapToTransactionResponse$1":I
    sget-object v3, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 68
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getMaskedPan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMaskedPan(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getAmount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAmount(J)V

    .line 71
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransmissionDateTime(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getSTAN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSTAN(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getRrn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setRRN(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getLocalTime_12()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setLocalTime_12(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getLocalDate_13()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setLocalDate_13(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getOtherAmount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setOtherAmount(J)V

    .line 77
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getAcquiringInstCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAcquiringInstCode(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setOriginalForwardingInstCode(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAuthCode(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getResponseCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseCode(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getAdditionalAmount_54()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAdditionalAmount_54(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getCardLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getCardExpiry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardExpiry(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getCardHolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardHolder(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getTVR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTVR(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getTSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTSI(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getAID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAID(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getAppCryptogram()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAppCryptogram(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getTransactionTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionTimeInMillis(J)V

    .line 91
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 93
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getTerminalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTerminalId(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getMerchantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMerchantId(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getOtherId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setOtherId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->getResponseDE55()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseDE55(Ljava/lang/String;)V

    .line 97
    nop

    .line 66
    .end local v1    # "$this$mapToTransactionResponse_u24lambda_u2d0":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v2    # "$i$a$-apply-DataToLogAfterConnectingToNibssKt$mapToTransactionResponse$1":I
    nop

    .line 97
    return-object v0
.end method
