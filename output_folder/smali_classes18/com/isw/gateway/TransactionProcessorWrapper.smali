.class public final Lcom/isw/gateway/TransactionProcessorWrapper;
.super Ljava/lang/Object;
.source "TransactionProcessorWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BM\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0003H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\t\u0010,\u001a\u00020\u0003H\u0082 J\t\u0010-\u001a\u00020\u0003H\u0082 J\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/2\u0006\u00101\u001a\u000202J \u00103\u001a\u0008\u0012\u0004\u0012\u0002000/2\u0006\u00104\u001a\u0002052\u0008\u0008\u0002\u00106\u001a\u000207H\u0007R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/isw/gateway/TransactionProcessorWrapper;",
        "",
        "merchId",
        "",
        "terminalId",
        "amount",
        "",
        "otherAmount",
        "transactionRequestData",
        "Lcom/danbamitale/epmslib/entities/TransactionRequestData;",
        "keyHolder",
        "Lcom/danbamitale/epmslib/entities/KeyHolder;",
        "configData",
        "Lcom/danbamitale/epmslib/entities/ConfigData;",
        "(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V",
        "attempt",
        "",
        "getConfigData",
        "()Lcom/danbamitale/epmslib/entities/ConfigData;",
        "setConfigData",
        "(Lcom/danbamitale/epmslib/entities/ConfigData;)V",
        "ec",
        "Lcom/danbamitale/epmslib/domain/DataEc;",
        "getKeyHolder",
        "()Lcom/danbamitale/epmslib/entities/KeyHolder;",
        "setKeyHolder",
        "(Lcom/danbamitale/epmslib/entities/KeyHolder;)V",
        "posVasIp",
        "posVasPort",
        "transactionProcessor",
        "Lcom/danbamitale/epmslib/processors/TransactionProcessor;",
        "getTransactionRequestData",
        "()Lcom/danbamitale/epmslib/entities/TransactionRequestData;",
        "setTransactionRequestData",
        "(Lcom/danbamitale/epmslib/entities/TransactionRequestData;)V",
        "transactionRoute",
        "Lcom/danbamitale/epmslib/utils/TransactionRoute;",
        "getCVMMethod",
        "Lcom/danbamitale/epmslib/utils/CVMETHOD;",
        "cvmResult",
        "getConnectionData",
        "Lcom/danbamitale/epmslib/entities/ConnectionData;",
        "posMode",
        "Lcom/danbamitale/epmslib/entities/PosMode;",
        "getIp",
        "getPort",
        "processIswTransaction",
        "Lio/reactivex/Single;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "cardData",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "rollback",
        "context",
        "Landroid/content/Context;",
        "reversalReasonCode",
        "Lcom/danbamitale/epmslib/utils/MessageReasonCode;",
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
.field private final amount:J

.field private attempt:I

.field private configData:Lcom/danbamitale/epmslib/entities/ConfigData;

.field private final ec:Lcom/danbamitale/epmslib/domain/DataEc;

.field private keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

.field private final merchId:Ljava/lang/String;

.field private final otherAmount:J

.field private final posVasIp:Ljava/lang/String;

.field private final posVasPort:I

.field private final terminalId:Ljava/lang/String;

.field private transactionProcessor:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

.field private transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

.field private transactionRoute:Lcom/danbamitale/epmslib/utils/TransactionRoute;


