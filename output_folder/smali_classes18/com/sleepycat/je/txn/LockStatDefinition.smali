.class public Lcom/sleepycat/je/txn/LockStatDefinition;
.super Ljava/lang/Object;
.source "LockStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "Record locking is used to provide transactional capabilities."

.field public static final GROUP_NAME:Ljava/lang/String; = "Locks"

.field public static final LOCK_OWNERS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOCK_OWNERS_DESC:Ljava/lang/String; = "Number of lock owners in lock table."

.field public static final LOCK_OWNERS_NAME:Ljava/lang/String; = "nOwners"

.field public static final LOCK_READ_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOCK_READ_LOCKS_DESC:Ljava/lang/String; = "Number of read locks currently held."

.field public static final LOCK_READ_LOCKS_NAME:Ljava/lang/String; = "nReadLocks"

.field public static final LOCK_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOCK_REQUESTS_DESC:Ljava/lang/String; = "Number of times a lock request was made."

.field public static final LOCK_REQUESTS_NAME:Ljava/lang/String; = "nRequests"

.field public static final LOCK_TOTAL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOCK_TOTAL_DESC:Ljava/lang/String; = "Number of locks currently held."

.field public static final LOCK_TOTAL_NAME:Ljava/lang/String; = "nTotalLocks"

.field public static final LOCK_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOCK_WAITERS_DESC:Ljava/lang/String; = "Number of threads waiting for a lock."

.field public static final LOCK_WAITERS_NAME:Ljava/lang/String; = "nWaiters"

.field public static final LOCK_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOCK_WAITS_DESC:Ljava/lang/String; = "Number of times a lock request blocked."

.field public static final LOCK_WAITS_NAME:Ljava/lang/String; = "nWaits"

.field public static final LOCK_WRITE_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOCK_WRITE_LOCKS_DESC:Ljava/lang/String; = "Number of write locks currently held."

.field public static final LOCK_WRITE_LOCKS_NAME:Ljava/lang/String; = "nWriteLocks"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nReadLocks"

    const-string v3, "Number of read locks currently held."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_READ_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 42
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nWriteLocks"

    const-string v3, "Number of write locks currently held."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WRITE_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 52
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nOwners"

    const-string v3, "Number of lock owners in lock table."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_OWNERS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 62
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRequests"

    const-string v2, "Number of times a lock request was made."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 71
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nTotalLocks"

    const-string v3, "Number of locks currently held."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_TOTAL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 81
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nWaits"

    const-string v2, "Number of times a lock request blocked."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 90
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "nWaiters"

    const-string v3, "Number of threads waiting for a lock."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
