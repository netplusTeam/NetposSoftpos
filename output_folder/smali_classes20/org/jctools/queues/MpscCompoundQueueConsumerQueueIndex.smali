.class abstract Lorg/jctools/queues/MpscCompoundQueueConsumerQueueIndex;
.super Lorg/jctools/queues/MpscCompoundQueueMidPad;
.source "MpscCompoundQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscCompoundQueueMidPad<",
        "TE;>;"
    }
.end annotation


# instance fields
.field consumerQueueIndex:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "queueParallelism"    # I

    .line 75
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueueConsumerQueueIndex;, "Lorg/jctools/queues/MpscCompoundQueueConsumerQueueIndex<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/jctools/queues/MpscCompoundQueueMidPad;-><init>(II)V

    .line 76
    return-void
.end method
