.class abstract Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;
.super Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL1Pad;
.source "SpmcAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL1Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;->P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 55
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL1Pad;-><init>(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public final lvProducerIndex()J
    .locals 2

    .line 47
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;->producerIndex:J

    return-wide v0
.end method

.method protected final soProducerIndex(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 51
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexField;->P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 52
    return-void
.end method
