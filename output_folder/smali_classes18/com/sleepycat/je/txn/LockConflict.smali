.class Lcom/sleepycat/je/txn/LockConflict;
.super Ljava/lang/Object;
.source "LockConflict.java"


# static fields
.field static final ALLOW:Lcom/sleepycat/je/txn/LockConflict;

.field static final BLOCK:Lcom/sleepycat/je/txn/LockConflict;

.field static final RESTART:Lcom/sleepycat/je/txn/LockConflict;


# instance fields
.field private allowed:Z

.field private restart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/sleepycat/je/txn/LockConflict;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/txn/LockConflict;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    .line 24
    new-instance v0, Lcom/sleepycat/je/txn/LockConflict;

    invoke-direct {v0, v2, v2}, Lcom/sleepycat/je/txn/LockConflict;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    .line 25
    new-instance v0, Lcom/sleepycat/je/txn/LockConflict;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/txn/LockConflict;-><init>(ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockConflict;->RESTART:Lcom/sleepycat/je/txn/LockConflict;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0
    .param p1, "allowed"    # Z
    .param p2, "restart"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/sleepycat/je/txn/LockConflict;->allowed:Z

    .line 35
    iput-boolean p2, p0, Lcom/sleepycat/je/txn/LockConflict;->restart:Z

    .line 36
    return-void
.end method


# virtual methods
.method getAllowed()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/LockConflict;->allowed:Z

    return v0
.end method

.method getRestart()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/LockConflict;->restart:Z

    return v0
.end method
