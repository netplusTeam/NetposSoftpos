.class abstract Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;
.super Lorg/jctools/queues/atomic/BaseLinkedAtomicQueuePad0;
.source "BaseLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueuePad0<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile producerNode:Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-class v0, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;

    const-class v1, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    const-string v2, "producerNode"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;, "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueuePad0;-><init>()V

    return-void
.end method


# virtual methods
.method protected final casProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)Z"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;, "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef<TE;>;"
    .local p1, "expect":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    .local p2, "newValue":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final lpProducerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;, "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->producerNode:Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    return-object v0
.end method

.method protected final lvProducerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;, "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->producerNode:Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    return-object v0
.end method

.method protected final spProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;, "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef<TE;>;"
    .local p1, "newValue":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected final xchgProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;, "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef<TE;>;"
    .local p1, "newValue":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    sget-object v0, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    return-object v0
.end method
