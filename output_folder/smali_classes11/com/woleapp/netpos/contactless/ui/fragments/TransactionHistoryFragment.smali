.class public final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionHistoryFragment;
.source "TransactionHistoryFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionHistoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionHistoryFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,319:1\n77#2,6:320\n77#2,6:326\n49#3:332\n65#3,16:333\n93#3,3:349\n49#3:352\n65#3,16:353\n93#3,3:369\n49#3:372\n65#3,16:373\n93#3,3:389\n*S KotlinDebug\n*F\n+ 1 TransactionHistoryFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment\n*L\n50#1:320,6\n54#1:326,6\n221#1:332\n221#1:333,16\n221#1:349,3\n233#1:352\n233#1:353,16\n233#1:369,3\n245#1:372\n245#1:373,16\n245#1:389,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 >2\u00020\u0001:\u0001>B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u0001012\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u001a\u00104\u001a\u0002052\u0006\u00106\u001a\u00020-2\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u0012\u00107\u001a\u0002052\u0008\u0008\u0002\u00108\u001a\u000209H\u0002J\u0008\u0010:\u001a\u000205H\u0002J\u0008\u0010;\u001a\u000205H\u0002J\u0008\u0010<\u001a\u00020=H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0016\u0010\u0002\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001e\u0010\u0002\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010\u001aR\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008#\u0010$R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010&\u001a\u0004\u0008)\u0010*\u00a8\u0006?"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "adapter",
        "Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "getCompositeDisposable",
        "()Lio/reactivex/disposables/CompositeDisposable;",
        "setCompositeDisposable",
        "(Lio/reactivex/disposables/CompositeDisposable;)V",
        "deviceId",
        "",
        "feedbackBinding",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;",
        "feedbackDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "globalAction",
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
        "notificationModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "getNotificationModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "notificationModel$delegate",
        "Lkotlin/Lazy;",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;",
        "viewModel$delegate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "setSelectedTab",
        "selectedTab",
        "",
        "submitFeedback",
        "submitMerchantFeedback",
        "validateSignUpFieldsOnTextChange",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;


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

.field private adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

.field public compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

.field private feedbackDialog:Landroidx/appcompat/app/AlertDialog;

.field private globalAction:Ljava/lang/String;

.field public ioScheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private loader:Landroid/app/AlertDialog;

