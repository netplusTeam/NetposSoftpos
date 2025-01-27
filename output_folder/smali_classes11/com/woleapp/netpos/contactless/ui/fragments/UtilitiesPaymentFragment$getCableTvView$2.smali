.class public final Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;
.super Ljava/lang/Object;
.source "UtilitiesPaymentFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->getCableTvView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "com/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2",
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
.field final synthetic $dstvPlans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $gotvPlans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedCategory:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $starTimesPlan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;


# direct methods
.method public static synthetic $r8$lambda$bqepJC5PfJb1Lnw73RYYaaQmUvc(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;ILkotlin/jvm/internal/Ref$IntRef;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->onItemSelected$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;ILkotlin/jvm/internal/Ref$IntRef;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "$selectedCategory"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p2, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
    .param p3, "$dstvPlans"    # Ljava/util/List;
    .param p4, "$gotvPlans"    # Ljava/util/List;
    .param p5, "$starTimesPlan"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;",
            "Ljava/util/List<",
            "+",
            "Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;",
            ">;",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$selectedCategory:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$dstvPlans:Ljava/util/List;

    iput-object p4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$gotvPlans:Ljava/util/List;

    iput-object p5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$starTimesPlan:Ljava/util/List;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onItemSelected$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;ILkotlin/jvm/internal/Ref$IntRef;Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
    .param p1, "$starTimesPlan"    # Ljava/util/List;
    .param p2, "$position"    # I
    .param p3, "$feeToPay"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p5, "checked"    # I

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$feeToPay"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    sparse-switch p5, :sswitch_data_0

    .line 663
    const/4 p4, 0x0

    goto/16 :goto_0

    .line 656
    :sswitch_0
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;->plan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Weekly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 657
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;

    iget p4, p4, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;->weeklyFee:I

    goto :goto_0

    .line 660
    :sswitch_1
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;->plan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Monthly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 661
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;

    iget p4, p4, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;->monthlyFee:I

    goto :goto_0

    .line 652
    :sswitch_2
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;->plan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Daily"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 653
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;

    iget p4, p4, Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;->dailyFee:I

    .line 650
    :goto_0
    nop

    .line 666
    .local p4, "starTimesPrice":I
    iput p4, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 667
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getCableBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "cableBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->priceTextbox:Landroid/widget/EditText;

    iget v1, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 668
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00fb -> :sswitch_2
        0x7f0a01f7 -> :sswitch_1
        0x7f0a03a1 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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

    .line 631
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .local v0, "feeToPay":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$selectedCategory:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "cableBinding"

    packed-switch v1, :pswitch_data_0

    .line 647
    goto/16 :goto_0

    .line 643
    :pswitch_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getCableBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->planValidityOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 644
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getCableBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_1
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->planValidityOptions:Landroid/widget/RadioGroup;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 645
    goto :goto_0

    .line 638
    :pswitch_1
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v1

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$gotvPlans:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;

    iget-object v3, v3, Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;->product:Ljava/lang/String;

    const-string v6, "gotvPlans[position].product"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getCableBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_2
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->planValidityOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 640
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$gotvPlans:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;

    iget v3, v1, Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;->newPrice:I

    goto :goto_0

    .line 633
    :pswitch_2
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v1

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$dstvPlans:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;

    iget-object v3, v3, Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;->product:Ljava/lang/String;

    const-string v6, "dstvPlans[position].product"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getCableBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_3
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->planValidityOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$dstvPlans:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;

    iget v3, v1, Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;->newPrice:I

    .line 631
    :goto_0
    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 649
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getCableBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_4
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->planValidityOptions:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->$starTimesPlan:Ljava/util/List;

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, v3, p3, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;ILkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 669
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getCableTvView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getCableBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v4, v1

    :goto_1
    iget-object v1, v4, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->priceTextbox:Landroid/widget/EditText;

    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 670
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 623
    return-void
.end method
