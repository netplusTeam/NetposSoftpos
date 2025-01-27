.class public final Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ServiceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/woleapp/netpos/contactless/model/Service;",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000cH\u0016R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/woleapp/netpos/contactless/model/Service;",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;",
        "serviceClickListener",
        "Lkotlin/Function1;",
        "",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceClickListener;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onBindViewHolder",
        "holder",
        "position",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field private final serviceClickListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/woleapp/netpos/contactless/model/Service;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "serviceClickListener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/woleapp/netpos/contactless/model/Service;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serviceClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    nop

    .line 23
    sget-object v0, Lcom/woleapp/netpos/contactless/adapter/ItemDiffUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/adapter/ItemDiffUtil;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 22
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 21
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->serviceClickListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->onBindViewHolder(Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(position)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/model/Service;

    invoke-virtual {p1, v0}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->bind(Lcom/woleapp/netpos/contactless/model/Service;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->Companion:Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;

    .line 28
    nop

    .line 29
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->serviceClickListener:Lkotlin/jvm/functions/Function1;

    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;->from(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;

    move-result-object v0

    .line 30
    return-object v0
.end method
