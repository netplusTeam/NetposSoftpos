.class public Lcom/sleepycat/je/SequenceNotFoundException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "SequenceNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/SequenceNotFoundException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/SequenceNotFoundException;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 45
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/sleepycat/je/SequenceNotFoundException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/SequenceNotFoundException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/SequenceNotFoundException;)V

    return-object v0
.end method
