.class public Lcom/sleepycat/je/rep/ReplicaConsistencyException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "ReplicaConsistencyException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/ReplicaConsistencyPolicy;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .param p2, "rnName"    # Ljava/lang/String;
    .param p3, "unknownMaster"    # Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to achieve consistency at rep node:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", despite waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-interface {p1, v1}, Lcom/sleepycat/je/ReplicaConsistencyPolicy;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, " The node is not currently in contact with a master."

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v1}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicaConsistencyException;->consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    iput-object p2, p0, Lcom/sleepycat/je/rep/ReplicaConsistencyException;->consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicaConsistencyException;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/ReplicaConsistencyException;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 99
    iget-object v0, p2, Lcom/sleepycat/je/rep/ReplicaConsistencyException;->consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicaConsistencyException;->consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 100
    return-void
.end method


# virtual methods
.method public getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicaConsistencyException;->consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    return-object v0
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/sleepycat/je/rep/ReplicaConsistencyException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/ReplicaConsistencyException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicaConsistencyException;)V

    return-object v0
.end method
