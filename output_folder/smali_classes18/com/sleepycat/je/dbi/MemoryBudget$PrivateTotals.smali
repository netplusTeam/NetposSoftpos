.class Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;
.super Lcom/sleepycat/je/dbi/MemoryBudget$Totals;
.source "MemoryBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/MemoryBudget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivateTotals"
.end annotation


# instance fields
.field private final parent:Lcom/sleepycat/je/dbi/MemoryBudget;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/dbi/MemoryBudget;)V
    .locals 1
    .param p1, "parent"    # Lcom/sleepycat/je/dbi/MemoryBudget;

    .line 1247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;-><init>(Lcom/sleepycat/je/dbi/MemoryBudget$1;)V

    .line 1248
    iput-object p1, p0, Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;->parent:Lcom/sleepycat/je/dbi/MemoryBudget;

    .line 1249
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/MemoryBudget;Lcom/sleepycat/je/dbi/MemoryBudget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p2, "x1"    # Lcom/sleepycat/je/dbi/MemoryBudget$1;

    .line 1243
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;-><init>(Lcom/sleepycat/je/dbi/MemoryBudget;)V

    return-void
.end method


# virtual methods
.method public final getCacheUsage()J
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;->parent:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLocalCacheUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method final isSharedCache()Z
    .locals 1

    .line 1263
    const/4 v0, 0x0

    return v0
.end method

.method final updateCacheUsage(J)Z
    .locals 4
    .param p1, "increment"    # J

    .line 1258
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;->parent:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLocalCacheUsage()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;->maxMemory:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
