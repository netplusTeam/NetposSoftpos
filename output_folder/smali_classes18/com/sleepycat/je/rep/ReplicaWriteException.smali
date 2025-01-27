.class public Lcom/sleepycat/je/rep/ReplicaWriteException;
.super Lcom/sleepycat/je/rep/StateChangeException;
.source "ReplicaWriteException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "stateChangeEvent"    # Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicaWriteException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/ReplicaWriteException;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/StateChangeException;)V

    .line 47
    return-void
.end method


# virtual methods
.method public isReplicaWrite()Z
    .locals 1

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/sleepycat/je/rep/ReplicaWriteException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/ReplicaWriteException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicaWriteException;)V

    return-object v0
.end method
