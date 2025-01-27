.class public final Lcom/woleapp/netpos/contactless/network/Repository;
.super Ljava/lang/Object;
.source "Repository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\r\u001a\u00020\u000eJ\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/Repository;",
        "",
        "qrService",
        "Lcom/woleapp/netpos/contactless/network/QrService;",
        "otpService",
        "Lcom/woleapp/netpos/contactless/network/VerveOtpService;",
        "accountLookUp",
        "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
        "(Lcom/woleapp/netpos/contactless/network/QrService;Lcom/woleapp/netpos/contactless/network/VerveOtpService;Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)V",
        "consummateTransactionBySendingOtp",
        "Lio/reactivex/Single;",
        "Lretrofit2/Response;",
        "Lcom/google/gson/JsonObject;",
        "otpPayLoad",
        "Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;",
        "postScannedQrRequestToServer",
        "qrData",
        "Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;",
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
.field private final accountLookUp:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

.field private final otpService:Lcom/woleapp/netpos/contactless/network/VerveOtpService;

.field private final qrService:Lcom/woleapp/netpos/contactless/network/QrService;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/QrService;Lcom/woleapp/netpos/contactless/network/VerveOtpService;Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)V
    .locals 1
    .param p1, "qrService"    # Lcom/woleapp/netpos/contactless/network/QrService;
    .param p2, "otpService"    # Lcom/woleapp/netpos/contactless/network/VerveOtpService;
    .param p3, "accountLookUp"    # Lcom/woleapp/netpos/contactless/network/AccountLookUpService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "qrService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountLookUp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/Repository;->qrService:Lcom/woleapp/netpos/contactless/network/QrService;

    .line 14
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/network/Repository;->otpService:Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    .line 15
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/network/Repository;->accountLookUp:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    .line 12
    return-void
.end method


# virtual methods
.method public final consummateTransactionBySendingOtp(Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;)Lio/reactivex/Single;
    .locals 1
    .param p1, "otpPayLoad"    # Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    const-string v0, "otpPayLoad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/Repository;->otpService:Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    invoke-interface {v0, p1}, Lcom/woleapp/netpos/contactless/network/VerveOtpService;->sendOtpForVerveCard(Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final postScannedQrRequestToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)Lio/reactivex/Single;
    .locals 1
    .param p1, "qrData"    # Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    const-string v0, "qrData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/Repository;->qrService:Lcom/woleapp/netpos/contactless/network/QrService;

    invoke-interface {v0, p1}, Lcom/woleapp/netpos/contactless/network/QrService;->sendQrToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
