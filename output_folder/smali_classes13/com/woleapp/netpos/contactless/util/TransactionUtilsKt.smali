.class public final Lcom/woleapp/netpos/contactless/util/TransactionUtilsKt;
.super Ljava/lang/Object;
.source "TransactionUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "gatewayErrorTransactionResponse",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "amount",
        "",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "accountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
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
.method public static final gatewayErrorTransactionResponse(JLcom/danbamitale/epmslib/entities/TransactionType;Lcom/danbamitale/epmslib/utils/IsoAccountType;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 6
    .param p0, "amount"    # J
    .param p2, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p3, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v0, "transactionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;-><init>()V

    move-object v1, v0

    .local v1, "$this$gatewayErrorTransactionResponse_u24lambda_u2d0":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v2, 0x0

    .line 7
    .local v2, "$i$a$-apply-TransactionUtilsKt$gatewayErrorTransactionResponse$1":I
    invoke-virtual {v1, p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 8
    const-string v3, "A5"

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseCode(Ljava/lang/String;)V

    .line 9
    const-string v3, "000000000000"

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setRRN(Ljava/lang/String;)V

    .line 10
    const-string v3, "000000"

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSTAN(Ljava/lang/String;)V

    .line 11
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAID(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTSI(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTVR(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionTimeInMillis(J)V

    .line 16
    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAcquiringInstCode(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p0, p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAmount(J)V

    .line 18
    nop

    .line 6
    .end local v1    # "$this$gatewayErrorTransactionResponse_u24lambda_u2d0":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v2    # "$i$a$-apply-TransactionUtilsKt$gatewayErrorTransactionResponse$1":I
    nop

    .line 18
    return-object v0
.end method

.method public static synthetic gatewayErrorTransactionResponse$default(JLcom/danbamitale/epmslib/entities/TransactionType;Lcom/danbamitale/epmslib/utils/IsoAccountType;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 0

    .line 6
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p0, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p2, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/util/TransactionUtilsKt;->gatewayErrorTransactionResponse(JLcom/danbamitale/epmslib/entities/TransactionType;Lcom/danbamitale/epmslib/utils/IsoAccountType;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object p0

    return-object p0
.end method
