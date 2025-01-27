.class abstract Lorg/jctools/queues/MpscCompoundQueueColdFields;
.super Lorg/jctools/queues/MpscCompoundQueueL0Pad;
.source "MpscCompoundQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscCompoundQueueL0Pad<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final parallelQueues:I

.field protected final parallelQueuesMask:I

.field protected final queues:[Lorg/jctools/queues/MpscArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jctools/queues/MpscArrayQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(II)V
    .locals 5
    .param p1, "capacity"    # I
    .param p2, "queueParallelism"    # I

    .line 44
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueueColdFields;, "Lorg/jctools/queues/MpscCompoundQueueColdFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/MpscCompoundQueueL0Pad;-><init>()V

    .line 45
    invoke-static {p2}, Lorg/jctools/util/Pow2;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p2}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lorg/jctools/queues/MpscCompoundQueueColdFields;->parallelQueues:I

    .line 47
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jctools/queues/MpscCompoundQueueColdFields;->parallelQueuesMask:I

    .line 48
    new-array v1, v0, [Lorg/jctools/queues/MpscArrayQueue;

    iput-object v1, p0, Lorg/jctools/queues/MpscCompoundQueueColdFields;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    .line 49
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    .line 50
    .local v1, "fullCapacity":I
    const-string v2, "fullCapacity"

    invoke-static {v1, v0, v2}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/jctools/queues/MpscCompoundQueueColdFields;->parallelQueues:I

    if-ge v0, v2, :cond_1

    .line 53
    iget-object v2, p0, Lorg/jctools/queues/MpscCompoundQueueColdFields;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    new-instance v3, Lorg/jctools/queues/MpscArrayQueue;

    iget v4, p0, Lorg/jctools/queues/MpscCompoundQueueColdFields;->parallelQueues:I

    div-int v4, v1, v4

    invoke-direct {v3, v4}, Lorg/jctools/queues/MpscArrayQueue;-><init>(I)V

    aput-object v3, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
