.class public Lcom/sleepycat/je/rep/InsufficientAcksException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "InsufficientAcksException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final ackTimeoutMs:I

.field private final acksPending:I

.field private final acksRequired:I

.field private final feederState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/txn/MasterTxn;IILjava/lang/String;)V
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .param p2, "acksPending"    # I
    .param p3, "ackTimeoutMs"    # I
    .param p4, "feederState"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  VLSN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initiated at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getStartMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%1tT. "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Insufficient acks for policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitDurability()Lcom/sleepycat/je/Durability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/Durability;->getReplicaAck()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Need replica acks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getRequiredAckCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Missing replica acks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms. FeederState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3, v0, v1}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getRequiredAckCount()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 88
    iput p2, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksPending:I

    .line 89
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getRequiredAckCount()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksRequired:I

    .line 90
    iput p3, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->ackTimeoutMs:I

    .line 91
    iput-object p4, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->feederState:Ljava/lang/String;

    .line 92
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksPending:I

    .line 101
    iput v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksRequired:I

    .line 102
    iput v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->ackTimeoutMs:I

    .line 103
    const-string v0, "Test feeder state"

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->feederState:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/InsufficientAcksException;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/InsufficientAcksException;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 113
    iget v0, p2, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksPending:I

    iput v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksPending:I

    .line 114
    iget v0, p2, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksRequired:I

    iput v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksRequired:I

    .line 115
    iget v0, p2, Lcom/sleepycat/je/rep/InsufficientAcksException;->ackTimeoutMs:I

    iput v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->ackTimeoutMs:I

    .line 116
    iget-object v0, p2, Lcom/sleepycat/je/rep/InsufficientAcksException;->feederState:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->feederState:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public ackTimeout()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->ackTimeoutMs:I

    return v0
.end method

.method public acksPending()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksPending:I

    return v0
.end method

.method public acksRequired()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/sleepycat/je/rep/InsufficientAcksException;->acksRequired:I

    return v0
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/sleepycat/je/rep/InsufficientAcksException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/InsufficientAcksException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/InsufficientAcksException;)V

    return-object v0
.end method
