.class public Lcom/sleepycat/je/DeadlockException;
.super Lcom/sleepycat/je/LockConflictException;
.source "DeadlockException.java"


# static fields
.field private static final serialVersionUID:J = 0x2b820ddaL


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/LockConflictException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/sleepycat/je/LockConflictException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/DeadlockException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/DeadlockException;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/LockConflictException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 74
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/sleepycat/je/DeadlockException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/DeadlockException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/DeadlockException;)V

    return-object v0
.end method
