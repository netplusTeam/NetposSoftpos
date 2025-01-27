.class Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;
.super Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
.source "EnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/EnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadLSNTreeWalker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/EnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;[Lcom/sleepycat/je/dbi/DatabaseImpl;[JZLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Lcom/sleepycat/je/PreloadConfig;)V
    .locals 6
    .param p2, "dbs"    # [Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "rootLsns"    # [J
    .param p4, "useOffHeapCache"    # Z
    .param p5, "callback"    # Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;
    .param p6, "conf"    # Lcom/sleepycat/je/PreloadConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3843
    iput-object p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->this$0:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3845
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;-><init>([Lcom/sleepycat/je/dbi/DatabaseImpl;[JLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Ljava/util/List;Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;)V

    .line 3849
    invoke-virtual {p6}, Lcom/sleepycat/je/PreloadConfig;->getLoadLNs()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->accumulateLNs:Z

    .line 3850
    iput-boolean p4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->preloadIntoOffHeapCache:Z

    .line 3851
    invoke-virtual {p6}, Lcom/sleepycat/je/PreloadConfig;->getLSNBatchSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->setLSNBatchSize(J)V

    .line 3852
    invoke-virtual {p6}, Lcom/sleepycat/je/PreloadConfig;->getInternalMemoryLimit()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->setInternalMemoryLimit(J)V

    .line 3853
    return-void
.end method


# virtual methods
.method protected fetchAndInsertIntoTree()Z
    .locals 1

    .line 3899
    const/4 v0, 0x1

    return v0
.end method

.method getRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;J)Lcom/sleepycat/je/tree/IN;
    .locals 3
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "rootLsn"    # J

    .line 3893
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/tree/Tree;->getRootINRootAlreadyLatched(Lcom/sleepycat/je/CacheMode;Z)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public walk()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3859
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    array-length v0, v0

    .line 3860
    .local v0, "nDbs":I
    const/4 v1, 0x0

    .line 3863
    .local v1, "nDbsLatched":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3864
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    aget-object v3, v3, v2

    .line 3865
    .local v3, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/Tree;->latchRootLatchExclusive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3866
    nop

    .end local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    add-int/lit8 v1, v1, 0x1

    .line 3863
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3881
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 3868
    :catch_0
    move-exception v2

    .line 3869
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->this$0:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v4, "Couldn\'t latch all DatabaseImpls during preload"

    .line 3870
    invoke-static {v3, v4, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "nDbs":I
    .end local v1    # "nDbsLatched":I
    throw v3

    .line 3872
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "nDbs":I
    .restart local v1    # "nDbsLatched":I
    :cond_0
    nop

    .line 3874
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->walkInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3881
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3882
    iget-object v3, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    aget-object v3, v3, v2

    .line 3883
    .restart local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/Tree;->releaseRootLatch()V

    .line 3881
    .end local v3    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3885
    .end local v2    # "i":I
    :cond_1
    nop

    .line 3886
    return-void

    .line 3881
    :goto_2
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_2

    .line 3882
    iget-object v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadLSNTreeWalker;->dbImpls:[Lcom/sleepycat/je/dbi/DatabaseImpl;

    aget-object v4, v4, v3

    .line 3883
    .local v4, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/Tree;->releaseRootLatch()V

    .line 3881
    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .end local v3    # "i":I
    :cond_2
    throw v2
.end method
