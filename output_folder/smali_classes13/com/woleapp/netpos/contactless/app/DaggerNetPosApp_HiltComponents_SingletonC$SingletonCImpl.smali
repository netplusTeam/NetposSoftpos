.class final Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
.super Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$SingletonC;
.source "DaggerNetPosApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonCImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

.field private contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;",
            ">;"
        }
    .end annotation
.end field

.field private contactlessRegRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;",
            ">;"
        }
    .end annotation
.end field

.field private fcmbMerchantsAccountBaseUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fcmbMerchantsAccountDetailsServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;",
            ">;"
        }
    .end annotation
.end field

.field private fcmbMerchantsAccountServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NotificationRepository;",
            ">;"
        }
    .end annotation
.end field

.field private payByTransferBaseUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payByTransferRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;",
            ">;"
        }
    .end annotation
.end field

.field private payByTransferServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private payByTransferServiceServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferService;",
            ">;"
        }
    .end annotation
.end field

.field private providesAppDbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private providesBaseUrlForContactlessPaymentWithQrProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providesBaseUrlForContactlessRegProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providesBaseUrlForGetVerveOtpProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providesBaseUrlForGettingThresholdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providesBaseUrlForNotificationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providesCompositeDisposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;"
        }
    .end annotation
.end field

.field private providesContactlessQrPaymentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/QrPaymentService;",
            ">;"
        }
    .end annotation
.end field

.field private providesContactlessRegServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
            ">;"
        }
    .end annotation
.end field

.field private providesGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private providesHeaderInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private providesIoSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private providesMainThreadSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private providesNetposTransactionApiBaseUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providesNetposTransactionApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;",
            ">;"
        }
    .end annotation
.end field

.field private providesNotificationDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;",
            ">;"
        }
    .end annotation
.end field

.field private providesNotificationServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NotificationService;",
            ">;"
        }
    .end annotation
.end field

.field private providesOKHTTPClientForGetVerveOtpProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesOKHTTPClientForPayByTransferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesOKHTTPClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesQrServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/QrService;",
            ">;"
        }
    .end annotation
.end field

.field private providesRetrofitForContactlessQrPaymentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providesRetrofitForContactlessRegProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providesRetrofitForNetposTransactionApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providesRetrofitForNotificationServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providesRetrofitForRrnServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providesRetrofitForVerveOtpProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providesRetrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providesRrnServiceBaseUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providesRrnServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/RrnApiService;",
            ">;"
        }
    .end annotation
.end field

.field private providesVerveOtpServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/VerveOtpService;",
            ">;"
        }
    .end annotation
.end field

.field private providusMerchantsAccountBaseUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providusMerchantsAccountDetailsServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;",
            ">;"
        }
    .end annotation
.end field

.field private providusMerchantsAccountServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private repositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/Repository;",
            ">;"
        }
    .end annotation
.end field

.field private final singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

