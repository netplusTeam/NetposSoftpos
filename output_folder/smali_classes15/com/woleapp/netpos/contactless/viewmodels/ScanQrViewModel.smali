.class public final Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ScanQrViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020\u000bJ\u000e\u0010&\u001a\u00020$2\u0006\u0010\'\u001a\u00020\u000bJ\u000e\u0010(\u001a\u00020$2\u0006\u0010\'\u001a\u00020\u000bJ\u000e\u0010)\u001a\u00020$2\u0006\u0010\'\u001a\u00020\u000bJ\u0008\u0010*\u001a\u00020$H\u0014J\u000e\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020-J\u0008\u0010.\u001a\u0004\u0018\u00010-J\u000e\u0010/\u001a\u00020$2\u0006\u0010,\u001a\u00020-J\u000e\u00100\u001a\u00020$2\u0006\u00101\u001a\u00020\u000bJ\u000e\u00102\u001a\u00020$2\u0006\u00103\u001a\u00020\u000bJ\u000e\u00104\u001a\u00020$2\u0006\u00105\u001a\u00020\rR\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u000f0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u000f0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u000f0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u000f0\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001cR\u001d\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u000f0\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001cR\u001f\u0010!\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u000f0\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001c\u00a8\u00066"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/woleapp/netpos/contactless/network/Repository;",
        "payByTransferRepository",
        "Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/woleapp/netpos/contactless/network/Repository;Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;Lcom/google/gson/Gson;)V",
        "_cardScheme",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "_isVerveCard",
        "",
        "_payByTransfer",
        "Lcom/woleapp/netpos/contactless/util/Resource;",
        "Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;",
        "_sendQrToServerResponse",
        "Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;",
        "_sendQrToServerResponseVerve",
        "Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;",
        "_transactionResponseFromVerve",
        "",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "payByTransfer",
        "Landroidx/lifecycle/LiveData;",
        "getPayByTransfer",
        "()Landroidx/lifecycle/LiveData;",
        "sendQrToServerResponse",
        "getSendQrToServerResponse",
        "sendQrToServerResponseVerve",
        "getSendQrToServerResponseVerve",
        "transactionResponseFromVerve",
        "getTransactionResponseFromVerve",
        "deleteQrPostPayloadFromSharedPrefs",
        "",
        "getCardScheme",
        "getFcmbMerchantDetails",
        "netPlusPayMid",
        "getMerchantDetails",
        "getProvidusMerchantDetails",
        "onCleared",
        "postScannedQrRequestToServer",
        "qrData",
        "Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;",
        "retrieveQrPostPayloadFromSharedPrefs",
        "saveTheQrToSharedPrefs",
        "sendOtpForVerveCard",
        "otp",
        "setCardScheme",
        "cardScheme",
        "setScannedQrIsVerveCard",
        "boolean",
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
.field private final _cardScheme:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _isVerveCard:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _payByTransfer:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _sendQrToServerResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _sendQrToServerResponseVerve:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _transactionResponseFromVerve:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final gson:Lcom/google/gson/Gson;

.field private final payByTransferRepository:Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

.field private final repository:Lcom/woleapp/netpos/contactless/network/Repository;


