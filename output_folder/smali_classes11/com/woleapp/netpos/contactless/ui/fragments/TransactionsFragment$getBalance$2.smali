.class final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$getBalance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TransactionsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getBalance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/woleapp/netpos/contactless/util/Event<",
        "+",
        "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$getBalance$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 366
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$getBalance$2;->invoke(Lcom/woleapp/netpos/contactless/util/Event;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 8
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$getBalance$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    .local v0, "it":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    const/4 v2, 0x0

    .line 368
    .local v2, "$i$a$-let-TransactionsFragment$getBalance$2$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getError()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .local v3, "error":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 369
    .local v4, "$i$a$-let-TransactionsFragment$getBalance$2$1$1":I
    invoke-static {v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 370
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 371
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 372
    nop

    .line 368
    .end local v3    # "error":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-let-TransactionsFragment$getBalance$2$1$1":I
    nop

    .line 373
    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getCardData()Lcom/danbamitale/epmslib/entities/CardData;

    move-result-object v3

    if-eqz v3, :cond_1

    .local v3, "cardData":Lcom/danbamitale/epmslib/entities/CardData;
    const/4 v4, 0x0

    .line 374
    .local v4, "$i$a$-let-TransactionsFragment$getBalance$2$1$2":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v3, v5}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->access$checkBalance(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 375
    nop

    .line 373
    .end local v3    # "cardData":Lcom/danbamitale/epmslib/entities/CardData;
    .end local v4    # "$i$a$-let-TransactionsFragment$getBalance$2$1$2":I
    nop

    .line 376
    :cond_1
    nop

    .line 367
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .end local v2    # "$i$a$-let-TransactionsFragment$getBalance$2$1":I
    nop

    .line 377
    :cond_2
    return-void
.end method
