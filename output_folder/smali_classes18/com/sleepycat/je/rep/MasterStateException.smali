.class public Lcom/sleepycat/je/rep/MasterStateException;
.super Lcom/sleepycat/je/rep/StateChangeException;
.source "MasterStateException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/StateChangeEvent;)V
    .locals 1
    .param p1, "stateChangeEvent"    # Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/rep/StateChangeEvent;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/StateChangeException;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/MasterStateException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/MasterStateException;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/StateChangeException;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/MasterStateException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/MasterStateException;

    move-result-object p1

    return-object p1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/MasterStateException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/sleepycat/je/rep/MasterStateException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/MasterStateException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/MasterStateException;)V

    return-object v0
.end method
