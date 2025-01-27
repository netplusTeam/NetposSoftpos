.class public Lcom/sleepycat/je/LockNotAvailableException;
.super Lcom/sleepycat/je/LockConflictException;
.source "LockNotAvailableException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p2}, Lcom/sleepycat/je/LockConflictException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/LockNotAvailableException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/LockNotAvailableException;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/LockConflictException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 53
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/sleepycat/je/LockNotAvailableException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/LockNotAvailableException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/LockNotAvailableException;)V

    return-object v0
.end method
