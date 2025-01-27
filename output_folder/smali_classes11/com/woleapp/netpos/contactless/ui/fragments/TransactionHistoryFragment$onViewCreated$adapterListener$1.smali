.class public final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;
.super Ljava/lang/Object;
.source "TransactionHistoryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004J\u0011\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1",
        "Lkotlin/Function1;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "",
        "Lcom/woleapp/netpos/contactless/adapter/TransactionClickListener;",
        "invoke",
        "p1",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;->invoke(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 7
    .param p1, "p1"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setSelectedTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    .line 89
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    const-string v1, "Reprint"

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setAction(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$setGlobalAction$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$adapterListener$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

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

    .line 92
    return-void
.end method
