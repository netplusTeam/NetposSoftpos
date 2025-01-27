.class public Lcom/sleepycat/je/DiskLimitException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "DiskLimitException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;

    .line 40
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/DiskLimitException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/DiskLimitException;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 53
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/sleepycat/je/DiskLimitException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/DiskLimitException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/DiskLimitException;)V

    return-object v0
.end method
