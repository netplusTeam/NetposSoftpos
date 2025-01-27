.class public Lcom/sleepycat/je/txn/LockAttemptResult;
.super Ljava/lang/Object;
.source "LockAttemptResult.java"


# instance fields
.field public final lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

.field public final success:Z

.field final useLock:Lcom/sleepycat/je/txn/Lock;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/txn/Lock;Lcom/sleepycat/je/txn/LockGrantType;Z)V
    .locals 0
    .param p1, "useLock"    # Lcom/sleepycat/je/txn/Lock;
    .param p2, "lockGrant"    # Lcom/sleepycat/je/txn/LockGrantType;
    .param p3, "success"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockAttemptResult;->useLock:Lcom/sleepycat/je/txn/Lock;

    .line 29
    iput-object p2, p0, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    .line 30
    iput-boolean p3, p0, Lcom/sleepycat/je/txn/LockAttemptResult;->success:Z

    .line 31
    return-void
.end method