.field private webViewCallBackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V
    .locals 0
    .param p1, "applicationContextModuleParam"    # Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContextModuleParam"
        }
    .end annotation

    .line 971
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$SingletonC;-><init>()V

    .line 877
    iput-object p0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 972
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 973
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->initialize(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V

    .line 975
    return-void
.end method

.method synthetic constructor <init>(Ldagger/hilt/android/internal/modules/ApplicationContextModule;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V
    .locals 0
    .param p1, "x0"    # Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .param p2, "x1"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;

    .line 874
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;-><init>(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->webViewCallBackProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesCompositeDisposableProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesIoSchedulerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesMainThreadSchedulerProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesGsonProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRrnServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesNetposTransactionApiServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->contactlessRegRepositoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->notificationRepositoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesNotificationDaoProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->repositoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->payByTransferRepositoryProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesContactlessQrPaymentServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForContactlessQrPaymentProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesOKHTTPClientForGetVerveOtpProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForContactlessPaymentWithQrProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesContactlessRegServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForContactlessRegProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForContactlessRegProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesNotificationServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForNotificationServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForNotificationProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesAppDbProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForRrnServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRrnServiceBaseUrlProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForNetposTransactionApiServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesNetposTransactionApiBaseUrlProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesQrServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesVerveOtpServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesOKHTTPClientProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForGettingThresholdProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesHeaderInterceptorProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForVerveOtpProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForGetVerveOtpProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->payByTransferServiceServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providusMerchantsAccountDetailsServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->fcmbMerchantsAccountDetailsServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->payByTransferServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesOKHTTPClientForPayByTransferProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->payByTransferBaseUrlProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providusMerchantsAccountServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providusMerchantsAccountBaseUrlProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->fcmbMerchantsAccountServiceProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 874
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->fcmbMerchantsAccountBaseUrlProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method private initialize(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V
    .locals 3
    .param p1, "applicationContextModuleParam"    # Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "applicationContextModuleParam"
        }
    .end annotation

    .line 979
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->webViewCallBackProvider:Ljavax/inject/Provider;

    .line 980
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesCompositeDisposableProvider:Ljavax/inject/Provider;

    .line 981
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesIoSchedulerProvider:Ljavax/inject/Provider;

    .line 982
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesMainThreadSchedulerProvider:Ljavax/inject/Provider;

    .line 983
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesGsonProvider:Ljavax/inject/Provider;

    .line 984
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesOKHTTPClientForGetVerveOtpProvider:Ljavax/inject/Provider;

    .line 985
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForContactlessPaymentWithQrProvider:Ljavax/inject/Provider;

    .line 986
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForContactlessQrPaymentProvider:Ljavax/inject/Provider;

    .line 987
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesContactlessQrPaymentServiceProvider:Ljavax/inject/Provider;

    .line 988
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;

    .line 989
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForContactlessRegProvider:Ljavax/inject/Provider;

    .line 990
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForContactlessRegProvider:Ljavax/inject/Provider;

    .line 991
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesContactlessRegServiceProvider:Ljavax/inject/Provider;

    .line 992
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->contactlessRegRepositoryProvider:Ljavax/inject/Provider;

    .line 993
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForNotificationProvider:Ljavax/inject/Provider;

    .line 994
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForNotificationServiceProvider:Ljavax/inject/Provider;

    .line 995
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesNotificationServiceProvider:Ljavax/inject/Provider;

    .line 996
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->notificationRepositoryProvider:Ljavax/inject/Provider;

    .line 997
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesAppDbProvider:Ljavax/inject/Provider;

    .line 998
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesNotificationDaoProvider:Ljavax/inject/Provider;

    .line 999
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRrnServiceBaseUrlProvider:Ljavax/inject/Provider;

    .line 1000
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForRrnServiceProvider:Ljavax/inject/Provider;

    .line 1001
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRrnServiceProvider:Ljavax/inject/Provider;

    .line 1002
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesNetposTransactionApiBaseUrlProvider:Ljavax/inject/Provider;

    .line 1003
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForNetposTransactionApiServiceProvider:Ljavax/inject/Provider;

    .line 1004
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesNetposTransactionApiServiceProvider:Ljavax/inject/Provider;

    .line 1005
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesHeaderInterceptorProvider:Ljavax/inject/Provider;

    .line 1006
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesOKHTTPClientProvider:Ljavax/inject/Provider;

    .line 1007
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForGettingThresholdProvider:Ljavax/inject/Provider;

    .line 1008
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitProvider:Ljavax/inject/Provider;

    .line 1009
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesQrServiceProvider:Ljavax/inject/Provider;

    .line 1010
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesBaseUrlForGetVerveOtpProvider:Ljavax/inject/Provider;

    .line 1011
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesRetrofitForVerveOtpProvider:Ljavax/inject/Provider;

    .line 1012
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesVerveOtpServiceProvider:Ljavax/inject/Provider;

    .line 1013
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->repositoryProvider:Ljavax/inject/Provider;

    .line 1014
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providesOKHTTPClientForPayByTransferProvider:Ljavax/inject/Provider;

    .line 1015
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->payByTransferBaseUrlProvider:Ljavax/inject/Provider;

    .line 1016
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->payByTransferServiceProvider:Ljavax/inject/Provider;

    .line 1017
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->payByTransferServiceServiceProvider:Ljavax/inject/Provider;

    .line 1018
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providusMerchantsAccountBaseUrlProvider:Ljavax/inject/Provider;

    .line 1019
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providusMerchantsAccountServiceProvider:Ljavax/inject/Provider;

    .line 1020
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->providusMerchantsAccountDetailsServiceProvider:Ljavax/inject/Provider;

    .line 1021
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->fcmbMerchantsAccountBaseUrlProvider:Ljavax/inject/Provider;

    .line 1022
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->fcmbMerchantsAccountServiceProvider:Ljavax/inject/Provider;

    .line 1023
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->fcmbMerchantsAccountDetailsServiceProvider:Ljavax/inject/Provider;

    .line 1024
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->payByTransferRepositoryProvider:Ljavax/inject/Provider;

    .line 1025
    return-void
.end method


# virtual methods
.method public getDisableFragmentGetContextFix()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1033
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public injectNetPosApp(Lcom/woleapp/netpos/contactless/app/NetPosApp;)V
    .locals 0
    .param p1, "netPosApp"    # Lcom/woleapp/netpos/contactless/app/NetPosApp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "netPosApp"
        }
    .end annotation

    .line 1029
    return-void
.end method

.method public retainedComponentBuilder()Ldagger/hilt/android/internal/builders/ActivityRetainedComponentBuilder;
    .locals 3

    .line 1038
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V

    return-object v0
.end method

.method public serviceComponentBuilder()Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
    .locals 3

    .line 1043
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ServiceCBuilder;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ServiceCBuilder;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V

    return-object v0
.end method
