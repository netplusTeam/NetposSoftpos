.class Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
.super Ljava/lang/Object;
.source "LockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CycleNode"
.end annotation


# instance fields
.field private final lock:Lcom/sleepycat/je/txn/Lock;

.field private final locker:Lcom/sleepycat/je/txn/Locker;

.field private final lsn:Ljava/lang/Long;

.field private ownLockType:Lcom/sleepycat/je/txn/LockType;

.field private requestLockType:Lcom/sleepycat/je/txn/LockType;

.field final synthetic this$1:Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockType;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lsn"    # Ljava/lang/Long;
    .param p4, "lock"    # Lcom/sleepycat/je/txn/Lock;
    .param p5, "requestLockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p6, "ownLockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 2157
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->this$1:Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2158
    iput-object p2, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 2159
    iput-object p3, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->lsn:Ljava/lang/Long;

    .line 2160
    iput-object p4, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->lock:Lcom/sleepycat/je/txn/Lock;

    .line 2161
    iput-object p5, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->requestLockType:Lcom/sleepycat/je/txn/LockType;

    .line 2162
    iput-object p6, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->ownLockType:Lcom/sleepycat/je/txn/LockType;

    .line 2163
    return-void
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/LockType;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 2124
    invoke-direct {p0}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->getRequestLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/LockType;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 2124
    invoke-direct {p0}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->getOwnLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Locker;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 2124
    invoke-direct {p0}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 2124
    invoke-direct {p0}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->getLock()Lcom/sleepycat/je/txn/Lock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 2124
    invoke-direct {p0}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->getLsn()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getLock()Lcom/sleepycat/je/txn/Lock;
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->lock:Lcom/sleepycat/je/txn/Lock;

    return-object v0
.end method

.method private getLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 1

    .line 2166
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->locker:Lcom/sleepycat/je/txn/Locker;

    return-object v0
.end method

.method private getLsn()Ljava/lang/Long;
    .locals 1

    .line 2170
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->lsn:Ljava/lang/Long;

    return-object v0
.end method

.method private getOwnLockType()Lcom/sleepycat/je/txn/LockType;
    .locals 1

    .line 2182
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->ownLockType:Lcom/sleepycat/je/txn/LockType;

    return-object v0
.end method

.method private getRequestLockType()Lcom/sleepycat/je/txn/LockType;
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->requestLockType:Lcom/sleepycat/je/txn/LockType;

    return-object v0
.end method
