.class public Lcom/sleepycat/je/rep/ReplicaStateException;
.super Lcom/sleepycat/je/rep/StateChangeException;
.source "ReplicaStateException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/StateChangeException;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicaStateException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/ReplicaStateException;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/StateChangeException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/StateChangeException;)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicaStateException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicaStateException;

    move-result-object p1

    return-object p1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicaStateException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/sleepycat/je/rep/ReplicaStateException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/ReplicaStateException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicaStateException;)V

    return-object v0
.end method
