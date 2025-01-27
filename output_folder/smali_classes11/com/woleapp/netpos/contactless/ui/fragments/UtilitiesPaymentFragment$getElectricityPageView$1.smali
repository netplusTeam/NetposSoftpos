.class public final Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;
.super Ljava/lang/Object;
.source "UtilitiesPaymentFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->getElectricityPageView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
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
.field final synthetic $electricityBillers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selected:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "$selected"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p2, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
    .param p3, "$electricityBillers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;->$selected:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;->$electricityBillers:Ljava/util/List;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;->$selected:Lkotlin/jvm/internal/Ref$IntRef;

    iput p3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 358
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->meterType:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 359
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;->$electricityBillers:Ljava/util/List;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getElectricityPageView$1;->$selected:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;->prepaidCode:Ljava/lang/String;

    const-string v2, "electricityBillers[selected].prepaidCode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityProvider(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 349
    return-void
.end method
