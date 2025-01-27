.class abstract Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;
.super Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL2Pad;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL2Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    const-class v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;->C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 103
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL2Pad;-><init>(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public final lvConsumerIndex()J
    .locals 2

    .line 107
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;->consumerIndex:J

    return-wide v0
.end method

.method protected final soConsumerIndex(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 111
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueConsumerIndexField;->C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 112
    return-void
.end method
