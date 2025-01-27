.class public final Lcom/danbamitale/epmslib/entities/TransactionRequestDataKt;
.super Ljava/lang/Object;
.source "TransactionRequestData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toOriginalDataElements",
        "Lcom/danbamitale/epmslib/entities/OriginalDataElements;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
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
.method public static final toOriginalDataElements(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .locals 17
    .param p0, "$this$toOriginalDataElements"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v3

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v4

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v9

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAcquiringInstCode()Ljava/lang/String;

    move-result-object v10

    .line 106
    nop

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v12

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getInterSwitchThreshold()J

    move-result-wide v13

    .line 106
    const/4 v11, 0x0

    const/16 v15, 0x80

    const/16 v16, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v16}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    return-object v0
.end method
