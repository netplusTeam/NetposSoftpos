.class public Lcom/sleepycat/je/XAFailureException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "XAFailureException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;)V
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 38
    const/4 v0, 0x1

    const-string v1, "The TM_FAIL flag was passed to XAEnvironment.end()."

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/XAFailureException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/XAFailureException;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 50
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/sleepycat/je/XAFailureException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/XAFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/XAFailureException;)V

    return-object v0
.end method
