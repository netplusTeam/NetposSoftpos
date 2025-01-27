.class Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;
.super Lcom/sleepycat/je/dbi/MemoryBudget$Totals;
.source "MemoryBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/MemoryBudget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedTotals"
.end annotation


# instance fields
.field private final usage:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;-><init>(Lcom/sleepycat/je/dbi/MemoryBudget$1;)V

    .line 1276
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;->usage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1277
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/MemoryBudget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/MemoryBudget$1;

    .line 1271
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCacheUsage()J
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;->usage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method final isSharedCache()Z
    .locals 1

    .line 1291
    const/4 v0, 0x1

    return v0
.end method

.method final updateCacheUsage(J)Z
    .locals 4
    .param p1, "increment"    # J

    .line 1286
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;->usage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;->maxMemory:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
