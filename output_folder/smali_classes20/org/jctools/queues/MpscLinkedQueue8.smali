.class public Lorg/jctools/queues/MpscLinkedQueue8;
.super Lorg/jctools/queues/MpscLinkedQueue;
.source "MpscLinkedQueue8.java"


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
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue8;, "Lorg/jctools/queues/MpscLinkedQueue8<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/MpscLinkedQueue;-><init>()V

    return-void
.end method


# virtual methods
.method protected final xchgProducerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue8;, "Lorg/jctools/queues/MpscLinkedQueue8<TE;>;"
    .local p1, "newVal":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jctools/queues/MpscLinkedQueue8;->P_NODE_OFFSET:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jctools/queues/LinkedQueueNode;

    return-object v0
.end method
