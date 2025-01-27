.class public final Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "TransactionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "()V",
        "areContentsTheSame",
        "",
        "oldItem",
        "newItem",
        "areItemsTheSame",
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


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Z
    .locals 2
    .param p1, "oldItem"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "newItem"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-object v1, p2

    check-cast v1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {p0, v0, v1}, Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;->areContentsTheSame(Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Z
    .locals 4
    .param p1, "oldItem"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "newItem"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-object v1, p2

    check-cast v1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {p0, v0, v1}, Lcom/woleapp/netpos/contactless/adapter/TransactionItemDiffUtil;->areItemsTheSame(Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Z

    move-result v0

    return v0
.end method
