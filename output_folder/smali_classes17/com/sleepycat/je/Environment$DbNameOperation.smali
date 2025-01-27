.class abstract Lcom/sleepycat/je/Environment$DbNameOperation;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DbNameOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final dbTree:Lcom/sleepycat/je/dbi/DbTree;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field final synthetic this$0:Lcom/sleepycat/je/Environment;

.field private final txn:Lcom/sleepycat/je/Transaction;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;)V
    .locals 1
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;

    .line 1193
    .local p0, "this":Lcom/sleepycat/je/Environment$DbNameOperation;, "Lcom/sleepycat/je/Environment$DbNameOperation<TR;>;"
    iput-object p1, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->this$0:Lcom/sleepycat/je/Environment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    iput-object p2, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->txn:Lcom/sleepycat/je/Transaction;

    .line 1195
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1196
    invoke-static {p1, v0}, Lcom/sleepycat/je/Environment;->access$000(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 1198
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    .line 1199
    return-void
.end method

.method private getWritableLocker(Z)Lcom/sleepycat/je/txn/Locker;
    .locals 4
    .param p1, "autoTxnIsReplicated"    # Z

    .line 1250
    .local p0, "this":Lcom/sleepycat/je/Environment$DbNameOperation;, "Lcom/sleepycat/je/Environment$DbNameOperation<TR;>;"
    iget-object v0, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->this$0:Lcom/sleepycat/je/Environment;

    iget-object v1, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->txn:Lcom/sleepycat/je/Transaction;

    iget-object v2, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1252
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isTransactional()Z

    move-result v2

    .line 1250
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, p1}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZ)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    return-object v0
.end method

.method private runOnce(Lcom/sleepycat/je/txn/Locker;)Ljava/lang/Object;
    .locals 4
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1230
    .local p0, "this":Lcom/sleepycat/je/Environment$DbNameOperation;, "Lcom/sleepycat/je/Environment$DbNameOperation<TR;>;"
    const/4 v0, 0x0

    .line 1232
    .local v0, "success":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/Environment$DbNameOperation;->runWork(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v1

    .line 1233
    .local v1, "results":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/dbi/DatabaseImpl;TR;>;"
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1234
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v2, :cond_0

    .line 1238
    const/4 v0, 0x1

    .line 1239
    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/je/Environment$DbNameOperation;->runTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1240
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1240
    return-object v3

    .line 1236
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "success":Z
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    throw v3
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    .end local v1    # "results":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/dbi/DatabaseImpl;TR;>;"
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v0    # "success":Z
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1241
    :catch_0
    move-exception v1

    .line 1242
    .local v1, "E":Ljava/lang/Error;
    :try_start_2
    iget-object v2, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1243
    nop

    .end local v0    # "success":Z
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1245
    .end local v1    # "E":Ljava/lang/Error;
    .restart local v0    # "success":Z
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v1
.end method


# virtual methods
.method run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 1215
    .local p0, "this":Lcom/sleepycat/je/Environment$DbNameOperation;, "Lcom/sleepycat/je/Environment$DbNameOperation<TR;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/Environment$DbNameOperation;->getWritableLocker(Z)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/Environment$DbNameOperation;->runOnce(Lcom/sleepycat/je/txn/Locker;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1216
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/sleepycat/je/Environment$DbNameOperation;->getWritableLocker(Z)Lcom/sleepycat/je/txn/Locker;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sleepycat/je/Environment$DbNameOperation;->runOnce(Lcom/sleepycat/je/txn/Locker;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 1219
    :catch_1
    move-exception v1

    .line 1221
    .local v1, "e2":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    iget-object v2, p0, Lcom/sleepycat/je/Environment$DbNameOperation;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method abstract runTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
.end method

.method abstract runWork(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/utilint/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            ")",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation
.end method
