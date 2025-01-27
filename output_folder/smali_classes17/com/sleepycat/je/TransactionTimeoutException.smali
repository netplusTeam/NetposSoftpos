.class public Lcom/sleepycat/je/TransactionTimeoutException;
.super Lcom/sleepycat/je/LockConflictException;
.source "TransactionTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/LockConflictException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/TransactionTimeoutException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/TransactionTimeoutException;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/LockConflictException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 63
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/sleepycat/je/TransactionTimeoutException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/TransactionTimeoutException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/TransactionTimeoutException;)V

    return-object v0
.end method
