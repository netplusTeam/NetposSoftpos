.class Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;
.super Ljava/lang/Object;
.source "FileProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookAheadCache"
.end annotation


# instance fields
.field private final map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/LNInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final maxMem:I

.field private usedMem:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "lookAheadCacheSize"    # I

    .line 2002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2003
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->map:Ljava/util/SortedMap;

    .line 2004
    iput p1, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->maxMem:I

    .line 2005
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_OVERHEAD:I

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->usedMem:I

    .line 2006
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;)V
    .locals 2
    .param p1, "lsnOffset"    # Ljava/lang/Long;
    .param p2, "info"    # Lcom/sleepycat/je/cleaner/LNInfo;

    .line 2021
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->map:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->usedMem:I

    invoke-virtual {p2}, Lcom/sleepycat/je/cleaner/LNInfo;->getMemorySize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->usedMem:I

    .line 2023
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_ENTRY_OVERHEAD:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->usedMem:I

    .line 2024
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 2009
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isFull()Z
    .locals 2

    .line 2013
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->usedMem:I

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->maxMem:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nextOffset()Ljava/lang/Long;
    .locals 1

    .line 2017
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method remove(Ljava/lang/Long;)Lcom/sleepycat/je/cleaner/LNInfo;
    .locals 3
    .param p1, "offset"    # Ljava/lang/Long;

    .line 2027
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->map:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/LNInfo;

    .line 2028
    .local v0, "info":Lcom/sleepycat/je/cleaner/LNInfo;
    if-eqz v0, :cond_0

    .line 2029
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->usedMem:I

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/LNInfo;->getMemorySize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->usedMem:I

    .line 2030
    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_ENTRY_OVERHEAD:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor$LookAheadCache;->usedMem:I

    .line 2032
    :cond_0
    return-object v0
.end method
