.class public final Lcom/danbamitale/epmslib/processors/TerminalConfigurator;
.super Ljava/lang/Object;
.source "TerminalConfigurator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;,
        Lcom/danbamitale/epmslib/processors/TerminalConfigurator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalConfigurator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalConfigurator.kt\ncom/danbamitale/epmslib/processors/TerminalConfigurator\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,397:1\n107#2:398\n79#2,22:399\n*S KotlinDebug\n*F\n+ 1 TerminalConfigurator.kt\ncom/danbamitale/epmslib/processors/TerminalConfigurator\n*L\n165#1:398\n165#1:399,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001)B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J>\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J@\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0014\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J2\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ2\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00160\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ\u001c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\tJ,\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ,\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ,\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ.\u0010 \u001a\u0010\u0012\u000c\u0012\n !*\u0004\u0018\u00010\t0\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\tH\u0002JB\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\'\u001a\u00020\t2\u0006\u0010(\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/processors/TerminalConfigurator;",
        "",
        "connectionData",
        "Lcom/danbamitale/epmslib/entities/ConnectionData;",
        "(Lcom/danbamitale/epmslib/entities/ConnectionData;)V",
        "requestHandler",
        "Lcom/danbamitale/epmslib/comms/SocketRequest;",
        "doNetworkParamDownload",
        "Lio/reactivex/Single;",
        "",
        "context",
        "Landroid/content/Context;",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "terminalID",
        "sessionKey",
        "terminalSerial",
        "responseDataIndex",
        "",
        "doNetworkParamDownloadExtended",
        "field62TlvData",
        "downloadNibssAID",
        "",
        "Lcom/danbamitale/epmslib/entities/NibssAID;",
        "downloadNibssCAPK",
        "Lcom/danbamitale/epmslib/entities/NibssCA;",
        "downloadNibssKeys",
        "Lcom/danbamitale/epmslib/entities/KeyHolder;",
        "downloadTerminalParameters",
        "Lcom/danbamitale/epmslib/entities/ConfigData;",
        "nibssCallHome",
        "nibssEOD",
        "nibssKeyRequest",
        "kotlin.jvm.PlatformType",
        "type",
        "Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;",
        "parseField62",
        "field62String",
        "sendNetworkManagementRequest",
        "field62Data",
        "transactionCode",
        "KeyType",
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
.field private final requestHandler:Lcom/danbamitale/epmslib/comms/SocketRequest;


