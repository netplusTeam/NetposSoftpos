.class public abstract Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;
.super Lorg/jctools/queues/ConcurrentCircularArrayQueue;
.source "ConcurrentSequencedCircularArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/ConcurrentCircularArrayQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final ARRAY_BASE:J

.field private static final ELEMENT_SHIFT:I

.field protected static final SEQ_BUFFER_PAD:I


# instance fields
.field protected final sequenceBuffer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    const-class v0, [J

    sget-object v1, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    .line 30
    .local v1, "scale":I
    const/16 v2, 0x8

    if-ne v2, v1, :cond_0

    .line 32
    const/4 v2, 0x3

    sput v2, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->ELEMENT_SHIFT:I

    .line 39
    sget v2, Lorg/jctools/util/PortableJvmInfo;->CACHE_LINE_SIZE:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v2, v1

    sput v2, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->SEQ_BUFFER_PAD:I

    .line 41
    sget-object v3, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    int-to-long v2, v0

    sput-wide v2, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->ARRAY_BASE:J

    .line 42
    .end local v1    # "scale":I
    return-void

    .line 36
    .restart local v1    # "scale":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected long[] element size"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 12
    .param p1, "capacity"    # I

    .line 48
    .local p0, "this":Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/ConcurrentCircularArrayQueue;-><init>(I)V

    .line 49
    iget-wide v0, p0, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->mask:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 51
    .local v0, "actualCapacity":I
    sget v1, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->SEQ_BUFFER_PAD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->sequenceBuffer:[J

    .line 52
    const-wide/16 v4, 0x0

    .local v4, "i":J
    :goto_0
    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 54
    iget-object v7, p0, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->sequenceBuffer:[J

    invoke-virtual {p0, v4, v5}, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->calcSequenceOffset(J)J

    move-result-wide v8

    move-object v6, p0

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->soSequence([JJJ)V

    .line 52
    add-long/2addr v4, v2

    goto :goto_0

    .line 56
    .end local v4    # "i":J
    :cond_0
    return-void
.end method

.method protected static calcSequenceOffset(JJ)J
    .locals 5
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .line 65
    sget-wide v0, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->ARRAY_BASE:J

    and-long v2, p0, p2

    sget v4, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->ELEMENT_SHIFT:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected final calcSequenceOffset(J)J
    .locals 2
    .param p1, "index"    # J

    .line 60
    .local p0, "this":Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->mask:J

    invoke-static {p1, p2, v0, v1}, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;->calcSequenceOffset(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final lvSequence([JJ)J
    .locals 2
    .param p1, "buffer"    # [J
    .param p2, "offset"    # J

    .line 75
    .local p0, "this":Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final soSequence([JJJ)V
    .locals 6
    .param p1, "buffer"    # [J
    .param p2, "offset"    # J
    .param p4, "e"    # J

    .line 70
    .local p0, "this":Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 71
    return-void
.end method
