.class public final Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "RegistrationOTPFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegistrationOTPFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegistrationOTPFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,210:1\n77#2,6:211\n*S KotlinDebug\n*F\n+ 1 RegistrationOTPFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment\n*L\n35#1:211,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J$\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010$\u001a\u00020\u0019H\u0002J\u0008\u0010%\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006&"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;",
        "deviceSerialID",
        "",
        "loader",
        "Landroid/app/AlertDialog;",
        "newAccountNumber",
        "otpResentConfirmationText",
        "Landroid/widget/TextView;",
        "otpView",
        "Lcom/chaos/view/PinView;",
        "partnerID",
        "resendCode",
        "timeSeconds",
        "",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;",
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
        "resendOtp",
        "startResendTimer",
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

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;

.field private deviceSerialID:Ljava/lang/String;

.field private loader:Landroid/app/AlertDialog;

.field private newAccountNumber:Ljava/lang/String;

.field private otpResentConfirmationText:Landroid/widget/TextView;

.field private otpView:Lcom/chaos/view/PinView;

.field private partnerID:Ljava/lang/String;

.field private resendCode:Landroid/widget/TextView;

.field private timeSeconds:J

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2zVQ76O4DjyqhBYAcBjeBuXUdiA(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6ch5ASTBqC_YWAY2iSACRoW9fpg(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 35
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 211
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 212
    const/4 v1, 0x0

    .line 211
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 213
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 215
    nop

    .line 213
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 216
    nop

    .line 35
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 40
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->timeSeconds:J

    .line 30
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;

    return-object v0
.end method

.method public static final synthetic access$getLoader$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->loader:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static final synthetic access$getNewAccountNumber$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->newAccountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPartnerID$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->partnerID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getResendCode$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->resendCode:Landroid/widget/TextView;

    return-object v0
.end method

.method public static final synthetic access$getTimeSeconds$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)J
    .locals 2
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 30
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->timeSeconds:J

    return-wide v0
.end method

.method public static final synthetic access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 30
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setTimeSeconds$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;J)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;
    .param p1, "<set-?>"    # J

    .line 30
    iput-wide p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->timeSeconds:J

    return-void
.end method

.method public static final synthetic access$startResendTimer(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 30
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->startResendTimer()V

    return-void
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    return-object v0
.end method

.method private final initViews()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$this$initViews_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;
    :cond_0
    const/4 v1, 0x0

    .line 175
    .local v1, "$i$a$-with-RegistrationOTPFragment$initViews$1":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;->resendOtp:Landroid/widget/TextView;

    const-string v3, "resendOtp"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->resendCode:Landroid/widget/TextView;

    .line 176
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;->pinView:Lcom/chaos/view/PinView;

    const-string v3, "pinView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->otpView:Lcom/chaos/view/PinView;

    .line 177
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;->otpResent:Landroid/widget/TextView;

    const-string v3, "otpResent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->otpResentConfirmationText:Landroid/widget/TextView;

    .line 178
    nop

    .line 174
    .end local v0    # "$this$initViews_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;
    .end local v1    # "$i$a$-with-RegistrationOTPFragment$initViews$1":I
    nop

    .line 179
    return-void
.end method

.method private static final onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->resendOtp()V

    .line 74
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;->otpResent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    return-void
.end method

.method private static final onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "You are only allowed"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 79
    nop

    .line 80
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 81
    const v1, 0x7f0a0071

    .line 82
    nop

    .line 79
    const-string v2, "Login Fragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method private final resendOtp()V
    .locals 11

    .line 161
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->newAccountNumber:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "newAccountNumber"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->partnerID:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "partnerID"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->deviceSerialID:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "deviceSerialID"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    invoke-virtual {v0, v1, v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->findAccountForFirstBankUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v5, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v6, p0

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 163
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getFirstBankAccountNumberResponse()Landroidx/lifecycle/LiveData;

    move-result-object v7

    .line 164
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->loader:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    const-string v0, "loader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v2

    goto :goto_0

    :cond_3
    move-object v8, v0

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v9

    const-string v0, "requireActivity().supportFragmentManager"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$resendOtp$1;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$resendOtp$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v5 .. v10}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Landroid/app/AlertDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 171
    return-void
.end method

.method private final startResendTimer()V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->resendCode:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "resendCode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 186
    .local v0, "timer":Ljava/util/Timer;
    nop

    .line 187
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;

    invoke-direct {v1, p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Ljava/util/Timer;)V

    move-object v2, v1

    check-cast v2, Ljava/util/TimerTask;

    .line 204
    const-wide/16 v3, 0x0

    .line 205
    const-wide/16 v5, 0x3e8

    .line 186
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 208
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getView()Landroid/view/View;

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    nop

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 53
    nop

    .line 49
    const v0, 0x7f0d0052

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "inflate(\n               \u2026     false,\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;

    .line 48
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;

    .line 55
    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->initPartnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->partnerID:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->deviceSerialID:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->initViews()V

    .line 66
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->startResendTimer()V

    .line 67
    const-string v0, "SAVE_PHONE_NUMBER"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "newPoneNumber":Ljava/lang/String;
    const-string v3, "newPoneNumber"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .local v3, "phoneNumber":Ljava/lang/String;
    const-string v5, "SAVED_ACCOUNT_NUM_SIGNED_UP"

    invoke-static {v5, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "newActNumber":Ljava/lang/String;
    const-string v5, "newActNumber"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->newAccountNumber:Ljava/lang/String;

    .line 71
    sget-object v4, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->alertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->loader:Landroid/app/AlertDialog;

    .line 72
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->resendCode:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v2, "resendCode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getOtpBankPMessage()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    invoke-virtual {v2, v5, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 86
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->otpView:Lcom/chaos/view/PinView;

    const-string v5, "otpView"

    if-nez v2, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-virtual {v2}, Lcom/chaos/view/PinView;->requestFocus()Z

    .line 88
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, "input_method"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 87
    nop

    .line 89
    .local v2, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    nop

    .line 90
    const/4 v7, 0x2

    .line 91
    nop

    .line 89
    invoke-virtual {v2, v7, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 93
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->otpView:Lcom/chaos/view/PinView;

    if-nez v6, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, v6

    .line 94
    :goto_0
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3;

    invoke-direct {v5, p0, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Ljava/lang/String;)V

    check-cast v5, Landroid/text/TextWatcher;

    .line 93
    invoke-virtual {v4, v5}, Lcom/chaos/view/PinView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    return-void
.end method
