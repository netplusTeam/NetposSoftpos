.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "NipNotificationListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/woleapp/netpos/contactless/model/NipNotification;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000cH\u0016R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/woleapp/netpos/contactless/model/NipNotification;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;",
        "nipNotificationItemClickListener",
        "Lkotlin/Function1;",
        "",
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationItemClickListener;",
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
.field private final nipNotificationItemClickListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/woleapp/netpos/contactless/model/NipNotification;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KY0GvELnnjxvpWNPigpFmAEzqr8(Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->onBindViewHolder$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "nipNotificationItemClickListener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/woleapp/netpos/contactless/model/NipNotification;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nipNotificationItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipItemCallBack;->INSTANCE:Lcom/woleapp/netpos/contactless/ui/fragments/NipItemCallBack;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 151
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->nipNotificationItemClickListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;ILandroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;
    .param p1, "$position"    # I
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->nipNotificationItemClickListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getItem(position)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 151
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->onBindViewHolder(Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;->getBinding()Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->print:Landroid/widget/Button;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(position)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/model/NipNotification;

    invoke-virtual {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;->bind(Lcom/woleapp/netpos/contactless/model/NipNotification;)V

    .line 168
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;

    .line 156
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 157
    nop

    .line 158
    nop

    .line 155
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    move-result-object v1

    const-string v2, "inflate(\n               \u2026     false,\n            )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipViewHolder;-><init>(Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;)V

    return-object v0
.end method
