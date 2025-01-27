.class abstract Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;
.super Lorg/jctools/queues/BaseLinkedQueuePad1;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseLinkedQueuePad1<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final C_NODE_OFFSET:J


# instance fields
.field protected consumerNode:Lorg/jctools/queues/LinkedQueueNode;
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

    .line 70
    const-class v0, Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;

    const-string v1, "consumerNode"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;->C_NODE_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 68
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseLinkedQueuePad1;-><init>()V

    return-void
.end method


# virtual methods
.method protected final lpConsumerNode()Lorg/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;->consumerNode:Lorg/jctools/queues/LinkedQueueNode;

    return-object v0
.end method

.method protected final lvConsumerNode()Lorg/jctools/queues/LinkedQueueNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;->C_NODE_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jctools/queues/LinkedQueueNode;

    return-object v0
.end method

.method protected final spConsumerNode(Lorg/jctools/queues/LinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;, "Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef<TE;>;"
    .local p1, "newValue":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    iput-object p1, p0, Lorg/jctools/queues/BaseLinkedQueueConsumerNodeRef;->consumerNode:Lorg/jctools/queues/LinkedQueueNode;

    .line 77
    return-void
.end method
