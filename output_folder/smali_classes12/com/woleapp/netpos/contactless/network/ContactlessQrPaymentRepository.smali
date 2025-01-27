.class public final Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;
.super Ljava/lang/Object;
.source "ContactlessQrPaymentRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JZ\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nJ\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u00062\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;",
        "",
        "qrPaymentService",
        "Lcom/woleapp/netpos/contactless/network/QrPaymentService;",
        "(Lcom/woleapp/netpos/contactless/network/QrPaymentService;)V",
        "payThroughMPGS",
        "Lio/reactivex/Single;",
        "Lretrofit2/Response;",
        "Lcom/google/gson/JsonObject;",
        "token",
        "",
        "amount",
        "cardno",
        "cvv",
        "expiry",
        "netpluspayMid",
        "netposMid",
        "pin",
        "terminalId",
        "payWithQr",
        "payWithQrRequest",
        "Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;",
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


# instance fields
.field private final qrPaymentService:Lcom/woleapp/netpos/contactless/network/QrPaymentService;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/QrPaymentService;)V
    .locals 1
    .param p1, "qrPaymentService"    # Lcom/woleapp/netpos/contactless/network/QrPaymentService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "qrPaymentService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;->qrPaymentService:Lcom/woleapp/netpos/contactless/network/QrPaymentService;

    .line 9
    return-void
.end method


# virtual methods
.method public final payThroughMPGS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 16
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/String;
    .param p3, "cardno"    # Ljava/lang/String;
    .param p4, "cvv"    # Ljava/lang/String;
    .param p5, "expiry"    # Ljava/lang/String;
    .param p6, "netpluspayMid"    # Ljava/lang/String;
    .param p7, "netposMid"    # Ljava/lang/String;
    .param p8, "pin"    # Ljava/lang/String;
    .param p9, "terminalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "token"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "amount"

    move-object/from16 v11, p2

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cardno"

    move-object/from16 v12, p3

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cvv"

    move-object/from16 v13, p4

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "expiry"

    move-object/from16 v14, p5

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "netpluspayMid"

    move-object/from16 v15, p6

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "netposMid"

    move-object/from16 v10, p7

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pin"

    move-object/from16 v9, p8

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "terminalId"

    move-object/from16 v8, p9

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object/from16 v1, p0

    iget-object v7, v1, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;->qrPaymentService:Lcom/woleapp/netpos/contactless/network/QrPaymentService;

    .line 29
    nop

    .line 30
    new-instance v6, Lcom/woleapp/netpos/contactless/model/PayThroughMPGSRequest;

    .line 31
    nop

    .line 30
    move-object v2, v6

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v1, v6

    move-object/from16 v6, p5

    move-object v11, v7

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/PayThroughMPGSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-interface {v11, v0, v1}, Lcom/woleapp/netpos/contactless/network/QrPaymentService;->payThroughMPGS(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/PayThroughMPGSRequest;)Lio/reactivex/Single;

    move-result-object v1

    .line 33
    return-object v1
.end method

.method public final payWithQr(Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;)Lio/reactivex/Single;
    .locals 1
    .param p1, "payWithQrRequest"    # Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "payWithQrRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;->qrPaymentService:Lcom/woleapp/netpos/contactless/network/QrPaymentService;

    .line 15
    nop

    .line 14
    invoke-interface {v0, p1}, Lcom/woleapp/netpos/contactless/network/QrPaymentService;->payWithQr(Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;)Lio/reactivex/Single;

    move-result-object v0

    .line 16
    return-object v0
.end method
