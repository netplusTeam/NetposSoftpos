.class public final Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "QRViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQRViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QRViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/QRViewModel\n+ 2 Transformations.kt\nandroidx/lifecycle/TransformationsKt\n*L\n1#1,389:1\n79#2:390\n79#2:391\n79#2:392\n*S KotlinDebug\n*F\n+ 1 QRViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/QRViewModel\n*L\n69#1:390\n80#1:391\n93#1:392\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010Q\u001a\u00020RJ\u000e\u0010S\u001a\u00020R2\u0006\u0010T\u001a\u00020\rJ\u000e\u0010U\u001a\u00020R2\u0006\u0010V\u001a\u00020WJ\u000e\u0010X\u001a\u00020R2\u0006\u0010V\u001a\u00020WJ\u000e\u0010Y\u001a\u00020R2\u0006\u0010Z\u001a\u00020[J\u0006\u0010\\\u001a\u00020RJ\u0006\u0010]\u001a\u00020RJ\u0008\u0010^\u001a\u00020RH\u0014J\u0008\u0010_\u001a\u00020RH\u0002J\u0006\u0010`\u001a\u00020RJ\u0008\u0010a\u001a\u00020RH\u0002J\u000e\u0010b\u001a\u00020R2\u0006\u0010c\u001a\u00020=J\u000e\u0010d\u001a\u00020R2\u0006\u0010e\u001a\u00020IJ\u0006\u0010f\u001a\u00020RJ\u000e\u0010g\u001a\u00020R2\u0006\u0010h\u001a\u00020\rR\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n \u0015*\u0004\u0018\u00010\u00060\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u001f\u0010\u001e\u001a\u0010\u0012\u000c\u0012\n \u0015*\u0004\u0018\u00010\u001f0\u001f0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0017R\u000e\u0010!\u001a\u00020\"X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\u00050\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001dR\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u001dR\u001d\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00050/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u001d\u00102\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u001dR\u000e\u00104\u001a\u000205X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u00106\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u001dR\u001d\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u001dR\u001f\u0010:\u001a\u0010\u0012\u000c\u0012\n \u0015*\u0004\u0018\u00010\u00060\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010\u0017R\u000e\u0010<\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010>\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001c\u0010C\u001a\u0010\u0012\u000c\u0012\n \u0015*\u0004\u0018\u00010\r0\r0DX\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010E\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010\u001dR\u001d\u0010G\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020I0H0\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010\u001dR\u000e\u0010K\u001a\u00020LX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010M\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010\u001dR\u001d\u0010O\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010\u001d\u00a8\u0006i"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_createZenithMerchant",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "",
        "_masterPassQrBitmap",
        "Landroid/graphics/Bitmap;",
        "_nibssQRBitmap",
        "_paginationHelper",
        "Lcom/woleapp/netpos/contactless/model/PaginationHelper;",
        "_qrErrorMessage",
        "",
        "_reQuerying",
        "_zenithCityList",
        "",
        "Lcom/woleapp/netpos/contactless/model/ZenithCity;",
        "_zenithQr",
        "_zenithQrRegistrationDone",
        "cityLoading",
        "kotlin.jvm.PlatformType",
        "getCityLoading",
        "()Landroidx/lifecycle/MutableLiveData;",
        "config",
        "Landroidx/paging/PagedList$Config;",
        "createZenithMerchant",
        "Landroidx/lifecycle/LiveData;",
        "getCreateZenithMerchant",
        "()Landroidx/lifecycle/LiveData;",
        "createZenithMerchantPayload",
        "Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;",
        "getCreateZenithMerchantPayload",
        "dataSourceFactory",
        "Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "emptyListLiveData",
        "lastNibssOrderNumber",
        "loadingStateLiveData",
        "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
        "getLoadingStateLiveData",
        "masterPassQRService",
        "Lcom/woleapp/netpos/contactless/network/MasterPassQRService;",
        "masterPassQrBitmap",
        "getMasterPassQrBitmap",
        "message",
        "Landroidx/lifecycle/MediatorLiveData;",
        "getMessage",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "nibssQRBitmap",
        "getNibssQRBitmap",
        "nibssQRService",
        "Lcom/woleapp/netpos/contactless/network/NibssQRService;",
        "qrErrorMessage",
        "getQrErrorMessage",
        "reQuerying",
        "getReQuerying",
        "registrationInProgress",
        "getRegistrationInProgress",
        "retryAttempts",
        "",
        "stillHasRetryAttempts",
        "getStillHasRetryAttempts",
        "()Z",
        "setStillHasRetryAttempts",
        "(Z)V",
        "subject",
        "Lio/reactivex/subjects/PublishSubject;",
        "zenithCityList",
        "getZenithCityList",
        "zenithMccList",
        "Landroidx/paging/PagedList;",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        "getZenithMccList",
        "zenithQRService",
        "Lcom/woleapp/netpos/contactless/network/ZenithQrService;",
        "zenithQr",
        "getZenithQr",
        "zenithQrRegistrationDone",
        "getZenithQrRegistrationDone",
        "clearSelectedCity",
        "",
        "getCities",
        "state",
        "getMasterPassQr",
        "amount",
        "",
        "getNibssQR",
        "getZenithMCC",
        "zenithMCCDto",
        "Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;",
        "getZenithQR",
        "initSearchFilter",
        "onCleared",
        "queryTransaction",
        "registerZenithMerchant",
        "runHandler",
        "setSelectedCity",
        "position",
        "setSelectedMerchantCategory",
        "it",
        "textChangeComplete",
        "textChanged",
        "filter",
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
.field private final _createZenithMerchant:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _masterPassQrBitmap:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _nibssQRBitmap:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _paginationHelper:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/PaginationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final _qrErrorMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _reQuerying:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _zenithCityList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/ZenithCity;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final _zenithQr:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _zenithQrRegistrationDone:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cityLoading:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Landroidx/paging/PagedList$Config;

