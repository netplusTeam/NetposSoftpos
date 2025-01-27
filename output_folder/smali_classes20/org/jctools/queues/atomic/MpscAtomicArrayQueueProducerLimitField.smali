.class abstract Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;
.super Lorg/jctools/queues/atomic/MpscAtomicArrayQueueMidPad;
.source "MpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueMidPad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_LIMIT_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile producerLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    const-class v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;

    const-string v1, "producerLimit"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;->P_LIMIT_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 87
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueMidPad;-><init>(I)V

    .line 88
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;->producerLimit:J

    .line 89
    return-void
.end method


# virtual methods
.method protected final lvProducerLimit()J
    .locals 2

    .line 92
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;->producerLimit:J

    return-wide v0
.end method

.method protected final soProducerLimit(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 96
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;->P_LIMIT_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 97
    return-void
.end method
