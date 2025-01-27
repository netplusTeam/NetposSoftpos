.class public final Lio/netty/util/internal/PendingWrite;
.super Ljava/lang/Object;
.source "PendingWrite.java"


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/util/internal/PendingWrite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/util/internal/PendingWrite;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/Object;

.field private promise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lio/netty/util/internal/PendingWrite$1;

    invoke-direct {v0}, Lio/netty/util/internal/PendingWrite$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PendingWrite;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/util/internal/PendingWrite;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "handle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/util/internal/PendingWrite;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lio/netty/util/internal/PendingWrite;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/util/internal/PendingWrite$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/internal/ObjectPool$Handle;
    .param p2, "x1"    # Lio/netty/util/internal/PendingWrite$1;

    .line 26
    invoke-direct {p0, p1}, Lio/netty/util/internal/PendingWrite;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/Object;Lio/netty/util/concurrent/Promise;)Lio/netty/util/internal/PendingWrite;
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/netty/util/internal/PendingWrite;"
        }
    .end annotation

    .line 38
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    sget-object v0, Lio/netty/util/internal/PendingWrite;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/PendingWrite;

    .line 39
    .local v0, "pending":Lio/netty/util/internal/PendingWrite;
    iput-object p0, v0, Lio/netty/util/internal/PendingWrite;->msg:Ljava/lang/Object;

    .line 40
    iput-object p1, v0, Lio/netty/util/internal/PendingWrite;->promise:Lio/netty/util/concurrent/Promise;

    .line 41
    return-object v0
.end method


# virtual methods
.method public failAndRecycle(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 66
    iget-object v0, p0, Lio/netty/util/internal/PendingWrite;->msg:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lio/netty/util/internal/PendingWrite;->promise:Lio/netty/util/concurrent/Promise;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/PendingWrite;->recycle()Z

    move-result v0

    return v0
.end method

.method public msg()Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/netty/util/internal/PendingWrite;->msg:Ljava/lang/Object;

    return-object v0
.end method

.method public promise()Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lio/netty/util/internal/PendingWrite;->promise:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method public recycle()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/internal/PendingWrite;->msg:Ljava/lang/Object;

    .line 57
    iput-object v0, p0, Lio/netty/util/internal/PendingWrite;->promise:Lio/netty/util/concurrent/Promise;

    .line 58
    iget-object v0, p0, Lio/netty/util/internal/PendingWrite;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public recycleAndGet()Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/netty/util/internal/PendingWrite;->promise:Lio/netty/util/concurrent/Promise;

    .line 96
    .local v0, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/PendingWrite;->recycle()Z

    .line 97
    return-object v0
.end method

.method public successAndRecycle()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lio/netty/util/internal/PendingWrite;->promise:Lio/netty/util/concurrent/Promise;

    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 80
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/PendingWrite;->recycle()Z

    move-result v0

    return v0
.end method
