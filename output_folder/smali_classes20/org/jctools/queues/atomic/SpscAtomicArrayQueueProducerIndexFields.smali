.class abstract Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;
.super Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL1Pad;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL1Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile producerIndex:J

.field protected producerLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-class v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;->P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 64
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL1Pad;-><init>(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public final lvProducerIndex()J
    .locals 2

    .line 69
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;->producerIndex:J

    return-wide v0
.end method

.method protected final soProducerIndex(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 73
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueProducerIndexFields;->P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 74
    return-void
.end method
