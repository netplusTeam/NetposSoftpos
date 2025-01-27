.class public final synthetic Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;

.field public final synthetic f$1:Landroidx/paging/PageKeyedDataSource$LoadCallback;

.field public final synthetic f$2:Landroidx/paging/PageKeyedDataSource$LoadParams;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadCallback;Landroidx/paging/PageKeyedDataSource$LoadParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;->f$0:Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;->f$1:Landroidx/paging/PageKeyedDataSource$LoadCallback;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;->f$2:Landroidx/paging/PageKeyedDataSource$LoadParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;->f$0:Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;->f$1:Landroidx/paging/PageKeyedDataSource$LoadCallback;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;->f$2:Landroidx/paging/PageKeyedDataSource$LoadParams;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->$r8$lambda$6Sf-YutTCNq7_cCo9B0_SEZS7Nw(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadCallback;Landroidx/paging/PageKeyedDataSource$LoadParams;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;Ljava/lang/Throwable;)V

    return-void
.end method
