.class abstract Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;
.super Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueL2Pad;
.source "BaseSpscLinkedAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueL2Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    const-class v0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;->P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 91
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueL2Pad;-><init>()V

    return-void
.end method


# virtual methods
.method public final lvProducerIndex()J
    .locals 2

    .line 103
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;->producerIndex:J

    return-wide v0
.end method

.method final soProducerIndex(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 98
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;->P_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 99
    return-void
.end method
