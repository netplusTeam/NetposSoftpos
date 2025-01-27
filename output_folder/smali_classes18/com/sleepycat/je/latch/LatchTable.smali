.class public Lcom/sleepycat/je/latch/LatchTable;
.super Ljava/lang/Object;
.source "LatchTable.java"


# instance fields
.field private latchesByThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchTable;->latchesByThread:Ljava/lang/ThreadLocal;

    .line 29
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "latch"    # Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchTable;->latchesByThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 37
    .local v0, "threadLatches":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 39
    iget-object v1, p0, Lcom/sleepycat/je/latch/LatchTable;->latchesByThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method clear()V
    .locals 1

    .line 82
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/latch/LatchTable;->latchesByThread:Ljava/lang/ThreadLocal;

    .line 83
    return-void
.end method

.method latchesHeldToString()Ljava/lang/String;
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchTable;->latchesByThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 71
    .local v0, "threadLatches":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 74
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method nLatchesHeld()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchTable;->latchesByThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 62
    .local v0, "threadLatches":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    return v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "latch"    # Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchTable;->latchesByThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 50
    .local v0, "threadLatches":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    return v1

    .line 53
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
