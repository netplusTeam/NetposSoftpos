.class public final Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "BillsFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "adapter",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;",
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
        "setService",
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

.field private adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private final setService()V
    .locals 7

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    move-object v1, v0

    .local v1, "$this$setService_u24lambda_u2d0":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 41
    .local v2, "$i$a$-apply-BillsFragment$setService$listOfService$1":I
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x0

    const-string v5, "Cable TV"

    const v6, 0x7f080109

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x1

    const-string v5, "Power"

    const v6, 0x7f0800fb

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x2

    const-string v5, "Airtime & Data"

    const v6, 0x7f0800ba

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x3

    const-string v5, "Internet"

    const v6, 0x7f0800dd

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    nop

    .line 40
    .end local v1    # "$this$setService_u24lambda_u2d0":Ljava/util/ArrayList;
    .end local v2    # "$i$a$-apply-BillsFragment$setService$listOfService$1":I
    nop

    .line 39
    nop

    .line 46
    .local v0, "listOfService":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    if-nez v1, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->submitList(Ljava/util/List;)V

    .line 47
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->getView()Landroid/view/View;

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
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    .line 24
    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->rvTransactionsHeader:Landroid/widget/TextView;

    const v3, 0x7f130043

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment$onCreateView$1;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment$onCreateView$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v3}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->rvTransactions:Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->rvTransactions:Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    if-nez v1, :cond_2

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 35
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;->setService()V

    .line 36
    return-void
.end method
