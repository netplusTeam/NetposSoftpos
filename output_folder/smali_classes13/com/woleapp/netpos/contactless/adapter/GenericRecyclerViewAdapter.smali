.class public final Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OrderItemClickListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder<",
        "Landroidx/databinding/ViewDataBinding;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002:\u0001 Be\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0008\u0001\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012B\u0008\u0001\u0010\t\u001a<\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\nj\u0008\u0012\u0004\u0012\u00028\u0000`\u0011\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0016\u001a\u00020\u0006H\u0016J\u001e\u0010\u0017\u001a\u00020\u00102\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0019\u001a\u00020\u0006H\u0016J\u001e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006H\u0016J \u0010\u001e\u001a\u00020\u00102\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0014j\u0008\u0012\u0004\u0012\u00028\u0000`\u0015H\u0007R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0014j\u0008\u0012\u0004\u0012\u00028\u0000`\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000RH\u0010\t\u001a<\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\nj\u0008\u0012\u0004\u0012\u00028\u0000`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;",
        "Landroidx/databinding/ViewDataBinding;",
        "layoutId",
        "",
        "bindingInterface",
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;",
        "onClick",
        "Lkotlin/Function2;",
        "Landroid/view/View;",
        "Lkotlin/ParameterName;",
        "name",
        "itemView",
        "clickedData",
        "",
        "Lcom/woleapp/netpos/contactless/adapter/ItemClickListener;",
        "(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)V",
        "dataSet",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getItemCount",
        "onBindViewHolder",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "updateData",
        "newData",
        "ViewHolder",
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
.field private final bindingInterface:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<",
            "TT;>;"
        }
    .end annotation
.end field

.field private dataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final layoutId:I

.field private final onClick:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$pKk15hFgFp9ZdC5FkbP3qWogDuA(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->onBindViewHolder$lambda-1$lambda-0(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "layoutId"    # I
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p2, "bindingInterface"    # Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p3, "onClick"    # Lkotlin/jvm/functions/Function2;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .annotation runtime Ldagger/assisted/AssistedInject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bindingInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    iput p1, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->layoutId:I

    .line 20
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->bindingInterface:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;

    .line 21
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->onClick:Lkotlin/jvm/functions/Function2;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->dataSet:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method private static final onBindViewHolder$lambda-1$lambda-0(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;ILandroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;
    .param p1, "$position"    # I
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->onClick:Lkotlin/jvm/functions/Function2;

    const-string v1, "it"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->onBindViewHolder(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v0, p1

    .local v0, "$this$onBindViewHolder_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;
    const/4 v1, 0x0

    .line 51
    .local v1, "$i$a$-apply-GenericRecyclerViewAdapter$onBindViewHolder$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->dataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->bindingInterface:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;

    invoke-virtual {v0, v2, v3}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;->bind(Ljava/lang/Object;Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;)V

    .line 52
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    nop

    .line 50
    .end local v0    # "$this$onBindViewHolder_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;
    .end local v1    # "$i$a$-apply-GenericRecyclerViewAdapter$onBindViewHolder$1":I
    nop

    .line 56
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->layoutId:I

    .line 41
    nop

    .line 42
    nop

    .line 38
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 44
    .local v0, "binding":Landroidx/databinding/ViewDataBinding;
    new-instance v1, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;

    const-string v2, "binding"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object v1
.end method

.method public final updateData(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "newData"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewDiffUtil;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->dataSet:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewDiffUtil;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 61
    .local v0, "diff":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewDiffUtil;
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    const-string v2, "calculateDiff(diff)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .local v1, "diffResult":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->dataSet:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 64
    move-object v2, p0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    return-void
.end method
