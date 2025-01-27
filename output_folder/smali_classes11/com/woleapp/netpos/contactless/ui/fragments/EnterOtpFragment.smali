.class public final Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_EnterOtpFragment;
.source "EnterOtpFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterOtpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterOtpFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,149:1\n77#2,6:150\n*S KotlinDebug\n*F\n+ 1 EnterOtpFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment\n*L\n46#1:150,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\""
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "setGson",
        "(Lcom/google/gson/Gson;)V",
        "otpResentConfirmationText",
        "Landroid/widget/TextView;",
        "otpView",
        "Lcom/chaos/view/PinView;",
        "resendCode",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initViews",
        "",
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

.field private binding:Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;

.field public gson:Lcom/google/gson/Gson;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private otpResentConfirmationText:Landroid/widget/TextView;

.field private otpView:Lcom/chaos/view/PinView;

.field private resendCode:Landroid/widget/TextView;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_EnterOtpFragment;-><init>()V

    .line 46
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
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 154
    nop

    .line 152
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 155
    nop

    .line 46
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 38
    return-void
.end method

.method public static final synthetic access$getOtpResentConfirmationText$p(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    .line 37
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->otpResentConfirmationText:Landroid/widget/TextView;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    .line 37
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    return-object v0
.end method

.method private final initViews()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$this$initViews_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;
    :cond_0
    const/4 v1, 0x0

    .line 143
    .local v1, "$i$a$-with-EnterOtpFragment$initViews$1":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;->resendOtp:Landroid/widget/TextView;

    const-string v3, "resendOtp"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->resendCode:Landroid/widget/TextView;

    .line 144
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;->pinView:Lcom/chaos/view/PinView;

    const-string v3, "pinView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->otpView:Lcom/chaos/view/PinView;

    .line 145
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;->otpResent:Landroid/widget/TextView;

    const-string v3, "otpResent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->otpResentConfirmationText:Landroid/widget/TextView;

    .line 146
    nop

    .line 142
    .end local v0    # "$this$initViews_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;
    .end local v1    # "$i$a$-with-EnterOtpFragment$initViews$1":I
    nop

    .line 147
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->getView()Landroid/view/View;

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

    .line 45
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->gson:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "gson"

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

    .line 54
    nop

    .line 55
    const v0, 0x7f0d0066

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, R.layo\u2026agment, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;

    .line 54
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;

    .line 56
    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutEnterOtpFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_EnterOtpFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_EnterOtpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->initViews()V

    .line 62
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->otpView:Lcom/chaos/view/PinView;

    const-string v1, "otpView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/chaos/view/PinView;->requestFocus()Z

    .line 64
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 63
    nop

    .line 65
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    nop

    .line 66
    const/4 v3, 0x2

    .line 67
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 69
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->otpView:Lcom/chaos/view/PinView;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v3, v1}, Lcom/chaos/view/PinView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    const v1, 0x7f13019d

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.resend_code)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .local v1, "resendCodeText":Ljava/lang/String;
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    .line 120
    nop

    .line 121
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, "Resend it"

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 119
    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->customSpannableString(Ljava/lang/String;IILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;

    move-result-object v3

    .line 137
    .local v3, "spannableText":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->resendCode:Landroid/widget/TextView;

    const-string v5, "resendCode"

    if-nez v4, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->resendCode:Landroid/widget/TextView;

    if-nez v4, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 139
    return-void
.end method

.method public final setGson(Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/google/gson/Gson;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->gson:Lcom/google/gson/Gson;

    return-void
.end method
