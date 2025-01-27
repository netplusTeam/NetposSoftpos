.class public final Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;
.super Landroidx/paging/DataSource$Factory;
.source "ZenithQrMCCDataSourceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/DataSource$Factory<",
        "Ljava/lang/Integer;",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0014\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;",
        "Landroidx/paging/DataSource$Factory;",
        "",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        "zenithMCCDto",
        "Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;Lio/reactivex/disposables/CompositeDisposable;)V",
        "itemLiveDataSource",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;",
        "getItemLiveDataSource",
        "()Landroidx/lifecycle/MutableLiveData;",
        "create",
        "Landroidx/paging/DataSource;",
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
.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final itemLiveDataSource:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1
    .param p1, "zenithMCCDto"    # Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;
    .param p2, "disposable"    # Lio/reactivex/disposables/CompositeDisposable;

    const-string v0, "zenithMCCDto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disposable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroidx/paging/DataSource$Factory;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    .line 11
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 14
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->itemLiveDataSource:Landroidx/lifecycle/MutableLiveData;

    .line 9
    return-void
.end method


# virtual methods
.method public create()Landroidx/paging/DataSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/DataSource<",
            "Ljava/lang/Integer;",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->zenithMCCDto:Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;-><init>(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 18
    .local v0, "xx":Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->itemLiveDataSource:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 19
    move-object v1, v0

    check-cast v1, Landroidx/paging/DataSource;

    return-object v1
.end method

.method public final getItemLiveDataSource()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSource;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ZenithQrMCCDataSourceFactory;->itemLiveDataSource:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
