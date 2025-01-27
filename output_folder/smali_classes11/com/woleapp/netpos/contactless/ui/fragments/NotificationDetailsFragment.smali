.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationDetailsFragment;
.source "NotificationDetailsFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationDetailsFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,69:1\n77#2,6:70\n*S KotlinDebug\n*F\n+ 1 NotificationDetailsFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment\n*L\n23#1:70,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u001a\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;",
        "clickedNotification",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        "deleteNotificationIcon",
        "Landroid/widget/ImageView;",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "setGson",
        "(Lcom/google/gson/Gson;)V",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "",
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

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;

.field private clickedNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

.field private deleteNotificationIcon:Landroid/widget/ImageView;

.field public gson:Lcom/google/gson/Gson;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-XWStS6A35WXKnHruzv_QLrj1G8(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->onResume$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3tcEYZzdL2F0bxb_GQTk1sS1EtE(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RcrN8cBzeSU8BEkKx1JIfrfSg_k(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->onResume$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationDetailsFragment;-><init>()V

    .line 23
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 70
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 71
    const/4 v1, 0x0

    .line 70
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 72
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 74
    nop

    .line 72
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 75
    nop

    .line 23
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 20
    return-void
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    return-object v0
.end method

.method private static final onResume$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
    .param p1, "it"    # Ljava/lang/Boolean;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130112

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 63
    :cond_0
    return-void
.end method

.method private static final onResume$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->clickedNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    if-nez v1, :cond_0

    const-string v1, "clickedNotification"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->deleteMessage(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    .line 66
    return-void
.end method

.method private static final onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->clickedNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    .line 49
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .local v0, "$this$onViewCreated_u24lambda_u2d1_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;
    :cond_0
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-apply-NotificationDetailsFragment$onViewCreated$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->clickedNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    if-nez v3, :cond_1

    const-string v3, "clickedNotification"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;->setNotification(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    .line 51
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;->executePendingBindings()V

    .line 52
    nop

    .line 49
    .end local v0    # "$this$onViewCreated_u24lambda_u2d1_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;
    .end local v2    # "$i$a$-apply-NotificationDetailsFragment$onViewCreated$1$1":I
    nop

    .line 53
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->getView()Landroid/view/View;

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

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->gson:Lcom/google/gson/Gson;

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

    .line 35
    nop

    .line 36
    nop

    .line 37
    nop

    .line 38
    nop

    .line 39
    nop

    .line 35
    const v0, 0x7f0d004e

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "inflate(\n            inf\u2026         false,\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;

    .line 41
    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationDetailsFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationDetailsFragment;->onResume()V

    .line 58
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->getNotificationDeleted()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 64
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->deleteNotificationIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v0, "deleteNotificationIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;->imageView5:Landroid/widget/ImageView;

    const-string v1, "binding.imageView5"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->deleteNotificationIcon:Landroid/widget/ImageView;

    .line 47
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->getClickedMessage()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 54
    return-void
.end method

.method public final setGson(Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/google/gson/Gson;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->gson:Lcom/google/gson/Gson;

    return-void
.end method