# direct methods
.method public static synthetic $r8$lambda$RYeARxeytJXIMtGP3YuyFuRXLeg(Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->nibssKeyRequest$lambda$0(Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WWf-zu1v2uYM11uXxs5bPBqZRZY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 0

    invoke-static {p0, p1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->downloadTerminalParameters$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YGHhy1A942jYZvwK_2ESDOhlAAw(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->downloadNibssKeys$lambda$3(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aUI-Gta7-oEA3Ov_nRmFD2skfwA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->downloadNibssAID$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mSOhLB6WRQ-6tMNpsxzHjwfQuJw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->sendNetworkManagementRequest$lambda$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qrBNCgLoUCmd3lYUZGxf0g4nk24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->downloadNibssCAPK$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/ConnectionData;)V
    .locals 1
    .param p1, "connectionData"    # Lcom/danbamitale/epmslib/entities/ConnectionData;

    const-string v0, "connectionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/danbamitale/epmslib/comms/SocketRequest;

    invoke-direct {v0, p1}, Lcom/danbamitale/epmslib/comms/SocketRequest;-><init>(Lcom/danbamitale/epmslib/entities/ConnectionData;)V

    iput-object v0, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->requestHandler:Lcom/danbamitale/epmslib/comms/SocketRequest;

    .line 20
    return-void
.end method

.method public static final synthetic access$parseField62(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 1
    .param p0, "$this"    # Lcom/danbamitale/epmslib/processors/TerminalConfigurator;
    .param p1, "field62String"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->parseField62(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic doNetworkParamDownload$default(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lio/reactivex/Single;
    .locals 7

    .line 200
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 206
    const/16 p6, 0x27

    move v6, p6

    goto :goto_0

    .line 200
    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->doNetworkParamDownload(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic doNetworkParamDownloadExtended$default(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lio/reactivex/Single;
    .locals 7

    .line 231
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 237
    const/16 p6, 0x27

    move v6, p6

    goto :goto_0

    .line 231
    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->doNetworkParamDownloadExtended(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private static final downloadNibssAID$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function1;
    .param p1, "p0"    # Ljava/lang/Object;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final downloadNibssCAPK$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function1;
    .param p1, "p0"    # Ljava/lang/Object;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final downloadNibssKeys$lambda$3(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 12
    .param p0, "this$0"    # Lcom/danbamitale/epmslib/processors/TerminalConfigurator;
    .param p1, "$context"    # Landroid/content/Context;
    .param p2, "$terminalID"    # Ljava/lang/String;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$terminalID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    nop

    .line 260
    nop

    .line 261
    sget-object v0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;->MASTER:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;

    .line 262
    nop

    .line 259
    invoke-direct {p0, p1, v0, p2}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->nibssKeyRequest(Landroid/content/Context;Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "nibssKeyRequest(\n       \u2026          ).blockingGet()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    nop

    .line 265
    .local v5, "encryptedMasterKey":Ljava/lang/String;
    nop

    .line 266
    nop

    .line 267
    sget-object v4, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;->SESSION:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;

    .line 268
    nop

    .line 265
    invoke-direct {p0, p1, v4, p2}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->nibssKeyRequest(Landroid/content/Context;Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v4

    .line 269
    invoke-virtual {v4}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    .line 270
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    nop

    .line 272
    .local v6, "encryptedSessionKey":Ljava/lang/String;
    sget-object v1, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;->PIN:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;

    invoke-direct {p0, p1, v1, p2}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->nibssKeyRequest(Landroid/content/Context;Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "nibssKeyRequest(context,\u2026terminalID).blockingGet()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 273
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    nop

    .line 275
    .local v7, "encryptedPinKey":Ljava/lang/String;
    new-instance v0, Lcom/danbamitale/epmslib/entities/KeyHolder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/danbamitale/epmslib/entities/KeyHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final downloadTerminalParameters$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function1;
    .param p1, "p0"    # Ljava/lang/Object;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/entities/ConfigData;

    return-object v0
.end method

.method private final nibssKeyRequest(Landroid/content/Context;Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;
    .param p3, "terminalID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda0;-><init>(Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "fromCallable {\n         \u2026_INFO_53).value\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    return-object v0
.end method

.method private static final nibssKeyRequest$lambda$0(Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "$type"    # Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;
    .param p1, "$terminalID"    # Ljava/lang/String;
    .param p2, "this$0"    # Lcom/danbamitale/epmslib/processors/TerminalConfigurator;
    .param p3, "$context"    # Landroid/content/Context;

    const-string v0, "$type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$terminalID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/solab/iso8583/IsoMessage;

    invoke-direct {v0}, Lcom/solab/iso8583/IsoMessage;-><init>()V

    .line 61
    .local v0, "isoMessage":Lcom/solab/iso8583/IsoMessage;
    new-instance v1, Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    invoke-direct {v1}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;-><init>()V

    .line 63
    .local v1, "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    sget-object v2, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$KeyType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 66
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    :pswitch_0
    const-string v2, "9G"

    goto :goto_0

    .line 65
    :pswitch_1
    const-string v2, "9B"

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v2, "9A"

    .line 63
    :goto_0
    nop

    .line 69
    .local v2, "requestCode":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    const-string v4, "0800"

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 71
    nop

    .line 72
    const/4 v3, 0x3

    .line 73
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    .line 74
    sget-object v5, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v7}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v7}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    nop

    .line 73
    const/4 v7, 0x6

    invoke-direct {v4, v5, v6, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 80
    nop

    .line 81
    const/4 v3, 0x7

    .line 82
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    sget-object v5, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getLongDate()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xa

    invoke-direct {v4, v5, v6, v8}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 80
    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 84
    nop

    .line 85
    const/16 v3, 0xb

    .line 86
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    sget-object v5, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 84
    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 88
    nop

    .line 89
    const/16 v3, 0xc

    .line 90
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    sget-object v5, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 88
    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 92
    nop

    .line 93
    const/16 v3, 0xd

    .line 94
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    sget-object v5, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getShortDate()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 92
    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 96
    nop

    .line 97
    const/16 v3, 0x29

    .line 98
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    sget-object v5, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/16 v6, 0x8

    invoke-direct {v4, v5, p1, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 96
    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 101
    sget-object v3, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v3, v0}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->prepareByteStream(Lcom/solab/iso8583/IsoMessage;)[B

    move-result-object v3

    .line 103
    .local v3, "messageBytes":[B
    iget-object v4, p2, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->requestHandler:Lcom/danbamitale/epmslib/comms/SocketRequest;

    invoke-virtual {v4, p3, v3}, Lcom/danbamitale/epmslib/comms/SocketRequest;->send(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "response":Ljava/lang/String;
    sget-object v5, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v5, p3, v4}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->processISOBitStreamWithJ8583(Landroid/content/Context;Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v5

    .line 107
    .local v5, "parsedResponse":Lcom/solab/iso8583/IsoMessage;
    const/16 v6, 0x35

    invoke-virtual {v5, v6}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final parseField62(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 12
    .param p1, "field62String"    # Ljava/lang/String;

    .line 29
    new-instance v11, Lcom/danbamitale/epmslib/entities/ConfigData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/danbamitale/epmslib/entities/ConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .local v0, "configData":Lcom/danbamitale/epmslib/entities/ConfigData;
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_CALL_HOME_TIME()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 32
    sget-object v2, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_CARD_ACCEPTOR_ID_CODE()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 31
    nop

    .line 33
    sget-object v2, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_COUNTRY_CODE()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 31
    nop

    .line 34
    sget-object v2, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_EPMS_DATE_TIME()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 31
    nop

    .line 35
    sget-object v2, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_CURRENCY_CODE()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 31
    nop

    .line 36
    sget-object v2, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_MERCHANT_CATEGORY_CODE()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 31
    nop

    .line 37
    sget-object v2, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_MERCHANT_NAME_LOCATION()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 31
    nop

    .line 38
    sget-object v2, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_TIMEOUT()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    .line 31
    nop

    .line 30
    nop

    .line 41
    .local v1, "responseDataCodes":[Ljava/lang/String;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    .line 42
    .local v4, "dataCode":Ljava/lang/String;
    sget-object v5, Lcom/danbamitale/epmslib/utils/Constants;->INSTANCE:Lcom/danbamitale/epmslib/utils/Constants;

    invoke-virtual {v5, v4, p1}, Lcom/danbamitale/epmslib/utils/Constants;->getDownloadParameterManagementData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "data":Ljava/lang/String;
    nop

    .line 44
    sget-object v6, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_CALL_HOME_TIME()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/entities/ConfigData;->setCallHomeTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 45
    :cond_0
    sget-object v6, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_CARD_ACCEPTOR_ID_CODE()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/entities/ConfigData;->setCardAcceptorIdCode(Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_1
    sget-object v6, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_COUNTRY_CODE()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/entities/ConfigData;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_2
    sget-object v6, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_EPMS_DATE_TIME()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/entities/ConfigData;->setEpmsDateTime(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :cond_3
    sget-object v6, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_CURRENCY_CODE()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/entities/ConfigData;->setCurrencyCode(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_4
    sget-object v6, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_MERCHANT_CATEGORY_CODE()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/entities/ConfigData;->setMerchantCategoryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_5
    sget-object v6, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_MERCHANT_NAME_LOCATION()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/entities/ConfigData;->setMerchantNameLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_6
    sget-object v6, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;->getTAG_LEN_TIMEOUT()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/entities/ConfigData;->setHostTimeOut(Ljava/lang/String;)V

    .line 41
    .end local v4    # "dataCode":Ljava/lang/String;
    .end local v5    # "data":Ljava/lang/String;
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 55
    :cond_8
    return-object v0
.end method

.method private final sendNetworkManagementRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "terminalID"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "field62Data"    # Ljava/lang/String;
    .param p5, "transactionCode"    # Ljava/lang/String;
    .param p6, "responseDataIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Single<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    new-instance v8, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda3;

    move-object v0, v8

    move-object v1, p5

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p0

    move-object v6, p1

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;I)V

    invoke-static {v8}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    .line 185
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "fromCallable {\n         \u2026Schedulers.computation())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method static synthetic sendNetworkManagementRequest$default(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 117
    const/16 p6, 0x3e

    move v6, p6

    goto :goto_0

    .line 111
    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->sendNetworkManagementRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private static final sendNetworkManagementRequest$lambda$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;I)Ljava/lang/String;
    .locals 18
    .param p0, "$transactionCode"    # Ljava/lang/String;
    .param p1, "$terminalID"    # Ljava/lang/String;
    .param p2, "$field62Data"    # Ljava/lang/String;
    .param p3, "$sessionKey"    # Ljava/lang/String;
    .param p4, "this$0"    # Lcom/danbamitale/epmslib/processors/TerminalConfigurator;
    .param p5, "$context"    # Landroid/content/Context;
    .param p6, "$responseDataIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "$transactionCode"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$terminalID"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$field62Data"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "this$0"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v6, Lcom/solab/iso8583/IsoMessage;

    invoke-direct {v6}, Lcom/solab/iso8583/IsoMessage;-><init>()V

    .line 121
    .local v6, "isoMessage":Lcom/solab/iso8583/IsoMessage;
    new-instance v7, Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    invoke-direct {v7}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;-><init>()V

    .line 123
    .local v7, "timeMgr":Lcom/danbamitale/epmslib/utils/IsoTimeManager;
    const/16 v8, 0x10

    invoke-static {v8}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v8

    const-string v9, "0800"

    invoke-static {v9, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 125
    nop

    .line 126
    nop

    .line 127
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    .line 128
    sget-object v9, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v11}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v11}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 130
    nop

    .line 127
    const/4 v11, 0x6

    invoke-direct {v8, v9, v10, v11}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 125
    const/4 v9, 0x3

    invoke-virtual {v6, v9, v8}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 134
    nop

    .line 135
    nop

    .line 136
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    sget-object v9, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v7}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getLongDate()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0xa

    invoke-direct {v8, v9, v10, v12}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 134
    const/4 v9, 0x7

    invoke-virtual {v6, v9, v8}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 138
    nop

    .line 139
    nop

    .line 140
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    sget-object v9, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v7}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v11}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 138
    const/16 v9, 0xb

    invoke-virtual {v6, v9, v8}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 142
    nop

    .line 143
    nop

    .line 144
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    sget-object v9, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v7}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v11}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 142
    const/16 v9, 0xc

    invoke-virtual {v6, v9, v8}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 146
    nop

    .line 147
    nop

    .line 148
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    sget-object v9, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v7}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getShortDate()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-direct {v8, v9, v10, v11}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 146
    const/16 v9, 0xd

    invoke-virtual {v6, v9, v8}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 150
    nop

    .line 151
    nop

    .line 152
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    sget-object v9, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/16 v10, 0x8

    invoke-direct {v8, v9, v1, v10}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 150
    const/16 v9, 0x29

    invoke-virtual {v6, v9, v8}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 154
    nop

    .line 155
    nop

    .line 156
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    sget-object v9, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    invoke-direct {v8, v9, v2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    .line 154
    const/16 v9, 0x3e

    invoke-virtual {v6, v9, v8}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 159
    sget-object v8, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v8, v6}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->logIsoMessage(Lcom/solab/iso8583/IsoMessage;)V

    .line 160
    if-eqz v3, :cond_6

    .line 161
    nop

    .line 162
    nop

    .line 163
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    sget-object v9, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const-string v10, ""

    const/16 v11, 0x40

    invoke-direct {v8, v9, v10, v11}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    .line 161
    invoke-virtual {v6, v11, v8}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 165
    invoke-virtual {v6}, Lcom/solab/iso8583/IsoMessage;->writeData()[B

    move-result-object v8

    const-string v9, "isoMessage.writeData()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v8, v9

    .local v8, "$this$trim$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 398
    .local v9, "$i$f$trim":I
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    .local v10, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 399
    .local v11, "$i$f$trim":I
    const/4 v12, 0x0

    .line 400
    .local v12, "startIndex$iv$iv":I
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 401
    .local v13, "endIndex$iv$iv":I
    const/4 v15, 0x0

    .line 403
    .local v15, "startFound$iv$iv":Z
    :goto_0
    if-gt v12, v13, :cond_5

    .line 404
    if-nez v15, :cond_0

    move/from16 v16, v12

    goto :goto_1

    :cond_0
    move/from16 v16, v13

    :goto_1
    move/from16 v17, v16

    .line 405
    .local v17, "index$iv$iv":I
    move/from16 v14, v17

    .end local v17    # "index$iv$iv":I
    .local v14, "index$iv$iv":I
    invoke-interface {v10, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "it":C
    const/16 v17, 0x0

    .line 165
    .local v17, "$i$a$-trim-TerminalConfigurator$sendNetworkManagementRequest$1$isoMsgByteArray$messageString$1":I
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 405
    .end local v0    # "it":C
    .end local v17    # "$i$a$-trim-TerminalConfigurator$sendNetworkManagementRequest$1$isoMsgByteArray$messageString$1":I
    :goto_2
    move v0, v1

    .line 407
    .local v0, "match$iv$iv":Z
    if-nez v15, :cond_3

    .line 408
    if-nez v0, :cond_2

    .line 409
    const/4 v15, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 411
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    .line 413
    :cond_3
    if-nez v0, :cond_4

    .line 414
    goto :goto_3

    :cond_4
    add-int/lit8 v13, v13, -0x1

    .line 416
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .end local v0    # "match$iv$iv":Z
    .end local v14    # "index$iv$iv":I
    goto :goto_0

    .line 420
    :cond_5
    :goto_3
    add-int/lit8 v0, v13, 0x1

    invoke-interface {v10, v12, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 398
    .end local v10    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v11    # "$i$f$trim":I
    .end local v12    # "startIndex$iv$iv":I
    .end local v13    # "endIndex$iv$iv":I
    .end local v15    # "startFound$iv$iv":Z
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .end local v8    # "$this$trim$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trim":I
    nop

    .line 166
    .local v0, "messageString":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->generateHash256Value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "hash":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "this as java.lang.String).toUpperCase()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    sget-object v8, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    const-string v10, "forName(charsetName)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    const-string/jumbo v10, "this as java.lang.String).getBytes(charset)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->prepareByteStream([B)[B

    move-result-object v0

    .end local v0    # "messageString":Ljava/lang/String;
    .end local v1    # "hash":Ljava/lang/String;
    goto :goto_4

    .line 171
    :cond_6
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v0, v6}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->prepareByteStream(Lcom/solab/iso8583/IsoMessage;)[B

    move-result-object v0

    .line 160
    :goto_4
    nop

    .line 174
    .local v0, "isoMsgByteArray":[B
    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v1, v6}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->logIsoMessage(Lcom/solab/iso8583/IsoMessage;)V

    .line 175
    iget-object v1, v4, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->requestHandler:Lcom/danbamitale/epmslib/comms/SocketRequest;

    invoke-virtual {v1, v5, v0}, Lcom/danbamitale/epmslib/comms/SocketRequest;->send(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "response":Ljava/lang/String;
    sget-object v8, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-virtual {v8, v5, v1}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->processISOBitStreamWithJ8583(Landroid/content/Context;Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v8

    .line 179
    .local v8, "parsedResponse":Lcom/solab/iso8583/IsoMessage;
    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 180
    .local v9, "responseCode":Ljava/lang/String;
    const-string v10, "00"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 184
    move/from16 v10, p6

    invoke-virtual {v8, v10}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    return-object v11

    .line 181
    :cond_7
    move/from16 v10, p6

    new-instance v11, Ljava/lang/Exception;

    sget-object v12, Lcom/danbamitale/epmslib/utils/Constants;->INSTANCE:Lcom/danbamitale/epmslib/utils/Constants;

    const-string/jumbo v13, "responseCode"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lcom/danbamitale/epmslib/utils/Constants;->getResponseMessageFromCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
.end method


# virtual methods
.method public final doNetworkParamDownload(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p3, "terminalID"    # Ljava/lang/String;
    .param p4, "sessionKey"    # Ljava/lang/String;
    .param p5, "terminalSerial"    # Ljava/lang/String;
    .param p6, "responseDataIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/danbamitale/epmslib/entities/TransactionType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Single<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transactionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalID"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalSerial"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p5, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "01%03d%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "format(format, *args)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .local v6, "field62String":Ljava/lang/String;
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 215
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionType;->getCode()Ljava/lang/String;

    move-result-object v7

    .line 216
    nop

    .line 210
    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->sendNetworkManagementRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final doNetworkParamDownloadExtended(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p3, "terminalID"    # Ljava/lang/String;
    .param p4, "sessionKey"    # Ljava/lang/String;
    .param p5, "field62TlvData"    # Ljava/lang/String;
    .param p6, "responseDataIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/danbamitale/epmslib/entities/TransactionType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Single<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transactionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalID"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field62TlvData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionType;->getCode()Ljava/lang/String;

    move-result-object v6

    .line 245
    nop

    .line 239
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->sendNetworkManagementRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final downloadNibssAID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "terminalID"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "terminalSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/NibssAID;",
            ">;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalSerial"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    nop

    .line 343
    nop

    .line 344
    sget-object v3, Lcom/danbamitale/epmslib/entities/TransactionType;->EMV_APPLICATION_AID_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 348
    nop

    .line 342
    const/16 v7, 0x3f

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->doNetworkParamDownload(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object v0

    .line 349
    sget-object v1, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;->INSTANCE:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "doNetworkParamDownload(\n\u2026seNibssResponse(it)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    return-object v0
.end method

.method public final downloadNibssCAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "terminalID"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "terminalSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/NibssCA;",
            ">;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalSerial"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    nop

    .line 318
    nop

    .line 319
    sget-object v3, Lcom/danbamitale/epmslib/entities/TransactionType;->CA_PUBLIC_KEY_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 320
    nop

    .line 321
    nop

    .line 322
    nop

    .line 323
    nop

    .line 317
    const/16 v7, 0x3f

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->doNetworkParamDownload(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object v0

    .line 324
    sget-object v1, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssCAPK$1;->INSTANCE:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssCAPK$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "doNetworkParamDownload(\n\u2026seNibssResponse(it)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    return-object v0
.end method

.method public final downloadNibssKeys(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "terminalID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/danbamitale/epmslib/entities/KeyHolder;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda2;-><init>(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    .line 276
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "fromCallable {\n         \u2026Schedulers.computation())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final downloadTerminalParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "terminalID"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "terminalSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/danbamitale/epmslib/entities/ConfigData;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalSerial"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    nop

    .line 293
    nop

    .line 294
    sget-object v3, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_PARAMETER_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 295
    nop

    .line 296
    nop

    .line 297
    nop

    .line 298
    nop

    .line 292
    const/16 v7, 0x3e

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->doNetworkParamDownload(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadTerminalParameters$1;

    invoke-direct {v1, p0}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadTerminalParameters$1;-><init>(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "fun downloadTerminalPara\u2026   parseField62(it)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    return-object v0
.end method

.method public final nibssCallHome(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "terminalID"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "terminalSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalSerial"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    nop

    .line 368
    nop

    .line 369
    sget-object v3, Lcom/danbamitale/epmslib/entities/TransactionType;->CALL_HOME:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 367
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v9}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->doNetworkParamDownload$default(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 373
    return-object v0
.end method

.method public final nibssEOD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "terminalID"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "terminalSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "terminalSerial"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    nop

    .line 390
    nop

    .line 391
    sget-object v3, Lcom/danbamitale/epmslib/entities/TransactionType;->DAILY_TRANSACTION_REPORT_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 392
    nop

    .line 393
    nop

    .line 394
    nop

    .line 389
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v9}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->doNetworkParamDownload$default(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 395
    return-object v0
.end method
