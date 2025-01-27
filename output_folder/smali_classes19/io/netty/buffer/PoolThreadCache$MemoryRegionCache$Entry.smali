.class final Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field handle:J

.field nioBuffer:Ljava/nio/ByteBuffer;

.field final recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "*>;>;)V"
        }
    .end annotation

    .line 474
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    .local p1, "recyclerHandle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 475
    iput-object p1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    .line 476
    return-void
.end method


# virtual methods
.method recycle()V
    .locals 2

    .line 479
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 480
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    .line 481
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 482
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    .line 483
    return-void
.end method
