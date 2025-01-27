.class public final Lcom/danbamitale/epmslib/processors/TransactionProcessor;
.super Ljava/lang/Object;
.source "TransactionProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danbamitale/epmslib/processors/TransactionProcessor$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionProcessor.kt\ncom/danbamitale/epmslib/processors/TransactionProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,427:1\n1#2:428\n107#3:429\n79#3,22:430\n107#3:452\n79#3,22:453\n*S KotlinDebug\n*F\n+ 1 TransactionProcessor.kt\ncom/danbamitale/epmslib/processors/TransactionProcessor\n*L\n308#1:429\n308#1:430,22\n398#1:452\n398#1:453,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J2\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J$\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J2\u0010#\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\r2\u0008\u0008\u0002\u0010\'\u001a\u00020\u0006J \u0010(\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010)\u001a\u00020*H\u0002J\u0018\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/danbamitale/epmslib/processors/TransactionProcessor;",
        "",
        "hostConfig",
        "Lcom/danbamitale/epmslib/entities/HostConfig;",
        "(Lcom/danbamitale/epmslib/entities/HostConfig;)V",
        "amountTransactionFee",
        "",
        "pinCaptureMode",
        "posConditionCode",
        "posDataCode",
        "requestHandler",
        "Lcom/danbamitale/epmslib/comms/SocketRequest;",
        "requestIsoMessage",
        "Lcom/solab/iso8583/IsoMessage;",
        "transactionTimeInMillis",
        "",
        "getIsoMessageForReversal",
        "requestData",
        "Lcom/danbamitale/epmslib/entities/TransactionRequestData;",
        "cardData",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "getOriginalDataElementField90",
        "originalMTI",
        "acquiringInstCode",
        "forwardingInstCode",
        "originalSTAN",
        "originalTransmissionDateTime",
        "getReplacementAmountField95",
        "originalAmount",
        "newAmount",
        "processTransaction",
        "Lio/reactivex/Single;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "context",
        "Landroid/content/Context;",
        "rollback",
        "reversalReasonCode",
        "Lcom/danbamitale/epmslib/utils/MessageReasonCode;",
        "initialIsoMessage",
        "sessionKey",
        "setBaseFields",
        "configData",
        "Lcom/danbamitale/epmslib/entities/ConfigData;",
        "setOriginalTransactionData",
        "",
        "isoMessage",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final amountTransactionFee:Ljava/lang/String;

.field private final hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

.field private final pinCaptureMode:Ljava/lang/String;

.field private final posConditionCode:Ljava/lang/String;

.field private final posDataCode:Ljava/lang/String;

.field private final requestHandler:Lcom/danbamitale/epmslib/comms/SocketRequest;

.field private requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

.field private transactionTimeInMillis:J


