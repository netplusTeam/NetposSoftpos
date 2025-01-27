.class abstract Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;
.super Lorg/jctools/queues/BaseLinkedQueuePad0;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseLinkedQueuePad0<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final P_NODE_OFFSET:J


# instance fields
.field protected producerNode:Lorg/jctools/queues/LinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-class v0, Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;

    const-string v1, "producerNode"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;->P_NODE_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseLinkedQueuePad0;-><init>()V

    return-void
.end method


# virtual methods
.method protected final casProducerNode(Lorg/jctools/queues/LinkedQueueNode;Lorg/jctools/queues/LinkedQueueNode;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)Z"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef<TE;>;"
    .local p1, "expect":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    .local p2, "newValue":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;->P_NODE_OFFSET:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final lpProducerNode()Lorg/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;->producerNode:Lorg/jctools/queues/LinkedQueueNode;

    return-object v0
.end method

.method protected final lvProducerNode()Lorg/jctools/queues/LinkedQueueNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;->P_NODE_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jctools/queues/LinkedQueueNode;

    return-object v0
.end method

.method protected final spProducerNode(Lorg/jctools/queues/LinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef<TE;>;"
    .local p1, "newValue":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    iput-object p1, p0, Lorg/jctools/queues/BaseLinkedQueueProducerNodeRef;->producerNode:Lorg/jctools/queues/LinkedQueueNode;

    .line 41
    return-void
.end method
