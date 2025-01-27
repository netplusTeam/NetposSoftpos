.class final Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onViewCreated$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DashboardFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onViewCreated$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onViewCreated$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onViewCreated$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getPayThroughMPGSResponse()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/util/Resource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/PayThroughMPGSResponse;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onViewCreated$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    const v1, 0x7f130035

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.an_error_occurred)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->access$showSnackBar(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onViewCreated$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    .line 365
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 366
    const v2, 0x7f0a00e8

    .line 367
    nop

    .line 364
    const-string v3, "CompletePaymentThroughMPGS Fragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 370
    :goto_1
    return-void
.end method
