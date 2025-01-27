.class public final Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;
.super Ljava/lang/Object;
.source "TransactionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;",
        "",
        "()V",
        "from",
        "Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroid/view/ViewGroup;)Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    move-result-object v1

    const-string v2, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;-><init>(Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    return-object v0
.end method
