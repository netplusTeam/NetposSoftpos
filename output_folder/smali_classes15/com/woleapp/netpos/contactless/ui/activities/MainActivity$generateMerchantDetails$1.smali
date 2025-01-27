.class final Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$generateMerchantDetails$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->generateMerchantDetails()V
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$generateMerchantDetails$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1228
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$generateMerchantDetails$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 1235
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$generateMerchantDetails$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$getScanQrViewModel(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getPayByTransfer()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/util/Resource;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;->getUser()Lcom/woleapp/netpos/contactless/model/MerchantDetail;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$generateMerchantDetails$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/MerchantDetail;
    const/4 v2, 0x0

    .line 1236
    .local v2, "$i$a$-let-MainActivity$generateMerchantDetails$1$1":I
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "binding"

    if-nez v3, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->parentConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1237
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_1
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->merchantDetails:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetail;->getAcctNumber()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    iget-object v3, v4, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->bankName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetail;->getBank()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetail;->getAcctNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$setCopyAccountNumber$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;)V

    .line 1240
    nop

    .line 1235
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/MerchantDetail;
    .end local v2    # "$i$a$-let-MainActivity$generateMerchantDetails$1$1":I
    :cond_3
    nop

    .line 1241
    return-void
.end method
