.class abstract Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;
.super Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL1Pad;
.source "MpmcAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL1Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;->P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 48
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL1Pad;-><init>(I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected final casProducerIndex(JJ)Z
    .locals 6
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .line 57
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;->P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method

.method public final lvProducerIndex()J
    .locals 2

    .line 53
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;->producerIndex:J

    return-wide v0
.end method
