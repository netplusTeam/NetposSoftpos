.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationFragment;
.source "NotificationFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/NotificationFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,84:1\n77#2,6:85\n*S KotlinDebug\n*F\n+ 1 NotificationFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/NotificationFragment\n*L\n33#1:85,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J$\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u001a\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020!2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006*"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;",
        "genericRvBindingInterface",
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "setGson",
        "(Lcom/google/gson/Gson;)V",
        "notificationViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "getNotificationViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "notificationViewModel$delegate",
        "Lkotlin/Lazy;",
        "rv",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "rvAdapter",
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;",
        "rvAdapterFactory",
        "Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;",
        "getRvAdapterFactory",
        "()Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;",
        "setRvAdapterFactory",
        "(Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;)V",
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

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;

.field private genericRvBindingInterface:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation
.end field

.field public gson:Lcom/google/gson/Gson;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final notificationViewModel$delegate:Lkotlin/Lazy;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private rvAdapter:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation
.end field

.field public rvAdapterFactory:Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$stu7b5PvuDyzv2pi6_opPyfSQbE(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationFragment;-><init>()V

    .line 33
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 85
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 86
    const/4 v1, 0x0

    .line 85
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 89
    nop

    .line 87
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 90
    nop

    .line 33
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->notificationViewModel$delegate:Lkotlin/Lazy;

    .line 28
    return-void
.end method

.method public static final synthetic access$getNotificationViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;

    .line 27
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->getNotificationViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->notificationViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    return-object v0
.end method

.method private final initViews()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$this$initViews_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;
    :cond_0
    const/4 v1, 0x0

    .line 80
    .local v1, "$i$a$-with-NotificationFragment$initViews$1":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;->notificationRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "notificationRv"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    nop

    .line 79
    .end local v0    # "$this$initViews_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;
    .end local v1    # "$i$a$-with-NotificationFragment$initViews$1":I
    nop

    .line 82
    return-void
.end method

.method private static final onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Ljava/util/List;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;
    .param p1, "allCampaign"    # Ljava/util/List;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    if-eqz p1, :cond_1

    move-object v0, p1

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$a$-let-NotificationFragment$onViewCreated$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->rvAdapter:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;

    if-nez v2, :cond_0

    const-string v2, "rvAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 73
    nop

    .line 71
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-NotificationFragment$onViewCreated$2$1":I
    nop

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->getView()Landroid/view/View;

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

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->gson:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "gson"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRvAdapterFactory()Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->rvAdapterFactory:Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rvAdapterFactory"

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

    .line 47
    nop

    .line 48
    const v0, 0x7f0d004d

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, R.layo\u2026cation, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;

    .line 47
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;

    .line 49
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onCreateView$1;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onCreateView$1;-><init>()V

    check-cast v0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->genericRvBindingInterface:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;

    .line 57
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_NotificationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->initViews()V

    .line 63
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->getRvAdapterFactory()Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;

    move-result-object v0

    .line 64
    nop

    .line 65
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->genericRvBindingInterface:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "genericRvBindingInterface"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 63
    :cond_0
    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onViewCreated$1;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onViewCreated$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const v4, 0x7f0d00ae

    invoke-interface {v0, v4, v1, v3}, Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;->createOrderItemRvAdapter(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->rvAdapter:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;

    .line 70
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->getNotificationViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->getAllMessages()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 75
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    const-string v0, "rv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->rvAdapter:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;

    if-nez v1, :cond_2

    const-string v1, "rvAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    return-void
.end method

.method public final setGson(Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/google/gson/Gson;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public final setRvAdapterFactory(Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->rvAdapterFactory:Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;

    return-void
.end method
