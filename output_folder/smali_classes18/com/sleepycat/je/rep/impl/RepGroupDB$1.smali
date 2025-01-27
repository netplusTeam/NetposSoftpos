.class Lcom/sleepycat/je/rep/impl/RepGroupDB$1;
.super Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/impl/RepGroupDB;->removeMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

.field final synthetic val$delete:Z

.field final synthetic val$removeNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/rep/impl/RepNodeImpl;ZZLcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupDB;
    .param p2, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p3, "quorumAck"    # Z

    .line 614
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iput-boolean p4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->val$delete:Z

    iput-object p5, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->val$removeNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V

    return-void
.end method


# virtual methods
.method phase1Body()V
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    sget-object v3, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 619
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$000(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 620
    .local v0, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->incrementChangeVersion()I

    move-result v1

    .line 621
    .local v1, "changeVersion":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v2, v3, v0, v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$100(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 622
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setChangeVersion(I)V

    .line 623
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setRemoved(Z)V

    .line 624
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$200(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 625
    return-void
.end method

.method phase2Body()V
    .locals 5

    .line 629
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->val$delete:Z

    if-nez v0, :cond_0

    .line 630
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->phase2Body()V

    .line 631
    return-void

    .line 633
    :cond_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 634
    .local v0, "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->val$removeNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/bind/tuple/StringBinding;->stringToEntry(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 635
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->txn:Lcom/sleepycat/je/txn/Txn;

    sget-object v3, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    .line 636
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$300(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v1

    .line 638
    .local v1, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    sget-object v3, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 640
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_1

    .line 645
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->delete()Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    nop

    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 648
    nop

    .line 649
    return-void

    .line 641
    .restart local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;->val$removeNode:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 642
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not present in group db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    throw v2
.end method
