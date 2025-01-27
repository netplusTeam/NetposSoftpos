.class public Lcom/sleepycat/je/rep/UnknownMasterException;
.super Lcom/sleepycat/je/rep/StateChangeException;
.source "UnknownMasterException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "stateChangeEvent"    # Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/StateChangeException;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/UnknownMasterException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/UnknownMasterException;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/StateChangeException;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Exception;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/sleepycat/je/rep/UnknownMasterException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/UnknownMasterException;)V

    return-object v0
.end method
