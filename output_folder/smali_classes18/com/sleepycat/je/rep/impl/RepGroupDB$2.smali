.class Lcom/sleepycat/je/rep/impl/RepGroupDB$2;
.super Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/impl/RepGroupDB;->twoPhaseMemberUpdate(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field saveOrigId:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupDB;
    .param p2, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p3, "quorumAck"    # Z

    .line 748
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V

    .line 749
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->saveOrigId:I

    return-void
.end method


# virtual methods
.method deadlockHandler()V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->saveOrigId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->setId(IZ)V

    .line 774
    return-void
.end method

.method insufficientReplicasHandler()V
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->saveOrigId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->setId(IZ)V

    .line 779
    return-void
.end method

.method phase1Body()V
    .locals 7

    .line 753
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    sget-object v3, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 754
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$000(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 755
    .local v0, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->txn:Lcom/sleepycat/je/txn/Txn;

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$400(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->incrementChangeVersion()I

    move-result v1

    .line 757
    .local v1, "changeVersion":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNextNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->setId(I)V

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->checkForConflicts(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 761
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v2, v3, v0, v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$100(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 762
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setChangeVersion(I)V

    .line 763
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 764
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v2

    .line 765
    .local v2, "existingNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v3

    if-nez v3, :cond_1

    .line 766
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->updateJEVersion(Lcom/sleepycat/je/JEVersion;)V

    .line 768
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupDB;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->txn:Lcom/sleepycat/je/txn/Txn;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;->groupDbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v3, v4, v5, v6, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->access$200(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 769
    return-void
.end method
