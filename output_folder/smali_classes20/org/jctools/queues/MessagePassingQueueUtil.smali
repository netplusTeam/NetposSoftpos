.class public final Lorg/jctools/queues/MessagePassingQueueUtil;
.super Ljava/lang/Object;
.source "MessagePassingQueueUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jctools/queues/MessagePassingQueue<",
            "+TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "-TE;>;)I"
        }
    .end annotation

    .line 45
    .local p0, "queue":Lorg/jctools/queues/MessagePassingQueue;, "Lorg/jctools/queues/MessagePassingQueue<+TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<-TE;>;"
    const/4 v0, 0x0

    .line 46
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    invoke-interface {p1, v2}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_0
    return v0
.end method

.method public static drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 3
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jctools/queues/MessagePassingQueue<",
            "+TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 34
    .local p0, "queue":Lorg/jctools/queues/MessagePassingQueue;, "Lorg/jctools/queues/MessagePassingQueue<+TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<-TE;>;"
    const/4 v0, 0x0

    .line 35
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p0}, Lorg/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 37
    invoke-interface {p1, v2}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return v0
.end method

.method public static drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
    .param p2, "wait"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lorg/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jctools/queues/MessagePassingQueue<",
            "+TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "-TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lorg/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 60
    .local p0, "queue":Lorg/jctools/queues/MessagePassingQueue;, "Lorg/jctools/queues/MessagePassingQueue<+TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<-TE;>;"
    const/4 v0, 0x0

    .line 61
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {p0}, Lorg/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 66
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    invoke-interface {p1, v1}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 71
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method
