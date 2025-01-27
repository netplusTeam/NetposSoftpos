.class public Lcom/sleepycat/je/dbi/INList;
.super Ljava/lang/Object;
.source "INList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/INList$Iter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/sleepycat/je/tree/IN;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private enabled:Z

.field private envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final ins:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/sleepycat/je/tree/IN;",
            "Lcom/sleepycat/je/tree/IN;",
            ">;"
        }
    .end annotation
.end field

.field private nCachedBINDeltas:Ljava/util/concurrent/atomic/AtomicLong;

.field private nCachedBINs:Ljava/util/concurrent/atomic/AtomicLong;

.field private nCachedUpperINs:Ljava/util/concurrent/atomic/AtomicLong;

.field private recalcConsistent:Z

.field private volatile recalcInProgress:Z

.field private volatile recalcToggle:Z

.field private recalcTotal:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/INList;->init(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->enabled:Z

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/dbi/INList;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/INList;

    .line 37
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/dbi/INList;Lcom/sleepycat/je/tree/IN;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/INList;
    .param p1, "x1"    # Lcom/sleepycat/je/tree/IN;

    .line 37
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/INList;->removeInternal(Lcom/sleepycat/je/tree/IN;)Z

    move-result v0

    return v0
.end method

.method private init(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "environmentImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 72
    iput-object p1, p0, Lcom/sleepycat/je/dbi/INList;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcInProgress:Z

    .line 74
    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcToggle:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcConsistent:Z

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcTotal:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedUpperINs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINDeltas:Ljava/util/concurrent/atomic/AtomicLong;

    .line 81
    return-void
.end method

.method private memRecalcAdd(Lcom/sleepycat/je/tree/IN;J)V
    .locals 1
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "size"    # J

    .line 451
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcInProgress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcConsistent:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcTotal:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcToggle:Z

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setRecalcToggle(Z)V

    .line 456
    return-void
.end method

.method private memRecalcRemove(Lcom/sleepycat/je/tree/IN;J)V
    .locals 0
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "delta"    # J

    .line 464
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/dbi/INList;->memRecalcUpdate(Lcom/sleepycat/je/tree/IN;J)V

    .line 465
    return-void
.end method

.method private removeInternal(Lcom/sleepycat/je/tree/IN;)Z
    .locals 4
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 212
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 214
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/IN;->isBINDelta(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINDeltas:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedUpperINs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 221
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    .line 223
    .local v0, "evictor":Lcom/sleepycat/je/evictor/Evictor;
    const/4 v2, 0x0

    .line 224
    .local v2, "latchAcquired":Z
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchOwner()Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 226
    const/4 v2, 0x1

    .line 230
    :cond_2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/evictor/Evictor;->remove(Lcom/sleepycat/je/tree/IN;)V

    .line 231
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/IN;->setInListResident(Z)V

    .line 232
    iget-object v3, p0, Lcom/sleepycat/je/dbi/INList;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->removeINFromMain(Lcom/sleepycat/je/tree/IN;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 239
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    .line 240
    .local v3, "oldValue":Lcom/sleepycat/je/tree/IN;
    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 234
    .end local v3    # "oldValue":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_5

    .line 235
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    :cond_5
    throw v1
.end method

.method private verifyPrint(JJ)V
    .locals 5
    .param p1, "istat"    # J
    .param p3, "bstat"    # J

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "numINs":I
    const/4 v1, 0x0

    .line 109
    .local v1, "numBINs":I
    iget-object v2, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    .line 110
    .local v3, "theIN":Lcom/sleepycat/je/tree/IN;
    instance-of v4, v3, Lcom/sleepycat/je/tree/BIN;

    if-eqz v4, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 115
    .end local v3    # "theIN":Lcom/sleepycat/je/tree/IN;
    :goto_1
    goto :goto_0

    .line 116
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/INList;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INcount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " BINCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INstat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bstat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/tree/IN;)V
    .locals 8
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 150
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->enabled:Z

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 157
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/IN;->isBINDelta(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINDeltas:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedUpperINs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 169
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 170
    .local v0, "oldValue":Lcom/sleepycat/je/tree/IN;
    if-nez v0, :cond_3

    .line 182
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getBudgetedMemorySize()J

    move-result-wide v1

    .line 183
    .local v1, "size":J
    invoke-direct {p0, p1, v1, v2}, Lcom/sleepycat/je/dbi/INList;->memRecalcAdd(Lcom/sleepycat/je/tree/IN;J)V

    .line 184
    iget-object v3, p0, Lcom/sleepycat/je/dbi/INList;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTreeMemoryUsage(J)V

    .line 185
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/tree/IN;->setInListResident(Z)V

    .line 186
    return-void

    .line 171
    .end local v1    # "size":J
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/dbi/INList;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding new IN node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dbIdentity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " db="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\nExisting IN node="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 178
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v2, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public clear()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 329
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedUpperINs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 330
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 331
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINDeltas:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 333
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    .line 334
    .local v0, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->refreshTreeMemoryUsage(J)V

    .line 335
    return-void
.end method

.method public contains(Lcom/sleepycat/je/tree/IN;)Z
    .locals 1
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 129
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dump()V
    .locals 6

    .line 338
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/INList;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 340
    .local v1, "theIN":Lcom/sleepycat/je/tree/IN;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nid=: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 341
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 342
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    .end local v1    # "theIN":Lcom/sleepycat/je/tree/IN;
    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->enabled:Z

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->enabled:Z

    .line 139
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getSize()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->ins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->enabled:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sleepycat/je/tree/IN;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/sleepycat/je/dbi/INList$Iter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/dbi/INList$Iter;-><init>(Lcom/sleepycat/je/dbi/INList;Lcom/sleepycat/je/dbi/INList$1;)V

    return-object v0
.end method

.method public loadStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 9

    .line 87
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Cache"

    const-string v2, "The main cache resides in the Java heap and holds data, keys, Btree internal nodes, locks and JE metadata."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/INList;->nCachedUpperINs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 91
    .local v1, "istat":J
    iget-object v3, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 92
    .local v3, "bstat":J
    iget-object v5, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINDeltas:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 93
    .local v5, "bdstat":J
    new-instance v7, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v8, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_UPPER_INS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v7, v0, v8, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 95
    new-instance v7, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v8, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v7, v0, v8, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 97
    new-instance v7, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v8, Lcom/sleepycat/je/evictor/EvictorStatDefinition;->CACHED_BIN_DELTAS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v7, v0, v8, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 102
    return-object v0
.end method

.method public memRecalcBegin()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcTotal:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcInProgress:Z

    .line 425
    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/INList;->recalcToggle:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcToggle:Z

    .line 426
    return-void
.end method

.method public memRecalcEnd(Z)V
    .locals 3
    .param p1, "completed"    # Z

    .line 486
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcInProgress:Z

    if-eqz v0, :cond_1

    .line 487
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcConsistent:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/INList;->recalcTotal:Ljava/util/concurrent/atomic/AtomicLong;

    .line 490
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->refreshTreeMemoryUsage(J)V

    .line 492
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcInProgress:Z

    .line 493
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/INList;->recalcConsistent:Z

    .line 494
    return-void

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public memRecalcIterate(Lcom/sleepycat/je/tree/IN;)V
    .locals 3
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 436
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcInProgress:Z

    if-eqz v0, :cond_1

    .line 437
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcConsistent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcToggle:Z

    .line 438
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getRecalcToggle()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 439
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->resetAndGetMemorySize()J

    move-result-wide v0

    .line 440
    .local v0, "delta":J
    iget-object v2, p0, Lcom/sleepycat/je/dbi/INList;->recalcTotal:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 442
    .end local v0    # "delta":J
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcToggle:Z

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setRecalcToggle(Z)V

    .line 443
    return-void

    .line 436
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public memRecalcUpdate(Lcom/sleepycat/je/tree/IN;J)V
    .locals 2
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "delta"    # J

    .line 473
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcInProgress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcConsistent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcToggle:Z

    .line 475
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getRecalcToggle()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->recalcTotal:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 478
    :cond_0
    return-void
.end method

.method public remove(Lcom/sleepycat/je/tree/IN;)V
    .locals 5
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;

    .line 192
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/INList;->enabled:Z

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/INList;->removeInternal(Lcom/sleepycat/je/tree/IN;)Z

    move-result v0

    .line 197
    .local v0, "removed":Z
    if-eqz v0, :cond_1

    .line 199
    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getBudgetedMemorySize()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 200
    .local v1, "delta":J
    invoke-direct {p0, p1, v1, v2}, Lcom/sleepycat/je/dbi/INList;->memRecalcRemove(Lcom/sleepycat/je/tree/IN;J)V

    .line 201
    iget-object v3, p0, Lcom/sleepycat/je/dbi/INList;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTreeMemoryUsage(J)V

    .line 202
    return-void

    .line 197
    .end local v1    # "delta":J
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public updateBINDeltaStat(I)V
    .locals 3
    .param p1, "incr"    # I

    .line 244
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList;->nCachedBINDeltas:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 245
    return-void
.end method
