.class public final Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;
.super Landroidx/paging/PageKeyedDataSource;
.source "ZenithQrMCCDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PageKeyedDataSource<",
        "Ljava/lang/Integer;",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J*\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u001dH\u0016J*\u0010\u001e\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u001dH\u0016J*\u0010\u001f\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020 2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030!H\u0016R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000b0\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;",
        "Landroidx/paging/PageKeyedDataSource;",
        "",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        "zenithMCCDto",
        "Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;",
        "disposables",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;Lio/reactivex/disposables/CompositeDisposable;)V",
        "_emptyResultLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "",
        "_networkResourceLiveData",
        "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
        "emptyResultLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getEmptyResultLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "loadedAll",
        "networkResource",
        "getNetworkResource",
        "zenithService",
        "Lcom/woleapp/netpos/contactless/network/ZenithQrService;",
        "loadAfter",
        "",
        "params",
        "Landroidx/paging/PageKeyedDataSource$LoadParams;",
        "callback",
        "Landroidx/paging/PageKeyedDataSource$LoadCallback;",
        "loadBefore",
        "loadInitial",
        "Landroidx/paging/PageKeyedDataSource$LoadInitialParams;",
        "Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;",
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
.field private final _emptyResultLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
            ">;>;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private loadedAll:Z

.field private final zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

.field private final zenithService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;