.field public mainThreadScheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final notificationModel$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$7fwII2MqbMDMdJRcY7eKxvcp-tg(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NPPB0MamTrcbmvXg0wyYPUsZwrg(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->onViewCreated$lambda-4(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ahImfWIzQo38aM6Ak32jCox6iFc(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->onViewCreated$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g25rCgJcs0EmlsMx6HOgnYKhnE8(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionHistoryFragment;-><init>()V

    .line 50
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 320
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 321
    const/4 v1, 0x0

    .line 320
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 322
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 324
    nop

    .line 322
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 325
    nop

    .line 50
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 54
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 326
    .restart local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 327
    const/4 v1, 0x0

    .line 326
    .restart local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 328
    .restart local v2    # "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 330
    nop

    .line 328
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$special$$inlined$activityViewModels$default$4;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 331
    nop

    .line 54
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->notificationModel$delegate:Lkotlin/Lazy;

    .line 36
    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    return-object v0
.end method

.method public static final synthetic access$getFeedbackBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    return-object v0
.end method

.method public static final synthetic access$getFeedbackDialog$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    .line 35
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setGlobalAction$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->globalAction:Ljava/lang/String;

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

.method private final getNotificationModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->notificationModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    return-object v0
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    return-object v0
.end method

.method private static final onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    nop

    .line 114
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x1

    .line 113
    :goto_0
    nop

    .line 117
    .local v0, "selected":I
    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->setSelectedTab(I)V

    .line 118
    return-void
.end method

.method private static final onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Ljava/util/List;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .param p1, "it"    # Ljava/util/List;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->submitList(Ljava/util/List;)V

    .line 131
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method private static final onViewCreated$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->complaintsBtn:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "feedbackDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 189
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    if-nez v0, :cond_2

    const-string v0, "feedbackBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    :cond_3
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method private static final onViewCreated$lambda-4(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->submitMerchantFeedback()V

    .line 194
    return-void
.end method

.method private final setSelectedTab(I)V
    .locals 9
    .param p1, "selectedTab"    # I

    .line 282
    const/16 v0, 0x8

    const/high16 v1, 0x1060000

    const/4 v2, 0x1

    const v3, 0x7f060034

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "binding"

    if-nez p1, :cond_6

    .line 283
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v7, :cond_0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_0
    iget-object v7, v7, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    .line 285
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    .line 286
    nop

    .line 284
    invoke-static {v8, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 283
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 289
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v3, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_1
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchButton:Landroid/widget/Button;

    .line 291
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    .line 292
    nop

    .line 290
    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 289
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 295
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v1, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_2
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v1, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_3
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v1, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_4
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v0, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v5, v0

    :goto_0
    iget-object v0, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->rvTransactionsHistory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 300
    :cond_6
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v7, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_7
    iget-object v7, v7, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchButton:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v7, :cond_8

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_8
    iget-object v7, v7, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v2, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_9
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    .line 304
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    .line 305
    nop

    .line 303
    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 302
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 308
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v1, :cond_a

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_a
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchButton:Landroid/widget/Button;

    .line 310
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 311
    nop

    .line 309
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 308
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 314
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v1, :cond_b

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_b
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v1, :cond_c

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    move-object v5, v1

    :goto_1
    iget-object v1, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->rvTransactionsHistory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 317
    :goto_2
    return-void
.end method

.method static synthetic setSelectedTab$default(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;IILjava/lang/Object;)V
    .locals 0

    .line 281
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->setSelectedTab(I)V

    return-void
.end method

.method private final submitFeedback()V
    .locals 14

    .line 261
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->loader:Landroid/app/AlertDialog;

    const-string v1, "loader"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 262
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    const-string v3, "feedbackBinding"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "email":Ljava/lang/String;
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->subjectEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "subject":Ljava/lang/String;
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    if-nez v5, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_5
    iget-object v3, v5, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->feedbackEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "feedback":Ljava/lang/String;
    new-instance v5, Lcom/woleapp/netpos/contactless/model/FeedbackRequest;

    .line 267
    nop

    .line 266
    invoke-direct {v5, v3, v4, v0}, Lcom/woleapp/netpos/contactless/model/FeedbackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v5, "newFeedBack":Lcom/woleapp/netpos/contactless/model/FeedbackRequest;
    sget-object v6, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v7, p0

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 270
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getNotificationModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v8

    sget-object v9, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v9}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->initPartnerId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->deviceId:Ljava/lang/String;

    if-nez v10, :cond_7

    const-string v10, "deviceId"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v2

    :cond_7
    invoke-virtual {v8, v5, v9, v10}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->feedbackFromMerchants(Lcom/woleapp/netpos/contactless/model/FeedbackRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v8

    .line 271
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->loader:Landroid/app/AlertDialog;

    if-nez v9, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v2

    .line 272
    :cond_8
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v10

    .line 273
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getIoScheduler()Lio/reactivex/Scheduler;

    move-result-object v11

    .line 274
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getMainThreadScheduler()Lio/reactivex/Scheduler;

    move-result-object v12

    .line 269
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$submitFeedback$1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$submitFeedback$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V

    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v6 .. v13}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Lio/reactivex/Single;Landroid/app/AlertDialog;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lkotlin/jvm/functions/Function0;)V

    .line 279
    return-void
.end method

.method private final submitMerchantFeedback()V
    .locals 5

    .line 200
    nop

    .line 201
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    const/4 v1, 0x0

    const-string v2, "feedbackBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    .line 202
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "Enter your email"

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_4

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->subjectEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    if-eqz v0, :cond_5

    .line 205
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "Please enter the subject of the complaint"

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_4

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->feedbackEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    if-eqz v3, :cond_8

    .line 208
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "Please enter the feedback"

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_4

    .line 211
    :cond_8
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->validateSignUpFieldsOnTextChange()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 212
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->submitFeedback()V

    .line 216
    :cond_9
    :goto_4
    return-void
.end method

.method private final validateSignUpFieldsOnTextChange()Z
    .locals 9

    .line 219
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .local v0, "isValidated":Lkotlin/jvm/internal/Ref$BooleanRef;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 221
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    const/4 v2, 0x0

    const-string v3, "feedbackBinding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v4, "feedbackBinding.email"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    .local v1, "$this$doOnTextChanged$iv":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 332
    .local v4, "$i$f$doOnTextChanged":I
    move-object v5, v1

    .line 333
    .local v5, "$this$addTextChangedListener_u24default$iv$iv":Landroid/widget/TextView;
    nop

    .line 339
    nop

    .line 333
    nop

    .line 346
    nop

    .line 333
    const/4 v6, 0x0

    .line 348
    .local v6, "$i$f$addTextChangedListener":I
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$1;

    invoke-direct {v7, p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 349
    .local v7, "textWatcher$iv$iv":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$1;
    move-object v8, v7

    check-cast v8, Landroid/text/TextWatcher;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 351
    move-object v5, v7

    check-cast v5, Landroid/text/TextWatcher;

    .line 332
    .end local v5    # "$this$addTextChangedListener_u24default$iv$iv":Landroid/widget/TextView;
    .end local v6    # "$i$f$addTextChangedListener":I
    .end local v7    # "textWatcher$iv$iv":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$1;
    nop

    .line 233
    .end local v1    # "$this$doOnTextChanged$iv":Landroid/widget/TextView;
    .end local v4    # "$i$f$doOnTextChanged":I
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->subjectEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v4, "feedbackBinding.subjectEdittext"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "$this$doOnTextChanged$iv":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 352
    .restart local v4    # "$i$f$doOnTextChanged":I
    move-object v5, v1

    .line 353
    .restart local v5    # "$this$addTextChangedListener_u24default$iv$iv":Landroid/widget/TextView;
    nop

    .line 359
    nop

    .line 353
    nop

    .line 366
    nop

    .line 353
    const/4 v6, 0x0

    .line 368
    .restart local v6    # "$i$f$addTextChangedListener":I
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;

    invoke-direct {v7, p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 369
    .local v7, "textWatcher$iv$iv":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;
    move-object v8, v7

    check-cast v8, Landroid/text/TextWatcher;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 371
    move-object v5, v7

    check-cast v5, Landroid/text/TextWatcher;

    .line 352
    .end local v5    # "$this$addTextChangedListener_u24default$iv$iv":Landroid/widget/TextView;
    .end local v6    # "$i$f$addTextChangedListener":I
    .end local v7    # "textWatcher$iv$iv":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;
    nop

    .line 245
    .end local v1    # "$this$doOnTextChanged$iv":Landroid/widget/TextView;
    .end local v4    # "$i$f$doOnTextChanged":I
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iget-object v1, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->feedbackEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "feedbackBinding.feedbackEdittext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "$this$doOnTextChanged$iv":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 372
    .local v2, "$i$f$doOnTextChanged":I
    move-object v3, v1

    .line 373
    .local v3, "$this$addTextChangedListener_u24default$iv$iv":Landroid/widget/TextView;
    nop

    .line 379
    nop

    .line 373
    nop

    .line 386
    nop

    .line 373
    const/4 v4, 0x0

    .line 388
    .local v4, "$i$f$addTextChangedListener":I
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$3;

    invoke-direct {v5, p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 389
    .local v5, "textWatcher$iv$iv":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$3;
    move-object v6, v5

    check-cast v6, Landroid/text/TextWatcher;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 391
    move-object v3, v5

    check-cast v3, Landroid/text/TextWatcher;

    .line 372
    .end local v3    # "$this$addTextChangedListener_u24default$iv$iv":Landroid/widget/TextView;
    .end local v4    # "$i$f$addTextChangedListener":I
    .end local v5    # "textWatcher$iv$iv":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$3;
    nop

    .line 257
    .end local v1    # "$this$doOnTextChanged$iv":Landroid/widget/TextView;
    .end local v2    # "$i$f$doOnTextChanged":I
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getView()Landroid/view/View;

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

    .line 59
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

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

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->ioScheduler:Lio/reactivex/Scheduler;

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

    .line 67
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->mainThreadScheduler:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mainThreadScheduler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    .line 75
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setAppDatabase(Lcom/woleapp/netpos/contactless/database/AppDatabase;)V

    .line 76
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionHistoryFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "history_action"

    const-string v2, "Default"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "binding"

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyHeader:Landroid/widget/TextView;

    const v6, 0x7f1300c9

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setAction(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V

    .line 94
    .local v1, "adapterListener":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;
    const-string v6, "PreAuth"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_5

    .line 95
    const-string v6, "Select PREAUTH Transaction"

    .line 96
    .local v6, "header":Ljava/lang/String;
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v8, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_2
    iget-object v8, v8, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyHeader:Landroid/widget/TextView;

    move-object v9, v6

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v8, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_3
    iget-object v8, v8, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v8, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_4
    iget-object v8, v8, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    .end local v6    # "header":Ljava/lang/String;
    :cond_5
    const-string v6, "End Of Day"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 101
    const-string v8, "End Of Day"

    .line 102
    .local v8, "header":Ljava/lang/String;
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v9, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v5

    :cond_6
    iget-object v9, v9, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyHeader:Landroid/widget/TextView;

    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v9, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v5

    :cond_7
    iget-object v9, v9, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v9, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v5

    :cond_8
    iget-object v9, v9, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchButton:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v7

    const-string v9, "Reprint"

    invoke-virtual {v7, v9}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setAction(Ljava/lang/String;)V

    .line 106
    new-instance v7, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v9}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v7, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    .line 108
    .end local v8    # "header":Ljava/lang/String;
    :cond_9
    new-instance v7, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    new-instance v8, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$1;

    invoke-direct {v8, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v7, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    .line 112
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V

    .line 119
    .local v7, "tabListener":Landroid/view/View$OnClickListener;
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v8, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_a
    iget-object v8, v8, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v8, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_b
    iget-object v8, v8, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v8, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_c
    iget-object v8, v8, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->rvTransactionsHistory:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    const-string v10, "adapter"

    if-nez v9, :cond_d

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v5

    :cond_d
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v8, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_e
    iget-object v8, v8, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->rvTransactionsHistory:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    new-instance v9, Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 124
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    .line 125
    nop

    .line 123
    invoke-direct {v9, v11, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 122
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 128
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 129
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getTransactions()Landroidx/lifecycle/LiveData;

    move-result-object v6

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v8

    new-instance v9, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V

    invoke-virtual {v6, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 134
    :cond_f
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getEodList()Ljava/util/List;

    move-result-object v6

    .line 135
    .local v6, "eodList":Ljava/util/List;
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    if-nez v8, :cond_10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_10
    invoke-virtual {v8, v6}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->submitList(Ljava/util/List;)V

    .line 136
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    if-nez v8, :cond_11

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_11
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->notifyDataSetChanged()V

    .line 138
    .end local v6    # "eodList":Ljava/util/List;
    :goto_0
    invoke-static {p0, v2, v3, v5}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->setSelectedTab$default(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;IILjava/lang/Object;)V

    .line 139
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v6, :cond_12

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_12
    iget-object v6, v6, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->transactionSearch:Landroidx/appcompat/widget/SearchView;

    new-instance v8, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;

    invoke-direct {v8, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V

    check-cast v8, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 175
    nop

    .line 176
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 175
    invoke-static {v6, v5, v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    move-result-object v2

    const-string v6, "inflate(\n            Lay\u2026)), null, false\n        )"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    move-object v6, v2

    .local v6, "$this$onViewCreated_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
    const/4 v8, 0x0

    .line 178
    .local v8, "$i$a$-apply-TransactionHistoryFragment$onViewCreated$4":I
    move-object v9, p0

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v6, v9}, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 179
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->executePendingBindings()V

    .line 180
    nop

    .line 177
    .end local v6    # "$this$onViewCreated_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
    .end local v8    # "$i$a$-apply-TransactionHistoryFragment$onViewCreated$4":I
    nop

    .line 175
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    .line 181
    nop

    .line 182
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    const-string v8, "feedbackBinding"

    if-nez v6, :cond_13

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_13
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v6, "Builder(requireContext()\u2026                .create()"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackDialog:Landroidx/appcompat/app/AlertDialog;

    .line 186
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    if-nez v2, :cond_14

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_14
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->complaintsBtn:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V

    invoke-virtual {v2, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->feedbackBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    if-nez v2, :cond_15

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_15
    move-object v5, v2

    :goto_1
    iget-object v2, v5, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->submitFeedback:Landroid/widget/Button;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    sget-object v2, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->alertDialog(Landroid/content/Context;Z)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->loader:Landroid/app/AlertDialog;

    .line 196
    sget-object v2, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->deviceId:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public final setCompositeDisposable(Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/disposables/CompositeDisposable;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public final setIoScheduler(Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/Scheduler;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->ioScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method public final setMainThreadScheduler(Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/Scheduler;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->mainThreadScheduler:Lio/reactivex/Scheduler;

    return-void
.end method
