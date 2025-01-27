.class public Lcom/sleepycat/je/rep/MasterTransferFailureException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "MasterTransferFailureException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/MasterTransferFailureException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/MasterTransferFailureException;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/MasterTransferFailureException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/MasterTransferFailureException;

    move-result-object p1

    return-object p1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/MasterTransferFailureException;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/sleepycat/je/rep/MasterTransferFailureException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/MasterTransferFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/MasterTransferFailureException;)V

    return-object v0
.end method
