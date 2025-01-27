.class final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment$onViewCreated$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransactionDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;->onViewCreated$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment$onViewCreated$2$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment$onViewCreated$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment$onViewCreated$2$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment$onViewCreated$2$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->preAuthRefund(Landroid/content/Context;)V

    return-void
.end method
