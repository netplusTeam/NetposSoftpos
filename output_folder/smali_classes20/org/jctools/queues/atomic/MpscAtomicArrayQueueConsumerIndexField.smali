.class abstract Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;
.super Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL2Pad;
.source "MpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL2Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    const-class v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;->C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 126
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL2Pad;-><init>(I)V

    .line 127
    return-void
.end method


# virtual methods
.method protected final lpConsumerIndex()J
    .locals 2

    .line 130
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;->consumerIndex:J

    return-wide v0
.end method

.method public final lvConsumerIndex()J
    .locals 2

    .line 135
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;->consumerIndex:J

    return-wide v0
.end method

.method protected soConsumerIndex(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 139
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;->C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 140
    return-void
.end method
