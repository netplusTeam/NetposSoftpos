.class Lcom/sleepycat/je/log/FileManager$FileCache;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileCache"
.end annotation


# instance fields
.field private final fileCacheSize:I

.field private final fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final fileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/log/FileHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 1
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 2697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2704
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    .line 2705
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileList:Ljava/util/List;

    .line 2706
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_FILE_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 2707
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileCacheSize:I

    .line 2708
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/log/FileManager$FileCache;Ljava/lang/Long;)Lcom/sleepycat/je/log/FileHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$FileCache;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 2692
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/FileManager$FileCache;->get(Ljava/lang/Long;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/log/FileManager$FileCache;Ljava/lang/Long;Lcom/sleepycat/je/log/FileHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$FileCache;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Lcom/sleepycat/je/log/FileHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2692
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager$FileCache;->add(Ljava/lang/Long;Lcom/sleepycat/je/log/FileHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sleepycat/je/log/FileManager$FileCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$FileCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2692
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$FileCache;->clear()V

    return-void
.end method

.method static synthetic access$700(Lcom/sleepycat/je/log/FileManager$FileCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$FileCache;

    .line 2692
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$FileCache;->size()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/log/FileManager$FileCache;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$FileCache;

    .line 2692
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$FileCache;->getCacheKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/log/FileManager$FileCache;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$FileCache;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2692
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager$FileCache;->remove(J)V

    return-void
.end method

.method private add(Ljava/lang/Long;Lcom/sleepycat/je/log/FileHandle;)V
    .locals 4
    .param p1, "fileId"    # Ljava/lang/Long;
    .param p2, "fileHandle"    # Lcom/sleepycat/je/log/FileHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2724
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileCacheSize:I

    if-lt v0, v1, :cond_1

    .line 2725
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2726
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2727
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2728
    .local v1, "evictId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/FileHandle;

    .line 2738
    .local v2, "evictTarget":Lcom/sleepycat/je/log/FileHandle;
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileHandle;->latchNoWait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2740
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2741
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2742
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileHandle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 2745
    nop

    .line 2746
    goto :goto_1

    .line 2744
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileHandle;->release()V

    throw v3

    .line 2748
    .end local v1    # "evictId":Ljava/lang/Long;
    .end local v2    # "evictTarget":Lcom/sleepycat/je/log/FileHandle;
    :cond_0
    goto :goto_0

    .line 2755
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2756
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    return-void
.end method

.method private clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2787
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2788
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/log/FileHandle;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/FileHandle;

    .line 2791
    .local v1, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    :try_start_0
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->latch()V

    .line 2792
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->close()V

    .line 2793
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2795
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 2796
    nop

    .line 2797
    .end local v1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    goto :goto_0

    .line 2795
    .restart local v1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileHandle;->release()V

    throw v2

    .line 2798
    .end local v1    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2799
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2800
    return-void
.end method

.method private get(Ljava/lang/Long;)Lcom/sleepycat/je/log/FileHandle;
    .locals 1
    .param p1, "fileId"    # Ljava/lang/Long;

    .line 2711
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/FileHandle;

    return-object v0
.end method

.method private getCacheKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2803
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private remove(J)V
    .locals 4
    .param p1, "fileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2767
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2768
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2769
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2770
    .local v1, "evictId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 2771
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/FileHandle;

    .line 2773
    .local v2, "evictTarget":Lcom/sleepycat/je/log/FileHandle;
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileHandle;->latch()V

    .line 2774
    iget-object v3, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2776
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileHandle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2778
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 2779
    goto :goto_1

    .line 2778
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileHandle;->release()V

    throw v3

    .line 2781
    .end local v1    # "evictId":Ljava/lang/Long;
    .end local v2    # "evictTarget":Lcom/sleepycat/je/log/FileHandle;
    :cond_0
    :goto_1
    goto :goto_0

    .line 2782
    :cond_1
    return-void
.end method

.method private size()I
    .locals 1

    .line 2807
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$FileCache;->fileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
