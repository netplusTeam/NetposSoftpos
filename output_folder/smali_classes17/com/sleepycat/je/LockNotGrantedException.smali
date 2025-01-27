.class public Lcom/sleepycat/je/LockNotGrantedException;
.super Lcom/sleepycat/je/DeadlockException;
.source "LockNotGrantedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2687816dL


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p2}, Lcom/sleepycat/je/DeadlockException;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/LockNotGrantedException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/LockNotGrantedException;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/DeadlockException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/DeadlockException;)V

    .line 75
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/sleepycat/je/LockNotGrantedException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/LockNotGrantedException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/LockNotGrantedException;)V

    return-object v0
.end method