.field private final createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;",
            ">;"
        }
    .end annotation
.end field

.field private dataSourceFactory:Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final emptyListLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lastNibssOrderNumber:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingStateLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
            ">;>;"
        }
    .end annotation
.end field

.field private final masterPassQRService:Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

.field private final message:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nibssQRService:Lcom/woleapp/netpos/contactless/network/NibssQRService;

.field private final registrationInProgress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private retryAttempts:I

.field private stillHasRetryAttempts:Z

.field private final subject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zenithMccList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zenithQRService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;


# direct methods
.method public static synthetic $r8$lambda$2QzgMq-OgXR-e1s_P8MqC8_DuPI(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->registerZenithMerchant$lambda-40(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4hK2L4w-IbLR1F-6gTKXZyt4QtU(DLcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getMasterPassQr$lambda-9(DLcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$59W8K4N_Xi9vPuMv3oWpzg4Qspk(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getNibssQR$lambda-13(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5WrDmJVzVib0GN4EK7S1bi5GdUY(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/ZenithCityList;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getCities$lambda-28(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/ZenithCityList;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8fLas5peCVFlW_IEQQfWWo2ncqI(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->registerZenithMerchant$lambda-36(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8wTcqgcLIzLr8OqQtOyjLVVu3CU(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;)Landroidx/lifecycle/LiveData;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithMCC$lambda-32(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IChMg6nW8d0Zw9NVJOF9er_l_4Q(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->queryTransaction$lambda-19$lambda-15(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MMkrxu3zSBjzV_14aXEGecdi_sQ(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->runHandler$lambda-14(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QpzsnlhyqttLnF_LtC6jquBb9WU(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->initSearchFilter$lambda-33(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RiKJL2HTqlm98vhowVj_UwXEgQM(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getCities$lambda-25(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SCKvx4ZkCmbA5eEIAK5yQb8GXmI(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getCities$lambda-24(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UZee6ZPQMaMdOdWRch8peOPLcJI(Lcom/woleapp/netpos/contactless/model/NibssQRResponse;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getNibssQR$lambda-10(Lcom/woleapp/netpos/contactless/model/NibssQRResponse;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XAK2DJ_4mpARRB1cSYUb_30RZ6E(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->initSearchFilter$lambda-34(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-E17_nKY-9vFXJzzspmjHMD6dQ(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/model/NibssQRResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->queryTransaction$lambda-19$lambda-18(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/model/NibssQRResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ayDghsLrP867Gi6ZR6pFQy4pUj8(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->registerZenithMerchant$lambda-37(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_pclXof0LgKf3fn4MuPzMxjtPw(Lokhttp3/ResponseBody;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getMasterPassQr$lambda-5(Lokhttp3/ResponseBody;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i2xEXHaatYgxa2AVJ7o08K92wPY(Lcom/woleapp/netpos/contactless/model/ZenithQr;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithQR$lambda-20(Lcom/woleapp/netpos/contactless/model/ZenithQr;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j_VVL7x2Ss45AZlqNthIihCAT_s(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithQR$lambda-23(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qIA3Ci71SSsCLKhxVT5xJQTgtSs(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_init_$lambda-1(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vpLRdlFf_Re2PRvXx5pKp86_Wuk(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;)Landroidx/lifecycle/LiveData;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithMCC$lambda-31(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 11

    .line 26
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->retryAttempts:I

    .line 28
    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->stillHasRetryAttempts:Z

    .line 29
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getMasterPassQrServiceInstance()Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->masterPassQRService:Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    .line 30
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getNibssQRServiceInstance()Lcom/woleapp/netpos/contactless/network/NibssQRService;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->nibssQRService:Lcom/woleapp/netpos/contactless/network/NibssQRService;

    .line 31
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getZenithQRServiceInstance()Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->zenithQRService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    .line 32
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_masterPassQrBitmap:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    .line 39
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_qrErrorMessage:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->lastNibssOrderNumber:Landroidx/lifecycle/MutableLiveData;

    .line 45
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_nibssQRBitmap:Landroidx/lifecycle/MutableLiveData;

    .line 49
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_reQuerying:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_createZenithMerchant:Landroidx/lifecycle/MutableLiveData;

    .line 59
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithCityList:Landroidx/lifecycle/MutableLiveData;

    .line 64
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    new-instance v10, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v10}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;

    .line 66
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->registrationInProgress:Landroidx/lifecycle/MutableLiveData;

    .line 68
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_paginationHelper:Landroidx/lifecycle/MutableLiveData;

    .line 69
    move-object v4, v1

    check-cast v4, Landroidx/lifecycle/LiveData;

    .local v4, "$this$switchMap$iv":Landroidx/lifecycle/LiveData;
    const/4 v5, 0x0

    .line 390
    .local v5, "$i$f$switchMap":I
    new-instance v6, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$1;

    invoke-direct {v6}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$1;-><init>()V

    check-cast v6, Landroidx/arch/core/util/Function;

    invoke-static {v4, v6}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v6

    const-string v7, "crossinline transform: (\u2026p(this) { transform(it) }"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .end local v4    # "$this$switchMap$iv":Landroidx/lifecycle/LiveData;
    .end local v5    # "$i$f$switchMap":I
    iput-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->emptyListLiveData:Landroidx/lifecycle/LiveData;

    .line 73
    nop

    .line 74
    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v0, v6, v4}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 77
    nop

    .line 80
    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/LiveData;

    .local v0, "$this$switchMap$iv":Landroidx/lifecycle/LiveData;
    const/4 v4, 0x0

    .line 391
    .local v4, "$i$f$switchMap":I
    new-instance v5, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$2;

    invoke-direct {v5}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$2;-><init>()V

    check-cast v5, Landroidx/arch/core/util/Function;

    invoke-static {v0, v5}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .end local v0    # "$this$switchMap$iv":Landroidx/lifecycle/LiveData;
    .end local v4    # "$i$f$switchMap":I
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->loadingStateLiveData:Landroidx/lifecycle/LiveData;

    .line 84
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithQr:Landroidx/lifecycle/MutableLiveData;

    .line 88
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithQrRegistrationDone:Landroidx/lifecycle/MutableLiveData;

    .line 93
    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/LiveData;

    .restart local v0    # "$this$switchMap$iv":Landroidx/lifecycle/LiveData;
    const/4 v1, 0x0

    .line 392
    .local v1, "$i$f$switchMap":I
    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$3;

    invoke-direct {v4}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$3;-><init>()V

    check-cast v4, Landroidx/arch/core/util/Function;

    invoke-static {v0, v4}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .end local v0    # "$this$switchMap$iv":Landroidx/lifecycle/LiveData;
    .end local v1    # "$i$f$switchMap":I
    iput-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->zenithMccList:Landroidx/lifecycle/LiveData;

    .line 100
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create<String>()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->subject:Lio/reactivex/subjects/PublishSubject;

    .line 106
    nop

    .line 102
    new-instance v0, Landroidx/paging/PagedList$Config$Builder;

    invoke-direct {v0}, Landroidx/paging/PagedList$Config$Builder;-><init>()V

    .line 103
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/paging/PagedList$Config$Builder;->setInitialLoadSizeHint(I)Landroidx/paging/PagedList$Config$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Landroidx/paging/PagedList$Config$Builder;->setPageSize(I)Landroidx/paging/PagedList$Config$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v2}, Landroidx/paging/PagedList$Config$Builder;->setEnablePlaceholders(Z)Landroidx/paging/PagedList$Config$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroidx/paging/PagedList$Config$Builder;->build()Landroidx/paging/PagedList$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->config:Landroidx/paging/PagedList$Config;

    .line 260
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->cityLoading:Landroidx/lifecycle/MutableLiveData;

    .line 26
    return-void
.end method

.method private static final _init_$lambda-1(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v2, "No results found"

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method private static final getCities$lambda-24(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "it"    # Lio/reactivex/disposables/Disposable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->cityLoading:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method private static final getCities$lambda-25(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->cityLoading:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method private static final getCities$lambda-28(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/ZenithCityList;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "$state"    # Ljava/lang/String;
    .param p2, "t1"    # Lcom/woleapp/netpos/contactless/model/ZenithCityList;
    .param p3, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    if-eqz p2, :cond_0

    move-object v0, p2

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/ZenithCityList;
    const/4 v1, 0x0

    .line 273
    .local v1, "$i$a$-let-QRViewModel$getCities$3$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithCityList:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/ZenithCityList;->getCityList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 274
    nop

    .line 272
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/ZenithCityList;
    .end local v1    # "$i$a$-let-QRViewModel$getCities$3$1":I
    nop

    .line 275
    :cond_0
    if-eqz p3, :cond_1

    move-object v0, p3

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 276
    .local v1, "$i$a$-let-QRViewModel$getCities$3$2":I
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred while fetching cities in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 278
    nop

    .line 275
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-QRViewModel$getCities$3$2":I
    nop

    .line 279
    :cond_1
    return-void
.end method

.method private static final getMasterPassQr$lambda-5(Lokhttp3/ResponseBody;)Lio/reactivex/SingleSource;
    .locals 3
    .param p0, "it"    # Lokhttp3/ResponseBody;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v1

    .line 130
    check-cast v1, Lio/reactivex/SingleSource;

    .line 127
    return-object v1

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final getMasterPassQr$lambda-9(DLcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 10
    .param p0, "$amount"    # D
    .param p2, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p3, "t1"    # Landroid/graphics/Bitmap;
    .param p4, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 134
    .local v2, "$i$a$-let-QRViewModel$getMasterPassQr$3$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotten and amount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v3, p2, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_masterPassQrBitmap:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 136
    nop

    .line 133
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "$i$a$-let-QRViewModel$getMasterPassQr$3$1":I
    nop

    .line 137
    :cond_0
    if-eqz p4, :cond_6

    move-object v1, p4

    .local v1, "error":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-let-QRViewModel$getMasterPassQr$3$2":I
    instance-of v3, v1, Lretrofit2/HttpException;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lretrofit2/HttpException;

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 139
    .local v3, "httpException":Lretrofit2/HttpException;
    :goto_0
    const-string v5, "Error"

    if-eqz v3, :cond_4

    move-object v6, v3

    .local v6, "it":Lretrofit2/HttpException;
    const/4 v7, 0x0

    .line 140
    .local v7, "$i$a$-let-QRViewModel$getMasterPassQr$3$2$1":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "body "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v4, v8}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v4, v8}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v6}, Lretrofit2/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v5

    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    nop

    .line 139
    .end local v6    # "it":Lretrofit2/HttpException;
    .end local v7    # "$i$a$-let-QRViewModel$getMasterPassQr$3$2$1":I
    nop

    .line 144
    :cond_4
    iget-object v0, p2, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_qrErrorMessage:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const-string v5, "error.localizedMessage ?: \"Error\""

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v7

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p2, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    .line 146
    nop

    .line 145
    const-string v5, "An error occurred while fetching QR"

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 148
    nop

    .line 137
    .end local v1    # "error":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-QRViewModel$getMasterPassQr$3$2":I
    .end local v3    # "httpException":Lretrofit2/HttpException;
    nop

    .line 149
    :cond_6
    return-void
.end method

.method private static final getNibssQR$lambda-10(Lcom/woleapp/netpos/contactless/model/NibssQRResponse;)Lio/reactivex/SingleSource;
    .locals 4
    .param p0, "it"    # Lcom/woleapp/netpos/contactless/model/NibssQRResponse;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/NibssQRResponse;->getReturnCode()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/NibssQRResponse;->getReturnCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Success"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/NibssQRResponse;->getCodeUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/NibssQRResponse;->getCodeUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v0, v1, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->encodeAsBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not fetch QR code"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final getNibssQR$lambda-13(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "t1"    # Landroid/graphics/Bitmap;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 179
    .local v1, "$i$a$-let-QRViewModel$getNibssQR$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_nibssQRBitmap:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v3, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 180
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->runHandler()V

    .line 181
    nop

    .line 178
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-QRViewModel$getNibssQR$2$1":I
    nop

    .line 182
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 183
    .local v1, "$i$a$-let-QRViewModel$getNibssQR$2$2":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 184
    nop

    .line 182
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-QRViewModel$getNibssQR$2$2":I
    nop

    .line 185
    :cond_1
    return-void
.end method

.method private static final getZenithMCC$lambda-31(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p0, "it"    # Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;

    .line 300
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->getNetworkResource()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method private static final getZenithMCC$lambda-32(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p0, "it"    # Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;

    .line 306
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->getEmptyResultLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method private static final getZenithQR$lambda-20(Lcom/woleapp/netpos/contactless/model/ZenithQr;)Lio/reactivex/SingleSource;
    .locals 3
    .param p0, "it"    # Lcom/woleapp/netpos/contactless/model/ZenithQr;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/ZenithQr;->getQrCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->decodeBase64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 239
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v1

    .line 241
    check-cast v1, Lio/reactivex/SingleSource;

    .line 238
    return-object v1

    .line 241
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final getZenithQR$lambda-23(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "t1"    # Landroid/graphics/Bitmap;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 245
    .local v1, "$i$a$-let-QRViewModel$getZenithQR$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithQr:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v3, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 246
    nop

    .line 244
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-QRViewModel$getZenithQR$2$1":I
    nop

    .line 247
    :cond_0
    if-eqz p2, :cond_2

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 248
    .local v1, "$i$a$-let-QRViewModel$getZenithQR$2$2":I
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 249
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getResponseBody(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "responseBody":Ljava/lang/String;
    const/16 v3, 0x194

    invoke-static {v0, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->isHttpStatusCode(Ljava/lang/Throwable;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Merchant not registered"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_createZenithMerchant:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_createZenithMerchant:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 254
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 256
    :goto_0
    nop

    .line 247
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-QRViewModel$getZenithQR$2$2":I
    .end local v2    # "responseBody":Ljava/lang/String;
    nop

    .line 257
    :cond_2
    return-void
.end method

.method private static final initSearchFilter$lambda-33(Ljava/lang/String;)Z
    .locals 2
    .param p0, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method private static final initSearchFilter$lambda-34(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Ljava/lang/String;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance v0, Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    invoke-direct {v0, p1}, Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithMCC(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;)V

    .line 330
    return-void
.end method

.method private final queryTransaction()V
    .locals 5

    .line 201
    iget v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->retryAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->retryAttempts:I

    .line 202
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_reQuerying:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->lastNibssOrderNumber:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 204
    .local v1, "$i$a$-let-QRViewModel$queryTransaction$1":I
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 205
    .local v2, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "order_no"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->nibssQRService:Lcom/woleapp/netpos/contactless/network/NibssQRService;

    invoke-interface {v3, v2}, Lcom/woleapp/netpos/contactless/network/NibssQRService;->queryTransactionStatus(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v3

    .line 207
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 208
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 209
    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda13;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v3

    .line 210
    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda14;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    const-string v4, "nibssQRService.queryTran\u2026      }\n                }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v3, v4}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 229
    nop

    .line 203
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-QRViewModel$queryTransaction$1":I
    .end local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    nop

    .line 230
    :cond_0
    return-void
.end method

.method private static final queryTransaction$lambda-19$lambda-15(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_reQuerying:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final queryTransaction$lambda-19$lambda-18(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/model/NibssQRResponse;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "t1"    # Lcom/woleapp/netpos/contactless/model/NibssQRResponse;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    if-eqz p1, :cond_2

    move-object v0, p1

    .local v0, "nibssQRResponse":Lcom/woleapp/netpos/contactless/model/NibssQRResponse;
    const/4 v1, 0x0

    .line 212
    .local v1, "$i$a$-let-QRViewModel$queryTransaction$1$2$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/NibssQRResponse;->getReturnCode()Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v3, "Paying"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->runHandler()V

    goto :goto_0

    .line 214
    :cond_0
    const-string v3, "Success"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 215
    iput-boolean v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->stillHasRetryAttempts:Z

    .line 216
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "Success, payment confirmed"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v5, "Failed, payment failed"

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 220
    iput-boolean v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->stillHasRetryAttempts:Z

    .line 223
    :goto_0
    nop

    .line 211
    .end local v0    # "nibssQRResponse":Lcom/woleapp/netpos/contactless/model/NibssQRResponse;
    .end local v1    # "$i$a$-let-QRViewModel$queryTransaction$1$2$1":I
    nop

    .line 224
    :cond_2
    if-eqz p2, :cond_3

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 225
    .local v1, "$i$a$-let-QRViewModel$queryTransaction$1$2$2":I
    iget v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->retryAttempts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->retryAttempts:I

    .line 226
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "Retrying"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 227
    nop

    .line 224
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-QRViewModel$queryTransaction$1$2$2":I
    nop

    .line 228
    :cond_3
    return-void
.end method

.method private static final registerZenithMerchant$lambda-36(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "it"    # Lio/reactivex/disposables/Disposable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v2, "Registering, please wait"

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->registrationInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method private static final registerZenithMerchant$lambda-37(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->registrationInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final registerZenithMerchant$lambda-40(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .param p1, "t1"    # Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;
    const/4 v1, 0x0

    .line 372
    .local v1, "$i$a$-let-QRViewModel$registerZenithMerchant$3$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithQrRegistrationDone:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 373
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 374
    nop

    .line 371
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;
    .end local v1    # "$i$a$-let-QRViewModel$registerZenithMerchant$3$1":I
    nop

    .line 375
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 376
    .local v1, "$i$a$-let-QRViewModel$registerZenithMerchant$3$2":I
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 377
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "Registration failed"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 378
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getResponseBody(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 379
    nop

    .line 375
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-QRViewModel$registerZenithMerchant$3$2":I
    nop

    .line 380
    :cond_1
    return-void
.end method

.method private final runHandler()V
    .locals 4

    .line 190
    iget v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->retryAttempts:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->stillHasRetryAttempts:Z

    .line 192
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v2, "Too many attempts without response"

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 193
    return-void

    .line 195
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    .line 197
    const-wide/16 v2, 0xfa0

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method

.method private static final runHandler$lambda-14(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->queryTransaction()V

    .line 197
    return-void
.end method


# virtual methods
.method public final clearSelectedCity()V
    .locals 5

    .line 384
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v1

    .local v3, "$this$clearSelectedCity_u24lambda_u2d41":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    const/4 v4, 0x0

    .line 385
    .local v4, "$i$a$-apply-QRViewModel$clearSelectedCity$1":I
    invoke-virtual {v3, v2}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->setCityName(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v3, v2}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->setRegionName(Ljava/lang/String;)V

    .line 387
    nop

    .line 384
    .end local v3    # "$this$clearSelectedCity_u24lambda_u2d41":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    .end local v4    # "$i$a$-apply-QRViewModel$clearSelectedCity$1":I
    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public final getCities(Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->zenithQRService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    invoke-interface {v0, p1}, Lcom/woleapp/netpos/contactless/network/ZenithQrService;->getCity(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 263
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 264
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    .line 267
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda11;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v0

    .line 270
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->retry(J)Lio/reactivex/Single;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda12;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "zenithQRService.getCity(\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 281
    return-void
.end method

.method public final getCityLoading()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->cityLoading:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCreateZenithMerchant()Landroidx/lifecycle/LiveData;
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

    .line 57
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_createZenithMerchant:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getCreateZenithMerchantPayload()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getLoadingStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
            ">;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->loadingStateLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getMasterPassQr(D)V
    .locals 6
    .param p1, "amount"    # D

    .line 110
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Get masterpass"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 112
    .local v0, "qrRequestBody":Lcom/google/gson/JsonObject;
    sget-object v1, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    .local v1, "user":Lcom/woleapp/netpos/contactless/model/User;
    move-object v2, v0

    .local v2, "$this$getMasterPassQr_u24lambda_u2d4":Lcom/google/gson/JsonObject;
    const/4 v3, 0x0

    .line 114
    .local v3, "$i$a$-apply-QRViewModel$getMasterPassQr$1":I
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "amount"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "order_id"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/User;->getNetplus_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "merchant_id"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "currency_code"

    const-string v5, "NGN"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v4, "country_code"

    const-string v5, "NG"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/User;->getBusiness_name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "business_name"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v4, "merchant_city"

    const-string v5, "Lagos"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    nop

    .line 113
    .end local v2    # "$this$getMasterPassQr_u24lambda_u2d4":Lcom/google/gson/JsonObject;
    .end local v3    # "$i$a$-apply-QRViewModel$getMasterPassQr$1":I
    nop

    .line 122
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->masterPassQRService:Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    invoke-interface {v2, v0}, Lcom/woleapp/netpos/contactless/network/MasterPassQRService;->getStaticQr(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v2

    .line 123
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 124
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda2;-><init>()V

    .line 125
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v2

    .line 132
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, p2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda3;-><init>(DLcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    const-string v3, "masterPassQRService.getS\u2026          }\n            }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 150
    return-void
.end method

.method public final getMasterPassQrBitmap()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_masterPassQrBitmap:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getMessage()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public final getNibssQR(D)V
    .locals 15
    .param p1, "amount"    # D

    .line 153
    move-object v0, p0

    const-wide v1, 0x19debd01c7L

    .line 154
    .local v1, "start":J
    const-wide v3, 0xe8d4a50fffL

    .line 155
    .local v3, "end":J
    new-instance v5, Lkotlin/ranges/LongRange;

    invoke-direct {v5, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    sget-object v6, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v6, Lkotlin/random/Random;

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)J

    move-result-wide v5

    .line 156
    .local v5, "range1":J
    new-instance v7, Lkotlin/ranges/LongRange;

    invoke-direct {v7, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    sget-object v8, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v8, Lkotlin/random/Random;

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)J

    move-result-wide v7

    .line 157
    .local v7, "range2":J
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->lastNibssOrderNumber:Landroidx/lifecycle/MutableLiveData;

    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    new-instance v11, Ljava/text/SimpleDateFormat;

    .line 160
    nop

    .line 161
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 159
    const-string v13, "yMM"

    invoke-direct {v11, v13, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 162
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 163
    nop

    .line 158
    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 163
    nop

    .line 158
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 157
    invoke-virtual {v9, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 164
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 165
    .local v9, "jsonObject":Lcom/google/gson/JsonObject;
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    const-string v11, "amount"

    invoke-virtual {v9, v11, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v10, v0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->lastNibssOrderNumber:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Ljava/lang/String;

    const-string v11, "order_no"

    invoke-virtual {v9, v11, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v10, v0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->nibssQRService:Lcom/woleapp/netpos/contactless/network/NibssQRService;

    invoke-interface {v10, v9}, Lcom/woleapp/netpos/contactless/network/NibssQRService;->getQr(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v10

    .line 168
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v10

    .line 169
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v10

    new-instance v11, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda15;

    invoke-direct {v11}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda15;-><init>()V

    .line 170
    invoke-virtual {v10, v11}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v10

    .line 175
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v10

    .line 176
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v10

    .line 177
    new-instance v11, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda16;

    invoke-direct {v11, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda16;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v10, v11}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v10

    const-string v11, "nibssQRService.getQr(jso\u2026          }\n            }"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v11, v0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v10, v11}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 187
    return-void
.end method

.method public final getNibssQRBitmap()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_nibssQRBitmap:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getQrErrorMessage()Landroidx/lifecycle/LiveData;
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

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_qrErrorMessage:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getReQuerying()Landroidx/lifecycle/LiveData;
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

    .line 52
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_reQuerying:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getRegistrationInProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->registrationInProgress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getStillHasRetryAttempts()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->stillHasRetryAttempts:Z

    return v0
.end method

.method public final getZenithCityList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/ZenithCity;",
            ">;>;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithCityList:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getZenithMCC(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;)V
    .locals 6
    .param p1, "zenithMCCDto"    # Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    const-string v0, "zenithMCCDto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    new-instance v0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0, p1, v1}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;-><init>(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;Lio/reactivex/disposables/CompositeDisposable;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->dataSourceFactory:Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;

    .line 298
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->getItemLiveDataSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda7;-><init>()V

    .line 297
    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "switchMap(\n            d\u2026networkResource\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .local v0, "networkResourceLiveData":Landroidx/lifecycle/LiveData;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->dataSourceFactory:Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;

    const/4 v2, 0x0

    const-string v3, "dataSourceFactory"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->getItemLiveDataSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda8;-><init>()V

    .line 303
    invoke-static {v1, v4}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const-string v4, "switchMap(\n            d\u2026yResultLiveData\n        }"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .local v1, "emptyResultLiveData":Landroidx/lifecycle/LiveData;
    new-instance v4, Landroidx/paging/LivePagedListBuilder;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->dataSourceFactory:Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    check-cast v2, Landroidx/paging/DataSource$Factory;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->config:Landroidx/paging/PagedList$Config;

    invoke-direct {v4, v2, v3}, Landroidx/paging/LivePagedListBuilder;-><init>(Landroidx/paging/DataSource$Factory;Landroidx/paging/PagedList$Config;)V

    invoke-virtual {v4}, Landroidx/paging/LivePagedListBuilder;->build()Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 309
    nop

    .line 311
    .local v2, "data":Landroidx/lifecycle/LiveData;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_paginationHelper:Landroidx/lifecycle/MutableLiveData;

    .line 312
    new-instance v4, Lcom/woleapp/netpos/contactless/model/PaginationHelper;

    .line 313
    nop

    .line 314
    nop

    .line 315
    nop

    .line 312
    invoke-direct {v4, v0, v1, v2}, Lcom/woleapp/netpos/contactless/model/PaginationHelper;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    .line 311
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public final getZenithMccList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->zenithMccList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getZenithQR()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->zenithQRService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/network/ZenithQrService;->getZenithQr()Lio/reactivex/Single;

    move-result-object v0

    .line 234
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 235
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda9;-><init>()V

    .line 236
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda10;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "zenithQRService.getZenit\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 258
    return-void
.end method

.method public final getZenithQr()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithQr:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getZenithQrRegistrationDone()Landroidx/lifecycle/LiveData;
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

    .line 90
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->_zenithQrRegistrationDone:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final initSearchFilter()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->subject:Lio/reactivex/subjects/PublishSubject;

    .line 324
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/subjects/PublishSubject;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda5;-><init>()V

    .line 325
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda6;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "subject\n            .deb\u2026MCCDto(it))\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 331
    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 334
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 335
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 336
    return-void
.end method

.method public final registerZenithMerchant()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;

    .line 352
    .local v0, "payload":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->getBvn()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->getBvn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xb

    if-ge v2, v4, :cond_2

    goto/16 :goto_4

    .line 356
    :cond_2
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->getMerchantCategoryCode()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    .line 357
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v3, "Select a merchant category"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 358
    return-void

    .line 360
    :cond_5
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->getCityName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    if-eqz v1, :cond_8

    .line 361
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v3, "Select a LGA"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 362
    return-void

    .line 364
    :cond_8
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->zenithQRService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    invoke-interface {v1, v0}, Lcom/woleapp/netpos/contactless/network/ZenithQrService;->createZenithQRMerchant(Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;)Lio/reactivex/Single;

    move-result-object v1

    .line 365
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda17;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v1

    .line 368
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda18;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v1

    .line 369
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 370
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda19;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "zenithQRService.createZe\u2026          }\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 381
    return-void

    .line 353
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->message:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v3, "Enter a valid bank verification number"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public final setSelectedCity(I)V
    .locals 7
    .param p1, "position"    # I

    .line 284
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;

    if-eqz v1, :cond_1

    move-object v2, v1

    .local v2, "$this$setSelectedCity_u24lambda_u2d30":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    const/4 v3, 0x0

    .line 285
    .local v3, "$i$a$-apply-QRViewModel$setSelectedCity$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithCityList()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/util/Event;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/Event;->peekContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .local v4, "it":Ljava/util/List;
    const/4 v5, 0x0

    .line 286
    .local v5, "$i$a$-let-QRViewModel$setSelectedCity$1$1":I
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/woleapp/netpos/contactless/model/ZenithCity;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/ZenithCity;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->setCityName(Ljava/lang/String;)V

    .line 287
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/woleapp/netpos/contactless/model/ZenithCity;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/ZenithCity;->getRegionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->setRegionName(Ljava/lang/String;)V

    .line 288
    nop

    .line 285
    .end local v4    # "it":Ljava/util/List;
    .end local v5    # "$i$a$-let-QRViewModel$setSelectedCity$1$1":I
    :cond_0
    nop

    .line 289
    nop

    .line 284
    .end local v2    # "$this$setSelectedCity_u24lambda_u2d30":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    .end local v3    # "$i$a$-apply-QRViewModel$setSelectedCity$1":I
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public final setSelectedMerchantCategory(Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;)V
    .locals 5
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->createZenithMerchantPayload:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;

    if-eqz v1, :cond_0

    move-object v2, v1

    .local v2, "$this$setSelectedMerchantCategory_u24lambda_u2d35":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    const/4 v3, 0x0

    .line 344
    .local v3, "$i$a$-apply-QRViewModel$setSelectedMerchantCategory$1":I
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;->getMerchantCategoryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->setMerchantCategoryCode(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;->getMerchantCategoryDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->setMerchantCategoryDescription(Ljava/lang/String;)V

    .line 346
    nop

    .line 343
    .end local v2    # "$this$setSelectedMerchantCategory_u24lambda_u2d35":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    .end local v3    # "$i$a$-apply-QRViewModel$setSelectedMerchantCategory$1":I
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method public final setStillHasRetryAttempts(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->stillHasRetryAttempts:Z

    return-void
.end method

.method public final textChangeComplete()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->subject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 340
    return-void
.end method

.method public final textChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->subject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
