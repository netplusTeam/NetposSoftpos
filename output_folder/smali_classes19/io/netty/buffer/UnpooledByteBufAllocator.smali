.class public final Lio/netty/buffer/UnpooledByteBufAllocator;
.super Lio/netty/buffer/AbstractByteBufAllocator;
.source "UnpooledByteBufAllocator.java"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocatorMetricProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledDirectByteBuf;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;,
        Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeHeapByteBuf;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;


# instance fields
.field private final disableLeakDetector:Z

.field private final metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

.field private final noCleaner:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 37
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnpooledByteBufAllocator;-><init>(Z)V

    sput-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 36
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "preferDirect"    # Z

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;-><init>(ZZ)V

    .line 47
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "preferDirect"    # Z
    .param p2, "disableLeakDetector"    # Z

    .line 59
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;-><init>(ZZZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 2
    .param p1, "preferDirect"    # Z
    .param p2, "disableLeakDetector"    # Z
    .param p3, "tryNoCleaner"    # Z

    .line 74
    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;-><init>(Z)V

    .line 29
    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator$1;)V

    iput-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    .line 75
    iput-boolean p2, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->disableLeakDetector:Z

    .line 76
    if-eqz p3, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasDirectBufferNoCleanerConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->noCleaner:Z

    .line 78
    return-void
.end method


# virtual methods
.method public compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "maxNumComponents"    # I

    .line 107
    new-instance v0, Lio/netty/buffer/CompositeByteBuf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI)V

    .line 108
    .local v0, "buf":Lio/netty/buffer/CompositeByteBuf;
    iget-boolean v1, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->disableLeakDetector:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/netty/buffer/UnpooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/CompositeByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "maxNumComponents"    # I

    .line 101
    new-instance v0, Lio/netty/buffer/CompositeByteBuf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI)V

    .line 102
    .local v0, "buf":Lio/netty/buffer/CompositeByteBuf;
    iget-boolean v1, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->disableLeakDetector:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/netty/buffer/UnpooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/CompositeByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method decrementDirect(I)V
    .locals 3
    .param p1, "amount"    # I

    .line 126
    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iget-object v0, v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;->directCounter:Lio/netty/util/internal/LongCounter;

    neg-int v1, p1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 127
    return-void
.end method

.method decrementHeap(I)V
    .locals 3
    .param p1, "amount"    # I

    .line 134
    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iget-object v0, v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;->heapCounter:Lio/netty/util/internal/LongCounter;

    neg-int v1, p1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 135
    return-void
.end method

.method incrementDirect(I)V
    .locals 3
    .param p1, "amount"    # I

    .line 122
    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iget-object v0, v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;->directCounter:Lio/netty/util/internal/LongCounter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 123
    return-void
.end method

.method incrementHeap(I)V
    .locals 3
    .param p1, "amount"    # I

    .line 130
    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    iget-object v0, v0, Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;->heapCounter:Lio/netty/util/internal/LongCounter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 131
    return-void
.end method

.method public isDirectBufferPooled()Z
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public metric()Lio/netty/buffer/ByteBufAllocatorMetric;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->metric:Lio/netty/buffer/UnpooledByteBufAllocator$UnpooledByteBufAllocatorMetric;

    return-object v0
.end method

.method protected newDirectBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 90
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-boolean v0, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->noCleaner:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    goto :goto_1

    .line 94
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_1
    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledDirectByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    .line 96
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_1
    iget-boolean v1, p0, Lio/netty/buffer/UnpooledByteBufAllocator;->disableLeakDetector:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lio/netty/buffer/UnpooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method protected newHeapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 82
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeHeapByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;-><init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V

    :goto_0
    return-object v0
.end method
