.class public abstract Lcom/sleepycat/je/rep/StateChangeException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "StateChangeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "stateChangeEvent"    # Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 42
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-static {p1, p2}, Lcom/sleepycat/je/rep/StateChangeException;->makeMessage(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object p2, p0, Lcom/sleepycat/je/rep/StateChangeException;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/StateChangeException;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/StateChangeException;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 82
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/sleepycat/je/rep/StateChangeException;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/StateChangeException;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 84
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Exception;

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    iput-object v0, p0, Lcom/sleepycat/je/rep/StateChangeException;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 53
    return-void
.end method

.method private static makeMessage(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)Ljava/lang/String;
    .locals 6
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "event"    # Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 65
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v0

    .line 66
    .local v0, "lockerId":J
    :goto_0
    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem closing transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". The current state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/StateChangeEvent;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". The node transitioned to this state at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    .line 70
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/StateChangeEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "Node state inconsistent with operation"

    .line 66
    :goto_1
    return-object v2
.end method


# virtual methods
.method public getEvent()Lcom/sleepycat/je/rep/StateChangeEvent;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/rep/StateChangeException;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

    return-object v0
.end method
