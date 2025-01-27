.class Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
.super Ljava/lang/Object;
.source "LockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/LockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeadlockResult"
.end annotation


# instance fields
.field private final dc:Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

.field private final isOwner:Z

.field private final trueDeadlock:Z

.field private final victim:Lcom/sleepycat/je/txn/Locker;


# direct methods
.method constructor <init>(ZZLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;)V
    .locals 0
    .param p1, "isOwner"    # Z
    .param p2, "trueDeadlock"    # Z
    .param p3, "victim"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "dc"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    .line 2244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2246
    iput-boolean p1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->isOwner:Z

    .line 2247
    iput-boolean p2, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->trueDeadlock:Z

    .line 2248
    iput-object p3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->victim:Lcom/sleepycat/je/txn/Locker;

    .line 2249
    iput-object p4, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->dc:Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    .line 2250
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockResult;

    .line 2234
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->isOwner:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockResult;

    .line 2234
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->trueDeadlock:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Lcom/sleepycat/je/txn/Locker;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockResult;

    .line 2234
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->victim:Lcom/sleepycat/je/txn/Locker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockResult;

    .line 2234
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->dc:Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    return-object v0
.end method
