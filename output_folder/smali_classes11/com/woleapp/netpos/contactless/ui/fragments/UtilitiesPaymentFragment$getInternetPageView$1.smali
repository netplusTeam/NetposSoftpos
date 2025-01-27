.class public final Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtilitiesPaymentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtilitiesPaymentFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,675:1\n1549#2:676\n1620#2,3:677\n1549#2:680\n1620#2,3:681\n*S KotlinDebug\n*F\n+ 1 UtilitiesPaymentFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1\n*L\n524#1:676\n524#1:677,3\n531#1:680\n531#1:681,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1",
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

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->$selected:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->$smileInternetList:Ljava/util/List;

    iput-object p4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->$spectranetInternetList:Ljava/util/List;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
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

    .line 516
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->$selected:Lkotlin/jvm/internal/Ref$IntRef;

    iput v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 518
    const/16 v2, 0xa

    packed-switch v1, :pswitch_data_0

    .line 534
    new-instance v2, Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;

    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    check-cast v12, Ljava/util/List;

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    .line 528
    :pswitch_0
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v3

    const-string v4, "SPECTRANET"

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityProvider(Ljava/lang/String;)V

    .line 529
    nop

    .line 530
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 531
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->$spectranetInternetList:Ljava/util/List;

    const-string v4, "spectranetInternetList"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 680
    .local v4, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v6

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 681
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 682
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;

    .local v10, "it":Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;
    const/4 v11, 0x0

    .line 531
    .local v11, "$i$a$-map-UtilitiesPaymentFragment$getInternetPageView$1$onItemSelected$packageSpinnerAdapter$2":I
    iget-object v10, v10, Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;->planName:Ljava/lang/String;

    .end local v10    # "it":Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;
    .end local v11    # "$i$a$-map-UtilitiesPaymentFragment$getInternetPageView$1$onItemSelected$packageSpinnerAdapter$2":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 683
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    .line 680
    nop

    .line 529
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    new-instance v2, Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 520
    :pswitch_1
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v3

    const-string v4, "SMILE"

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityProvider(Ljava/lang/String;)V

    .line 521
    nop

    .line 522
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 523
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->$smileInternetList:Ljava/util/List;

    const-string v4, "smileInternetList"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 524
    nop

    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 676
    .restart local v4    # "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v6

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .restart local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 677
    .restart local v7    # "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 678
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;

    .local v10, "it":Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;
    const/4 v11, 0x0

    .line 524
    .local v11, "$i$a$-map-UtilitiesPaymentFragment$getInternetPageView$1$onItemSelected$packageSpinnerAdapter$1":I
    iget-object v10, v10, Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;->bundleName:Ljava/lang/String;

    .end local v10    # "it":Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;
    .end local v11    # "$i$a$-map-UtilitiesPaymentFragment$getInternetPageView$1$onItemSelected$packageSpinnerAdapter$1":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 679
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    .line 676
    nop

    .line 521
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    new-instance v2, Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 518
    :goto_2
    nop

    .line 517
    nop

    .line 536
    .local v2, "packageSpinnerAdapter":Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getInternetPageView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getInternetSubscriptionBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutInternetSubscriptionBinding;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "internetSubscriptionBinding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_2
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/LayoutInternetSubscriptionBinding;->packageSpinner:Landroid/widget/Spinner;

    move-object v4, v2

    check-cast v4, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 537
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

    .line 508
    return-void
.end method
