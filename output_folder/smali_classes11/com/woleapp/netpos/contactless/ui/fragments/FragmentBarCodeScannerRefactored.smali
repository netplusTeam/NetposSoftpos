.class public final Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;
.super Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScannerRefactored;
.source "FragmentBarCodeScannerRefactored.kt"

# interfaces
.implements Lcom/woleapp/netpos/contactless/domain/PermissionHandler;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentBarCodeScannerRefactored.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentBarCodeScannerRefactored.kt\ncom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,212:1\n77#2,6:213\n*S KotlinDebug\n*F\n+ 1 FragmentBarCodeScannerRefactored.kt\ncom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored\n*L\n51#1:213,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0019\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0096\u0001J$\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0008\u0010&\u001a\u00020\'H\u0016J\u001e\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020*2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0+H\u0016J\u001e\u0010,\u001a\u00020\'2\u0006\u0010)\u001a\u00020*2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0+H\u0016J-\u0010-\u001a\u00020\'2\u0006\u0010)\u001a\u00020*2\u000e\u0010.\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001d0/2\u0006\u00100\u001a\u000201H\u0016\u00a2\u0006\u0002\u00102J\u001a\u00103\u001a\u00020\'2\u0006\u00104\u001a\u00020\u001f2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016JA\u00105\u001a\u00020\'2\u0006\u00106\u001a\u0002072\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001d2\u0006\u00109\u001a\u00020*2\u0008\u0008\u0001\u0010:\u001a\u00020*2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\'0<H\u0096\u0001J)\u0010=\u001a\u00020\'2\u0006\u00106\u001a\u0002072\u0006\u0010)\u001a\u00020*2\u0006\u0010>\u001a\u00020\u001d2\u0006\u00108\u001a\u00020\u001dH\u0096\u0001J\u0008\u0010?\u001a\u00020\'H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006@"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/woleapp/netpos/contactless/domain/PermissionHandler;",
        "()V",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;",
        "cameraSource",
        "Lcom/google/android/gms/vision/CameraSource;",
        "detector",
        "Lcom/google/android/gms/vision/barcode/BarcodeDetector;",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "setGson",
        "(Lcom/google/gson/Gson;)V",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "checkForPermission",
        "",
        "context",
        "Landroid/content/Context;",
        "perms",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "",
        "onPermissionsDenied",
        "requestCode",
        "",
        "",
        "onPermissionsGranted",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onViewCreated",
        "view",
        "permissionHandler",
        "host",
        "Landroidx/lifecycle/LifecycleOwner;",
        "permissionToRequest",
        "permRequestCode",
        "permRationaleStringId",
        "fn",
        "Lkotlin/Function0;",
        "requestForPermission",
        "permissionRationale",
        "startCameraGoogleVision",
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
.field private final synthetic $$delegate_0:Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;

.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;

.field private cameraSource:Lcom/google/android/gms/vision/CameraSource;

.field private detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

.field public gson:Lcom/google/gson/Gson;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private surfaceView:Landroid/view/SurfaceView;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->_$_findViewCache:Ljava/util/Map;

    .line 42
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScannerRefactored;-><init>()V

    .line 43
    new-instance v0, Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->$$delegate_0:Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;

    .line 51
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 213
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 214
    const/4 v1, 0x0

    .line 213
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 215
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 217
    nop

    .line 215
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 218
    nop

    .line 51
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->viewModel$delegate:Lkotlin/Lazy;

    .line 41
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;

    return-object v0
.end method

.method public static final synthetic access$getCameraSource$p(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/google/android/gms/vision/CameraSource;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    .line 40
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$startCameraGoogleVision(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    .line 40
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->startCameraGoogleVision()V

    return-void
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    return-object v0
.end method

.method private final startCameraGoogleVision()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "surfaceView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V

    check-cast v2, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 130
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-nez v0, :cond_1

    const-string v0, "detector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V

    check-cast v0, Lcom/google/android/gms/vision/Detector$Processor;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 186
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public checkForPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->$$delegate_0:Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;->checkForPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->gson:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "gson"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const v0, 0x7f0d0040

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, R.layo\u2026ctored, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;

    .line 59
    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;->scannerView:Landroid/view/SurfaceView;

    const-string v3, "binding.scannerView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->surfaceView:Landroid/view/SurfaceView;

    .line 60
    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    const/16 v3, 0x100

    invoke-virtual {v0, v3}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    const-string v3, "Builder(requireContext()\u2026ODE)\n            .build()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 63
    new-instance v0, Lcom/google/android/gms/vision/CameraSource$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-nez v4, :cond_1

    const-string v4, "detector"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    check-cast v4, Lcom/google/android/gms/vision/Detector;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/vision/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    .line 64
    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/vision/CameraSource$Builder;->setRequestedPreviewSize(II)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    .line 65
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/vision/CameraSource$Builder;->setAutoFocusEnabled(Z)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource$Builder;->build()Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    const-string v3, "Builder(requireContext()\u2026rue)\n            .build()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    .line 68
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    .line 70
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onCreateView$1;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onCreateView$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V

    check-cast v4, Landroidx/activity/OnBackPressedCallback;

    .line 68
    invoke-virtual {v0, v3, v4}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScannerRefactored;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScannerRefactored;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-nez v0, :cond_0

    const-string v0, "cameraSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 191
    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "perms"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130175

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "perms"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130176

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScannerRefactored;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 200
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    .line 84
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "requireContext()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 82
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onViewCreated$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const-string v5, "android.permission.CAMERA"

    const/16 v6, 0xc8

    const v7, 0x7f130062

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->permissionHandler(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V

    .line 91
    return-void
.end method

.method public permissionHandler(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionToRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->$$delegate_0:Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;->permissionHandler(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public requestForPermission(Landroidx/lifecycle/LifecycleOwner;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionRationale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionToRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->$$delegate_0:Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/usecases/PermissionHandlerImpl;->requestForPermission(Landroidx/lifecycle/LifecycleOwner;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setGson(Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/google/gson/Gson;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->gson:Lcom/google/gson/Gson;

    return-void
.end method
