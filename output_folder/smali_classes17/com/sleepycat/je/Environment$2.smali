.class Lcom/sleepycat/je/Environment$2;
.super Lcom/sleepycat/je/Environment$DbNameOperation;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/Environment;->renameDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/Environment$DbNameOperation<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/Environment;

.field final synthetic val$databaseName:Ljava/lang/String;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/Environment;
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;

    .line 1066
    iput-object p1, p0, Lcom/sleepycat/je/Environment$2;->this$0:Lcom/sleepycat/je/Environment;

    iput-object p3, p0, Lcom/sleepycat/je/Environment$2;->val$databaseName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sleepycat/je/Environment$2;->val$newName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/Environment$DbNameOperation;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;)V

    return-void
.end method


# virtual methods
.method runTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1079
    iget-object v0, p0, Lcom/sleepycat/je/Environment$2;->val$newName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runRenameTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method runWork(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/utilint/Pair;
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            ")",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/sleepycat/je/Environment$2;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    iget-object v1, p0, Lcom/sleepycat/je/Environment$2;->val$databaseName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/je/Environment$2;->val$newName:Ljava/lang/String;

    .line 1073
    invoke-virtual {v0, p1, v1, v2}, Lcom/sleepycat/je/dbi/DbTree;->dbRename(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1075
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v1, Lcom/sleepycat/je/utilint/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
