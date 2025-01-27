.class public final Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;
.source "DisplayQrFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayQrFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayQrFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,149:1\n77#2,6:150\n49#3:156\n65#3,16:157\n93#3,3:173\n*S KotlinDebug\n*F\n+ 1 DisplayQrFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment\n*L\n44#1:150,6\n106#1:156\n106#1:157,16\n106#1:173,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020&H\u0002J$\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u001a\u00100\u001a\u00020&2\u0006\u00101\u001a\u00020)2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0008\u00102\u001a\u00020&H\u0002J\u0008\u00103\u001a\u000204H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u0018\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0019\u0010\u0002\u001a\u0004\u0008\u001a\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001f\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008!\u0010\"\u00a8\u00065"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "amount",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "getCompositeDisposable",
        "()Lio/reactivex/disposables/CompositeDisposable;",
        "setCompositeDisposable",
        "(Lio/reactivex/disposables/CompositeDisposable;)V",
        "email",
        "",
        "ioScheduler",
        "Lio/reactivex/Scheduler;",
        "getIoScheduler$annotations",
        "getIoScheduler",
        "()Lio/reactivex/Scheduler;",
        "setIoScheduler",
        "(Lio/reactivex/Scheduler;)V",
        "loader",
        "Landroid/app/AlertDialog;",
        "mainThreadScheduler",
        "getMainThreadScheduler$annotations",
        "getMainThreadScheduler",
        "setMainThreadScheduler",
        "name",
        "netposID",
        "userTID",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "generateMerchantQr",
        "",
        "initViews",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "processPayment",
        "validateSignUpFieldsOnTextChange",
        "",
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

.field private amount:Lcom/google/android/material/textfield/TextInputEditText;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;

.field public compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field public ioScheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private loader:Landroid/app/AlertDialog;

.field public mainThreadScheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private netposID:Ljava/lang/String;

.field private userTID:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$5Pvq8_QvfmuOU5lWiDWjYzjwIHI(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;-><init>()V

    .line 44
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 150
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 151
    const/4 v1, 0x0

    .line 150
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 152
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 154
    nop

    .line 152
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 155
    nop

    .line 44
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 36
    return-void
.end method

.method public static final synthetic access$getAmount$p(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    return-object v0
.end method

.method public static final synthetic access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;

    return-object v0
.end method

.method private final generateMerchantQr()V
    .locals 12

    .line 122
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->loader:Landroid/app/AlertDialog;

    const-string v1, "loader"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 123
    new-instance v0, Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;

    .line 124
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->userTID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 125
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/Singletons;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v3

    const-string v5, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/ConfigData;->getCardAcceptorIdCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v3

    goto :goto_1

    :cond_2
    :goto_0
    move-object v6, v5

    .line 126
    :goto_1
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v3, :cond_3

    const-string v3, "amount"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 127
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 128
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->email:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 129
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getBankName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v10, v5

    goto :goto_2

    :cond_4
    move-object v10, v3

    .line 130
    :goto_2
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/Singletons;->getNetPlusPayMid()Ljava/lang/String;

    move-result-object v11

    .line 123
    move-object v3, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v3 .. v10}, Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v0, "paymentWithQr":Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v4, p0

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 134
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;->paymentWithQr(Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;)Lio/reactivex/Single;

    move-result-object v5

    .line 135
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->loader:Landroid/app/AlertDialog;

    if-nez v6, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    .line 136
    :cond_5
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->getCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v7

    .line 137
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->getIoScheduler()Lio/reactivex/Scheduler;

    move-result-object v8

    .line 138
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->getMainThreadScheduler()Lio/reactivex/Scheduler;

    move-result-object v9

    .line 133
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$generateMerchantQr$1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$generateMerchantQr$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)V

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v3 .. v10}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Lio/reactivex/Single;Landroid/app/AlertDialog;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lkotlin/jvm/functions/Function0;)V

    .line 146
    return-void
