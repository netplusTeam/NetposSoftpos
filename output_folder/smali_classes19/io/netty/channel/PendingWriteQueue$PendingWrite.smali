.class final Lio/netty/channel/PendingWriteQueue$PendingWrite;
.super Ljava/lang/Object;
.source "PendingWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/PendingWriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingWrite"
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/channel/PendingWriteQueue$PendingWrite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/channel/PendingWriteQueue$PendingWrite;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/Object;

.field private next:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private promise:Lio/netty/channel/ChannelPromise;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 288
    new-instance v0, Lio/netty/channel/PendingWriteQueue$PendingWrite$1;

    invoke-direct {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/channel/PendingWriteQueue$PendingWrite;",
            ">;)V"
        }
    .end annotation

    .line 301
    .local p1, "handle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/channel/PendingWriteQueue$PendingWrite;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    .line 303
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/channel/PendingWriteQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/internal/ObjectPool$Handle;
    .param p2, "x1"    # Lio/netty/channel/PendingWriteQueue$1;

    .line 287
    invoke-direct {p0, p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 287
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->next:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    return-object v0
.end method

.method static synthetic access$002(Lio/netty/channel/PendingWriteQueue$PendingWrite;Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .param p1, "x1"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 287
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->next:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    return-object p1
.end method

.method static synthetic access$100(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 287
    iget-wide v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->size:J

    return-wide v0
.end method

.method static synthetic access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 287
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->msg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 287
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 287
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->recycle()V

    return-void
.end method

.method static newInstance(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "size"    # I
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 306
    sget-object v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 307
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    int-to-long v1, p1

    iput-wide v1, v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->size:J

    .line 308
    iput-object p0, v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->msg:Ljava/lang/Object;

    .line 309
    iput-object p2, v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    .line 310
    return-object v0
.end method

.method private recycle()V
    .locals 2

    .line 314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->size:J

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->next:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 316
    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->msg:Ljava/lang/Object;

    .line 317
    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    .line 318
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    .line 319
    return-void
.end method
