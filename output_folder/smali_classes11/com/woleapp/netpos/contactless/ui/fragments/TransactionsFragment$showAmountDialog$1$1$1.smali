.class final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$showAmountDialog$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransactionsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showAmountDialog$lambda-18(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$showAmountDialog$1$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$showAmountDialog$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$showAmountDialog$1$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    .line 334
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;-><init>()V

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 333
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 336
    return-void
.end method
