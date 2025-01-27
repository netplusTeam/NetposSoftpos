.class final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransactionsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/woleapp/netpos/contactless/model/Service;",
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
        "Lcom/woleapp/netpos/contactless/model/Service;",
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

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/model/Service;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->invoke(Lcom/woleapp/netpos/contactless/model/Service;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/woleapp/netpos/contactless/model/Service;)V
    .locals 10
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/model/Service;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/Service;->getId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 149
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v4, v0

    check-cast v4, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;

    sget-object v5, Lcom/danbamitale/epmslib/entities/TransactionType;->CASH_ADVANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-static {v0, v5, v2, v1, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;->newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;Lcom/danbamitale/epmslib/entities/TransactionType;ZILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->access$getLayoutAccountDialog$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "layoutAccountDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 146
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->access$getLayoutAccountBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    move-result-object v0

    const-string v1, "layoutAccountBinding"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->loadingDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->access$getLayoutAccountBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    iget-object v0, v3, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->enterPhoneNumberLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;-><init>()V

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;-><init>()V

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 122
    :pswitch_3
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;

    const-string v2, "Reversal"

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v4, v0

    check-cast v4, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;

    sget-object v5, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE_WITH_CASH_BACK:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-static {v0, v5, v2, v1, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;->newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;Lcom/danbamitale/epmslib/entities/TransactionType;ZILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 141
    :pswitch_5
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v4, v0

    check-cast v4, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v1, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;->newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;Lcom/danbamitale/epmslib/entities/TransactionType;ZILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 134
    :pswitch_6
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/ReprintFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/ReprintFragment;-><init>()V

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 131
    :pswitch_7
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->access$getBalance(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    .line 132
    goto :goto_1

    .line 137
    :pswitch_8
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 138
    const v1, 0x7f0a00e8

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/SettingsFragment;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/SettingsFragment;-><init>()V

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 127
    :pswitch_9
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->access$showPreAuthDialog(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    .line 128
    goto :goto_1

    .line 120
    :pswitch_a
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;

    const-string v2, "Refund"

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 117
    :pswitch_b
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v4, v0

    check-cast v4, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;

    const/4 v1, 0x3

    invoke-static {v0, v3, v2, v1, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;->newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;Lcom/danbamitale/epmslib/entities/TransactionType;ZILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 115
    :goto_1
    move-object v0, v3

    .line 151
    .local v0, "nextFrag":Ljava/lang/Object;
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
