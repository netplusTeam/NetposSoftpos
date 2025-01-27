.class Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;
.super Ljava/lang/Object;
.source "LockManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/LockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CycleNodeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2190
    new-instance v0, Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;

    invoke-direct {v0}, Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;-><init>()V

    sput-object v0, Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;->INSTANCE:Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)I
    .locals 4
    .param p1, "nc1"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;
    .param p2, "nc2"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    .line 2196
    invoke-static {p1}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$500(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getWaiterThreadId()J

    move-result-wide v0

    .line 2197
    invoke-static {p2}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;->access$500(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->getWaiterThreadId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 2196
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2187
    check-cast p1, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    check-cast p2, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;->compare(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker$CycleNode;)I

    move-result p1

    return p1
.end method