.end method

.method public static synthetic getIoScheduler$annotations()V
    .locals 0
    .annotation runtime Ljavax/inject/Named;
        value = "io-scheduler"
    .end annotation

    return-void
.end method

.method public static synthetic getMainThreadScheduler$annotations()V
    .locals 0
    .annotation runtime Ljavax/inject/Named;
        value = "main-scheduler"
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;

    return-object v0
.end method

.method private final initViews()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$this$initViews_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;
    :cond_0
    const/4 v1, 0x0

    .line 86
    .local v1, "$i$a$-with-DisplayQrFragment$initViews$1":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;->priceTextBox:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "priceTextBox"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    .line 87
    nop

    .line 85
    .end local v0    # "$this$initViews_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;
    .end local v1    # "$i$a$-with-DisplayQrFragment$initViews$1":I
    nop

    .line 88
    return-void
.end method

.method private static final onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->processPayment()V

    .line 81
    return-void
.end method

.method private final processPayment()V
    .locals 3

    .line 91
    nop

    .line 92
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "amount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 93
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v1, 0x7f130025

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.all_please_enter_amount)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->validateSignUpFieldsOnTextChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->generateMerchantQr()V

    .line 101
    :cond_3
    :goto_1
    return-void
.end method

.method private final validateSignUpFieldsOnTextChange()Z
    .locals 7

    .line 104
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .local v0, "isValidated":Lkotlin/jvm/internal/Ref$BooleanRef;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 106
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v1, :cond_0

    const-string v1, "amount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/widget/TextView;

    .local v1, "$this$doOnTextChanged$iv":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 156
    .local v2, "$i$f$doOnTextChanged":I
    move-object v3, v1

    .line 157
    .local v3, "$this$addTextChangedListener_u24default$iv$iv":Landroid/widget/TextView;
    nop

    .line 163
    nop

    .line 157
    nop

    .line 170
    nop

    .line 157
    const/4 v4, 0x0

    .line 172
    .local v4, "$i$f$addTextChangedListener":I
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$1;

    invoke-direct {v5, p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 173
    .local v5, "textWatcher$iv$iv":Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$1;
    move-object v6, v5

    check-cast v6, Landroid/text/TextWatcher;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    move-object v3, v5

    check-cast v3, Landroid/text/TextWatcher;

    .line 156
    .end local v3    # "$this$addTextChangedListener_u24default$iv$iv":Landroid/widget/TextView;
    .end local v4    # "$i$f$addTextChangedListener":I
    .end local v5    # "textWatcher$iv$iv":Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$1;
    nop

    .line 118
    .end local v1    # "$this$doOnTextChanged$iv":Landroid/widget/TextView;
    .end local v2    # "$i$f$doOnTextChanged":I
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->getView()Landroid/view/View;

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

.method public final getCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "compositeDisposable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIoScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->ioScheduler:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ioScheduler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMainThreadScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->mainThreadScheduler:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mainThreadScheduler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const v0, 0x7f0d0044

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, R.layo\u2026lay_qr, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;

    .line 65
    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->initViews()V

    .line 71
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "user"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/model/User;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/User;

    .line 72
    .local v0, "user":Lcom/woleapp/netpos/contactless/model/User;
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/User;->getNetplus_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->netposID:Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->userTID:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/User;->getBusiness_name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->name:Ljava/lang/String;

    .line 75
    const-string v1, "contactless@gmail.com"

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->email:Ljava/lang/String;

    .line 77
    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->alertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->loader:Landroid/app/AlertDialog;

    .line 79
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDisplayQrBinding;->process:Landroid/widget/Button;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public final setCompositeDisposable(Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/disposables/CompositeDisposable;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public final setIoScheduler(Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/Scheduler;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->ioScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method public final setMainThreadScheduler(Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/Scheduler;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->mainThreadScheduler:Lio/reactivex/Scheduler;

    return-void
.end method
