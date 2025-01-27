.class public final Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TransactionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;",
        "(Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;)V",
        "getBinding",
        "()Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;",
        "bind",
        "",
        "transactionResponse",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "Companion",
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
.field public static final Companion:Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;


# instance fields
.field private final binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->Companion:Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;)V
    .locals 1
    .param p1, "binding"    # Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    .line 42
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;-><init>(Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 5
    .param p1, "transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "transactionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->executePendingBindings()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ending with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    nop

    .line 53
    .local v0, "cardDetails":Ljava/lang/String;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->cardDetails:Landroid/widget/TextView;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->transactionStatus:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Approved"

    goto :goto_0

    :cond_0
    const-string v2, "Declined"

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->holderName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardHolder()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->transactionRef:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->transactionAmount:Landroid/widget/TextView;

    .line 59
    sget-object v2, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->divideLongBy100(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const-string v3, "\u20a6"

    invoke-static {v2, v3}, Lcom/danbamitale/epmslib/extensions/NumberExtensionsKt;->formatCurrencyAmount(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;->transactionDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public final getBinding()Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutTransactionItemBinding;

    return-object v0
.end method
