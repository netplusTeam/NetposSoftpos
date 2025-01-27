.class public abstract Lcom/sleepycat/je/OperationFailureException;
.super Lcom/sleepycat/je/DatabaseException;
.source "OperationFailureException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "abortOnly"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 210
    invoke-direct {p0, p3, p4}, Lcom/sleepycat/je/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    if-eqz p2, :cond_1

    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/txn/Locker;->setOnlyAbortable(Lcom/sleepycat/je/OperationFailureException;)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 215
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/OperationFailureException;

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    return-void
.end method


# virtual methods
.method public isReplicaWrite()Z
    .locals 1

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public abstract wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
.end method
