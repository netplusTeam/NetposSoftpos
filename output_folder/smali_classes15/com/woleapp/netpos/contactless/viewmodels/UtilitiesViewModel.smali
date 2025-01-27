.class public final Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "UtilitiesViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010K\u001a\u00020LJ\u0006\u0010M\u001a\u00020LJ\u0018\u0010N\u001a\u00020L2\u0006\u0010O\u001a\u00020P2\u0008\u0008\u0002\u0010Q\u001a\u00020RJ\u0008\u0010S\u001a\u00020LH\u0014J\u0010\u0010T\u001a\u00020L2\u0006\u0010O\u001a\u00020PH\u0002J\u0010\u0010U\u001a\u00020L2\u0006\u0010O\u001a\u00020PH\u0002J\u0010\u0010V\u001a\u00020L2\u0006\u0010O\u001a\u00020PH\u0002J\u000e\u0010W\u001a\u00020L2\u0006\u0010X\u001a\u00020\nJ\u000e\u0010Y\u001a\u00020L2\u0006\u0010Z\u001a\u00020/J\u0010\u0010[\u001a\u00020L2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\nJ\u000e\u0010\\\u001a\u00020L2\u0006\u0010]\u001a\u00020\nJ\u000e\u0010^\u001a\u00020L2\u0006\u0010G\u001a\u00020HJ\u000e\u0010_\u001a\u00020L2\u0006\u0010`\u001a\u00020\nJ\u000e\u0010a\u001a\u00020L2\u0006\u0010b\u001a\u00020\nJ\u000e\u0010c\u001a\u00020L2\u0006\u0010d\u001a\u00020\nJ\u000e\u0010e\u001a\u00020L2\u0006\u0010f\u001a\u00020\nJ\u000e\u0010g\u001a\u00020L2\u0006\u0010h\u001a\u00020\nJ\u0006\u0010i\u001a\u00020LJ\u0006\u0010j\u001a\u00020LJ\u0008\u0010k\u001a\u00020LH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0010\u0012\u000c\u0012\n #*\u0004\u0018\u00010\n0\n0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070+8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00100\u001a\u0008\u0012\u0004\u0012\u0002010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u00102\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070+8F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010-R!\u00104\u001a\u0008\u0012\u0004\u0012\u0002050\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010\u0015\u001a\u0004\u00086\u0010\u0013R\u000e\u00108\u001a\u000209X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010-R\u001d\u0010=\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070+8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010-R\u001d\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070+8F\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010-R\u001d\u0010A\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070+8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010-R\u001d\u0010C\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010-R\u001d\u0010E\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070+8F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010-R\u000e\u0010G\u001a\u00020HX\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00070+8F\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010-\u00a8\u0006l"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_billResponse",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;",
        "_initiateBillsPayment",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "",
        "_message",
        "",
        "_result",
        "Lcom/woleapp/netpos/contactless/model/NetworkResponse;",
        "_shouldRefreshNibssKeys",
        "",
        "_showPrintDialog",
        "_showPrinterError",
        "_showProgressMutableLiveData",
        "get_showProgressMutableLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "_showProgressMutableLiveData$delegate",
        "Lkotlin/Lazy;",
        "_smsSent",
        "_validateResponse",
        "amountLong",
        "cardData",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "getCardData",
        "()Lcom/danbamitale/epmslib/entities/CardData;",
        "setCardData",
        "(Lcom/danbamitale/epmslib/entities/CardData;)V",
        "cardScheme",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "customerName",
        "kotlin.jvm.PlatformType",
        "errorResponse",
        "Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;",
        "gson",
        "Lcom/google/gson/Gson;",
        "hostConfig",
        "Lcom/danbamitale/epmslib/entities/HostConfig;",
        "initiateBillsPayment",
        "Landroidx/lifecycle/LiveData;",
        "getInitiateBillsPayment",
        "()Landroidx/lifecycle/LiveData;",
        "isoAccountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "lastTransactionResponse",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "message",
        "getMessage",
        "payloadMutableLiveData",
        "Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;",
        "getPayloadMutableLiveData",
        "payloadMutableLiveData$delegate",
        "processor",
        "Lcom/danbamitale/epmslib/processors/TransactionProcessor;",
        "remark",
        "result",
        "getResult",
        "shouldRefreshNibssKeys",
        "getShouldRefreshNibssKeys",
        "showPrintDialog",
        "getShowPrintDialog",
        "showPrinterError",
        "getShowPrinterError",
        "showProgress",
        "getShowProgress",
        "smsSent",
        "getSmsSent",
        "stormUtilitiesApiService",
        "Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;",
        "validateBillResponse",
        "getValidateBillResponse",
        "checkHasSufficientBalance",
        "",
        "initiatePayment",
        "makePayment",
        "context",
        "Landroid/content/Context;",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "onCleared",
        "payBill",
        "printReceipt",
        "reverseTransaction",
        "sendSmS",
        "number",
        "setAccountType",
        "accountType",
        "setCardScheme",
        "setCustomerName",
        "name",
        "setStormUtilitiesApiService",
        "setUtilityBillType",
        "utilityBillType",
        "setUtilityPackage",
        "utilityPackage",
        "setUtilityProvider",
        "utilityProvider",
        "setUtilityService",
        "utilityService",
        "setUtilityServiceType",
        "utilityServiceType",
        "showReceiptDialog",
        "validateUtilityBill",
        "verifyDestinationAccount",
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
.field private final _billResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final _initiateBillsPayment:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _message:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _result:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _showPrintDialog:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _showPrinterError:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _showProgressMutableLiveData$delegate:Lkotlin/Lazy;

