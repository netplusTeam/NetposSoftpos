.class abstract Lorg/jctools/queues/atomic/SpscAtomicArrayQueueColdField;
.super Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final MAX_LOOK_AHEAD_STEP:I


# instance fields
.field protected final lookAheadStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueColdField;->MAX_LOOK_AHEAD_STEP:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 31
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueueColdField;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueColdField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;-><init>(I)V

    .line 32
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueColdField;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sget v1, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueColdField;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueColdField;->lookAheadStep:I

    .line 33
    return-void
.end method
