.class Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;
.super Ljava/lang/Object;
.source "ExtinctionScanner.java"

# interfaces
.implements Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/ExtinctionScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseExtinction"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final id:J

.field final synthetic this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1838
    const-class v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLcom/sleepycat/bind/tuple/TupleInput;)V
    .locals 2
    .param p2, "id"    # J
    .param p4, "in"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 1851
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1852
    iput-wide p2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    .line 1853
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    .line 1854
    new-instance p1, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1855
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1845
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1846
    iput-wide p2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    .line 1847
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1848
    iput-object p4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1849
    return-void
.end method

.method private removeFromINList()V
    .locals 6

    .line 2026
    const-wide/16 v0, 0x0

    .line 2029
    .local v0, "memoryChange":J
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 2030
    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/INList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2032
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/tree/IN;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2033
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    .line 2035
    .local v3, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eq v4, v5, :cond_0

    .line 2036
    goto :goto_0

    .line 2039
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2040
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->getBudgetedMemorySize()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v4

    .line 2041
    .end local v3    # "in":Lcom/sleepycat/je/tree/IN;
    goto :goto_0

    .line 2043
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/tree/IN;>;"
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v2

    .line 2044
    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTreeMemoryUsage(J)V

    .line 2045
    nop

    .line 2046
    return-void

    .line 2043
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v3

    .line 2044
    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTreeMemoryUsage(J)V

    throw v2
.end method


