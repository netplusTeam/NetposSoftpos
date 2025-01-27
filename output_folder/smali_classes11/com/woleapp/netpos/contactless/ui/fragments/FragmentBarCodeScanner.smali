.class public final Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;
.super Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScanner;
.source "FragmentBarCodeScanner.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentBarCodeScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentBarCodeScanner.kt\ncom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,173:1\n77#2,6:174\n*S KotlinDebug\n*F\n+ 1 FragmentBarCodeScanner.kt\ncom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner\n*L\n38#1:174,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J-\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020$H\u0017\u00a2\u0006\u0002\u0010%J\u0008\u0010&\u001a\u00020\u001cH\u0016J\u001a\u0010\'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010)\u001a\u00020\u001cH\u0002J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020,H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006-"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "codeScanner",
        "Lcom/budiyev/android/codescanner/CodeScanner;",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "setGson",
        "(Lcom/google/gson/Gson;)V",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "checkPermission",
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
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onViewCreated",
        "view",
        "requestPermission",
        "showMessageOKCancel",
        "okListener",
        "Landroid/content/DialogInterface$OnClickListener;",
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

.field private codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

.field public gson:Lcom/google/gson/Gson;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$41MOpioZNVchMbG2JdoqQFuVR2Q(Lcom/google/zxing/Result;Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->onViewCreated$lambda-1$lambda-0(Lcom/google/zxing/Result;Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QFLh-74DwJJiYHLokbJ3zuE1k_Y(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->onRequestPermissionsResult$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qjh9SkamBmA6X72ngcQIs0zDJP8(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->onViewCreated$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uTIe7UQNz28Ocy3foyZ9JudHy0w(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;Lcom/google/zxing/Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;Lcom/google/zxing/Result;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScanner;-><init>()V

    .line 38
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 174
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 175
    const/4 v1, 0x0

    .line 174
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 176
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 178
    nop

    .line 176
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 179
    nop

    .line 38
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->viewModel$delegate:Lkotlin/Lazy;

    .line 34
    return-void
.end method

.method private final checkPermission()Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    nop

    .line 111
    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    return-object v0
.end method

.method private static final onRequestPermissionsResult$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requestPermission()V

    .line 157
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;Lcom/google/zxing/Result;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;
    .param p1, "$view"    # Landroid/view/View;
    .param p2, "it"    # Lcom/google/zxing/Result;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;-><init>(Lcom/google/zxing/Result;Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda-1$lambda-0(Lcom/google/zxing/Result;Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V
    .locals 6
    .param p0, "$it"    # Lcom/google/zxing/Result;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;
    .param p2, "$view"    # Landroid/view/View;

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "READ_DATA=====>%s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    nop

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    sget-object v2, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.text"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->base64ToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object v4, v2

    check-cast v4, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    move-object v1, v2

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 78
    .local v1, "scannedData":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v2

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;->getCard_scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->setCardScheme(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v4, 0x7f13018f

    invoke-virtual {p1, v4}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 82
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 83
    nop

    .line 84
    new-array v0, v0, [Lkotlin/Pair;

    const-string v4, "STRING_QR_READ_RESULT_BUNDLE_KEY"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 82
    const-string v3, "STRING_QR_READ_RESULT_REQUEST_KEY"

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 87
    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    const v3, 0x7f1300cd

    invoke-virtual {p1, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.invalid_qr)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 89
    :goto_1
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 90
    return-void
.end method

.method private static final onViewCreated$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v0, :cond_0

    const-string v0, "codeScanner"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->startPreview()V

    .line 94
    return-void
.end method

.method private final requestPermission()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 120
    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 121
    nop

    .line 118
    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method private final showMessageOKCancel(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    const-string v1, "You need to allow access permissions"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    const-string v1, "OK"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    const-string v1, "Cancel"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 171
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getView()Landroid/view/View;

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

.method public final getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->gson:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "gson"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$onCreateView$1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$onCreateView$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;)V

    check-cast v2, Landroidx/activity/OnBackPressedCallback;

    .line 45
    invoke-virtual {v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 55
    :cond_0
    const v0, 0x7f0d0067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflater.inflate(R.layou\u2026arcode, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScanner;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v0, :cond_0

    const-string v0, "codeScanner"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->releaseResources()V

    .line 107
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScanner;->onPause()V

    .line 108
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    nop

    .line 132
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    const-string v1, "Permission Granted"

    check-cast v1, Ljava/lang/CharSequence;

    .line 136
    nop

    .line 133
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    const-string v1, "Permission Denied"

    check-cast v1, Ljava/lang/CharSequence;

    .line 144
    nop

    .line 141
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 147
    nop

    .line 148
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    nop

    .line 147
    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;)V

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->showMessageOKCancel(Landroid/content/DialogInterface$OnClickListener;)V

    .line 162
    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_FragmentBarCodeScanner;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v0, :cond_0

    const-string v0, "codeScanner"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->startPreview()V

    .line 103
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const v0, 0x7f0a02ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/budiyev/android/codescanner/CodeScannerView;

    .line 60
    .local v0, "scannerView":Lcom/budiyev/android/codescanner/CodeScannerView;
    new-instance v1, Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/budiyev/android/codescanner/CodeScanner;-><init>(Landroid/content/Context;Lcom/budiyev/android/codescanner/CodeScannerView;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    .line 62
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->checkPermission()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v2, 0x0

    const-string v3, "codeScanner"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/budiyev/android/codescanner/CodeScanner;->setCamera(I)V

    .line 64
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    sget-object v4, Lcom/budiyev/android/codescanner/CodeScanner;->ALL_FORMATS:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/budiyev/android/codescanner/CodeScanner;->setFormats(Ljava/util/List;)V

    .line 65
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    sget-object v4, Lcom/budiyev/android/codescanner/AutoFocusMode;->SAFE:Lcom/budiyev/android/codescanner/AutoFocusMode;

    invoke-virtual {v1, v4}, Lcom/budiyev/android/codescanner/CodeScanner;->setAutoFocusMode(Lcom/budiyev/android/codescanner/AutoFocusMode;)V

    .line 66
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    sget-object v4, Lcom/budiyev/android/codescanner/ScanMode;->SINGLE:Lcom/budiyev/android/codescanner/ScanMode;

    invoke-virtual {v1, v4}, Lcom/budiyev/android/codescanner/CodeScanner;->setScanMode(Lcom/budiyev/android/codescanner/ScanMode;)V

    .line 67
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/budiyev/android/codescanner/CodeScanner;->setAutoFocusEnabled(Z)V

    .line 68
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/budiyev/android/codescanner/CodeScanner;->setFlashEnabled(Z)V

    .line 69
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->codeScanner:Lcom/budiyev/android/codescanner/CodeScanner;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v2, v1

    :goto_0
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/budiyev/android/codescanner/CodeScanner;->setDecodeCallback(Lcom/budiyev/android/codescanner/DecodeCallback;)V

    .line 92
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;)V

    invoke-virtual {v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 96
    :cond_7
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->requestPermission()V

    .line 98
    :goto_1
    return-void
.end method

.method public final setGson(Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/google/gson/Gson;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->gson:Lcom/google/gson/Gson;

    return-void
.end method
