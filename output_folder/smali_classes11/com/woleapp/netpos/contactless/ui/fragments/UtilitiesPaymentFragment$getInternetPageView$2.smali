.class public final Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;
.super Ljava/lang/Object;
.source "UtilitiesPaymentFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->getInternetPageView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "com/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2",
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
.field final synthetic $selected:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $smileInternetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $spectranetInternetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "$selected"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p2, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
    .param p3, "$smileInternetList"    # Ljava/util/List;
    .param p4, "$spectranetInternetList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->$selected:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->$smileInternetList:Ljava/util/List;

    iput-object p4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->$spectranetInternetList:Ljava/util/List;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
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

    .line 550
    move-object v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->$selected:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    packed-switch v2, :pswitch_data_0

    .line 560
    const-string v2, "0"

    goto :goto_0

    .line 557
    :pswitch_0
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v2

    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->$spectranetInternetList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;

    iget-object v3, v3, Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;->planName:Ljava/lang/String;

    const-string v4, "spectranetInternetList[position].planName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 558
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->$spectranetInternetList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;

    iget-object v3, v2, Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;->price:Ljava/lang/String;

    const-string v2, "spectranetInternetList[position].price"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, ","

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 552
    :pswitch_1
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v2

    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->$smileInternetList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;

    iget-object v3, v3, Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;->bundleName:Ljava/lang/String;

    const-string v4, "smileInternetList[position].bundleName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityPackage(Ljava/lang/String;)V

    .line 553
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->$smileInternetList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;

    iget-object v3, v2, Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;->price:Ljava/lang/String;

    const-string v2, "smileInternetList[position].price"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "N"

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 554
    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, ","

    const-string v11, ""

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 550
    :goto_0
    nop

    .line 562
    .local v2, "priceToPay":Ljava/lang/String;
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getInternetSubscriptionBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutInternetSubscriptionBinding;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "internetSubscriptionBinding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/LayoutInternetSubscriptionBinding;->priceTextbox:Landroid/widget/EditText;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 563
    return-void

    nop

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

    .line 542
    return-void
.end method
