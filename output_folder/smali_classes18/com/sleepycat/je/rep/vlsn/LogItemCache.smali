.class Lcom/sleepycat/je/rep/vlsn/LogItemCache;
.super Ljava/lang/Object;
.source "LogItemCache.java"


# instance fields
.field private volatile cacheReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/log/LogItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cacheSize:I

.field private final nHits:Lcom/sleepycat/je/utilint/LongStat;

.field private final nMisses:Lcom/sleepycat/je/utilint/LongStat;

.field private final sizeMask:I


# direct methods
.method constructor <init>(ILcom/sleepycat/je/utilint/StatGroup;)V
    .locals 3
    .param p1, "cacheSize"    # I
    .param p2, "statGroup"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->cacheReference:Ljava/lang/ref/SoftReference;

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    iput p1, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->cacheSize:I

    .line 65
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->sizeMask:I

    .line 66
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, p2, v1}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->nHits:Lcom/sleepycat/je/utilint/LongStat;

    .line 67
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_MISSES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, p2, v1}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->nMisses:Lcom/sleepycat/je/utilint/LongStat;

    .line 68
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad cache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; it must be a power of 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getArray()[Ljava/util/concurrent/atomic/AtomicReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/log/LogItem;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->cacheReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    .local v0, "array":[Ljava/util/concurrent/atomic/AtomicReference;, "[Ljava/util/concurrent/atomic/AtomicReference<Lcom/sleepycat/je/log/LogItem;>;"
    if-nez v0, :cond_1

    .line 112
    iget v1, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->cacheSize:I

    new-array v0, v1, [Ljava/util/concurrent/atomic/AtomicReference;

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 114
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    aput-object v2, v0, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->cacheReference:Ljava/lang/ref/SoftReference;

    .line 119
    :cond_1
    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 5

    .line 90
    invoke-direct {p0}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->getArray()[Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 91
    .local v3, "element":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/sleepycat/je/log/LogItem;>;"
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    .end local v3    # "element":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/sleepycat/je/log/LogItem;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method get(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/log/LogItem;
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 75
    nop

    .line 76
    invoke-direct {p0}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->getArray()[Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->sizeMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/LogItem;

    .line 77
    .local v0, "item":Lcom/sleepycat/je/log/LogItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->nHits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 79
    return-object v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->nMisses:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 83
    const/4 v1, 0x0

    return-object v1
.end method

.method put(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/log/LogItem;)V
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "logItem"    # Lcom/sleepycat/je/log/LogItem;

    .line 71
    invoke-direct {p0}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->getArray()[Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->sizeMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
