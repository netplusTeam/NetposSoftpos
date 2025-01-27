.class final Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;
.super Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$FragmentC;
.source "DaggerNetPosApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentCImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final fragmentCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;

.field private itemsRvAdapterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private javaScriptInterfaceAssistedFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "fragmentParam"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentParam"
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$FragmentC;-><init>()V

    .line 408
    iput-object p0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;

    .line 417
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 418
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 419
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 421
    invoke-direct {p0, p4}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->initialize(Landroidx/fragment/app/Fragment;)V

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "x1"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "x2"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "x3"    # Landroidx/fragment/app/Fragment;
    .param p5, "x4"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;

    .line 401
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private initialize(Landroidx/fragment/app/Fragment;)V
    .locals 7
    .param p1, "fragmentParam"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fragmentParam"
        }
    .end annotation

    .line 427
    new-instance v6, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;I)V

    invoke-static {v6}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->javaScriptInterfaceAssistedFactoryProvider:Ljavax/inject/Provider;

    .line 428
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;I)V

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->itemsRvAdapterFactoryProvider:Ljavax/inject/Provider;

    .line 429
    return-void
.end method

.method private injectCompleteQrPaymentWebViewFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1000(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->injectCustomWebViewClient(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;)V

    .line 512
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->javaScriptInterfaceAssistedFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->injectJavaScriptInterfaceAssistedFactory(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;)V

    .line 513
    return-object p1
.end method

.method private injectDisplayQrFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->injectCompositeDisposable(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 519
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->injectIoScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/Scheduler;)V

    .line 520
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/Scheduler;)V

    .line 521
    return-object p1
.end method

.method private injectEnterOtpFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment_MembersInjector;->injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;Lcom/google/gson/Gson;)V

    .line 527
    return-object p1
.end method

.method private injectFragmentBarCodeScanner2(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;)Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner_MembersInjector;->injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Lcom/google/gson/Gson;)V

    .line 540
    return-object p1
.end method

.method private injectFragmentBarCodeScannerRefactored2(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored_MembersInjector;->injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;Lcom/google/gson/Gson;)V

    .line 534
    return-object p1
.end method

.method private injectNewOrExistingFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment_MembersInjector;->injectCompositeDisposable(Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 546
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment_MembersInjector;->injectIoScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;Lio/reactivex/Scheduler;)V

    .line 547
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment_MembersInjector;->injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;Lio/reactivex/Scheduler;)V

    .line 548
    return-object p1
.end method

.method private injectNotificationDetailsFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_MembersInjector;->injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Lcom/google/gson/Gson;)V

    .line 555
    return-object p1
.end method

.method private injectNotificationFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->itemsRvAdapterFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->injectRvAdapterFactory(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;)V

    .line 561
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1400(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Lcom/google/gson/Gson;)V

    .line 562
    return-object p1
.end method

.method private injectTransactionHistoryFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment_MembersInjector;->injectCompositeDisposable(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 569
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment_MembersInjector;->injectIoScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Lio/reactivex/Scheduler;)V

    .line 570
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment_MembersInjector;->injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Lio/reactivex/Scheduler;)V

    .line 571
    return-object p1
.end method

.method private injectTransactionsFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1100(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment_MembersInjector;->injectCompositeDisposable(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 577
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1200(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment_MembersInjector;->injectIoScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lio/reactivex/Scheduler;)V

    .line 578
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;->access$1300(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment_MembersInjector;->injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lio/reactivex/Scheduler;)V

    .line 579
    return-object p1
.end method


# virtual methods
.method public getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;->getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public injectCompleteQrPaymentWebViewFragment(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)V
    .locals 0
    .param p1, "completeQrPaymentWebViewFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completeQrPaymentWebViewFragment"
        }
    .end annotation

    .line 438
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectCompleteQrPaymentWebViewFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    .line 439
    return-void
.end method

.method public injectDisplayQrFragment(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)V
    .locals 0
    .param p1, "displayQrFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayQrFragment"
        }
    .end annotation

    .line 443
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectDisplayQrFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;

    .line 444
    return-void
.end method

.method public injectDisplayQrResultFragment(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrResultFragment;)V
    .locals 0
    .param p1, "displayQrResultFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrResultFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayQrResultFragment"
        }
    .end annotation

    .line 448
    return-void
.end method

.method public injectEnterOtpFragment(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)V
    .locals 0
    .param p1, "enterOtpFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enterOtpFragment"
        }
    .end annotation

    .line 452
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectEnterOtpFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    .line 453
    return-void
.end method

.method public injectExistingCustomersRegistrationFragment(Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;)V
    .locals 0
    .param p1, "existingCustomersRegistrationFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existingCustomersRegistrationFragment"
        }
    .end annotation

    .line 458
    return-void
.end method

.method public injectFragmentBarCodeScanner(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;)V
    .locals 0
    .param p1, "fragmentBarCodeScanner"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentBarCodeScanner"
        }
    .end annotation

    .line 468
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectFragmentBarCodeScanner2(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;)Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;

    .line 469
    return-void
.end method

.method public injectFragmentBarCodeScannerRefactored(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V
    .locals 0
    .param p1, "fragmentBarCodeScannerRefactored"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentBarCodeScannerRefactored"
        }
    .end annotation

    .line 463
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectFragmentBarCodeScannerRefactored2(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    .line 464
    return-void
.end method

.method public injectNewOrExistingFragment(Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;)V
    .locals 0
    .param p1, "newOrExistingFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newOrExistingFragment"
        }
    .end annotation

    .line 473
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectNewOrExistingFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;

    .line 474
    return-void
.end method

.method public injectNotificationDetailsFragment(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)V
    .locals 0
    .param p1, "notificationDetailsFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationDetailsFragment"
        }
    .end annotation

    .line 479
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectNotificationDetailsFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;

    .line 480
    return-void
.end method

.method public injectNotificationFragment(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)V
    .locals 0
    .param p1, "notificationFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationFragment"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectNotificationFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;

    .line 485
    return-void
.end method

.method public injectResponseModal(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)V
    .locals 0
    .param p1, "responseModal"    # Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseModal"
        }
    .end annotation

    .line 433
    return-void
.end method

.method public injectTransactionHistoryFragment(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V
    .locals 0
    .param p1, "transactionHistoryFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transactionHistoryFragment"
        }
    .end annotation

    .line 490
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectTransactionHistoryFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    .line 491
    return-void
.end method

.method public injectTransactionsFragment(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V
    .locals 0
    .param p1, "transactionsFragment"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transactionsFragment"
        }
    .end annotation

    .line 495
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->injectTransactionsFragment2(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    .line 496
    return-void
.end method

.method public viewWithFragmentComponentBuilder()Ldagger/hilt/android/internal/builders/ViewWithFragmentComponentBuilder;
    .locals 7

    .line 505
    new-instance v6, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V

    return-object v6
.end method
