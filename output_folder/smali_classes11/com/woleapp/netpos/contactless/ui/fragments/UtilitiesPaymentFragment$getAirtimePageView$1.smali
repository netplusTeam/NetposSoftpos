.class public final Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;
.super Ljava/lang/Object;
.source "UtilitiesPaymentFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->getAirtimePageView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "com/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1",
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
.field final synthetic $dataPlanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $selectedNetwork:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
    .param p2, "$dataPlanList"    # Ljava/util/List;
    .param p3, "$selectedNetwork"    # Lkotlin/jvm/internal/Ref$IntRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->$dataPlanList:Ljava/util/List;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->$selectedNetwork:Lkotlin/jvm/internal/Ref$IntRef;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    .line 420
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->$dataPlanList:Ljava/util/List;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->$selectedNetwork:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;

    iget-object v2, v2, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->$dataPlanList:Ljava/util/List;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->$selectedNetwork:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;

    iget-object v2, v2, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "airtimeOrDataBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->priceTextbox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->$dataPlanList:Ljava/util/List;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$1;->$selectedNetwork:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;->price:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
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

    .line 412
    return-void
.end method
