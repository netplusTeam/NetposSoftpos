.class final Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/ByteBufUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadLocalUnsafeDirectByteBuf"
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1175
    new-instance v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf$1;-><init>()V

    .line 1176
    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    .line 1175
    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 1192
    .local p1, "handle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;>;"
    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    const/16 v1, 0x100

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 1193
    iput-object p1, p0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    .line 1194
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/buffer/ByteBufUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/internal/ObjectPool$Handle;
    .param p2, "x1"    # Lio/netty/buffer/ByteBufUtil$1;

    .line 1173
    invoke-direct {p0, p1}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    return-void
.end method

.method static newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;
    .locals 1

    .line 1184
    sget-object v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;

    .line 1185
    .local v0, "buf":Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->resetRefCnt()V

    .line 1186
    return-object v0
.end method


# virtual methods
.method protected deallocate()V
    .locals 2

    .line 1198
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->capacity()I

    move-result v0

    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->access$500()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1199
    invoke-super {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->deallocate()V

    goto :goto_0

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 1202
    iget-object v0, p0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    .line 1204
    :goto_0
    return-void
.end method
