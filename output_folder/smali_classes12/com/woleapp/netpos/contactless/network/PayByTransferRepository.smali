.class public final Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;
.super Ljava/lang/Object;
.source "PayByTransferRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\"\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\"\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\"\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;",
        "",
        "payByTransferService",
        "Lcom/woleapp/netpos/contactless/network/PayByTransferService;",
        "providusMerchantsAccountService",
        "Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;",
        "fcmbMerchantsAccountService",
        "Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;",
        "(Lcom/woleapp/netpos/contactless/network/PayByTransferService;Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;)V",
        "getFcmbMerchantDetails",
        "Lio/reactivex/Single;",
        "Lretrofit2/Response;",
        "Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;",
        "token",
        "",
        "netPlusPayMid",
        "getMerchantDetails",
        "getProvidusMerchantDetails",
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
.field private final fcmbMerchantsAccountService:Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;

.field private final payByTransferService:Lcom/woleapp/netpos/contactless/network/PayByTransferService;

.field private final providusMerchantsAccountService:Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/PayByTransferService;Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;)V
    .locals 1
    .param p1, "payByTransferService"    # Lcom/woleapp/netpos/contactless/network/PayByTransferService;
    .param p2, "providusMerchantsAccountService"    # Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;
    .param p3, "fcmbMerchantsAccountService"    # Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "payByTransferService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providusMerchantsAccountService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fcmbMerchantsAccountService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->payByTransferService:Lcom/woleapp/netpos/contactless/network/PayByTransferService;

    .line 12
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->providusMerchantsAccountService:Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    .line 13
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->fcmbMerchantsAccountService:Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;

    .line 10
    return-void
.end method


# virtual methods
.method public final getFcmbMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "netPlusPayMid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netPlusPayMid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->fcmbMerchantsAccountService:Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;

    invoke-interface {v0, p1, p2}, Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;->getMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final getMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "netPlusPayMid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netPlusPayMid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->payByTransferService:Lcom/woleapp/netpos/contactless/network/PayByTransferService;

    invoke-interface {v0, p1, p2}, Lcom/woleapp/netpos/contactless/network/PayByTransferService;->getMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final getProvidusMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "netPlusPayMid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netPlusPayMid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->providusMerchantsAccountService:Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    invoke-interface {v0, p1, p2}, Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;->getMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