# direct methods
.method public static synthetic $r8$lambda$6Sf-YutTCNq7_cCo9B0_SEZS7Nw(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadCallback;Landroidx/paging/PageKeyedDataSource$LoadParams;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->loadAfter$lambda-5(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadCallback;Landroidx/paging/PageKeyedDataSource$LoadParams;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzQqel5_dLs_9IyLOyADxr4FrKw(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->loadInitial$lambda-2(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1
    .param p1, "zenithMCCDto"    # Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;
    .param p2, "disposables"    # Lio/reactivex/disposables/CompositeDisposable;

    const-string v0, "zenithMCCDto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disposables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroidx/paging/PageKeyedDataSource;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    .line 19
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 22
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getZenithQRServiceInstance()Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_emptyResultLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 17
    return-void
.end method

.method private static final loadAfter$lambda-5(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadCallback;Landroidx/paging/PageKeyedDataSource$LoadParams;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;
    .param p1, "$callback"    # Landroidx/paging/PageKeyedDataSource$LoadCallback;
    .param p2, "$params"    # Landroidx/paging/PageKeyedDataSource$LoadParams;
    .param p3, "t1"    # Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;
    .param p4, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    if-eqz p3, :cond_1

    move-object v0, p3

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;
    const/4 v1, 0x0

    .line 99
    .local v1, "$i$a$-let-ZenithQrMCCDataSource$loadAfter$1$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;->getMerchantCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 100
    iput-boolean v3, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->loadedAll:Z

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;->getMerchantCategoryList()Ljava/util/List;

    move-result-object v2

    iget-object v4, p2, Landroidx/paging/PageKeyedDataSource$LoadParams;->key:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroidx/paging/PageKeyedDataSource$LoadCallback;->onResult(Ljava/util/List;Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 104
    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    .line 105
    new-instance v4, Lcom/woleapp/netpos/contactless/model/NetworkResource;

    sget-object v5, Lcom/woleapp/netpos/contactless/model/LoadingState;->LOADING_COMPLETE:Lcom/woleapp/netpos/contactless/model/LoadingState;

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/model/NetworkResource;-><init>(Lcom/woleapp/netpos/contactless/model/LoadingState;)V

    .line 104
    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 108
    nop

    .line 98
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;
    .end local v1    # "$i$a$-let-ZenithQrMCCDataSource$loadAfter$1$1":I
    nop

    .line 109
    :cond_1
    if-eqz p4, :cond_2

    move-object v0, p4

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 110
    .local v1, "$i$a$-let-ZenithQrMCCDataSource$loadAfter$1$2":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 111
    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    .line 112
    new-instance v4, Lcom/woleapp/netpos/contactless/model/NetworkResource;

    sget-object v5, Lcom/woleapp/netpos/contactless/model/LoadingState;->LOADING_FAILED:Lcom/woleapp/netpos/contactless/model/LoadingState;

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/model/NetworkResource;-><init>(Lcom/woleapp/netpos/contactless/model/LoadingState;)V

    .line 111
    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 115
    nop

    .line 109
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-ZenithQrMCCDataSource$loadAfter$1$2":I
    nop

    .line 116
    :cond_2
    return-void
.end method

.method private static final loadInitial$lambda-2(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;
    .param p1, "$callback"    # Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;
    .param p2, "t1"    # Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;
    .param p3, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;
    const/4 v1, 0x0

    .line 50
    .local v1, "$i$a$-let-ZenithQrMCCDataSource$loadInitial$1$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;->getMerchantCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_emptyResultLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 52
    iput-boolean v4, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->loadedAll:Z

    .line 54
    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "list"

    invoke-static {v4, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;->getMerchantCategoryList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    .line 59
    new-instance v4, Lcom/woleapp/netpos/contactless/model/NetworkResource;

    sget-object v5, Lcom/woleapp/netpos/contactless/model/LoadingState;->LOADING_COMPLETE:Lcom/woleapp/netpos/contactless/model/LoadingState;

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/model/NetworkResource;-><init>(Lcom/woleapp/netpos/contactless/model/LoadingState;)V

    .line 58
    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;->getMerchantCategoryList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;->onResult(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    nop

    .line 49
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;
    .end local v1    # "$i$a$-let-ZenithQrMCCDataSource$loadInitial$1$1":I
    nop

    .line 64
    :cond_1
    if-eqz p3, :cond_2

    move-object v0, p3

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-let-ZenithQrMCCDataSource$loadInitial$1$2":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 66
    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    .line 67
    new-instance v4, Lcom/woleapp/netpos/contactless/model/NetworkResource;

    sget-object v5, Lcom/woleapp/netpos/contactless/model/LoadingState;->LOADING_FAILED:Lcom/woleapp/netpos/contactless/model/LoadingState;

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/model/NetworkResource;-><init>(Lcom/woleapp/netpos/contactless/model/LoadingState;)V

    .line 66
    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 70
    nop

    .line 64
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-ZenithQrMCCDataSource$loadInitial$1$2":I
    nop

    .line 71
    :cond_2
    return-void
.end method


# virtual methods
.method public final getEmptyResultLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_emptyResultLiveData:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getNetworkResource()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public loadAfter(Landroidx/paging/PageKeyedDataSource$LoadParams;Landroidx/paging/PageKeyedDataSource$LoadCallback;)V
    .locals 4
    .param p1, "params"    # Landroidx/paging/PageKeyedDataSource$LoadParams;
    .param p2, "callback"    # Landroidx/paging/PageKeyedDataSource$LoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageKeyedDataSource$LoadParams<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/paging/PageKeyedDataSource$LoadCallback<",
            "Ljava/lang/Integer;",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->loadedAll:Z

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v2, Lcom/woleapp/netpos/contactless/model/NetworkResource;

    sget-object v3, Lcom/woleapp/netpos/contactless/model/LoadingState;->LOADING_MORE:Lcom/woleapp/netpos/contactless/model/LoadingState;

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/model/NetworkResource;-><init>(Lcom/woleapp/netpos/contactless/model/LoadingState;)V

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroidx/paging/PageKeyedDataSource$LoadParams;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "page":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;->getFilter()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    invoke-interface {v1, v0}, Lcom/woleapp/netpos/contactless/network/ZenithQrService;->getMerchantCategoryList(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/woleapp/netpos/contactless/network/ZenithQrService;->getMerchantCategoryListWithFilter(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 91
    :goto_0
    nop

    .line 95
    .local v1, "query":Lio/reactivex/Single;
    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->retry(J)Lio/reactivex/Single;

    move-result-object v2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 96
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 97
    new-instance v3, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2, p1}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadCallback;Landroidx/paging/PageKeyedDataSource$LoadParams;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    const-string v3, "query.retry(2).subscribe\u2026          }\n            }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 118
    return-void
.end method

.method public loadBefore(Landroidx/paging/PageKeyedDataSource$LoadParams;Landroidx/paging/PageKeyedDataSource$LoadCallback;)V
    .locals 1
    .param p1, "params"    # Landroidx/paging/PageKeyedDataSource$LoadParams;
    .param p2, "callback"    # Landroidx/paging/PageKeyedDataSource$LoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageKeyedDataSource$LoadParams<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/paging/PageKeyedDataSource$LoadCallback<",
            "Ljava/lang/Integer;",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public loadInitial(Landroidx/paging/PageKeyedDataSource$LoadInitialParams;Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;)V
    .locals 4
    .param p1, "params"    # Landroidx/paging/PageKeyedDataSource$LoadInitialParams;
    .param p2, "callback"    # Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageKeyedDataSource$LoadInitialParams<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/paging/PageKeyedDataSource$LoadInitialCallback<",
            "Ljava/lang/Integer;",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->_networkResourceLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v2, Lcom/woleapp/netpos/contactless/model/NetworkResource;

    sget-object v3, Lcom/woleapp/netpos/contactless/model/LoadingState;->LOADING_INITIAL:Lcom/woleapp/netpos/contactless/model/LoadingState;

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/model/NetworkResource;-><init>(Lcom/woleapp/netpos/contactless/model/LoadingState;)V

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 40
    const-string v0, "1.20"

    .line 41
    .local v0, "page":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;->getFilter()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    invoke-interface {v1, v0}, Lcom/woleapp/netpos/contactless/network/ZenithQrService;->getMerchantCategoryList(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithService:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/woleapp/netpos/contactless/network/ZenithQrService;->getMerchantCategoryListWithFilter(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 42
    :goto_0
    nop

    .line 46
    .local v1, "query":Lio/reactivex/Single;
    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->retry(J)Lio/reactivex/Single;

    move-result-object v2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 47
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    const-string v3, "query.retry(2).subscribe\u2026          }\n            }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 73
    return-void
.end method
