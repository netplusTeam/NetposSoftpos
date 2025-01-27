.class public Lcom/sleepycat/je/DiskOrderedCursorProducerException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "DiskOrderedCursorProducerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/sleepycat/je/DiskOrderedCursorProducerException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/DiskOrderedCursorProducerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
