.class abstract Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;
.super Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerColdFields;
.source "BaseSpscLinkedAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerColdFields<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const-class v0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;->C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 60
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerColdFields;-><init>()V

    return-void
.end method


# virtual methods
.method public final lvConsumerIndex()J
    .locals 2

    .line 72
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;->consumerIndex:J

    return-wide v0
.end method

.method final soConsumerIndex(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 67
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerField;->C_INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 68
    return-void
.end method
