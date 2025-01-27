.class public final Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;
.super Landroidx/paging/PagedListAdapter;
.source "ZenithQrMCCAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagedListAdapter<",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        "Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B,\u0012%\u0010\u0004\u001a!\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000fH\u0016R-\u0010\u0004\u001a!\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;",
        "Landroidx/paging/PagedListAdapter;",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        "Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;",
        "clickListener",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "Lcom/woleapp/netpos/contactless/adapter/ZenithMCCClickListener;",
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
.field private final clickListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$oxP-iugr-NRpX1nVasjspWmwuEc(Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;->onBindViewHolder$lambda-1$lambda-0(Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "clickListener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/adapter/ZenithMCCDiffUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/adapter/ZenithMCCDiffUtil;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/paging/PagedListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 26
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;->clickListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final onBindViewHolder$lambda-1$lambda-0(Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;
    .param p1, "$it"    # Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$it"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;->clickListener:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 26
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;->onBindViewHolder(Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;

    if-eqz v0, :cond_0

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;
    const/4 v1, 0x0

    .line 35
    .local v1, "$i$a$-let-ZenithQrMCCAdapter$onBindViewHolder$1":I
    invoke-virtual {p1, v0}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;->bind(Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;)V

    .line 36
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;->getBinding()Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    nop

    .line 34
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;
    .end local v1    # "$i$a$-let-ZenithQrMCCAdapter$onBindViewHolder$1":I
    nop

    .line 38
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;->Companion:Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder$Companion;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder$Companion;->from(Landroid/view/ViewGroup;)Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;

    move-result-object v0

    return-object v0
.end method
