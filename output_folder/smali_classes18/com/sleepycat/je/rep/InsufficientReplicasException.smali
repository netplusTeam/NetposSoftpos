.class public Lcom/sleepycat/je/rep/InsufficientReplicasException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "InsufficientReplicasException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final availableReplicas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final commitPolicy:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

.field private final requiredAckCount:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;ILjava/util/Set;)V
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "ackPolicy"    # Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    .param p3, "requiredAckCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            "Lcom/sleepycat/je/Durability$ReplicaAckPolicy;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p4, "availableReplicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 49
    invoke-static {p2, p3, p4}, Lcom/sleepycat/je/rep/InsufficientReplicasException;->makeMsg(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;ILjava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput-object p2, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->commitPolicy:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 52
    iput p3, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->requiredAckCount:I

    .line 53
    iput-object p4, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->availableReplicas:Ljava/util/Set;

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/InsufficientReplicasException;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/InsufficientReplicasException;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 64
    iget-object v0, p2, Lcom/sleepycat/je/rep/InsufficientReplicasException;->commitPolicy:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->commitPolicy:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 65
    iget v0, p2, Lcom/sleepycat/je/rep/InsufficientReplicasException;->requiredAckCount:I

    iput v0, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->requiredAckCount:I

    .line 66
    iget-object v0, p2, Lcom/sleepycat/je/rep/InsufficientReplicasException;->availableReplicas:Ljava/util/Set;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->availableReplicas:Ljava/util/Set;

    .line 67
    return-void
.end method

.method private static makeMsg(Lcom/sleepycat/je/Durability$ReplicaAckPolicy;ILjava/util/Set;)Ljava/lang/String;
    .locals 3
    .param p0, "commitPolicy"    # Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    .param p1, "requiredAckCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Durability$ReplicaAckPolicy;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 112
    .local p2, "availableReplicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " required "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " replica"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const-string/jumbo v1, "s. "

    goto :goto_0

    :cond_0
    const-string v1, ". "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "errorPrefix":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Only the following "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " replicas listed here were available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    return-object v1

    .line 121
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Only replica: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 118
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "But none were active with this master."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAvailableReplicas()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->availableReplicas:Ljava/util/Set;

    return-object v0
.end method

.method public getCommitPolicy()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->commitPolicy:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    return-object v0
.end method

.method public getRequiredNodeCount()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/sleepycat/je/rep/InsufficientReplicasException;->requiredAckCount:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/sleepycat/je/rep/InsufficientReplicasException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/InsufficientReplicasException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/InsufficientReplicasException;)V

    return-object v0
.end method