# virtual methods
.method public isExtinctionForDb(Lcom/sleepycat/je/dbi/DatabaseId;)Z
    .locals 1
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1900
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 22

    .line 1905
    move-object/from16 v1, p0

    const-string v0, " dbName="

    const-string v2, " dbId="

    iget-object v3, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v3, v3, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->dbBeforeExecTaskHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v3}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1907
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    .line 1909
    .local v3, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    iget-object v4, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-nez v4, :cond_1

    .line 1911
    iget-object v4, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    iput-object v4, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1912
    if-nez v4, :cond_0

    .line 1914
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-wide v4, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    invoke-static {v0, v4, v5}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;J)V

    .line 1915
    return-void

    .line 1917
    :cond_0
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeleteStarted()V

    goto :goto_0

    .line 1923
    :cond_1
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1924
    iget-object v4, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1925
    iget-object v4, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleteFinished()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1929
    :goto_0
    :try_start_0
    iget-object v4, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v4

    .line 1930
    .local v4, "tree":Lcom/sleepycat/je/tree/Tree;
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/Tree;->getRootLsn()J

    move-result-wide v5

    .line 1931
    .local v5, "rootLsn":J
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/sleepycat/je/tree/Tree;->getResidentRootIN(Z)Lcom/sleepycat/je/tree/IN;

    move-result-object v13

    .line 1933
    .local v13, "rootIN":Lcom/sleepycat/je/tree/IN;
    new-instance v8, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    iget-object v9, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1934
    invoke-static {v9}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v9, v8

    .line 1936
    .local v9, "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    const-wide/16 v10, -0x1

    cmp-long v8, v5, v10

    if-eqz v8, :cond_2

    .line 1937
    :try_start_1
    sget-object v8, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v9, v5, v6, v8, v7}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2020
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .end local v5    # "rootLsn":J
    .end local v9    # "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v13    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2

    .line 1942
    .restart local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v5    # "rootLsn":J
    .restart local v9    # "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .restart local v13    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v7, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1943
    invoke-static {v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v7

    iget-object v8, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/cleaner/Cleaner;->getFetchObsoleteSize(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v11

    .line 1946
    .local v11, "fetchLNSize":Z
    new-instance v12, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;

    iget-object v15, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v7, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v4    # "tree":Lcom/sleepycat/je/tree/Tree;
    .local v20, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v21, "tree":Lcom/sleepycat/je/tree/Tree;
    :try_start_3
    iget-wide v3, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    move-object v14, v12

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-wide/from16 v18, v3

    invoke-direct/range {v14 .. v19}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;-><init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;J)V

    .line 1949
    .local v12, "obsoleteProcessor":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;
    new-instance v3, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;

    iget-object v8, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v14, 0x0

    move-object v7, v3

    move-object v4, v9

    .end local v9    # "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .local v4, "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    move-wide v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;JZLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/cleaner/ExtinctionScanner$1;)V

    .line 1952
    .local v3, "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    iget-object v7, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1953
    invoke-static {v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v7

    iget-object v8, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v8}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start DB remove/truncate scan, id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v14, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1955
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1956
    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1952
    invoke-static {v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->walk()V

    .line 1964
    iget-object v7, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1965
    invoke-static {v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v7

    iget-object v8, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v8}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "End DB remove/truncate scan, id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v14, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " scanned="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1967
    invoke-static {v12}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->access$1900(Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1968
    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1969
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1964
    invoke-static {v7, v8, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1980
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushLocalTracker(Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V

    .line 1982
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->dbBeforeDeleteMapLNHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1984
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v2, v20

    .end local v20    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v2, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :try_start_4
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbTree;->deleteMapLN(Lcom/sleepycat/je/dbi/DatabaseId;)V

    .line 1990
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogManager;->flushNoSync()V

    .line 1992
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v0, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->dbBeforeDeleteTaskLNHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2000
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-wide v7, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    invoke-static {v0, v7, v8}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;J)V

    .line 2006
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->removeFromINList()V

    .line 2013
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeleteFinished()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2020
    .end local v3    # "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    .end local v4    # "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v5    # "rootLsn":J
    .end local v11    # "fetchLNSize":Z
    .end local v12    # "obsoleteProcessor":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;
    .end local v13    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v21    # "tree":Lcom/sleepycat/je/tree/Tree;
    iget-object v0, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2021
    nop

    .line 2022
    return-void

    .line 1992
    .restart local v3    # "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    .restart local v4    # "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .restart local v5    # "rootLsn":J
    .restart local v11    # "fetchLNSize":Z
    .restart local v12    # "obsoleteProcessor":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;
    .restart local v13    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v21    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_3
    :try_start_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    throw v0

    .line 2020
    .end local v3    # "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    .end local v4    # "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v5    # "rootLsn":J
    .end local v11    # "fetchLNSize":Z
    .end local v12    # "obsoleteProcessor":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;
    .end local v13    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v21    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1982
    .end local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v3    # "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    .restart local v4    # "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .restart local v5    # "rootLsn":J
    .restart local v11    # "fetchLNSize":Z
    .restart local v12    # "obsoleteProcessor":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;
    .restart local v13    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .restart local v20    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v21    # "tree":Lcom/sleepycat/je/tree/Tree;
    :cond_4
    move-object/from16 v2, v20

    .end local v20    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2020
    .end local v3    # "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    .end local v4    # "tracker":Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .end local v5    # "rootLsn":J
    .end local v11    # "fetchLNSize":Z
    .end local v12    # "obsoleteProcessor":Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;
    .end local v13    # "rootIN":Lcom/sleepycat/je/tree/IN;
    .end local v21    # "tree":Lcom/sleepycat/je/tree/Tree;
    .restart local v20    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :catchall_2
    move-exception v0

    move-object/from16 v2, v20

    .end local v20    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    goto :goto_2

    .end local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .local v3, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :catchall_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :goto_2
    iget-object v3, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v0

    .line 1925
    .end local v2    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1924
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1923
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1905
    .end local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method serializeData(Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 2
    .param p1, "out"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1858
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1859
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1860
    return-void
.end method

.method writeTask()V
    .locals 9

    .line 1863
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1864
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 1866
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1867
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1869
    .local v1, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->id:J

    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$400(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 1870
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$500(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v2

    .line 1871
    .local v2, "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->serializeData(Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 1872
    invoke-static {v2, v1}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1879
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-static {}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1500()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sleepycat/je/txn/Txn;->createLocalAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v3

    .line 1880
    .local v3, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v4, 0x0

    .line 1882
    .local v4, "success":Z
    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$DatabaseExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1883
    invoke-static {v5}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1882
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 1885
    :try_start_1
    sget-object v6, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    sget-object v7, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-static {v5, v0, v1, v6, v7}, Lcom/sleepycat/je/DbInternal;->putWithRepContext(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    .line 1893
    const/4 v4, 0x1

    .line 1894
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1895
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_0
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1896
    nop

    .line 1897
    return-void

    .line 1890
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v6

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .end local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v4    # "success":Z
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1882
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .restart local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v4    # "success":Z
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v6

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .end local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v4    # "success":Z
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1894
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .restart local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v4    # "success":Z
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v7

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v8

    :try_start_6
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .end local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v4    # "success":Z
    :cond_2
    :goto_0
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1895
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .restart local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v4    # "success":Z
    :catchall_3
    move-exception v5

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v5

    .line 1864
    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .end local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v4    # "success":Z
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1863
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
