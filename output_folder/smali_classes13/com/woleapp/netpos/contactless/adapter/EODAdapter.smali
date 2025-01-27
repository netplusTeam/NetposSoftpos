.class public final Lcom/woleapp/netpos/contactless/adapter/EODAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "EODAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000eH\u0016R!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/EODAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;",
        "listener",
        "Lkotlin/Function1;",
        "",
        "Lcom/woleapp/netpos/contactless/adapter/TransactionClickListener;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getListener",
        "()Lkotlin/jvm/functions/Function1;",
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
.field private final listener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MkrRInJeOg5KOQ7Dn1CB1kgY1R4(Lcom/woleapp/netpos/contactless/adapter/EODAdapter;Lcom/danbamitale/epmslib/entities/TransactionResponse;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/EODAdapter;->onBindViewHolder$lambda-1$lambda-0(Lcom/woleapp/netpos/contactless/adapter/EODAdapter;Lcom/danbamitale/epmslib/entities/TransactionResponse;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 7
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/EODAdapter;->listener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final onBindViewHolder$lambda-1$lambda-0(Lcom/woleapp/netpos/contactless/adapter/EODAdapter;Lcom/danbamitale/epmslib/entities/TransactionResponse;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/adapter/EODAdapter;
    .param p1, "$transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transactionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/EODAdapter;->listener:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/EODAdapter;->listener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/woleapp/netpos/contactless/adapter/EODAdapter;->onBindViewHolder(Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/adapter/EODAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    if-eqz v0, :cond_0

    .local v0, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v1, 0x0

    .line 14
    .local v1, "$i$a$-let-EODAdapter$onBindViewHolder$1":I
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->getBinding()Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/adapter/EODAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/woleapp/netpos/contactless/adapter/EODAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/adapter/EODAdapter;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->bind(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    .line 16
    nop

    .line 13
    .end local v0    # "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v1    # "$i$a$-let-EODAdapter$onBindViewHolder$1":I
    nop

    .line 17
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/EODAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->Companion:Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;->from(Landroid/view/ViewGroup;)Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;

    move-result-object v0

    return-object v0
.end method
