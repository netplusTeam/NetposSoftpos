.class public final Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;
.super Ljava/lang/Object;
.source "MessagePassingQueueUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 52
    .local p0, "queue":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    if-eqz p1, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    invoke-interface {p1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    return v0

    .line 53
    .end local v0    # "i":I
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "c is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 3
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 35
    .local p0, "queue":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    if-eqz p1, :cond_3

    .line 37
    if-ltz p2, :cond_2

    .line 39
    if-nez p2, :cond_0

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_1

    .line 45
    invoke-interface {p1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v0

    .line 38
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "c is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 66
    .local p0, "queue":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    if-eqz p1, :cond_4

    .line 68
    if-eqz p2, :cond_3

    .line 70
    if-eqz p3, :cond_2

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 79
    invoke-interface {p2, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 80
    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 84
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 85
    :cond_1
    return-void

    .line 71
    .end local v0    # "idleCounter":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exit condition is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wait is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "c is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 89
    .local p0, "q":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-eqz p2, :cond_3

    .line 91
    if-eqz p3, :cond_2

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget v1, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-interface {p0, p1, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-interface {p2, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 100
    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_1
    return-void

    .line 92
    .end local v0    # "idleCounter":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exit condition is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "waiter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fillBounded(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 108
    .local p0, "q":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    sget v0, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->capacity()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fillInBatchesToLimit(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;II)I

    move-result v0

    return v0
.end method

.method public static fillInBatchesToLimit(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;II)I
    .locals 5
    .param p2, "batch"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;II)I"
        }
    .end annotation

    .line 113
    .local p0, "q":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "result":J
    :goto_0
    invoke-interface {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v2

    .line 117
    .local v2, "filled":I
    if-nez v2, :cond_0

    .line 119
    long-to-int v3, v0

    return v3

    .line 121
    :cond_0
    int-to-long v3, v2

    add-long/2addr v0, v3

    .line 123
    .end local v2    # "filled":I
    int-to-long v2, p3

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 124
    long-to-int v2, v0

    return v2

    .line 123
    :cond_1
    goto :goto_0
.end method

.method public static fillUnbounded(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 129
    .local p0, "q":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    sget v0, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    const/16 v1, 0x1000

    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fillInBatchesToLimit(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;II)I

    move-result v0

    return v0
.end method