# direct methods
.method public static synthetic $r8$lambda$DWA3KbkEKSdJDEQKYxIdGOGqCb8(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;Landroid/content/Context;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->rollback$lambda$15(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;Landroid/content/Context;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oNSzK5uYTsZuooGE73YYgNJOQUc(Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Landroid/content/Context;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->processTransaction$lambda$12(Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Landroid/content/Context;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/HostConfig;)V
    .locals 2
    .param p1, "hostConfig"    # Lcom/danbamitale/epmslib/entities/HostConfig;

    const-string v0, "hostConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

    .line 24
    const-string v0, "00"

    iput-object v0, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->posConditionCode:Ljava/lang/String;

    .line 25
    const-string v0, "12"

    iput-object v0, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->pinCaptureMode:Ljava/lang/String;

    .line 26
    const-string v0, "D00000000"

    iput-object v0, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->amountTransactionFee:Ljava/lang/String;

    .line 28
    const-string v0, "510101511344101"

    iput-object v0, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->posDataCode:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/danbamitale/epmslib/comms/SocketRequest;

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/HostConfig;->getConnectionData()Lcom/danbamitale/epmslib/entities/ConnectionData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/danbamitale/epmslib/comms/SocketRequest;-><init>(Lcom/danbamitale/epmslib/entities/ConnectionData;)V

    iput-object v0, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestHandler:Lcom/danbamitale/epmslib/comms/SocketRequest;

    .line 21
    return-void
.end method

.method private final getOriginalDataElementField90(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "originalMTI"    # Ljava/lang/String;
    .param p2, "acquiringInstCode"    # Ljava/lang/String;
    .param p3, "forwardingInstCode"    # Ljava/lang/String;
    .param p4, "originalSTAN"    # Ljava/lang/String;
    .param p5, "originalTransmissionDateTime"    # Ljava/lang/String;

    .line 165
    const/16 v0, 0xb

    const/16 v1, 0x30

    invoke-static {p2, v0, v1}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "acquiringInstitutionCode":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-static {p3, v0, v1}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "0"

    invoke-static {v3, v0, v1}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    .line 166
    :cond_1
    move-object v0, v3

    .line 169
    .local v0, "originalForwardingInstitution":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    const/4 v4, 0x4

    .line 171
    nop

    .line 169
    invoke-static {p1, v4, v1}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    nop

    .line 169
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    nop

    .line 169
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    nop

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    nop

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final getReplacementAmountField95(JJ)Ljava/lang/String;
    .locals 6
    .param p1, "originalAmount"    # J
    .param p3, "newAmount"    # J

    .line 176
    sub-long v0, p1, p3

    .line 178
    .local v0, "replacementAmount":J
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%012d%012dD00000000D00000000"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method private static final processTransaction$lambda$12(Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Landroid/content/Context;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 18
    .param p0, "this$0"    # Lcom/danbamitale/epmslib/processors/TransactionProcessor;
    .param p1, "$requestData"    # Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .param p2, "$cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .param p3, "$context"    # Landroid/content/Context;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string/jumbo v0, "this$0"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestData"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cardData"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/HostConfig;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v0

    invoke-direct {v7, v8, v9, v0}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->setBaseFields(Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/entities/ConfigData;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    iput-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v0

    sget-object v1, Lcom/danbamitale/epmslib/processors/TransactionProcessor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v11, "format(format, *args)"

    const/4 v12, 0x2

    const/16 v1, 0x26

    const/4 v2, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string/jumbo v16, "requestIsoMessage"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 275
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAuthorizationCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 276
    .local v3, "$i$a$-let-TransactionProcessor$processTransaction$1$4":I
    iget-object v4, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v4, :cond_0

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 277
    :cond_0
    nop

    .line 278
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-direct {v5, v6, v0, v2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 276
    invoke-virtual {v4, v1, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 275
    .end local v0    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-TransactionProcessor$processTransaction$1$4":I
    :cond_1
    nop

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    if-eqz v0, :cond_11

    .local v0, "it":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    const/16 v17, 0x0

    .line 283
    .local v17, "$i$a$-let-TransactionProcessor$processTransaction$1$5":I
    nop

    .line 284
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionType;->getMTI()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "toString(this, checkRadix(radix))"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAcquiringInstCode()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalSTAN()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalTransmissionTime()Ljava/lang/String;

    move-result-object v6

    .line 283
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->getOriginalDataElementField90(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "originalDataElements":Ljava/lang/String;
    iget-object v2, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v2, :cond_2

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 292
    :cond_2
    const/16 v3, 0x5a

    .line 293
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    sget-object v5, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/16 v6, 0x2a

    invoke-direct {v4, v5, v1, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 291
    invoke-virtual {v2, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 296
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 297
    nop

    .line 298
    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getAmount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    .line 299
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAmount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v14

    .line 298
    nop

    .line 296
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%012d%012dD00000000D00000000"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .local v2, "replacementAmounts":Ljava/lang/String;
    iget-object v3, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v3, :cond_3

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_3
    const/16 v4, 0x5f

    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v11, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-direct {v5, v11, v2, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 282
    .end local v0    # "it":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .end local v1    # "originalDataElements":Ljava/lang/String;
    .end local v2    # "replacementAmounts":Ljava/lang/String;
    .end local v17    # "$i$a$-let-TransactionProcessor$processTransaction$1$5":I
    goto/16 :goto_0

    .line 265
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAuthorizationCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .local v0, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 266
    .local v3, "$i$a$-let-TransactionProcessor$processTransaction$1$3":I
    iget-object v4, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v4, :cond_4

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 267
    :cond_4
    nop

    .line 268
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-direct {v5, v6, v0, v2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 266
    invoke-virtual {v4, v1, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 265
    .end local v0    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-TransactionProcessor$processTransaction$1$3":I
    :cond_5
    nop

    .line 271
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v0, :cond_6

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_6
    invoke-direct {v7, v0, v8}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->setOriginalTransactionData(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/entities/TransactionRequestData;)V

    goto/16 :goto_0

    .line 214
    :pswitch_2
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v0, :cond_7

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 215
    :cond_7
    const/16 v3, 0xb

    .line 216
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    .line 217
    sget-object v5, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalSTAN()Ljava/lang/String;

    move-result-object v6

    .line 219
    nop

    .line 216
    invoke-direct {v4, v5, v6, v2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 214
    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 223
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v0, :cond_8

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 224
    :cond_8
    nop

    .line 225
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    .line 226
    sget-object v4, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v5

    invoke-virtual {v5}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalTransmissionTime()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    nop

    .line 225
    invoke-direct {v3, v4, v5, v2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 223
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 232
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v0, :cond_9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 233
    :cond_9
    const/16 v3, 0xd

    .line 234
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    .line 235
    sget-object v11, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v12

    invoke-virtual {v12}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalTransmissionTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    nop

    .line 234
    invoke-direct {v5, v11, v12, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 232
    invoke-virtual {v0, v3, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalRRN()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 242
    .local v3, "$i$a$-let-TransactionProcessor$processTransaction$1$1":I
    iget-object v5, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v5, :cond_a

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_a
    const/16 v6, 0x25

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-direct {v11, v12, v0, v4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v5, v6, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 241
    .end local v0    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-TransactionProcessor$processTransaction$1$1":I
    nop

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAuthorizationCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 246
    .local v3, "$i$a$-let-TransactionProcessor$processTransaction$1$2":I
    iget-object v4, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v4, :cond_b

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 247
    :cond_b
    nop

    .line 248
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-direct {v5, v6, v0, v2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 246
    invoke-virtual {v4, v1, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 245
    .end local v0    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-TransactionProcessor$processTransaction$1$2":I
    nop

    .line 252
    :cond_c
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v0, :cond_d

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    new-array v1, v14, [I

    const/16 v2, 0x37

    aput v2, v1, v13

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->removeFields([I)V

    .line 253
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v0, :cond_e

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 254
    :cond_e
    const/16 v1, 0x38

    .line 255
    new-instance v2, Lcom/solab/iso8583/IsoValue;

    .line 256
    sget-object v3, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v4

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getReversalReasonCode()Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-direct {v2, v3, v4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 261
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v0, :cond_f

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    invoke-direct {v7, v0, v8}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->setOriginalTransactionData(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/entities/TransactionRequestData;)V

    goto :goto_0

    .line 201
    :pswitch_3
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 202
    nop

    .line 203
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    .line 204
    iget-object v2, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/HostConfig;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    .line 203
    nop

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOtherAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v12

    .line 203
    nop

    .line 201
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s05%sD%012d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .local v0, "additionalAmounts":Ljava/lang/String;
    iget-object v1, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v1, :cond_10

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 208
    :cond_10
    const/16 v2, 0x36

    .line 209
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    sget-object v4, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    invoke-direct {v3, v4, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v1, v2, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 306
    .end local v0    # "additionalAmounts":Ljava/lang/String;
    :cond_11
    :goto_0
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    iget-object v1, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v1, :cond_12

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_12
    invoke-virtual {v0, v1}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->logIsoMessage(Lcom/solab/iso8583/IsoMessage;)V

    .line 308
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v0, :cond_13

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_13
    invoke-virtual {v0}, Lcom/solab/iso8583/IsoMessage;->writeData()[B

    move-result-object v0

    const-string/jumbo v1, "requestIsoMessage.writeData()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    .local v0, "$this$trim$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 429
    .local v1, "$i$f$trim":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 430
    .local v3, "$i$f$trim":I
    const/4 v4, 0x0

    .line 431
    .local v4, "startIndex$iv$iv":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v14

    .line 432
    .local v5, "endIndex$iv$iv":I
    const/4 v6, 0x0

    .line 434
    .local v6, "startFound$iv$iv":Z
    :goto_1
    if-gt v4, v5, :cond_19

    .line 435
    if-nez v6, :cond_14

    move v11, v4

    goto :goto_2

    :cond_14
    move v11, v5

    .line 436
    .local v11, "index$iv$iv":I
    :goto_2
    invoke-interface {v2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .local v12, "it":C
    const/4 v15, 0x0

    .line 308
    .local v15, "$i$a$-trim-TransactionProcessor$processTransaction$1$messageString$1":I
    const/16 v13, 0x20

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gtz v13, :cond_15

    move v12, v14

    goto :goto_3

    :cond_15
    const/4 v12, 0x0

    .line 436
    .end local v12    # "it":C
    .end local v15    # "$i$a$-trim-TransactionProcessor$processTransaction$1$messageString$1":I
    :goto_3
    nop

    .line 438
    .local v12, "match$iv$iv":Z
    if-nez v6, :cond_17

    .line 439
    if-nez v12, :cond_16

    .line 440
    const/4 v6, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_16
    add-int/lit8 v4, v4, 0x1

    .line 442
    const/4 v13, 0x0

    goto :goto_1

    .line 444
    :cond_17
    if-nez v12, :cond_18

    .line 445
    goto :goto_4

    :cond_18
    add-int/lit8 v5, v5, -0x1

    .line 447
    const/4 v13, 0x0

    .end local v11    # "index$iv$iv":I
    .end local v12    # "match$iv$iv":Z
    goto :goto_1

    .line 451
    :cond_19
    :goto_4
    add-int/lit8 v11, v5, 0x1

    invoke-interface {v2, v4, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 429
    .end local v2    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$trim":I
    .end local v4    # "startIndex$iv$iv":I
    .end local v5    # "endIndex$iv$iv":I
    .end local v6    # "startFound$iv$iv":Z
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .end local v0    # "$this$trim$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trim":I
    nop

    .line 309
    .local v0, "messageString":Ljava/lang/String;
    iget-object v1, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/HostConfig;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/danbamitale/epmslib/entities/KeyHolderKt;->getClearSessionKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->generateHash256Value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "hash":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "this as java.lang.String).toUpperCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .end local v0    # "messageString":Ljava/lang/String;
    .local v2, "messageString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v4, "forName(charsetName)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string/jumbo v4, "this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->prepareByteStream([B)[B

    move-result-object v0

    .line 313
    move-object v3, v0

    .line 316
    .local v3, "isoMsgByteArray":[B
    nop

    .line 317
    :try_start_0
    iget-object v0, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestHandler:Lcom/danbamitale/epmslib/comms/SocketRequest;

    invoke-virtual {v0, v10, v3}, Lcom/danbamitale/epmslib/comms/SocketRequest;->send(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "response":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 319
    sget-object v4, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v4, v10, v0}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->processISOBitStreamWithJ8583(Landroid/content/Context;Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v4

    .line 320
    invoke-static {v4}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->toTransactionResponse(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "response":Ljava/lang/String;
    goto :goto_6

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    iget-object v4, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez v4, :cond_1a

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_5

    :cond_1a
    move-object v15, v4

    :goto_5
    invoke-static {v15}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->toTransactionResponse(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v4

    move-object v5, v4

    .local v5, "$this$processTransaction_u24lambda_u2412_u24lambda_u2410":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v6, 0x0

    .line 325
    .local v6, "$i$a$-apply-TransactionProcessor$processTransaction$1$transactionResponse$1":I
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 326
    const-string v11, "A3"

    invoke-virtual {v5, v11}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseCode(Ljava/lang/String;)V

    .line 327
    nop

    .line 324
    .end local v5    # "$this$processTransaction_u24lambda_u2412_u24lambda_u2410":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v6    # "$i$a$-apply-TransactionProcessor$processTransaction$1$transactionResponse$1":I
    nop

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    move-object v0, v4

    .line 330
    .local v0, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    nop

    .local v4, "$this$processTransaction_u24lambda_u2412_u24lambda_u2411":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v5, 0x0

    .line 331
    .local v5, "$i$a$-apply-TransactionProcessor$processTransaction$1$6":I
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOtherAmount()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setOtherAmount(J)V

    .line 332
    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherAmount()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAmount(J)V

    .line 333
    iget-wide v11, v7, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->transactionTimeInMillis:J

    invoke-virtual {v4, v11, v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionTimeInMillis(J)V

    .line 334
    nop

    .line 330
    .end local v4    # "$this$processTransaction_u24lambda_u2412_u24lambda_u2411":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v5    # "$i$a$-apply-TransactionProcessor$processTransaction$1$6":I
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic rollback$default(Lcom/danbamitale/epmslib/processors/TransactionProcessor;Landroid/content/Context;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Lcom/solab/iso8583/IsoMessage;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Single;
    .locals 0

    .line 345
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 347
    sget-object p2, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->Timeout:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    .line 345
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 348
    iget-object p3, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestIsoMessage:Lcom/solab/iso8583/IsoMessage;

    if-nez p3, :cond_1

    const-string/jumbo p3, "requestIsoMessage"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 345
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 349
    iget-object p4, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

    invoke-virtual {p4}, Lcom/danbamitale/epmslib/entities/HostConfig;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object p4

    invoke-static {p4}, Lcom/danbamitale/epmslib/entities/KeyHolderKt;->getClearSessionKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;

    move-result-object p4

    .line 345
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->rollback(Landroid/content/Context;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Lcom/solab/iso8583/IsoMessage;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private static final rollback$lambda$15(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;Landroid/content/Context;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 29
    .param p0, "$initialIsoMessage"    # Lcom/solab/iso8583/IsoMessage;
    .param p1, "this$0"    # Lcom/danbamitale/epmslib/processors/TransactionProcessor;
    .param p2, "$reversalReasonCode"    # Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .param p3, "$sessionKey"    # Ljava/lang/String;
    .param p4, "$context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v0, "$initialIsoMessage"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reversalReasonCode"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sessionKey"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;-><init>()V

    move-object v12, v0

    .line 353
    .local v12, "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    invoke-static/range {p0 .. p0}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getTransactionType(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v13

    .line 355
    .local v13, "originalTranType":Lcom/danbamitale/epmslib/entities/TransactionType;
    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/IsoMessage;->getType()I

    move-result v0

    const/16 v14, 0x10

    invoke-static {v14}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "toString(this, checkRadix(radix))"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .local v3, "originalMTI":Ljava/lang/String;
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    move-object v15, v0

    .line 359
    .local v15, "originalSTAN":Ljava/lang/String;
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    move-object v7, v2

    .line 361
    .local v7, "originalTransmissionDateTime":Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    move-object v5, v2

    .line 363
    .local v5, "acquiringInstCode":Ljava/lang/String;
    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    invoke-virtual {v1, v2}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_0
    const/4 v2, 0x0

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 363
    :goto_0
    nop

    .line 362
    move-object/from16 v16, v2

    .line 369
    .local v16, "forwardingInstCode":Ljava/lang/String;
    nop

    .line 370
    nop

    .line 371
    const-string v2, "acquiringInstCode"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    nop

    .line 373
    const-string/jumbo v2, "originalSTAN"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v2, "originalTransmissionDateTime"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    const-string v17, ""

    move-object/from16 v2, p1

    move-object v4, v5

    move-object/from16 v18, v5

    .end local v5    # "acquiringInstCode":Ljava/lang/String;
    .local v18, "acquiringInstCode":Ljava/lang/String;
    move-object/from16 v5, v17

    move-object v6, v15

    move-object/from16 v17, v7

    .end local v7    # "originalTransmissionDateTime":Ljava/lang/String;
    .local v17, "originalTransmissionDateTime":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->getOriginalDataElementField90(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "originalDataElements":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/danbamitale/epmslib/entities/TransactionType;->REVERSAL:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v5}, Lcom/danbamitale/epmslib/entities/TransactionType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v5}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v5}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 377
    nop

    .line 380
    .local v4, "processingCode":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v6, v5, [I

    const/16 v7, 0x36

    const/16 v20, 0x0

    aput v7, v6, v20

    invoke-virtual {v1, v6}, Lcom/solab/iso8583/IsoMessage;->removeFields([I)V

    .line 381
    new-array v6, v5, [I

    const/16 v7, 0x37

    aput v7, v6, v20

    invoke-virtual {v1, v6}, Lcom/solab/iso8583/IsoMessage;->removeFields([I)V

    .line 383
    invoke-static {v14}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    const-string v7, "0420"

    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 384
    const/4 v6, 0x3

    new-instance v7, Lcom/solab/iso8583/IsoValue;

    sget-object v14, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/4 v5, 0x6

    invoke-direct {v7, v14, v4, v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v1, v6, v7}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 385
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v12}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getLongDate()Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0xa

    invoke-direct {v5, v6, v7, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 386
    nop

    .line 387
    const/16 v0, 0x38

    .line 388
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v1, v0, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 390
    const/16 v0, 0x5a

    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/16 v7, 0x2a

    invoke-direct {v5, v6, v2, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 391
    nop

    .line 392
    const/16 v0, 0x5f

    .line 393
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const-string v14, "000000000000000000000000D00000000D00000000"

    invoke-direct {v5, v6, v14, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 391
    invoke-virtual {v1, v0, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 396
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v0, v1}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->logIsoMessage(Lcom/solab/iso8583/IsoMessage;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/IsoMessage;->writeData()[B

    move-result-object v0

    const-string v5, "initialIsoMessage.writeData()"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v5

    .local v0, "$this$trim$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 452
    .local v5, "$i$f$trim":I
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    .local v6, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 453
    .local v7, "$i$f$trim":I
    const/4 v14, 0x0

    .line 454
    .local v14, "startIndex$iv$iv":I
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v21, 0x1

    add-int/lit8 v22, v22, -0x1

    .line 455
    .local v22, "endIndex$iv$iv":I
    const/16 v23, 0x0

    move/from16 v28, v22

    move-object/from16 v22, v0

    move/from16 v0, v28

    .line 457
    .local v0, "endIndex$iv$iv":I
    .local v22, "$this$trim$iv":Ljava/lang/String;
    .local v23, "startFound$iv$iv":Z
    :goto_1
    if-gt v14, v0, :cond_6

    .line 458
    if-nez v23, :cond_1

    move/from16 v24, v14

    goto :goto_2

    :cond_1
    move/from16 v24, v0

    :goto_2
    move/from16 v25, v24

    .line 459
    .local v25, "index$iv$iv":I
    move-object/from16 v24, v2

    move/from16 v2, v25

    move-object/from16 v25, v3

    .end local v3    # "originalMTI":Ljava/lang/String;
    .local v2, "index$iv$iv":I
    .local v24, "originalDataElements":Ljava/lang/String;
    .local v25, "originalMTI":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .local v3, "it":C
    const/16 v26, 0x0

    .line 398
    .local v26, "$i$a$-trim-TransactionProcessor$rollback$1$messageString$1":I
    move/from16 v27, v2

    const/16 v2, 0x20

    .end local v2    # "index$iv$iv":I
    .local v27, "index$iv$iv":I
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v19

    if-gtz v19, :cond_2

    move/from16 v3, v21

    goto :goto_3

    :cond_2
    move/from16 v3, v20

    .line 459
    .end local v3    # "it":C
    .end local v26    # "$i$a$-trim-TransactionProcessor$rollback$1$messageString$1":I
    :goto_3
    nop

    .line 461
    .local v3, "match$iv$iv":Z
    if-nez v23, :cond_4

    .line 462
    if-nez v3, :cond_3

    .line 463
    const/16 v23, 0x1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 465
    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_1

    .line 467
    :cond_4
    if-nez v3, :cond_5

    .line 468
    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 470
    move-object/from16 v2, v24

    move-object/from16 v3, v25

    .end local v3    # "match$iv$iv":Z
    .end local v27    # "index$iv$iv":I
    goto :goto_1

    .line 457
    .end local v24    # "originalDataElements":Ljava/lang/String;
    .end local v25    # "originalMTI":Ljava/lang/String;
    .local v2, "originalDataElements":Ljava/lang/String;
    .local v3, "originalMTI":Ljava/lang/String;
    :cond_6
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 474
    .end local v2    # "originalDataElements":Ljava/lang/String;
    .end local v3    # "originalMTI":Ljava/lang/String;
    .restart local v24    # "originalDataElements":Ljava/lang/String;
    .restart local v25    # "originalMTI":Ljava/lang/String;
    :goto_4
    add-int/lit8 v2, v0, 0x1

    invoke-interface {v6, v14, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 452
    .end local v0    # "endIndex$iv$iv":I
    .end local v6    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v7    # "$i$f$trim":I
    .end local v14    # "startIndex$iv$iv":I
    .end local v23    # "startFound$iv$iv":Z
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .end local v5    # "$i$f$trim":I
    .end local v22    # "$this$trim$iv":Ljava/lang/String;
    nop

    .line 399
    .local v0, "messageString":Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->generateHash256Value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "hash":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "this as java.lang.String).toUpperCase()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .end local v0    # "messageString":Ljava/lang/String;
    .local v3, "messageString":Ljava/lang/String;
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "forName(charsetName)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string/jumbo v6, "this as java.lang.String).getBytes(charset)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->prepareByteStream([B)[B

    move-result-object v0

    .line 404
    move-object v5, v0

    .line 406
    .local v5, "isoMsgByteArray":[B
    nop

    .line 407
    const/16 v7, 0x27

    :try_start_0
    iget-object v0, v8, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->requestHandler:Lcom/danbamitale/epmslib/comms/SocketRequest;

    invoke-virtual {v0, v10, v5}, Lcom/danbamitale/epmslib/comms/SocketRequest;->send(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "response":Ljava/lang/String;
    sget-object v14, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v14, v10, v0}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->processISOBitStreamWithJ8583(Landroid/content/Context;Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v14

    .line 410
    .local v14, "parsedResponse":Lcom/solab/iso8583/IsoMessage;
    invoke-virtual {v14, v7}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v20, v19

    .line 411
    .local v20, "responseCode":Ljava/lang/String;
    nop

    .line 412
    nop

    .line 413
    new-instance v7, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    move-object/from16 v22, v0

    .end local v0    # "response":Ljava/lang/String;
    .local v22, "response":Ljava/lang/String;
    const-string v0, "00"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v23, v2

    move-object/from16 v2, v20

    .end local v20    # "responseCode":Ljava/lang/String;
    .local v2, "responseCode":Ljava/lang/String;
    .local v23, "hash":Ljava/lang/String;
    :try_start_1
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v20, "06"

    move-object/from16 v0, v20

    goto :goto_5

    :cond_7
    move-object v0, v2

    :goto_5
    move-object/from16 v20, v2

    const/4 v2, 0x2

    .end local v2    # "responseCode":Ljava/lang/String;
    .restart local v20    # "responseCode":Ljava/lang/String;
    invoke-direct {v7, v6, v0, v2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 411
    const/16 v2, 0x27

    invoke-virtual {v1, v2, v7}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 415
    .end local v14    # "parsedResponse":Lcom/solab/iso8583/IsoMessage;
    .end local v20    # "responseCode":Ljava/lang/String;
    .end local v22    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v23    # "hash":Ljava/lang/String;
    .local v2, "hash":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v23, v2

    .line 416
    .end local v2    # "hash":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "hash":Ljava/lang/String;
    :goto_6
    nop

    .line 417
    nop

    .line 418
    new-instance v2, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    const-string v7, "20"

    const/4 v14, 0x2

    invoke-direct {v2, v6, v7, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 416
    const/16 v6, 0x27

    invoke-virtual {v1, v6, v2}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->toTransactionResponse(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v0

    move-object v2, v0

    .local v2, "$this$rollback_u24lambda_u2415_u24lambda_u2414":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v6, 0x0

    .line 423
    .local v6, "$i$a$-apply-TransactionProcessor$rollback$1$1":I
    invoke-virtual {v2, v13}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 424
    nop

    .line 422
    .end local v2    # "$this$rollback_u24lambda_u2415_u24lambda_u2414":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v6    # "$i$a$-apply-TransactionProcessor$rollback$1$1":I
    return-object v0
.end method

.method private final setBaseFields(Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/entities/ConfigData;)Lcom/solab/iso8583/IsoMessage;
    .locals 22
    .param p1, "requestData"    # Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .param p2, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .param p3, "configData"    # Lcom/danbamitale/epmslib/entities/ConfigData;

    .line 42
    move-object/from16 v0, p0

    new-instance v1, Lcom/solab/iso8583/IsoMessage;

    invoke-direct {v1}, Lcom/solab/iso8583/IsoMessage;-><init>()V

    move-object v2, v1

    .local v2, "$this$setBaseFields_u24lambda_u242":Lcom/solab/iso8583/IsoMessage;
    const/4 v3, 0x0

    .line 43
    .local v3, "$i$a$-apply-TransactionProcessor$setBaseFields$1":I
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getAdditionalTransParams()Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    move-result-object v4

    .line 44
    .local v4, "addTransParams":Lcom/danbamitale/epmslib/entities/AdditionalTransParams;
    new-instance v5, Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    invoke-direct {v5}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;-><init>()V

    .line 45
    .local v5, "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->transactionTimeInMillis:J

    .line 47
    invoke-virtual {v5}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getLongDate()Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "transmissionDateAndTime":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "sequenceNumber":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "timeLocalTransaction":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getShortDate()Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "dateLocalTransaction":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getRRN()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xe

    const/4 v12, 0x2

    if-nez v10, :cond_0

    invoke-virtual {v5}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getFullDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v13, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .local v10, "RRN":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/danbamitale/epmslib/entities/TransactionType;->getCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v14}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 53
    nop

    .line 56
    .local v13, "processingCode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/danbamitale/epmslib/entities/TransactionType;->getMTI()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 57
    new-instance v14, Lcom/solab/iso8583/IsoValue;

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getPan()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v15, v11}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    invoke-virtual {v2, v12, v14}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 58
    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v14, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/4 v15, 0x6

    invoke-direct {v11, v14, v13, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    const/4 v14, 0x3

    invoke-virtual {v2, v14, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 59
    nop

    .line 60
    nop

    .line 61
    new-instance v11, Lcom/solab/iso8583/IsoValue;

    .line 62
    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getAmount()J

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOtherAmount()J

    move-result-wide v19

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xc

    move/from16 v18, v3

    .end local v3    # "$i$a$-apply-TransactionProcessor$setBaseFields$1":I
    .local v18, "$i$a$-apply-TransactionProcessor$setBaseFields$1":I
    const/16 v3, 0x30

    invoke-static {v14, v15, v3}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v14

    .line 64
    nop

    .line 61
    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 59
    const/4 v12, 0x4

    invoke-virtual {v2, v12, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 67
    nop

    .line 68
    const/4 v11, 0x7

    .line 69
    new-instance v14, Lcom/solab/iso8583/IsoValue;

    .line 70
    sget-object v3, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 71
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getTransmissionDateF7()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v12, v21

    goto :goto_1

    :cond_2
    :goto_0
    move-object v12, v6

    .line 72
    :goto_1
    const/16 v15, 0xa

    .line 69
    invoke-direct {v14, v3, v12, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 67
    invoke-virtual {v2, v11, v14}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 75
    nop

    .line 76
    const/16 v3, 0xb

    .line 77
    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getStanF11()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    :cond_3
    move-object v14, v7

    :cond_4
    const/4 v15, 0x6

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 75
    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 79
    nop

    .line 80
    nop

    .line 81
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    sget-object v11, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getLocalTimeF12()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    :cond_5
    move-object v12, v8

    :cond_6
    const/4 v14, 0x6

    invoke-direct {v3, v11, v12, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 79
    const/16 v11, 0xc

    invoke-virtual {v2, v11, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 83
    nop

    .line 84
    const/16 v3, 0xd

    .line 85
    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getLocalDateF13()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_8

    :cond_7
    move-object v14, v9

    :cond_8
    const/4 v15, 0x4

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 83
    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 87
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    sget-object v11, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getExpiryDate()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    const/16 v11, 0xe

    invoke-virtual {v2, v11, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 88
    const/16 v3, 0x12

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p3 .. p3}, Lcom/danbamitale/epmslib/entities/ConfigData;->getMerchantCategoryCode()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 89
    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getPosEntryMode()Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x3

    const/16 v15, 0x30

    invoke-static {v14, v3, v15}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v14, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    const/16 v12, 0x16

    invoke-virtual {v2, v12, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getPanSequenceNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v3, :cond_9

    .line 92
    const/16 v11, 0x17

    new-instance v12, Lcom/solab/iso8583/IsoValue;

    sget-object v14, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getPanSequenceNumber()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v15, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v2, v11, v12}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 95
    :cond_9
    nop

    .line 96
    const/16 v3, 0x19

    .line 97
    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getPosConditionCodeF25()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_b

    :cond_a
    iget-object v14, v0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->posConditionCode:Ljava/lang/String;

    :cond_b
    const/4 v15, 0x2

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 95
    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 99
    nop

    .line 100
    const/16 v3, 0x1a

    .line 101
    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getPinCaptureModeF26()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    :cond_c
    iget-object v14, v0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->pinCaptureMode:Ljava/lang/String;

    :cond_d
    const/4 v15, 0x2

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 99
    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 103
    nop

    .line 104
    const/16 v3, 0x1c

    .line 105
    new-instance v11, Lcom/solab/iso8583/IsoValue;

    .line 106
    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 107
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getAmountTransactionFeeF28()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_f

    :cond_e
    iget-object v14, v0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->amountTransactionFee:Ljava/lang/String;

    .line 108
    :cond_f
    const/16 v15, 0x9

    .line 105
    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 103
    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 111
    const/16 v3, 0x20

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getAcquiringInstitutionIdCode()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 112
    const/16 v3, 0x23

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getTrack2Data()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 113
    const/16 v3, 0x25

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getRrnF37()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_11

    :cond_10
    move-object v14, v10

    :cond_11
    const/16 v15, 0xc

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 114
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    sget-object v11, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getServiceCode()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x3

    invoke-direct {v3, v11, v12, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    const/16 v11, 0x28

    invoke-virtual {v2, v11, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 115
    const/16 v3, 0x29

    new-instance v12, Lcom/solab/iso8583/IsoValue;

    sget-object v14, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    iget-object v15, v0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

    invoke-virtual {v15}, Lcom/danbamitale/epmslib/entities/HostConfig;->getTerminalId()Ljava/lang/String;

    move-result-object v15

    const/16 v11, 0x8

    invoke-direct {v12, v14, v15, v11}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v12}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 116
    const/16 v3, 0x2a

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p3 .. p3}, Lcom/danbamitale/epmslib/entities/ConfigData;->getCardAcceptorIdCode()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xf

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 117
    const/16 v3, 0x2b

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p3 .. p3}, Lcom/danbamitale/epmslib/entities/ConfigData;->getMerchantNameLocation()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x28

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 118
    const/16 v3, 0x31

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p3 .. p3}, Lcom/danbamitale/epmslib/entities/ConfigData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-direct {v11, v12, v14, v15}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getPinBlock()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 428
    .local v3, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 120
    .local v11, "$i$a$-let-TransactionProcessor$setBaseFields$1$1":I
    new-instance v14, Lcom/solab/iso8583/IsoValue;

    sget-object v15, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v3

    .end local v3    # "it":Ljava/lang/String;
    .local v16, "it":Ljava/lang/String;
    const-string/jumbo v3, "this as java.lang.String).toUpperCase()"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-direct {v14, v15, v12, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    const/16 v3, 0x34

    invoke-virtual {v2, v3, v14}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 122
    .end local v11    # "$i$a$-let-TransactionProcessor$setBaseFields$1$1":I
    .end local v16    # "it":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getNibssIccSubset()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_13

    .line 123
    const/16 v3, 0x37

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    invoke-virtual/range {p2 .. p2}, Lcom/danbamitale/epmslib/entities/CardData;->getNibssIccSubset()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 126
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getEchoData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 127
    .local v11, "$i$a$-let-TransactionProcessor$setBaseFields$1$2":I
    nop

    .line 128
    const/16 v12, 0x3b

    .line 129
    new-instance v14, Lcom/solab/iso8583/IsoValue;

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    invoke-direct {v14, v15, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v2, v12, v14}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 126
    .end local v3    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-let-TransactionProcessor$setBaseFields$1$2":I
    nop

    .line 133
    :cond_14
    const/16 v3, 0x7b

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->getPosDataCodeF123()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_16

    :cond_15
    iget-object v14, v0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->posDataCode:Ljava/lang/String;

    :cond_16
    invoke-direct {v11, v12, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 134
    const/16 v3, 0x80

    new-instance v11, Lcom/solab/iso8583/IsoValue;

    sget-object v12, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/16 v14, 0x40

    const-string v15, ""

    invoke-direct {v11, v12, v15, v14}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v11}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 135
    nop

    .line 42
    .end local v2    # "$this$setBaseFields_u24lambda_u242":Lcom/solab/iso8583/IsoMessage;
    .end local v4    # "addTransParams":Lcom/danbamitale/epmslib/entities/AdditionalTransParams;
    .end local v5    # "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    .end local v6    # "transmissionDateAndTime":Ljava/lang/String;
    .end local v7    # "sequenceNumber":Ljava/lang/String;
    .end local v8    # "timeLocalTransaction":Ljava/lang/String;
    .end local v9    # "dateLocalTransaction":Ljava/lang/String;
    .end local v10    # "RRN":Ljava/lang/String;
    .end local v13    # "processingCode":Ljava/lang/String;
    .end local v18    # "$i$a$-apply-TransactionProcessor$setBaseFields$1":I
    nop

    .line 135
    return-object v1
.end method

.method private final setOriginalTransactionData(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/entities/TransactionRequestData;)V
    .locals 10
    .param p1, "isoMessage"    # Lcom/solab/iso8583/IsoMessage;
    .param p2, "requestData"    # Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    .line 141
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    const/4 v1, 0x0

    .line 142
    .local v1, "$i$a$-let-TransactionProcessor$setOriginalTransactionData$1":I
    nop

    .line 143
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionType;->getMTI()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "toString(this, checkRadix(radix))"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAcquiringInstCode()Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalSTAN()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalTransmissionTime()Ljava/lang/String;

    move-result-object v9

    .line 142
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->getOriginalDataElementField90(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "originalDataElements":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAmount()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getAmount()J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->getReplacementAmountField95(JJ)Ljava/lang/String;

    move-result-object v3

    .line 150
    nop

    .line 153
    .local v3, "replacementAmounts":Ljava/lang/String;
    const/16 v4, 0x5a

    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/16 v7, 0x2a

    invoke-direct {v5, v6, v2, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {p1, v4, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 154
    const/16 v4, 0x5f

    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-direct {v5, v6, v3, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    invoke-virtual {p1, v4, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 141
    .end local v0    # "it":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .end local v1    # "$i$a$-let-TransactionProcessor$setOriginalTransactionData$1":I
    .end local v2    # "originalDataElements":Ljava/lang/String;
    .end local v3    # "replacementAmounts":Ljava/lang/String;
    nop

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public final getIsoMessageForReversal(Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;)Lcom/solab/iso8583/IsoMessage;
    .locals 1
    .param p1, "requestData"    # Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .param p2, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;

    const-string/jumbo v0, "requestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/HostConfig;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->setBaseFields(Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/entities/ConfigData;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    return-object v0
.end method

.method public final processTransaction(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestData"    # Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .param p3, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/danbamitale/epmslib/entities/TransactionRequestData;",
            "Lcom/danbamitale/epmslib/entities/CardData;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    .line 335
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "fromCallable {\n        r\u2026Schedulers.computation())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final rollback(Landroid/content/Context;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Lcom/solab/iso8583/IsoMessage;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reversalReasonCode"    # Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .param p3, "initialIsoMessage"    # Lcom/solab/iso8583/IsoMessage;
    .param p4, "sessionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/danbamitale/epmslib/utils/MessageReasonCode;",
            "Lcom/solab/iso8583/IsoMessage;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reversalReasonCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialIsoMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    .line 425
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "fromCallable {\n        v\u2026scribeOn(Schedulers.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
