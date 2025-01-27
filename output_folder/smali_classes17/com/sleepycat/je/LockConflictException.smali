.class public abstract Lcom/sleepycat/je/LockConflictException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "LockConflictException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ownerTxnIds:[J

.field private timeoutMillis:J

.field private waiterTxnIds:[J


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/OperationFailureException;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 156
    return-void
.end method


# virtual methods
.method public getOwnerTxnIds()[J
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sleepycat/je/LockConflictException;->ownerTxnIds:[J

    return-object v0
.end method

.method public getTimeoutMillis()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/sleepycat/je/LockConflictException;->timeoutMillis:J

    return-wide v0
.end method

.method public getWaiterTxnIds()[J
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sleepycat/je/LockConflictException;->waiterTxnIds:[J

    return-object v0
.end method

.method public setOwnerTxnIds([J)V
    .locals 0
    .param p1, "ownerTxnIds"    # [J

    .line 163
    iput-object p1, p0, Lcom/sleepycat/je/LockConflictException;->ownerTxnIds:[J

    .line 164
    return-void
.end method

.method public setTimeoutMillis(J)V
    .locals 0
    .param p1, "timeoutMillis"    # J

    .line 201
    iput-wide p1, p0, Lcom/sleepycat/je/LockConflictException;->timeoutMillis:J

    .line 202
    return-void
.end method

.method public setWaiterTxnIds([J)V
    .locals 0
    .param p1, "waiterTxnIds"    # [J

    .line 182
    iput-object p1, p0, Lcom/sleepycat/je/LockConflictException;->waiterTxnIds:[J

    .line 183
    return-void
.end method
