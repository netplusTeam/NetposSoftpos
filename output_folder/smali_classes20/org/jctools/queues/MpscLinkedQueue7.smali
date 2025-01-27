.class public Lorg/jctools/queues/MpscLinkedQueue7;
.super Lorg/jctools/queues/MpscLinkedQueue;
.source "MpscLinkedQueue7.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscLinkedQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue7;, "Lorg/jctools/queues/MpscLinkedQueue7<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/MpscLinkedQueue;-><init>()V

    return-void
.end method


# virtual methods
.method protected final xchgProducerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue7;, "Lorg/jctools/queues/MpscLinkedQueue7<TE;>;"
    .local p1, "newVal":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    :goto_0
    iget-object v6, p0, Lorg/jctools/queues/MpscLinkedQueue7;->producerNode:Lorg/jctools/queues/LinkedQueueNode;

    .line 33
    .local v6, "oldVal":Ljava/lang/Object;
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/MpscLinkedQueue7;->P_NODE_OFFSET:J

    move-object v1, p0

    move-object v4, v6

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    move-object v0, v6

    check-cast v0, Lorg/jctools/queues/LinkedQueueNode;

    return-object v0

    .line 33
    :cond_0
    goto :goto_0
.end method