# direct methods
.method public static synthetic $r8$lambda$-MrlF2TfORjZW9KMfnXVwz0k02o(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/entities/CardData;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/isw/gateway/TransactionProcessorWrapper;->processIswTransaction$lambda$5(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/entities/CardData;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0nAkJA8ckoi6wcHdPOopBXZvE10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/isw/gateway/TransactionProcessorWrapper;->processIswTransaction$lambda$5$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GefARTKgo0WW7EL8ID0v9r_c1QQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/isw/gateway/TransactionProcessorWrapper;->processIswTransaction$lambda$5$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QZ-MwW0MJwd8k3nEOiBjmk7__-Y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/isw/gateway/TransactionProcessorWrapper;->processIswTransaction$lambda$5$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15

    const-string v0, "merchId"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalId"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x78

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lcom/isw/gateway/TransactionProcessorWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 15

    const-string v0, "merchId"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalId"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x70

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v12}, Lcom/isw/gateway/TransactionProcessorWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;)V
    .locals 15

    const-string v0, "merchId"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalId"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v12}, Lcom/isw/gateway/TransactionProcessorWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;)V
    .locals 15

    const-string v0, "merchId"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalId"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x40

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v12}, Lcom/isw/gateway/TransactionProcessorWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V
    .locals 2
    .param p1, "merchId"    # Ljava/lang/String;
    .param p2, "terminalId"    # Ljava/lang/String;
    .param p3, "amount"    # J
    .param p5, "otherAmount"    # J
    .param p7, "transactionRequestData"    # Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .param p8, "keyHolder"    # Lcom/danbamitale/epmslib/entities/KeyHolder;
    .param p9, "configData"    # Lcom/danbamitale/epmslib/entities/ConfigData;

    const-string v0, "merchId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->merchId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->terminalId:Ljava/lang/String;

    .line 28
    iput-wide p3, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->amount:J

    .line 29
    iput-wide p5, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->otherAmount:J

    .line 30
    iput-object p7, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    .line 31
    iput-object p8, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    .line 32
    iput-object p9, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    .line 34
    nop

    .line 35
    const-string v0, "api-keys"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    nop

    .line 38
    sget-object v0, Lcom/danbamitale/epmslib/di/AppModule;->INSTANCE:Lcom/danbamitale/epmslib/di/AppModule;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/di/AppModule;->providesDataEc()Lcom/danbamitale/epmslib/domain/DataEc;

    move-result-object v0

    iput-object v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->ec:Lcom/danbamitale/epmslib/domain/DataEc;

    .line 40
    invoke-direct {p0}, Lcom/isw/gateway/TransactionProcessorWrapper;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/danbamitale/epmslib/domain/DataEc;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->posVasIp:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/isw/gateway/TransactionProcessorWrapper;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/danbamitale/epmslib/domain/DataEc;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->posVasPort:I

    .line 25
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    .line 25
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_0

    .line 29
    const-wide/16 v0, 0x0

    move-wide v7, v0

    goto :goto_0

    .line 25
    :cond_0
    move-wide/from16 v7, p5

    :goto_0
    and-int/lit8 v0, p10, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 30
    move-object v9, v1

    goto :goto_1

    .line 25
    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_2

    .line 31
    move-object v10, v1

    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v10, p8

    :goto_2
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_3

    .line 32
    move-object v11, v1

    goto :goto_3

    .line 25
    :cond_3
    move-object/from16 v11, p9

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v2 .. v11}, Lcom/isw/gateway/TransactionProcessorWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V

    .line 247
    return-void
.end method

.method public static final synthetic access$getAmount$p(Lcom/isw/gateway/TransactionProcessorWrapper;)J
    .locals 2
    .param p0, "$this"    # Lcom/isw/gateway/TransactionProcessorWrapper;

    .line 25
    iget-wide v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->amount:J

    return-wide v0
.end method

.method public static final synthetic access$getAttempt$p(Lcom/isw/gateway/TransactionProcessorWrapper;)I
    .locals 1
    .param p0, "$this"    # Lcom/isw/gateway/TransactionProcessorWrapper;

    .line 25
    iget v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->attempt:I

    return v0
.end method

.method public static final synthetic access$getOtherAmount$p(Lcom/isw/gateway/TransactionProcessorWrapper;)J
    .locals 2
    .param p0, "$this"    # Lcom/isw/gateway/TransactionProcessorWrapper;

    .line 25
    iget-wide v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->otherAmount:J

    return-wide v0
.end method

