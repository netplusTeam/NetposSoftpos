.class Lcom/sleepycat/je/evictor/Arbiter;
.super Ljava/lang/Object;
.source "Arbiter.java"


# instance fields
.field private final evictBytesSetting:J

.field private final memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

.field private runnableHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 40
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_EVICT_BYTES:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/evictor/Arbiter;->evictBytesSetting:J

    .line 43
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->getTotals()Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    .line 44
    return-void
.end method


# virtual methods
.method getEvictionPledge()J
    .locals 15

    .line 89
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getCacheUsage()J

    move-result-wide v0

    .line 90
    .local v0, "currentUsage":J
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getMaxMemory()J

    move-result-wide v2

    .line 92
    .local v2, "maxMem":J
    sub-long v4, v0, v2

    .line 93
    .local v4, "overBudget":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 95
    .local v6, "doRun":Z
    :goto_0
    const-wide/16 v7, 0x0

    .line 98
    .local v7, "requiredEvictBytes":J
    if-eqz v6, :cond_1

    .line 99
    iget-wide v9, p0, Lcom/sleepycat/je/evictor/Arbiter;->evictBytesSetting:J

    add-long v7, v4, v9

    .line 101
    sub-long v9, v0, v7

    const-wide/16 v11, 0x2

    div-long v13, v2, v11

    cmp-long v9, v9, v13

    if-gez v9, :cond_1

    .line 102
    div-long v9, v2, v11

    add-long v7, v4, v9

    .line 107
    :cond_1
    iget-object v9, p0, Lcom/sleepycat/je/evictor/Arbiter;->runnableHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v9, :cond_3

    .line 108
    invoke-interface {v9}, Lcom/sleepycat/je/utilint/TestHook;->getHookValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 109
    if-eqz v6, :cond_2

    .line 110
    move-wide v7, v2

    goto :goto_1

    .line 112
    :cond_2
    const-wide/16 v7, 0x0

    .line 115
    :cond_3
    :goto_1
    return-wide v7
.end method

.method isOverBudget()Z
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getCacheUsage()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    .line 52
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getMaxMemory()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0
.end method

.method needCriticalEviction()Z
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getCacheUsage()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    .line 65
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getMaxMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 67
    .local v0, "over":J
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getCriticalThreshold()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method setRunnableHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Arbiter;->runnableHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 121
    return-void
.end method

.method stillNeedsEviction()Z
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getCacheUsage()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/evictor/Arbiter;->evictBytesSetting:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/je/evictor/Arbiter;->memBudgetTotals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    .line 80
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getMaxMemory()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0
.end method