# direct methods
.method public static synthetic $r8$lambda$2QBQN9YFN_1pI_qOJukp0aSwi1Q(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getProvidusMerchantDetails$lambda-16(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5I-WMPxQ94j0xAjDipb98-7E-jg(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/google/gson/JsonObject;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->sendOtpForVerveCard$lambda-8$lambda-7(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/google/gson/JsonObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N3vM7hfGlqTU3TEU3AuGkCzE8c0(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getFcmbMerchantDetails$lambda-17(Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QFL8iLWexAknrxkco1qI6mLqo4w(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getMerchantDetails$lambda-9(Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TCdbwW9OdmUVfu8FP3XuZSrZPbE(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getMerchantDetails$lambda-12(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZICV9XVj803hs7z-94yttQIs2I(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/google/gson/JsonObject;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->postScannedQrRequestToServer$lambda-3(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/google/gson/JsonObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNt56tmjk6MlNPlHfWqQnn-_svo(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getFcmbMerchantDetails$lambda-20(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m9ygv9der3im2yn_25wDZVxJMX4(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->sendOtpForVerveCard$lambda-8$lambda-4(Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qRXt-bMrV2Rm8c-h7QY8U5mVj1M(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getProvidusMerchantDetails$lambda-13(Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yIrL8zzrTtqkZ_BRvzNnkcdHP0I(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->postScannedQrRequestToServer$lambda-0(Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/Repository;Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;Lcom/google/gson/Gson;)V
    .locals 2
    .param p1, "repository"    # Lcom/woleapp/netpos/contactless/network/Repository;
    .param p2, "payByTransferRepository"    # Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;
    .param p3, "gson"    # Lcom/google/gson/Gson;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payByTransferRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->repository:Lcom/woleapp/netpos/contactless/network/Repository;

    .line 28
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->payByTransferRepository:Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

    .line 29
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->gson:Lcom/google/gson/Gson;

    .line 31
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponse:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_isVerveCard:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponseVerve:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_transactionResponseFromVerve:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_cardScheme:Landroidx/lifecycle/MutableLiveData;

    .line 26
    return-void
.end method

.method private static final getFcmbMerchantDetails$lambda-17(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "response"    # Lretrofit2/Response;

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final getFcmbMerchantDetails$lambda-20(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    const/4 v1, 0x0

    .line 225
    .local v1, "$i$a$-let-ScanQrViewModel$getFcmbMerchantDetails$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v3, v0}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 226
    nop

    .line 224
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    .end local v1    # "$i$a$-let-ScanQrViewModel$getFcmbMerchantDetails$2$1":I
    nop

    .line 227
    :cond_0
    if-eqz p2, :cond_2

    move-object v0, p2

    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 228
    .local v1, "$i$a$-let-ScanQrViewModel$getFcmbMerchantDetails$2$2":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "PAY_BY_TRANSFER_ERROR_VP%s"

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    .line 230
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 231
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->timeOut(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    goto :goto_0

    .line 233
    :cond_1
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    .line 234
    nop

    .line 233
    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    .line 229
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 237
    nop

    .line 227
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-ScanQrViewModel$getFcmbMerchantDetails$2$2":I
    nop

    .line 238
    :cond_2
    return-void
.end method

.method private static final getMerchantDetails$lambda-12(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    const/4 v1, 0x0

    .line 168
    .local v1, "$i$a$-let-ScanQrViewModel$getMerchantDetails$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v3, v0}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 170
    nop

    .line 167
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    .end local v1    # "$i$a$-let-ScanQrViewModel$getMerchantDetails$2$1":I
    nop

    .line 171
    :cond_0
    if-eqz p2, :cond_2

    move-object v0, p2

    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$a$-let-ScanQrViewModel$getMerchantDetails$2$2":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    .line 174
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 175
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->timeOut(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    goto :goto_0

    .line 177
    :cond_1
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    .line 178
    nop

    .line 177
    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    .line 173
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 181
    nop

    .line 171
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-ScanQrViewModel$getMerchantDetails$2$2":I
    nop

    .line 182
    :cond_2
    return-void
.end method

.method private static final getMerchantDetails$lambda-9(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "response"    # Lretrofit2/Response;

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final getProvidusMerchantDetails$lambda-13(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "response"    # Lretrofit2/Response;

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final getProvidusMerchantDetails$lambda-16(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    const/4 v1, 0x0

    .line 197
    .local v1, "$i$a$-let-ScanQrViewModel$getProvidusMerchantDetails$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v3, v0}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 198
    nop

    .line 196
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;
    .end local v1    # "$i$a$-let-ScanQrViewModel$getProvidusMerchantDetails$2$1":I
    nop

    .line 199
    :cond_0
    if-eqz p2, :cond_2

    move-object v0, p2

    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$a$-let-ScanQrViewModel$getProvidusMerchantDetails$2$2":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "PAY_BY_TRANSFER_ERROR_VP%s"

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    .line 202
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 203
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->timeOut(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    goto :goto_0

    .line 205
    :cond_1
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    .line 206
    nop

    .line 205
    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    .line 201
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 209
    nop

    .line 199
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-ScanQrViewModel$getProvidusMerchantDetails$2$2":I
    nop

    .line 210
    :cond_2
    return-void
.end method

.method private static final postScannedQrRequestToServer$lambda-0(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "it"    # Lretrofit2/Response;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final postScannedQrRequestToServer$lambda-3(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/google/gson/JsonObject;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .param p1, "postQrResponse"    # Lcom/google/gson/JsonObject;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    move-object v2, p1

    .local v2, "it":Lcom/google/gson/JsonObject;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$a$-let-ScanQrViewModel$postScannedQrRequestToServer$2$1":I
    const-string v4, "TermUrl"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->gson:Lcom/google/gson/Gson;

    .line 69
    move-object v5, v2

    check-cast v5, Lcom/google/gson/JsonElement;

    const-class v6, Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;

    .line 68
    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 72
    :cond_0
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.get(\"status\").asString"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "failed"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 73
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->gson:Lcom/google/gson/Gson;

    move-object v5, v2

    check-cast v5, Lcom/google/gson/JsonElement;

    const-class v6, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 75
    :cond_1
    move-object v4, v1

    .line 67
    :goto_0
    nop

    .line 77
    .local v4, "serverResponse":Ljava/lang/Object;
    instance-of v5, v4, Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;

    if-eqz v5, :cond_2

    .line 78
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v6, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v6, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :cond_2
    instance-of v5, v4, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;

    if-eqz v5, :cond_3

    .line 80
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponseVerve:Landroidx/lifecycle/MutableLiveData;

    .line 81
    sget-object v6, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v6, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    :cond_3
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_isVerveCard:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponseVerve:Landroidx/lifecycle/MutableLiveData;

    .line 85
    sget-object v6, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v6, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_4
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponse:Landroidx/lifecycle/MutableLiveData;

    .line 88
    sget-object v6, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v6, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v6

    .line 87
    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 91
    :goto_1
    nop

    .line 66
    .end local v2    # "it":Lcom/google/gson/JsonObject;
    .end local v3    # "$i$a$-let-ScanQrViewModel$postScannedQrRequestToServer$2$1":I
    .end local v4    # "serverResponse":Ljava/lang/Object;
    nop

    .line 92
    :cond_5
    if-eqz p2, :cond_9

    move-object v2, p2

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 93
    .local v3, "$i$a$-let-ScanQrViewModel$postScannedQrRequestToServer$2$2":I
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_isVerveCard:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponseVerve:Landroidx/lifecycle/MutableLiveData;

    .line 95
    instance-of v4, v2, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_6

    .line 96
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->timeOut(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    goto :goto_2

    .line 98
    :cond_6
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    .line 99
    nop

    .line 98
    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    .line 94
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponse:Landroidx/lifecycle/MutableLiveData;

    .line 104
    instance-of v4, v2, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_8

    .line 105
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->timeOut(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    goto :goto_3

    .line 107
    :cond_8
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    .line 108
    nop

    .line 107
    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    .line 103
    :goto_3
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 112
    :goto_4
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    nop

    .line 92
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-ScanQrViewModel$postScannedQrRequestToServer$2$2":I
    nop

    .line 114
    :cond_9
    return-void
.end method

.method private static final sendOtpForVerveCard$lambda-8$lambda-4(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "response"    # Lretrofit2/Response;

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final sendOtpForVerveCard$lambda-8$lambda-7(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/google/gson/JsonObject;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .param p1, "data"    # Lcom/google/gson/JsonObject;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_1

    move-object v0, p1

    .local v0, "transResp":Lcom/google/gson/JsonObject;
    const/4 v1, 0x0

    .line 133
    .local v1, "$i$a$-let-ScanQrViewModel$sendOtpForVerveCard$1$2$1":I
    const-string v2, "narration"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->gson:Lcom/google/gson/Gson;

    move-object v3, v0

    check-cast v3, Lcom/google/gson/JsonElement;

    const-class v4, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->gson:Lcom/google/gson/Gson;

    move-object v3, v0

    check-cast v3, Lcom/google/gson/JsonElement;

    const-class v4, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 133
    :goto_0
    nop

    .line 138
    .local v2, "transResponse":Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_transactionResponseFromVerve:Landroidx/lifecycle/MutableLiveData;

    .line 139
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    .line 138
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 140
    nop

    .line 132
    .end local v0    # "transResp":Lcom/google/gson/JsonObject;
    .end local v1    # "$i$a$-let-ScanQrViewModel$sendOtpForVerveCard$1$2$1":I
    .end local v2    # "transResponse":Landroid/os/Parcelable;
    nop

    .line 141
    :cond_1
    if-eqz p2, :cond_3

    move-object v0, p2

    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 142
    .local v1, "$i$a$-let-ScanQrViewModel$sendOtpForVerveCard$1$2$2":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ERROR_FROM_VP%s"

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_transactionResponseFromVerve:Landroidx/lifecycle/MutableLiveData;

    .line 144
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 145
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->timeOut(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    goto :goto_1

    .line 147
    :cond_2
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    .line 148
    nop

    .line 147
    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v3

    .line 143
    :goto_1
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 151
    nop

    .line 141
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-ScanQrViewModel$sendOtpForVerveCard$1$2$2":I
    nop

    .line 152
    :cond_3
    return-void
.end method


# virtual methods
.method public final deleteQrPostPayloadFromSharedPrefs()V
    .locals 1

    .line 247
    const-string v0, "QR_TRANSACTION_POST_REQUEST_PAYLOAD"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public final getCardScheme()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_cardScheme:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getFcmbMerchantDetails(Ljava/lang/String;)V
    .locals 3
    .param p1, "netPlusPayMid"    # Ljava/lang/String;

    const-string v0, "netPlusPayMid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 217
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->payByTransferRepository:Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getPAY_BY_TRANSFER_BEARER_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->getFcmbMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 218
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 219
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda0;-><init>()V

    .line 220
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 223
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 240
    return-void
.end method

.method public final getMerchantDetails(Ljava/lang/String;)V
    .locals 3
    .param p1, "netPlusPayMid"    # Ljava/lang/String;

    const-string v0, "netPlusPayMid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 160
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->payByTransferRepository:Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getPAY_BY_TRANSFER_BEARER_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->getMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 161
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 162
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda8;-><init>()V

    .line 163
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 166
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda9;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 184
    return-void
.end method

.method public final getPayByTransfer()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getProvidusMerchantDetails(Ljava/lang/String;)V
    .locals 3
    .param p1, "netPlusPayMid"    # Ljava/lang/String;

    const-string v0, "netPlusPayMid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_payByTransfer:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 189
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->payByTransferRepository:Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getPAY_BY_TRANSFER_BEARER_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;->getProvidusMerchantDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 190
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 191
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda6;-><init>()V

    .line 192
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 195
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 212
    return-void
.end method

.method public final getSendQrToServerResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSendQrToServerResponseVerve()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponseVerve:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getTransactionResponseFromVerve()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_transactionResponseFromVerve:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 270
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 271
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 272
    return-void
.end method

.method public final postScannedQrRequestToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V
    .locals 3
    .param p1, "qrData"    # Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    const-string v0, "qrData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_isVerveCard:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponseVerve:Landroidx/lifecycle/MutableLiveData;

    .line 54
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v2, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_sendQrToServerResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v2, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 59
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->repository:Lcom/woleapp/netpos/contactless/network/Repository;

    invoke-virtual {v1, p1}, Lcom/woleapp/netpos/contactless/network/Repository;->postScannedQrRequestToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)Lio/reactivex/Single;

    move-result-object v1

    .line 60
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 61
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda4;-><init>()V

    .line 62
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 65
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 116
    return-void
.end method

.method public final retrieveQrPostPayloadFromSharedPrefs()Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    .locals 3

    .line 255
    const-string v0, "QR_TRANSACTION_POST_REQUEST_PAYLOAD"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "payload":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    goto :goto_2

    .line 259
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    .line 256
    :goto_2
    return-object v1
.end method

.method public final saveTheQrToSharedPrefs(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V
    .locals 2
    .param p1, "qrData"    # Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    const-string v0, "qrData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_TRANSACTION_POST_REQUEST_PAYLOAD"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public final sendOtpForVerveCard(Ljava/lang/String;)V
    .locals 7
    .param p1, "otp"    # Ljava/lang/String;

    const-string v0, "otp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_transactionResponseFromVerve:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getSendQrToServerResponseVerve()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/util/Resource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;

    if-eqz v0, :cond_0

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$a$-let-ScanQrViewModel$sendOtpForVerveCard$1":I
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;->getTransId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->stringToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    nop

    .line 123
    .local v3, "otpDetails":Ljava/lang/String;
    new-instance v4, Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;

    const-string v5, "\\n"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v2, v6, v2}, Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v4

    .line 124
    .local v2, "otpPayLoad":Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 125
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->repository:Lcom/woleapp/netpos/contactless/network/Repository;

    invoke-virtual {v5, v2}, Lcom/woleapp/netpos/contactless/network/Repository;->consummateTransactionBySendingOtp(Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;)Lio/reactivex/Single;

    move-result-object v5

    .line 126
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    .line 127
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    new-instance v6, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda2;-><init>()V

    .line 128
    invoke-virtual {v5, v6}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v5

    .line 131
    new-instance v6, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;)V

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 120
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;
    .end local v1    # "$i$a$-let-ScanQrViewModel$sendOtpForVerveCard$1":I
    .end local v2    # "otpPayLoad":Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;
    .end local v3    # "otpDetails":Ljava/lang/String;
    :cond_0
    nop

    .line 155
    return-void
.end method

.method public final setCardScheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "cardScheme"    # Ljava/lang/String;

    const-string v0, "cardScheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_cardScheme:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public final setScannedQrIsVerveCard(Z)V
    .locals 2
    .param p1, "boolean"    # Z

    .line 251
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->_isVerveCard:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 252
    return-void
.end method
