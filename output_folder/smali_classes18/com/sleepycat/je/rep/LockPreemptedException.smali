.class public Lcom/sleepycat/je/rep/LockPreemptedException;
.super Lcom/sleepycat/je/LockConflictException;
.source "LockPreemptedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 48
    const-string v0, "Lock was preempted by a replication stream replay write operation"

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/LockConflictException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/LockPreemptedException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/LockPreemptedException;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/LockConflictException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/LockPreemptedException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/LockPreemptedException;

    move-result-object p1

    return-object p1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/LockPreemptedException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/sleepycat/je/rep/LockPreemptedException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/LockPreemptedException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/LockPreemptedException;)V

    return-object v0
.end method
