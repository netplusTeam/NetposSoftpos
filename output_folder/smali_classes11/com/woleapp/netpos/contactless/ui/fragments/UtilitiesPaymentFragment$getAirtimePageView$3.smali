.class public final Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtilitiesPaymentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtilitiesPaymentFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,675:1\n1549#2:676\n1620#2,3:677\n*S KotlinDebug\n*F\n+ 1 UtilitiesPaymentFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3\n*L\n471#1:676\n471#1:677,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3",
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

.field final synthetic $mobileOperatorsBillers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedNetwork:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "$selectedNetwork"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p2, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
    .param p3, "$dataPlanList"    # Ljava/util/List;
    .param p4, "$mobileOperatorsBillers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/woleapp/netpos/contactless/model/Biller;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->$selectedNetwork:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->$dataPlanList:Ljava/util/List;

    iput-object p4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->$mobileOperatorsBillers:Ljava/util/List;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
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

    .line 467
    move-object v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->$selectedNetwork:Lkotlin/jvm/internal/Ref$IntRef;

    iput v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 469
    nop

    .line 470
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 471
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->$dataPlanList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dataPlanList[position]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 676
    .local v3, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 677
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 678
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;

    .local v10, "it":Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;
    const/4 v11, 0x0

    .line 471
    .local v11, "$i$a$-map-UtilitiesPaymentFragment$getAirtimePageView$3$onItemSelected$dataBundleTypeSpinnerAdapter$1":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;->data:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;->duration:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v10    # "it":Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;
    .end local v11    # "$i$a$-map-UtilitiesPaymentFragment$getAirtimePageView$3$onItemSelected$dataBundleTypeSpinnerAdapter$1":I
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 679
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 676
    nop

    .line 469
    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    new-instance v2, Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 468
    nop

    .line 473
    .local v2, "dataBundleTypeSpinnerAdapter":Lcom/woleapp/netpos/contactless/adapter/ServicesSpinnerAdapter;
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getAirtimeOrDataBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "airtimeOrDataBinding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->selectDataBundleSpinner:Landroid/widget/Spinner;

    .line 474
    move-object v4, v2

    check-cast v4, Landroid/widget/SpinnerAdapter;

    .line 473
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 475
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;)Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    move-result-object v3

    iget-object v4, v0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$getAirtimePageView$3;->$mobileOperatorsBillers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/Biller;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/Biller;->getBiller_code()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mobileOperatorsBillers[position].biller_code"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->setUtilityProvider(Ljava/lang/String;)V

    .line 476
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

    .line 459
    return-void
.end method
