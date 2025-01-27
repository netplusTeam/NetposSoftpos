.class public Lcom/sleepycat/je/DatabaseExistsException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "DatabaseExistsException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/DatabaseExistsException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/DatabaseExistsException;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 46
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/sleepycat/je/DatabaseExistsException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/DatabaseExistsException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/DatabaseExistsException;)V

    return-object v0
.end method