.field private final _smsSent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _validateResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private amountLong:J

.field private cardData:Lcom/danbamitale/epmslib/entities/CardData;

.field private cardScheme:Ljava/lang/String;

.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final customerName:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorResponse:Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

.field private final gson:Lcom/google/gson/Gson;

.field private final hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

.field private isoAccountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field private final lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final payloadMutableLiveData$delegate:Lkotlin/Lazy;

.field private final processor:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

.field private remark:Ljava/lang/String;

.field private final result:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final showProgress:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private stormUtilitiesApiService:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;


# direct methods
.method public static synthetic $r8$lambda$8fNLa6t7C2cey0yA3dvAv9WK-SI(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->reverseTransaction$lambda-16$lambda-12(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9y2X3vMjE66nwobeX5e1KuZerNM(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->verifyDestinationAccount$lambda-5(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D-zioxWgbSBltYKrvXI0tIYGcb4(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;Landroid/content/Context;Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->payBill$lambda-11(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;Landroid/content/Context;Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GO-lbrEMAQlO8xEtVwo6l08HogM(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->sendSmS$lambda-25(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IVelKZEU9q3i-LCUStmZlDYXXMY(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->makePayment$lambda-20(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZXR0Ep4cDnyV05sXQEaEDAXN6rM(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->makePayment$lambda-17(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jZzAtWE6Z9gxLAyar4yWTsgxBys(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->payBill$lambda-8(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r8ij9Cck51EDKlwJCd64wGX-8PE(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->reverseTransaction$lambda-16$lambda-15(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->customerName:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_initiateBillsPayment:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->gson:Lcom/google/gson/Gson;

    .line 47
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$payloadMutableLiveData$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$payloadMutableLiveData$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->payloadMutableLiveData$delegate:Lkotlin/Lazy;

    .line 52
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_showProgressMutableLiveData$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Lcom/danbamitale/epmslib/entities/HostConfig;

    .line 59
    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    .line 60
    sget-object v2, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConnectionData()Lcom/danbamitale/epmslib/entities/ConnectionData;

    move-result-object v2

    .line 61
    sget-object v3, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    sget-object v4, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/danbamitale/epmslib/entities/HostConfig;-><init>(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->hostConfig:Lcom/danbamitale/epmslib/entities/HostConfig;

    .line 65
    new-instance v1, Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    invoke-direct {v1, v0}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;-><init>(Lcom/danbamitale/epmslib/entities/HostConfig;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->processor:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;

    .line 71
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_validateResponse:Landroidx/lifecycle/MutableLiveData;

    .line 76
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->showProgress:Landroidx/lifecycle/LiveData;

    .line 77
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    .line 80
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_showPrinterError:Landroidx/lifecycle/MutableLiveData;

    .line 85
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_smsSent:Landroidx/lifecycle/MutableLiveData;

    .line 93
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 98
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    .line 99
    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->result:Landroidx/lifecycle/LiveData;

    .line 101
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_billResponse:Landroidx/lifecycle/MutableLiveData;

    .line 33
    return-void
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public static final synthetic access$get_billResponse$p(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_billResponse:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$get_result$p(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$verifyDestinationAccount(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 33
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->verifyDestinationAccount()V

    return-void
.end method

.method private final get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_showProgressMutableLiveData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static synthetic makePayment$default(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;ILjava/lang/Object;)V
    .locals 0

    .line 349
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->makePayment(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;)V

    return-void
.end method

.method private static final makePayment$lambda-17(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .param p1, "$context"    # Landroid/content/Context;
    .param p2, "it"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "pref_config_data"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 357
    const-string v0, "pref_keyholder"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->customerName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardHolder(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->cardScheme:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->payBill(Landroid/content/Context;)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 368
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v2, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    const-string v3, "Transaction Declined"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->printReceipt(Landroid/content/Context;)V

    .line 372
    :goto_0
    sget-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    .line 373
    invoke-interface {v0, p2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->insertNewTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final makePayment$lambda-20(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .param p1, "t1"    # Ljava/lang/Long;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .local v0, "it":J
    const/4 v2, 0x0

    .line 379
    .local v2, "$i$a$-let-UtilitiesViewModel$makePayment$2$1":I
    nop

    .line 378
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-UtilitiesViewModel$makePayment$2$1":I
    nop

    .line 380
    :cond_0
    if-eqz p2, :cond_2

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 381
    .local v1, "$i$a$-let-UtilitiesViewModel$makePayment$2$2":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v5, "it.localizedMessage ?: \"\""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 382
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 383
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v4, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    const-string v5, "Could Not Make Payment"

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 384
    nop

    .line 380
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-UtilitiesViewModel$makePayment$2$2":I
    nop

    .line 385
    :cond_2
    return-void
.end method

.method private final payBill(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 267
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 269
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " request"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->stormUtilitiesApiService:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;

    if-nez v1, :cond_1

    const-string v1, "stormUtilitiesApiService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;->payBills(Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;)Lio/reactivex/Single;

    move-result-object v1

    .line 271
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 272
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v1

    .line 273
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 274
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "stormUtilitiesApiService\u2026          }\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 307
    return-void
.end method

.method private static final payBill$lambda-11(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;Landroid/content/Context;Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;Ljava/lang/Throwable;)V
    .locals 10
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .param p1, "$utilitiesPayload"    # Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .param p2, "$context"    # Landroid/content/Context;
    .param p3, "t1"    # Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;
    .param p4, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    const/16 v0, 0xa

    const-string v1, "remark"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_7

    move-object v4, p3

    .local v4, "it":Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;
    const/4 v5, 0x0

    .line 276
    .local v5, "$i$a$-let-UtilitiesViewModel$payBill$2$1":I
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->getData()Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    move-result-object v6

    .line 277
    .local v6, "data":Lcom/woleapp/netpos/contactless/model/PayBillResponse;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/PayBillResponse;->getReference()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->remark:Ljava/lang/String;

    if-nez v8, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Payment Success"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "POWER"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 280
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/PayBillResponse;->getToken()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_4

    .line 281
    const-string v7, "Your power payment was successful but no token was generated, please contact support"

    goto :goto_3

    .line 283
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\nMeter Token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/PayBillResponse;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->remark:Ljava/lang/String;

    if-nez v8, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nMeter Token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/PayBillResponse;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 280
    :goto_3
    invoke-virtual {v4, v7}, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->setMessage(Ljava/lang/String;)V

    .line 287
    :cond_6
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    new-instance v8, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v8, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 288
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    new-instance v8, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 289
    invoke-direct {p0, p2}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->printReceipt(Landroid/content/Context;)V

    .line 290
    nop

    .line 275
    .end local v4    # "it":Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;
    .end local v5    # "$i$a$-let-UtilitiesViewModel$payBill$2$1":I
    .end local v6    # "data":Lcom/woleapp/netpos/contactless/model/PayBillResponse;
    nop

    .line 291
    :cond_7
    if-eqz p4, :cond_b

    move-object v4, p4

    .local v4, "it":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 292
    .local v5, "$i$a$-let-UtilitiesViewModel$payBill$2$2":I
    nop

    .line 293
    invoke-static {v4}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->isHttpException(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 294
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 295
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " request failed, reversing transaction \ud83d\ude02"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 296
    invoke-static {v4}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getResponseBody(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "error":Ljava/lang/String;
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->gson:Lcom/google/gson/Gson;

    const-class v8, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "error":Ljava/lang/String;
    check-cast v6, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    goto :goto_5

    .line 299
    :cond_8
    new-instance v6, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    const-string v7, ""

    goto :goto_4

    :cond_9
    const-string v8, "it.localizedMessage ?: \"\""

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    invoke-direct {v6, v7}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;-><init>(Ljava/lang/String;)V

    .line 292
    :goto_5
    iput-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->errorResponse:Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->remark:Ljava/lang/String;

    if-nez v7, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    move-object v3, v7

    :goto_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Payment Failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    invoke-direct {p0, p2}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->reverseTransaction(Landroid/content/Context;)V

    .line 305
    nop

    .line 291
    .end local v4    # "it":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-let-UtilitiesViewModel$payBill$2$2":I
    nop

    .line 306
    :cond_b
    return-void
.end method

.method private static final payBill$lambda-8(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .param p1, "it"    # Lio/reactivex/disposables/Disposable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final printReceipt(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 396
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v2, "Printing Receipt"

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->remark:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "remark"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .line 399
    .local v0, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    .line 400
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    .line 401
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->remark:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSText(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-direct {v4, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 399
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method private final reverseTransaction(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .line 311
    .local v2, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    if-eqz v2, :cond_1

    move-object v3, v2

    .local v3, "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v4, 0x0

    .line 312
    .local v4, "$i$a$-let-UtilitiesViewModel$reverseTransaction$1":I
    invoke-static {v3}, Lcom/danbamitale/epmslib/entities/TransactionRequestDataKt;->toOriginalDataElements(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v15

    .line 313
    .local v15, "originalDataElements":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    new-instance v16, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    .line 314
    sget-object v6, Lcom/danbamitale/epmslib/entities/TransactionType;->REVERSAL:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 315
    invoke-virtual {v15}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAmount()J

    move-result-wide v7

    .line 313
    const-wide/16 v9, 0x0

    .line 316
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->isoAccountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    if-nez v5, :cond_0

    sget-object v5, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    :cond_0
    move-object v11, v5

    .line 317
    nop

    .line 313
    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v5, v16

    move-object v12, v15

    invoke-direct/range {v5 .. v14}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 319
    .local v5, "transactionRequestData":Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    iget-object v6, v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->processor:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    iget-object v7, v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v1, v5, v7}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->processTransaction(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;

    move-result-object v6

    .line 320
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v6

    .line 321
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v6

    .line 322
    new-instance v7, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v6

    .line 330
    new-instance v7, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V

    invoke-virtual {v6, v7}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v6

    const-string v7, "processor.processTransac\u2026      }\n                }"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v6, v7}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 346
    nop

    .line 311
    .end local v3    # "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v4    # "$i$a$-let-UtilitiesViewModel$reverseTransaction$1":I
    .end local v5    # "transactionRequestData":Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .end local v15    # "originalDataElements":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    nop

    .line 347
    :cond_1
    return-void
.end method

.method private static final reverseTransaction$lambda-16$lambda-12(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .param p1, "$context"    # Landroid/content/Context;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    .line 325
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->errorResponse:Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    if-nez v2, :cond_0

    .line 326
    new-instance v2, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    const-string v3, "An unresolvable error occurred, contact administrator"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;-><init>(Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->printReceipt(Landroid/content/Context;)V

    .line 329
    return-void
.end method

.method private static final reverseTransaction$lambda-16$lambda-15(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .param p1, "t1"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    const-string v0, " payment, Transaction could not be auto reversed, contact administrator"

    const/4 v1, 0x0

    const-string v2, "Could not process "

    if-eqz p1, :cond_5

    move-object v3, p1

    .local v3, "response":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v4, 0x0

    .line 332
    .local v4, "$i$a$-let-UtilitiesViewModel$reverseTransaction$1$2$1":I
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "00"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->errorResponse:Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    if-nez v5, :cond_0

    goto :goto_2

    .line 335
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " payment, Transaction Reversed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 334
    invoke-virtual {v5, v6}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;->setMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 337
    :cond_2
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->errorResponse:Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    if-nez v5, :cond_3

    goto :goto_2

    .line 338
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v1

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 337
    invoke-virtual {v5, v6}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;->setMessage(Ljava/lang/String;)V

    .line 340
    :goto_2
    nop

    .line 331
    .end local v3    # "response":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v4    # "$i$a$-let-UtilitiesViewModel$reverseTransaction$1$2$1":I
    nop

    .line 341
    :cond_5
    if-eqz p2, :cond_8

    move-object v3, p2

    .local v3, "it":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 342
    .local v4, "$i$a$-let-UtilitiesViewModel$reverseTransaction$1$2$2":I
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->errorResponse:Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    if-nez v5, :cond_6

    goto :goto_3

    .line 343
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {v5, v0}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;->setMessage(Ljava/lang/String;)V

    .line 344
    :goto_3
    nop

    .line 341
    .end local v3    # "it":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-let-UtilitiesViewModel$reverseTransaction$1$2$2":I
    nop

    .line 345
    :cond_8
    return-void
.end method

.method private static final sendSmS$lambda-25(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 433
    .local v2, "$i$a$-let-UtilitiesViewModel$sendSmS$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_smsSent:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    nop

    .line 432
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-UtilitiesViewModel$sendSmS$1$1":I
    nop

    .line 436
    :cond_0
    if-eqz p2, :cond_2

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 437
    .local v2, "$i$a$-let-UtilitiesViewModel$sendSmS$1$2":I
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lretrofit2/HttpException;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 438
    .local v3, "httpException":Lretrofit2/HttpException;
    :goto_0
    const/4 v4, 0x0

    .line 439
    .local v4, "$i$a$-let-UtilitiesViewModel$sendSmS$1$2$1":I
    nop

    .line 438
    .end local v4    # "$i$a$-let-UtilitiesViewModel$sendSmS$1$2$1":I
    nop

    .line 440
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_smsSent:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 441
    nop

    .line 436
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-UtilitiesViewModel$sendSmS$1$2":I
    .end local v3    # "httpException":Lretrofit2/HttpException;
    nop

    .line 442
    :cond_2
    return-void
.end method

.method private final verifyDestinationAccount()V
    .locals 3

    .line 175
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 176
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->stormUtilitiesApiService:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;

    if-nez v1, :cond_0

    const-string v1, "stormUtilitiesApiService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;->validateBill(Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;)Lio/reactivex/Single;

    move-result-object v1

    .line 177
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 178
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v1

    .line 179
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 180
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;

    invoke-direct {v2, v0, p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;-><init>(Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V

    check-cast v2, Lio/reactivex/SingleObserver;

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 203
    return-void
.end method

.method private static final verifyDestinationAccount$lambda-5(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .param p1, "it"    # Lio/reactivex/disposables/Disposable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final checkHasSufficientBalance()V
    .locals 17

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_billResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;

    .line 207
    .local v1, "validateBillResponse":Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 208
    .local v2, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    if-nez v1, :cond_0

    new-instance v16, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 209
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getDestinationAccount()Ljava/lang/String;

    move-result-object v6

    .line 208
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3fb

    const/4 v15, 0x0

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v15}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v1

    :goto_0
    move-object/from16 v3, v16

    .line 211
    .local v3, "billResponse":Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    move-object v4, v3

    .local v4, "$this$checkHasSufficientBalance_u24lambda_u2d6":Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    const/4 v5, 0x0

    .line 212
    .local v5, "$i$a$-apply-UtilitiesViewModel$checkHasSufficientBalance$1":I
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->setProvider(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->setBillPackage(Ljava/lang/String;)V

    .line 214
    const-string v6, "\u20a60"

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->setFees(Ljava/lang/String;)V

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x20a6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getAmount()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->setAmount(Ljava/lang/String;)V

    .line 216
    nop

    .line 211
    .end local v4    # "$this$checkHasSufficientBalance_u24lambda_u2d6":Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    .end local v5    # "$i$a$-apply-UtilitiesViewModel$checkHasSufficientBalance$1":I
    nop

    .line 217
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_validateResponse:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public final getCardData()Lcom/danbamitale/epmslib/entities/CardData;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    return-object v0
.end method

.method public final getInitiateBillsPayment()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_initiateBillsPayment:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->payloadMutableLiveData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getResult()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResponse;",
            ">;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->result:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShouldRefreshNibssKeys()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowPrintDialog()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowPrinterError()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_showPrinterError:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowProgress()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->showProgress:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSmsSent()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_smsSent:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getValidateBillResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;",
            ">;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_validateResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final initiatePayment()V
    .locals 7

    .line 257
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 258
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    move-object v1, v0

    .local v1, "$this$initiatePayment_u24lambda_u2d7":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v2, 0x0

    .line 259
    .local v2, "$i$a$-apply-UtilitiesViewModel$initiatePayment$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getDestinationAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->remark:Ljava/lang/String;

    .line 260
    nop

    .line 258
    .end local v1    # "$this$initiatePayment_u24lambda_u2d7":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .end local v2    # "$i$a$-apply-UtilitiesViewModel$initiatePayment$1":I
    nop

    .line 261
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getAmount()F

    move-result v1

    float-to-long v1, v1

    const/16 v3, 0x64

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->amountLong:J

    .line 262
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_initiateBillsPayment:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getAmount()F

    move-result v5

    float-to-long v5, v5

    mul-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public final makePayment(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->get_showProgressMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 352
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    iget-object v9, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->isoAccountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object v3, v0

    move-object v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 351
    nop

    .line 353
    .local v0, "requestData":Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->processor:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->processTransaction(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;

    move-result-object v1

    .line 354
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 375
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 376
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 377
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "processor.processTransac\u2026          }\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 386
    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 446
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 447
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 448
    return-void
.end method

.method public final sendSmS(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$sendSmS_u24lambda_u2d21":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    .line 420
    .local v2, "$i$a$-apply-UtilitiesViewModel$sendSmS$map$1":I
    const-string v3, "from"

    const-string v4, "NetPlus"

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+234"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "to"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->remark:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "remark"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    invoke-static {v3, v4}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSText(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    nop

    .line 419
    .end local v1    # "$this$sendSmS_u24lambda_u2d21":Lcom/google/gson/JsonObject;
    .end local v2    # "$i$a$-apply-UtilitiesViewModel$sendSmS$map$1":I
    nop

    .line 424
    .local v0, "map":Lcom/google/gson/JsonObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "auth":Ljava/lang/String;
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 426
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "map.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v5, "application/json; charset=utf-8"

    invoke-virtual {v4, v5}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 426
    nop

    .line 428
    .local v2, "body":Lokhttp3/RequestBody;
    sget-object v3, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getSmsServiceInstance()Lcom/woleapp/netpos/contactless/network/SmsService;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/woleapp/netpos/contactless/network/SmsService;->sendSms(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Single;

    move-result-object v3

    .line 429
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 430
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 431
    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda6;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    const-string v4, "StormApiClient.getSmsSer\u2026          }\n            }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v3, v4}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 443
    return-void
.end method

.method public final setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V
    .locals 1
    .param p1, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v0, "accountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->isoAccountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 412
    return-void
.end method

.method public final setCardData(Lcom/danbamitale/epmslib/entities/CardData;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/entities/CardData;

    .line 34
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    return-void
.end method

.method public final setCardScheme(Ljava/lang/String;)V
    .locals 2
    .param p1, "cardScheme"    # Ljava/lang/String;

    .line 415
    const-string v0, "no match"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VERVE"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->cardScheme:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public final setCustomerName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->customerName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public final setStormUtilitiesApiService(Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;)V
    .locals 1
    .param p1, "stormUtilitiesApiService"    # Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;

    const-string v0, "stormUtilitiesApiService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->stormUtilitiesApiService:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;

    .line 91
    return-void
.end method

.method public final setUtilityBillType(Ljava/lang/String;)V
    .locals 4
    .param p1, "utilityBillType"    # Ljava/lang/String;

    const-string v0, "utilityBillType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 120
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v0, :cond_0

    move-object v2, v0

    .local v2, "$this$setUtilityBillType_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v3, 0x0

    .line 121
    .local v3, "$i$a$-apply-UtilitiesViewModel$setUtilityBillType$1":I
    invoke-virtual {v2, p1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setBillType(Ljava/lang/String;)V

    .line 122
    nop

    .line 120
    .end local v2    # "$this$setUtilityBillType_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .end local v3    # "$i$a$-apply-UtilitiesViewModel$setUtilityBillType$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public final setUtilityPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "utilityPackage"    # Ljava/lang/String;

    const-string v0, "utilityPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 135
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v0, :cond_0

    move-object v2, v0

    .local v2, "$this$setUtilityPackage_u24lambda_u2d3":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v3, 0x0

    .line 136
    .local v3, "$i$a$-apply-UtilitiesViewModel$setUtilityPackage$1":I
    invoke-virtual {v2, p1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setBillPackage(Ljava/lang/String;)V

    .line 137
    nop

    .line 135
    .end local v2    # "$this$setUtilityPackage_u24lambda_u2d3":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .end local v3    # "$i$a$-apply-UtilitiesViewModel$setUtilityPackage$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public final setUtilityProvider(Ljava/lang/String;)V
    .locals 10
    .param p1, "utilityProvider"    # Ljava/lang/String;

    const-string v0, "utilityProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 128
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v0, :cond_0

    move-object v2, v0

    .local v2, "$this$setUtilityProvider_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v3, 0x0

    .line 129
    .local v3, "$i$a$-apply-UtilitiesViewModel$setUtilityProvider$1":I
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, " "

    const-string v6, ""

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setProvider(Ljava/lang/String;)V

    .line 130
    nop

    .line 128
    .end local v2    # "$this$setUtilityProvider_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .end local v3    # "$i$a$-apply-UtilitiesViewModel$setUtilityProvider$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public final setUtilityService(Ljava/lang/String;)V
    .locals 10
    .param p1, "utilityService"    # Ljava/lang/String;

    const-string v0, "utilityService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 113
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v0, :cond_0

    move-object v2, v0

    .local v2, "$this$setUtilityService_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v3, 0x0

    .line 114
    .local v3, "$i$a$-apply-UtilitiesViewModel$setUtilityService$1":I
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, " "

    const-string v6, ""

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setService(Ljava/lang/String;)V

    .line 115
    nop

    .line 113
    .end local v2    # "$this$setUtilityService_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .end local v3    # "$i$a$-apply-UtilitiesViewModel$setUtilityService$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public final setUtilityServiceType(Ljava/lang/String;)V
    .locals 4
    .param p1, "utilityServiceType"    # Ljava/lang/String;

    const-string v0, "utilityServiceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 142
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v0, :cond_0

    move-object v2, v0

    .local v2, "$this$setUtilityServiceType_u24lambda_u2d4":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v3, 0x0

    .line 143
    .local v3, "$i$a$-apply-UtilitiesViewModel$setUtilityServiceType$1":I
    invoke-virtual {v2, p1}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setServiceType(Ljava/lang/String;)V

    .line 144
    nop

    .line 142
    .end local v2    # "$this$setUtilityServiceType_u24lambda_u2d4":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .end local v3    # "$i$a$-apply-UtilitiesViewModel$setUtilityServiceType$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public final showReceiptDialog()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    .line 390
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->remark:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "remark"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSText(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastTransactionResponse.\u2026              .toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public final validateUtilityBill()V
    .locals 11

    .line 148
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 149
    .local v0, "utilitiesPayload":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getDestinationAccount()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    .line 150
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v3, "Please enter the destination number"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 151
    return-void

    .line 153
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getStringAmount()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v4

    :goto_5
    if-eqz v2, :cond_8

    .line 154
    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setStringAmount(Ljava/lang/String;)V

    .line 156
    :cond_8
    :goto_6
    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getStringAmount()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, ","

    const-string v7, ""

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setAmount(F)V

    .line 157
    :goto_8
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_b
    move-object v2, v1

    :goto_9
    const-string v5, "POWER"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getAmount()F

    move-result v2

    const/high16 v6, 0x447a0000    # 1000.0f

    cmpg-float v2, v2, v6

    if-gez v2, :cond_c

    .line 158
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v3, "Amount should not be less than \u20a61000"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 159
    return-void

    .line 161
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getAmount()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 162
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v3, "Amount should not be less than \u20a625"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 163
    return-void

    .line 165
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Principal Amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getAmount()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getBillType()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_a

    :cond_f
    const-string v2, "TV"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_a
    if-eqz v4, :cond_10

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$validateUtilityBill$next$1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$validateUtilityBill$next$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    goto :goto_b

    .line 168
    :cond_10
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$validateUtilityBill$next$2;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$validateUtilityBill$next$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    .line 166
    :goto_b
    nop

    .line 170
    .local v1, "next":Lkotlin/reflect/KFunction;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 171
    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 172
    return-void
.end method
