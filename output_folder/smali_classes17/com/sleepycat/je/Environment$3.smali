.class Lcom/sleepycat/je/Environment$3;
.super Lcom/sleepycat/je/Environment$DbNameOperation;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/Environment;->truncateDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/Environment$DbNameOperation<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/Environment;

.field final synthetic val$databaseName:Ljava/lang/String;

.field final synthetic val$returnCount:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/Environment;
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;

    .line 1143
    iput-object p1, p0, Lcom/sleepycat/je/Environment$3;->this$0:Lcom/sleepycat/je/Environment;

    iput-object p3, p0, Lcom/sleepycat/je/Environment$3;->val$databaseName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sleepycat/je/Environment$3;->val$returnCount:Z

    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/Environment$DbNameOperation;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;)V

    return-void
.end method


# virtual methods
.method runTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1156
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/TriggerManager;->runTruncateTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1157
    return-void
.end method

.method runWork(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/utilint/Pair;
    .locals 5
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            ")",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Lcom/sleepycat/je/Environment$3;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    iget-object v1, p0, Lcom/sleepycat/je/Environment$3;->val$databaseName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sleepycat/je/Environment$3;->val$returnCount:Z

    .line 1150
    invoke-virtual {v0, p1, v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->truncate(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Z)Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;

    move-result-object v0

    .line 1152
    .local v0, "result":Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;
    new-instance v1, Lcom/sleepycat/je/utilint/Pair;

    iget-object v2, v0, Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;->newDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-wide v3, v0, Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;->recordCount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