.method private final getCVMMethod(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/CVMETHOD;
    .locals 2
    .param p1, "cvmResult"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_PLAINTEXT_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    goto :goto_0

    .line 211
    :cond_0
    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->ONLINE_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    goto :goto_0

    .line 212
    :cond_1
    const/16 v1, 0x33

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    goto :goto_0

    .line 213
    :cond_2
    const/16 v1, 0x34

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_ENCIPHERED_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    goto :goto_0

    .line 214
    :cond_3
    const/16 v1, 0x35

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    goto :goto_0

    .line 215
    :cond_4
    const/16 v1, 0x45

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    goto :goto_0

    .line 216
    :cond_5
    const/16 v1, 0x46

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->NO_CVM_PERFORMED:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    goto :goto_0

    .line 217
    :cond_6
    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->NO_CVM_PERFORMED:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    .line 218
    :goto_0
    return-object v0
.end method

.method private final getConnectionData(Lcom/danbamitale/epmslib/entities/PosMode;)Lcom/danbamitale/epmslib/entities/ConnectionData;
    .locals 17
    .param p1, "posMode"    # Lcom/danbamitale/epmslib/entities/PosMode;

    .line 233
    move-object/from16 v0, p0

    sget-object v1, Lcom/danbamitale/epmslib/entities/PosMode;->POSVAS:Lcom/danbamitale/epmslib/entities/PosMode;

    move-object/from16 v2, p1

    if-ne v2, v1, :cond_0

    .line 234
    new-instance v1, Lcom/danbamitale/epmslib/entities/ConnectionData;

    .line 235
    iget-object v4, v0, Lcom/isw/gateway/TransactionProcessorWrapper;->posVasIp:Ljava/lang/String;

    .line 236
    iget v5, v0, Lcom/isw/gateway/TransactionProcessorWrapper;->posVasPort:I

    .line 237
    const/4 v6, 0x1

    .line 234
    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/danbamitale/epmslib/entities/ConnectionData;-><init>(Ljava/lang/String;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Lcom/danbamitale/epmslib/entities/ConnectionData;

    .line 241
    sget-object v3, Lcom/danbamitale/epmslib/utils/Utility;->INSTANCE:Lcom/danbamitale/epmslib/utils/Utility;

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/utils/Utility;->getPOS_VAS_NIBSS_DEFAULT_IP()Ljava/lang/String;

    move-result-object v11

    .line 242
    sget-object v3, Lcom/danbamitale/epmslib/utils/Utility;->INSTANCE:Lcom/danbamitale/epmslib/utils/Utility;

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/utils/Utility;->getPOS_VAS_NIBSS_DEFAULT_PORT()I

    move-result v12

    .line 243
    const/4 v13, 0x1

    .line 240
    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/danbamitale/epmslib/entities/ConnectionData;-><init>(Ljava/lang/String;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 233
    :goto_0
    return-object v1
.end method

.method private final native getIp()Ljava/lang/String;
.end method

.method private final native getPort()Ljava/lang/String;
.end method

.method private static final processIswTransaction$lambda$5(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/entities/CardData;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 24
    .param p0, "this$0"    # Lcom/isw/gateway/TransactionProcessorWrapper;
    .param p1, "$cardData"    # Lcom/danbamitale/epmslib/entities/CardData;

    move-object/from16 v10, p0

    const-string/jumbo v0, "this$0"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cardData"

    move-object/from16 v11, p1

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->attempt:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->attempt:I

    .line 54
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 59
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/isw/iswclient/request/IswParameters;->getToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 60
    iget v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->attempt:I

    if-ge v0, v2, :cond_2

    .line 61
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getProcessingProperties()Lcom/isw/iswclient/request/ProcessingProperties;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/isw/iswclient/request/ProcessingProperties;->getProcessingStrategy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISW_ONLY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "isw token is null, re-route transaction to nibss"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 65
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "isw token is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 66
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->terminalId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/isw/iswclient/request/IswParameters;->setTerminalId(Ljava/lang/String;)V

    .line 70
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    iget-object v3, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getEchoData()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_4

    move-object v3, v4

    .line 70
    :cond_4
    invoke-virtual {v0, v3}, Lcom/isw/iswclient/request/IswParameters;->setRemark(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 73
    .local v12, "transactionTime":J
    new-instance v3, Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    invoke-direct {v3}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;-><init>()V

    .line 74
    .local v3, "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    new-instance v5, Lcom/isw/iswclient/request/TransferRequest;

    invoke-direct {v5}, Lcom/isw/iswclient/request/TransferRequest;-><init>()V

    move-object v6, v5

    .local v6, "$this$processIswTransaction_u24lambda_u245_u24lambda_u241":Lcom/isw/iswclient/request/TransferRequest;
    const/4 v7, 0x0

    .line 75
    .local v7, "$i$a$-apply-TransactionProcessorWrapper$processIswTransaction$1$transferRequest$1":I
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/CardData;->getNibssIccSubset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->fromBinary(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLVList;

    move-result-object v8

    .line 76
    .local v8, "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string/jumbo v14, "yyyy-MM-dd\'T\'hh:mm:ss"

    invoke-direct {v0, v14, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v9, v0

    .line 77
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    const/16 v0, 0x64

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setBatteryInformation(I)V

    .line 78
    const-string v0, "566"

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setCurrencyCode(Ljava/lang/String;)V

    .line 79
    const-string v14, "EN"

    invoke-virtual {v6, v14}, Lcom/isw/iswclient/request/TransferRequest;->setLanguageInfo(Ljava/lang/String;)V

    .line 80
    iget-object v14, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/isw/iswclient/request/IswParameters;->getMerchantId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/isw/iswclient/request/TransferRequest;->setMerchantId(Ljava/lang/String;)V

    .line 81
    iget-object v14, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/isw/iswclient/request/IswParameters;->getMerchantNameLocation()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/isw/iswclient/request/TransferRequest;->setMerchantLocation(Ljava/lang/String;)V

    .line 82
    const-string v14, "00"

    invoke-virtual {v6, v14}, Lcom/isw/iswclient/request/TransferRequest;->setPosConditionCode(Ljava/lang/String;)V

    .line 83
    const-string v14, "510101511344101"

    invoke-virtual {v6, v14}, Lcom/isw/iswclient/request/TransferRequest;->setPosDataCode(Ljava/lang/String;)V

    .line 84
    const-string v14, "051"

    invoke-virtual {v6, v14}, Lcom/isw/iswclient/request/TransferRequest;->setPosEntryMode(Ljava/lang/String;)V

    .line 85
    const-string v14, "00234000000000566"

    invoke-virtual {v6, v14}, Lcom/isw/iswclient/request/TransferRequest;->setPosGeoCode(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setPrinterStatus(I)V

    .line 87
    iget-object v1, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/isw/iswclient/request/IswParameters;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setTerminalId(Ljava/lang/String;)V

    .line 88
    const-string v1, "22"

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setTerminalType(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v14, "sdf.format(Date(transactionTime))"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setTransmissionDate(Ljava/lang/String;)V

    .line 90
    iget-object v1, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/isw/iswclient/request/IswParameters;->getTerminalSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setUniqueId(Ljava/lang/String;)V

    .line 91
    nop

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/CardData;->getPanSequenceNumber()Ljava/lang/String;

    move-result-object v1

    .local v1, "csn":Ljava/lang/String;
    const/4 v15, 0x0

    .line 93
    .local v15, "$i$a$-let-TransactionProcessorWrapper$processIswTransaction$1$transferRequest$1$1":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v16, v7

    .end local v7    # "$i$a$-apply-TransactionProcessorWrapper$processIswTransaction$1$transferRequest$1":I
    .local v16, "$i$a$-apply-TransactionProcessorWrapper$processIswTransaction$1$transferRequest$1":I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    .line 94
    const/4 v2, 0x2

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v17

    goto :goto_2

    .line 96
    :cond_5
    move-object v2, v1

    .line 93
    :goto_2
    nop

    .line 92
    .end local v1    # "csn":Ljava/lang/String;
    .end local v15    # "$i$a$-let-TransactionProcessorWrapper$processIswTransaction$1$transferRequest$1$1":I
    nop

    .line 91
    invoke-virtual {v6, v2}, Lcom/isw/iswclient/request/TransferRequest;->setCardSequenceNumber(Ljava/lang/String;)V

    .line 99
    const-string v1, "9F02"

    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tlvList.getTLV(\"9F02\").value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setAmountAuthorized(Ljava/lang/String;)V

    .line 100
    const-string v1, "9F03"

    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tlvList.getTLV(\"9F03\").value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setAmountOther(Ljava/lang/String;)V

    .line 101
    const-string v1, "82"

    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tlvList.getTLV(\"82\").value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setApplicationInterchangeProfile(Ljava/lang/String;)V

    .line 102
    const-string v1, "9F36"

    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tlvList.getTLV(\"9F36\").value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setAtc(Ljava/lang/String;)V

    .line 103
    const-string v1, "9F26"

    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tlvList.getTLV(\"9F26\").value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setCryptogram(Ljava/lang/String;)V

    .line 104
    nop

    .line 105
    const-string v1, "9F27"

    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tlvList.getTLV(\"9F27\").value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {v6, v1}, Lcom/isw/iswclient/request/TransferRequest;->setCryptogramInformationData(I)V

    .line 106
    const-string v1, "9F34"

    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v15, "tlvList.getTLV(\"9F34\").value"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/isw/iswclient/request/TransferRequest;->setCvmResults(Ljava/lang/String;)V

    .line 107
    const-string v2, "9F10"

    invoke-virtual {v8, v2}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "tlvList.getTLV(\"9F10\").value"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/isw/iswclient/request/TransferRequest;->setIad(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setTransactionCurrencyCode(Ljava/lang/String;)V

    .line 109
    const-string v2, "95"

    invoke-virtual {v8, v2}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "tlvList.getTLV(\"95\").value"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/isw/iswclient/request/TransferRequest;->setTerminalVerficationResult(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setTerminalCountryCode(Ljava/lang/String;)V

    .line 111
    const-string v0, "9F35"

    invoke-virtual {v8, v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tlvList.getTLV(\"9F35\").value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setTerminalType2(Ljava/lang/String;)V

    .line 112
    const-string v0, "E0F0C8"

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setTerminalCapabilities(Ljava/lang/String;)V

    .line 113
    const-string v0, "9A"

    invoke-virtual {v8, v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tlvList.getTLV(\"9A\").value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setTransationDate(Ljava/lang/String;)V

    .line 114
    const-string v0, "9C"

    invoke-virtual {v8, v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tlvList.getTLV(\"9C\").value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setTransactionType(Ljava/lang/String;)V

    .line 115
    const-string v0, "9F37"

    invoke-virtual {v8, v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tlvList.getTLV(\"9F37\").value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setUnpredictableNumber(Ljava/lang/String;)V

    .line 116
    nop

    .line 117
    :try_start_0
    const-string v0, "84"

    invoke-virtual {v8, v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string/jumbo v2, "{\n                    tl\u2026).value\n                }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "00000000000000"

    move-object v0, v2

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setDedicatedFileName(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/CardData;->getPan()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "F"

    const-string v20, ""

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setPan(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/CardData;->getExpiryDate()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setExpiryMonth(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/CardData;->getExpiryDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setExpiryYear(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/CardData;->getTrack2Data()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setTrack2(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setOriginalTransmissionDate(Ljava/lang/String;)V

    .line 126
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getSTAN()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setStan(Ljava/lang/String;)V

    .line 127
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getRRN()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getFullDate()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setRrn(Ljava/lang/String;)V

    .line 128
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, "default"

    :cond_9
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setFromAccount(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v6, v4}, Lcom/isw/iswclient/request/TransferRequest;->setToAccount(Ljava/lang/String;)V

    .line 130
    move-object v14, v3

    .end local v3    # "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    .local v14, "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    iget-wide v2, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->amount:J

    const/16 v0, 0x433

    move-wide/from16 v18, v12

    .end local v12    # "transactionTime":J
    .local v18, "transactionTime":J
    int-to-long v11, v0

    sub-long/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setMinorAmount(Ljava/lang/String;)V

    .line 131
    nop

    .line 132
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/isw/iswclient/request/IswParameters;->getReceivingInstitutionId()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setReceivingInstitutionId(Ljava/lang/String;)V

    .line 133
    const-string v0, "1075"

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setSurcharge(Ljava/lang/String;)V

    .line 134
    const-string v0, "605"

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setKsnd(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Lcom/isw/gateway/TransactionProcessorWrapper;->getCVMMethod(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/CVMETHOD;

    move-result-object v0

    sget-object v2, Lcom/danbamitale/epmslib/utils/CVMETHOD;->ONLINE_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    if-ne v0, v2, :cond_a

    .line 136
    const-string v0, "000002DDDDE00001"

    goto :goto_4

    .line 138
    :cond_a
    move-object v0, v4

    .line 135
    :goto_4
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setKsn(Ljava/lang/String;)V

    .line 140
    const-string v0, "Dukpt"

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setPinType(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v8, v1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Lcom/isw/gateway/TransactionProcessorWrapper;->getCVMMethod(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/CVMETHOD;

    move-result-object v0

    sget-object v1, Lcom/danbamitale/epmslib/utils/CVMETHOD;->ONLINE_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    if-ne v0, v1, :cond_c

    .line 143
    sget-object v0, LDukptHelper;->INSTANCE:LDukptHelper;

    .line 144
    sget-object v1, LDukptHelper;->INSTANCE:LDukptHelper;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3, v2}, LDukptHelper;->getSessionKey$default(LDukptHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/danbamitale/epmslib/entities/CardData;->getPinBlock()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    iget-object v3, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/isw/iswclient/request/IswParameters;->getPinKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move-object v3, v4

    .line 145
    :cond_b
    invoke-static {v2, v3}, Lcom/danbamitale/epmslib/utils/TripleDES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "decrypt(\n               \u2026                        )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v7, "getDefault()"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v1, v2}, LDukptHelper;->DesEncryptDukpt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 153
    :cond_c
    move-object v0, v4

    .line 142
    :goto_5
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setPinBlock(Ljava/lang/String;)V

    .line 155
    const-string v0, "000002"

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setKeyLabel(Ljava/lang/String;)V

    .line 156
    nop

    .line 157
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/isw/iswclient/request/IswParameters;->getDestinationAccountNumber()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setDestinationAccountNumber(Ljava/lang/String;)V

    .line 158
    const-string v0, "6103"

    invoke-virtual {v6, v0}, Lcom/isw/iswclient/request/TransferRequest;->setExtendedTransactionType(Ljava/lang/String;)V

    .line 159
    iget-object v0, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/isw/iswclient/request/IswParameters;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    move-object v4, v0

    :goto_6
    invoke-virtual {v6, v4}, Lcom/isw/iswclient/request/TransferRequest;->setHeader(Ljava/lang/String;)V

    .line 160
    nop

    .line 74
    .end local v6    # "$this$processIswTransaction_u24lambda_u245_u24lambda_u241":Lcom/isw/iswclient/request/TransferRequest;
    .end local v8    # "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v16    # "$i$a$-apply-TransactionProcessorWrapper$processIswTransaction$1$transferRequest$1":I
    move-object v0, v5

    .line 161
    .local v0, "transferRequest":Lcom/isw/iswclient/request/TransferRequest;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRANS_DATA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/isw/iswclient/iswapiclient/IswClientKt;->getIswTransactionClient()Lcom/isw/iswclient/iswapiclient/IswService;

    move-result-object v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/isw/iswclient/request/IswParameters;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    nop

    .line 163
    invoke-interface {v1, v2, v0}, Lcom/isw/iswclient/iswapiclient/IswService;->performTransaction(Ljava/lang/String;Lcom/isw/iswclient/request/TransferRequest;)Lio/reactivex/Single;

    move-result-object v7

    .line 166
    new-instance v8, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, v18

    move-object v3, v14

    .end local v14    # "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    .restart local v3    # "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    invoke-direct/range {v1 .. v6}, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;-><init>(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/utils/IsoTimeManager;Lcom/danbamitale/epmslib/entities/CardData;J)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 178
    new-instance v2, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;

    move-object v4, v2

    move-object/from16 v5, p0

    move-object v6, v3

    move-object/from16 v7, p1

    move-wide/from16 v8, v18

    invoke-direct/range {v4 .. v9}, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;-><init>(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/utils/IsoTimeManager;Lcom/danbamitale/epmslib/entities/CardData;J)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v4}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 202
    new-instance v2, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$3;

    invoke-direct {v2, v10}, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$3;-><init>(Lcom/isw/gateway/TransactionProcessorWrapper;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v4}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    return-object v1

    .line 55
    .end local v0    # "transferRequest":Lcom/isw/iswclient/request/TransferRequest;
    .end local v3    # "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    .end local v18    # "transactionTime":J
    :cond_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "interswitch parameter is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 56
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "iswParameters is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final processIswTransaction$lambda$5$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function1;
    .param p1, "p0"    # Ljava/lang/Object;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final processIswTransaction$lambda$5$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function1;
    .param p1, "p0"    # Ljava/lang/Object;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final processIswTransaction$lambda$5$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function1;
    .param p1, "p0"    # Ljava/lang/Object;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method public static synthetic rollback$default(Lcom/isw/gateway/TransactionProcessorWrapper;Landroid/content/Context;Lcom/danbamitale/epmslib/utils/MessageReasonCode;ILjava/lang/Object;)Lio/reactivex/Single;
    .locals 0

    .line 221
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 223
    sget-object p2, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->Timeout:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    .line 221
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/isw/gateway/TransactionProcessorWrapper;->rollback(Landroid/content/Context;Lcom/danbamitale/epmslib/utils/MessageReasonCode;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    return-object v0
.end method

.method public final getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-object v0
.end method

.method public final getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    return-object v0
.end method

.method public final processIswTransaction(Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;
    .locals 2
    .param p1, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/CardData;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "cardData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/entities/CardData;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    .line 207
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "fromCallable {\n         \u2026scribeOn(Schedulers.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final rollback(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/isw/gateway/TransactionProcessorWrapper;->rollback$default(Lcom/isw/gateway/TransactionProcessorWrapper;Landroid/content/Context;Lcom/danbamitale/epmslib/utils/MessageReasonCode;ILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final rollback(Landroid/content/Context;Lcom/danbamitale/epmslib/utils/MessageReasonCode;)Lio/reactivex/Single;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reversalReasonCode"    # Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/danbamitale/epmslib/utils/MessageReasonCode;",
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

    .line 225
    iget-object v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRoute:Lcom/danbamitale/epmslib/utils/TransactionRoute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "transactionRoute"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v2, Lcom/danbamitale/epmslib/utils/TransactionRoute;->NIBSS:Lcom/danbamitale/epmslib/utils/TransactionRoute;

    if-ne v0, v2, :cond_2

    .line 226
    iget-object v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionProcessor:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    if-nez v0, :cond_1

    const-string/jumbo v0, "transactionProcessor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->rollback$default(Lcom/danbamitale/epmslib/processors/TransactionProcessor;Landroid/content/Context;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Lcom/solab/iso8583/IsoMessage;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_1

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot rollback"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object v0

    .line 227
    const-string/jumbo v1, "{\n            Single.err\u2026not rollback\"))\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    :goto_1
    return-object v0
.end method

.method public final setConfigData(Lcom/danbamitale/epmslib/entities/ConfigData;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/entities/ConfigData;

    .line 32
    iput-object p1, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    return-void
.end method

.method public final setKeyHolder(Lcom/danbamitale/epmslib/entities/KeyHolder;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/entities/KeyHolder;

    .line 31
    iput-object p1, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-void
.end method

.method public final setTransactionRequestData(Lcom/danbamitale/epmslib/entities/TransactionRequestData;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    .line 30
    iput-object p1, p0, Lcom/isw/gateway/TransactionProcessorWrapper;->transactionRequestData:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    return-void
.end method
