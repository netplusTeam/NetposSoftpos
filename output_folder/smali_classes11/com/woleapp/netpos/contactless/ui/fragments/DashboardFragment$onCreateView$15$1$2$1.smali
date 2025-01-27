.class public final Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;
.super Ljava/lang/Object;
.source "DashboardFragment.kt"

# interfaces
.implements Lcom/woleapp/netpos/contactless/ui/dialog/dialogListener/PinPadDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->onCreateView$lambda-31(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1",
        "Lcom/woleapp/netpos/contactless/ui/dialog/dialogListener/PinPadDialogListener;",
        "onConfirm",
        "",
        "data",
        "",
        "onError",
        "errorMessage",
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
.field final synthetic $card:Lcom/danbamitale/epmslib/entities/CardData;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;Lcom/danbamitale/epmslib/entities/CardData;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;
    .param p2, "$card"    # Lcom/danbamitale/epmslib/entities/CardData;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;->$card:Lcom/danbamitale/epmslib/entities/CardData;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->setTransactionStateToStarted()V

    .line 284
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v1

    .line 285
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;->$card:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/CardData;->getPan()Ljava/lang/String;

    move-result-object v2

    .line 286
    nop

    .line 287
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;->$card:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/CardData;->getExpiryDate()Ljava/lang/String;

    move-result-object v4

    .line 288
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->access$getUser$p(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "user"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/User;->getNetplusPayMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 289
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->INSTANCE:Lcom/dsofttech/dprefs/utils/DPrefs;

    sget-object v3, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getPIN_KEY()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lcom/dsofttech/dprefs/utils/DPrefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->payThroughMPGS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$15$1$2$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 279
    return-void
.end method
