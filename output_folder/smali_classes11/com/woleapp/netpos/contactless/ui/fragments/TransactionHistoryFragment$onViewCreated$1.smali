.class final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransactionHistoryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$1;->invoke(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 7
    .param p1, "it"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setSelectedTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    .line 110
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionDetailsFragment;-><init>()V

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 111
    return-void
.end method
