.class public Lcom/sleepycat/je/cleaner/FileSelector;
.super Ljava/lang/Object;
.source "FileSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;,
        Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;,
        Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;,
        Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private final fileInfoMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {}, Lcom/sleepycat/je/utilint/TracerFormatter;->makeDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->dateFormat:Ljava/text/DateFormat;

    .line 235
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    .line 237
    return-void
.end method

.method private adjustMemoryBudget(Lcom/sleepycat/je/dbi/MemoryBudget;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .param p1, "budget"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/MemoryBudget;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;)V"
        }
    .end annotation

    .line 700
    .local p2, "oldDatabases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .local p3, "newDatabases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    const-wide/16 v0, 0x0

    .line 701
    .local v0, "adjustMem":J
    if-eqz p2, :cond_0

    .line 702
    invoke-direct {p0, p2}, Lcom/sleepycat/je/cleaner/FileSelector;->getCleanedFilesDatabaseEntrySize(Ljava/util/Set;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 704
    :cond_0
    if-eqz p3, :cond_1

    .line 705
    invoke-direct {p0, p3}, Lcom/sleepycat/je/cleaner/FileSelector;->getCleanedFilesDatabaseEntrySize(Ljava/util/Set;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 707
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateAdminMemoryUsage(J)V

    .line 708
    return-void
.end method

.method private checkStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Z
    .locals 4
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "expectStatus"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 355
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 356
    .local v0, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    const-string v1, "Expected "

    if-eqz v0, :cond_1

    .line 357
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$100(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 359
    const/4 v1, 0x1

    return v1

    .line 357
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$100(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 356
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but was missing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private checkStatus(Ljava/util/Collection;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Z
    .locals 2
    .param p2, "expectStatus"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;",
            ")Z"
        }
    .end annotation

    .line 369
    .local p1, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 370
    .local v1, "fileNum":Ljava/lang/Long;
    invoke-direct {p0, v1, p2}, Lcom/sleepycat/je/cleaner/FileSelector;->checkStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Z

    .line 371
    .end local v1    # "fileNum":Ljava/lang/Long;
    goto :goto_0

    .line 372
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getCleanedFilesDatabaseEntrySize(Ljava/util/Set;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;)J"
        }
    .end annotation

    .line 716
    .local p1, "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_OVERHEAD:I

    add-int/2addr v0, v1

    .line 718
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_ENTRY_OVERHEAD:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 716
    return-wide v0
.end method

.method private declared-synchronized getFiles(Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Ljava/util/NavigableSet;
    .locals 4
    .param p1, "status"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;",
            ")",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 297
    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 298
    .local v0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 299
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    invoke-static {v3}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$100(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 300
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    goto :goto_0

    .line 303
    :cond_1
    monitor-exit p0

    return-object v0

    .line 296
    .end local v0    # "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    .end local p1    # "status":Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getNumberOfFiles(Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)I
    .locals 4
    .param p1, "status"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    monitor-enter p0

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "count":I
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 286
    .local v2, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    invoke-static {v2}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$100(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 289
    .end local v2    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :cond_0
    goto :goto_0

    .line 290
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_1
    monitor-exit p0

    return v0

    .line 283
    .end local v0    # "count":I
    .end local p1    # "status":Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isFileCleaningInProgress(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "fileNum"    # Ljava/lang/Long;

    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 379
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    .end local p1    # "fileNum":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .locals 2
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "newStatus"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 313
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 314
    .local v0, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    if-nez v0, :cond_0

    .line 315
    new-instance v1, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    invoke-direct {v1}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;-><init>()V

    move-object v0, v1

    .line 316
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v1, p1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    invoke-static {v0, p2}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$102(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 319
    return-object v0
.end method

.method private setStatus(Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)V
    .locals 3
    .param p1, "oldStatus"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    .param p2, "newStatus"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 340
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 341
    .local v1, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    invoke-static {v1}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$100(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 342
    invoke-static {v1, p2}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$102(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 344
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :cond_0
    goto :goto_0

    .line 345
    :cond_1
    return-void
.end method

.method private setStatus(Ljava/util/Collection;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)V
    .locals 2
    .param p2, "newStatus"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;",
            ")V"
        }
    .end annotation

    .line 329
    .local p1, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 330
    .local v1, "fileNum":Ljava/lang/Long;
    invoke-direct {p0, v1, p2}, Lcom/sleepycat/je/cleaner/FileSelector;->setStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 331
    .end local v1    # "fileNum":Ljava/lang/Long;
    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized addCleanedFile(Ljava/lang/Long;Ljava/util/Set;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/dbi/MemoryBudget;)V
    .locals 2
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p3, "firstVlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "lastVlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p5, "budget"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "Lcom/sleepycat/je/dbi/MemoryBudget;",
            ")V"
        }
    .end annotation

    .local p2, "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    monitor-enter p0

    .line 428
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->BEING_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/cleaner/FileSelector;->checkStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/cleaner/FileSelector;->setStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    move-result-object v0

    .line 430
    .local v0, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    iget-object v1, v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->dbIds:Ljava/util/Set;

    invoke-direct {p0, p5, v1, p2}, Lcom/sleepycat/je/cleaner/FileSelector;->adjustMemoryBudget(Lcom/sleepycat/je/dbi/MemoryBudget;Ljava/util/Set;Ljava/util/Set;)V

    .line 431
    iput-object p2, v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->dbIds:Ljava/util/Set;

    .line 432
    iput-object p3, v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->firstVlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 433
    iput-object p4, v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->lastVlsn:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 427
    .end local v0    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .end local p3    # "firstVlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p4    # "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p5    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 428
    .restart local p1    # "fileNum":Ljava/lang/Long;
    .restart local p2    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .restart local p3    # "firstVlsn":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p4    # "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p5    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "databases":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    .end local p3    # "firstVlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p4    # "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p5    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized addPendingDB(Ljava/lang/Long;Lcom/sleepycat/je/dbi/DatabaseId;)Z
    .locals 3
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    monitor-enter p0

    .line 618
    if-eqz p2, :cond_2

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    .line 621
    .local v0, "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    if-nez v0, :cond_0

    .line 622
    new-instance v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;-><init>(Lcom/sleepycat/je/cleaner/FileSelector$1;)V

    move-object v0, v1

    .line 623
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 627
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    .line 630
    :cond_1
    iget-object v1, v0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 617
    .end local v0    # "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 618
    .restart local p1    # "file":Ljava/lang/Long;
    .restart local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized addPendingLN(JLcom/sleepycat/je/cleaner/LNInfo;)V
    .locals 4
    .param p1, "logLsn"    # J
    .param p3, "lnInfo"    # Lcom/sleepycat/je/cleaner/LNInfo;

    monitor-enter p0

    .line 533
    :try_start_0
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 534
    .local v0, "file":Ljava/lang/Long;
    sget-object v1, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->BEING_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/cleaner/FileSelector;->checkStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    .line 538
    .local v1, "pInfo":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    if-nez v1, :cond_0

    .line 539
    new-instance v2, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;-><init>(Lcom/sleepycat/je/cleaner/FileSelector$1;)V

    move-object v1, v2

    .line 540
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 544
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    .line 547
    :cond_1
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 534
    .end local v1    # "pInfo":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .end local v0    # "file":Ljava/lang/Long;
    .end local p1    # "logLsn":J
    .end local p3    # "lnInfo":Lcom/sleepycat/je/cleaner/LNInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized close(Lcom/sleepycat/je/dbi/MemoryBudget;)V
    .locals 4
    .param p1, "budget"    # Lcom/sleepycat/je/dbi/MemoryBudget;

    monitor-enter p0

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 689
    .local v1, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->dbIds:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sleepycat/je/cleaner/FileSelector;->adjustMemoryBudget(Lcom/sleepycat/je/dbi/MemoryBudget;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    goto :goto_0

    .line 691
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    monitor-exit p0

    return-void

    .line 687
    .end local p1    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getFilesAtCheckpointStart(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Logger;)Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .locals 7
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "logger"    # Ljava/util/logging/Logger;

    monitor-enter p0

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 464
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    invoke-static {v3}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$100(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    if-eq v3, v4, :cond_0

    .line 465
    goto :goto_0

    .line 468
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 469
    .local v3, "file":Ljava/lang/Long;
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    .line 471
    .local v4, "pInfo":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    if-eqz v4, :cond_1

    .line 472
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v6, p0, Lcom/sleepycat/je/cleaner/FileSelector;->dateFormat:Ljava/text/DateFormat;

    .line 474
    invoke-virtual {v4, v3, p1, v6}, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->getMessage(Ljava/lang/Long;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v6

    .line 472
    invoke-static {p2, p1, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 475
    goto :goto_0

    .line 478
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_1
    if-nez v0, :cond_2

    .line 479
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    move-object v0, v5

    .line 482
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    .end local v3    # "file":Ljava/lang/Long;
    .end local v4    # "pInfo":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    goto :goto_0

    .line 485
    :cond_3
    new-instance v1, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;-><init>(Ljava/util/Set;Lcom/sleepycat/je/cleaner/FileSelector$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 460
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local p1    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "logger":Ljava/util/logging/Logger;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInProgressFiles()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 680
    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 680
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPendingDBs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 638
    const/4 v0, 0x0

    .line 640
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    .line 641
    .local v2, "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    iget-object v3, v2, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 642
    goto :goto_0

    .line 644
    :cond_0
    if-nez v0, :cond_1

    .line 645
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 647
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_1
    iget-object v3, v2, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    nop

    .end local v2    # "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    goto :goto_0

    .line 650
    :cond_2
    monitor-exit p0

    return-object v0

    .line 637
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPendingLNs()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/LNInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 556
    const/4 v0, 0x0

    .line 558
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    .line 559
    .local v2, "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    iget-object v3, v2, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 560
    goto :goto_0

    .line 562
    :cond_0
    if-nez v0, :cond_1

    .line 563
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    .line 565
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_1
    iget-object v3, v2, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    .end local v2    # "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    goto :goto_0

    .line 568
    :cond_2
    monitor-exit p0

    return-object v0

    .line 555
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPendingQueueSizes()Lcom/sleepycat/je/utilint/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "lns":I
    const/4 v1, 0x0

    .line 601
    .local v1, "dbs":I
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    .line 602
    .local v3, "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    iget-object v4, v3, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 603
    iget-object v4, v3, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 605
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    iget-object v4, v3, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 606
    iget-object v4, v3, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 608
    .end local v3    # "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    :cond_1
    goto :goto_0

    .line 610
    :cond_2
    new-instance v2, Lcom/sleepycat/je/utilint/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 597
    .end local v0    # "lns":I
    .end local v1    # "dbs":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getRequiredUtil(Ljava/lang/Long;)I
    .locals 2
    .param p1, "fileNum"    # Ljava/lang/Long;

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 384
    .local v0, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$000(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit p0

    return v1

    .line 382
    .end local v0    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .end local p1    # "fileNum":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getToBeCleanedFiles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->TO_BE_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/FileSelector;->getFiles(Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Ljava/util/NavigableSet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 441
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized injectFileForCleaning(Ljava/lang/Long;)V
    .locals 2
    .param p1, "fileNum"    # Ljava/lang/Long;

    monitor-enter p0

    .line 413
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/FileSelector;->isFileCleaningInProgress(Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    sget-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->TO_BE_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/cleaner/FileSelector;->setStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    move-result-object v0

    .line 415
    .local v0, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$002(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .end local v0    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    monitor-exit p0

    return-void

    .line 412
    .end local p1    # "fileNum":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isCheckpointNeeded()Z
    .locals 1

    monitor-enter p0

    .line 493
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/FileSelector;->getNumberOfFiles(Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 493
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized putBackFileForCleaning(Ljava/lang/Long;)V
    .locals 1
    .param p1, "fileNum"    # Ljava/lang/Long;

    monitor-enter p0

    .line 405
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->BEING_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/cleaner/FileSelector;->checkStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->TO_BE_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/cleaner/FileSelector;->setStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 404
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    .end local p1    # "fileNum":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 405
    .restart local p1    # "fileNum":Ljava/lang/Long;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    .end local p1    # "fileNum":Ljava/lang/Long;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeFile(Ljava/lang/Long;Lcom/sleepycat/je/dbi/MemoryBudget;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .locals 3
    .param p1, "fileNum"    # Ljava/lang/Long;
    .param p2, "budget"    # Lcom/sleepycat/je/dbi/MemoryBudget;

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .local v0, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 393
    monitor-exit p0

    return-object v1

    .line 395
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->dbIds:Ljava/util/Set;

    invoke-direct {p0, p2, v2, v1}, Lcom/sleepycat/je/cleaner/FileSelector;->adjustMemoryBudget(Lcom/sleepycat/je/dbi/MemoryBudget;Ljava/util/Set;Ljava/util/Set;)V

    .line 396
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    monitor-exit p0

    return-object v0

    .line 390
    .end local v0    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    .end local p1    # "fileNum":Ljava/lang/Long;
    .end local p2    # "budget":Lcom/sleepycat/je/dbi/MemoryBudget;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removePendingDB(Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 3
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 659
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 660
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    .line 661
    .local v1, "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 662
    goto :goto_0

    .line 664
    :cond_0
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 666
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 667
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    .line 668
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 669
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_1
    goto :goto_0

    .line 673
    :cond_2
    monitor-exit p0

    return-void

    .line 657
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;>;"
    .end local p1    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removePendingLN(J)V
    .locals 4
    .param p1, "logLsn"    # J

    monitor-enter p0

    .line 576
    :try_start_0
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 577
    .local v0, "file":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;

    .line 579
    .local v1, "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    if-nez v2, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 586
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    .line 587
    iget-object v2, v1, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileSelector;->pendingInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_1
    monitor-exit p0

    return-void

    .line 580
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 575
    .end local v0    # "file":Ljava/lang/Long;
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
    .end local p1    # "logLsn":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized selectFileForCleaning(Lcom/sleepycat/je/cleaner/UtilizationCalculator;Ljava/util/SortedMap;Z)Lcom/sleepycat/je/utilint/Pair;
    .locals 5
    .param p1, "calculator"    # Lcom/sleepycat/je/cleaner/UtilizationCalculator;
    .param p3, "forceCleaning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/cleaner/UtilizationCalculator;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;Z)",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .local p2, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    monitor-enter p0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSelector;->getToBeCleanedFiles()Ljava/util/Set;

    move-result-object v0

    .line 256
    .local v0, "toBeCleaned":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 258
    .local v1, "fileNum":Ljava/lang/Long;
    sget-object v2, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->BEING_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/cleaner/FileSelector;->setStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    move-result-object v2

    .line 259
    .local v2, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    new-instance v3, Lcom/sleepycat/je/utilint/Pair;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$000(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 262
    .end local v1    # "fileNum":Ljava/lang/Long;
    .end local v2    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/sleepycat/je/cleaner/UtilizationCalculator;->getBestFile(Ljava/util/SortedMap;Z)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .local v1, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 266
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 269
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 270
    .local v2, "fileNum":Ljava/lang/Long;
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 272
    .local v3, "requiredUtil":I
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-interface {v4, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 274
    sget-object v4, Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;->BEING_CLEANED:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-direct {p0, v2, v4}, Lcom/sleepycat/je/cleaner/FileSelector;->setStatus(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    move-result-object v4

    .line 275
    .local v4, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    invoke-static {v4, v3}, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->access$002(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    monitor-exit p0

    return-object v1

    .line 272
    .end local v4    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    .end local v0    # "toBeCleaned":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v2    # "fileNum":Ljava/lang/Long;
    .end local v3    # "requiredUtil":I
    .end local p1    # "calculator":Lcom/sleepycat/je/cleaner/UtilizationCalculator;
    .end local p2    # "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local p3    # "forceCleaning":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 744
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "files = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector;->fileInfoMap:Ljava/util/SortedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 744
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateFilesAtCheckpointEnd(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;)Ljava/util/Map;
    .locals 8
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "checkpointInfo"    # Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 508
    :try_start_0
    invoke-virtual {p2}, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 512
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileSelector;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    .line 513
    .local v0, "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    .line 514
    .local v1, "memoryBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 515
    .local v2, "reservedFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    invoke-virtual {p2}, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;->getCleanedFiles()Ljava/util/Set;

    move-result-object v3

    .line 517
    .local v3, "safeToDeleteFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 518
    .local v5, "file":Ljava/lang/Long;
    invoke-virtual {p0, v5, v1}, Lcom/sleepycat/je/cleaner/FileSelector;->removeFile(Ljava/lang/Long;Lcom/sleepycat/je/dbi/MemoryBudget;)Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    move-result-object v6

    .line 519
    .local v6, "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    iget-object v7, v6, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v5, v7}, Lcom/sleepycat/je/cleaner/FileProtector;->reserveFile(Ljava/lang/Long;Lcom/sleepycat/je/utilint/VLSN;)V

    .line 520
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    nop

    .end local v5    # "file":Ljava/lang/Long;
    .end local v6    # "info":Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->removeFileSummaries(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    monitor-exit p0

    return-object v2

    .line 507
    .end local v0    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v1    # "memoryBudget":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v2    # "reservedFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;>;"
    .end local v3    # "safeToDeleteFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local p1    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "checkpointInfo":Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
