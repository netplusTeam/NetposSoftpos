.class public final Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;
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
        "com/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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

    .line 435
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "airtimeOrDataBinding"

    packed-switch p3, :pswitch_data_0

    .line 450
    move v0, v1

    goto/16 :goto_0

    .line 445
    :pswitch_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->priceTextbox:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 446
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->currencyTextbox:Landroid/widget/TextView;

    const v4, 0x7f080172

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 447
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->priceTextbox:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 448
    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v0

    const-string v4, "Airtime"

    invoke-virtual {v0, v4}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityBillType(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->priceTextbox:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->currencyTextbox:Landroid/widget/TextView;

    const v4, 0x7f080171

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 441
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->priceTextbox:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 442
    move v0, v1

    .line 435
    :goto_0
    nop

    .line 452
    .local v0, "visibility":I
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->selectDataBundleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, v1

    :goto_1
    iget-object v1, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->selectDataBundleSpinnerIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 427
    return-void
.end method
