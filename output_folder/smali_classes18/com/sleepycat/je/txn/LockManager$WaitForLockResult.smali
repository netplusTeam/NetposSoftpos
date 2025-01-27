.class Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;
.super Ljava/lang/Object;
.source "LockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/LockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitForLockResult"
.end annotation


# instance fields
.field private final dc:Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

.field private final result:Lcom/sleepycat/je/txn/LockAttemptResult;

.field private final targetVictim:Lcom/sleepycat/je/txn/Locker;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;Lcom/sleepycat/je/txn/LockAttemptResult;)V
    .locals 0
    .param p1, "targetVictim"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "dc"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .param p3, "result"    # Lcom/sleepycat/je/txn/LockAttemptResult;

    .line 2211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->targetVictim:Lcom/sleepycat/je/txn/Locker;

    .line 2213
    iput-object p2, p0, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->dc:Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    .line 2214
    iput-object p3, p0, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->result:Lcom/sleepycat/je/txn/LockAttemptResult;

    .line 2215
    return-void
.end method


# virtual methods
.method getDeadLockChecker()Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .locals 1

    .line 2222
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->dc:Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    return-object v0
.end method

.method getResult()Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 1

    .line 2226
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->result:Lcom/sleepycat/je/txn/LockAttemptResult;

    return-object v0
.end method

.method getVictim()Lcom/sleepycat/je/txn/Locker;
    .locals 1

    .line 2218
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->targetVictim:Lcom/sleepycat/je/txn/Locker;

    return-object v0
.end method
