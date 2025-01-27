.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NipNotificationListFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;",
        "(Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;)V",
        "getBinding",
        "()Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;",
        "bind",
        "",
        "newItem",
        "Lcom/woleapp/netpos/contactless/model/NipNotification;",
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
.field private final binding:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;)V
    .locals 1
    .param p1, "binding"    # Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 171
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/woleapp/netpos/contactless/model/NipNotification;)V
    .locals 2
    .param p1, "newItem"    # Lcom/woleapp/netpos/contactless/model/NipNotification;

    const-string v0, "newItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    .local v0, "$this$bind_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$a$-apply-NipViewHolder$bind$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->executePendingBindings()V

    .line 177
    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->setNip(Lcom/woleapp/netpos/contactless/model/NipNotification;)V

    .line 178
    nop

    .line 175
    .end local v0    # "$this$bind_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;
    .end local v1    # "$i$a$-apply-NipViewHolder$bind$1":I
    nop

    .line 179
    return-void
.end method

.method public final getBinding()Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    return-object v0
.end method
