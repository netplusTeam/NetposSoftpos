.class public final Lcom/woleapp/netpos/contactless/model/PaginationHelper;
.super Ljava/lang/Object;
.source "ZenithQr.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B1\u0008\u0016\u0012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u0012\u0014\u0010\u0006\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tBE\u0008\u0016\u0012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u0012\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u0003\u0012\u0014\u0010\u0006\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000cR(\u0010\u0006\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\n\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R(\u0010\u0013\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000e\"\u0004\u0008\u0015\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/PaginationHelper;",
        "",
        "networkResourceLiveData",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
        "data",
        "Landroidx/paging/PagedList;",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V",
        "emptyResultLiveData",
        "",
        "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "setData",
        "(Landroidx/lifecycle/LiveData;)V",
        "getEmptyResultLiveData",
        "setEmptyResultLiveData",
        "eventLiveData",
        "getEventLiveData",
        "setEventLiveData",
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
.field private data:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;>;"
        }
    .end annotation
.end field

.field private emptyResultLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private eventLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .param p1, "networkResourceLiveData"    # Landroidx/lifecycle/LiveData;
    .param p2, "data"    # Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
            ">;>;",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "networkResourceLiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->eventLiveData:Landroidx/lifecycle/LiveData;

    .line 58
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->data:Landroidx/lifecycle/LiveData;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .param p1, "networkResourceLiveData"    # Landroidx/lifecycle/LiveData;
    .param p2, "emptyResultLiveData"    # Landroidx/lifecycle/LiveData;
    .param p3, "data"    # Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
            ">;>;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "networkResourceLiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emptyResultLiveData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->eventLiveData:Landroidx/lifecycle/LiveData;

    .line 67
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->emptyResultLiveData:Landroidx/lifecycle/LiveData;

    .line 68
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->data:Landroidx/lifecycle/LiveData;

    .line 69
    return-void
.end method


# virtual methods
.method public final getData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->data:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

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

    .line 50
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->emptyResultLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getEventLiveData()Landroidx/lifecycle/LiveData;
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

    .line 49
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->eventLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setData(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;>;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->data:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public final setEmptyResultLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->emptyResultLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public final setEventLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
            ">;>;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->eventLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method
