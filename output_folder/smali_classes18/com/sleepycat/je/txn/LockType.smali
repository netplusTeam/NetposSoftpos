.class public Lcom/sleepycat/je/txn/LockType;
.super Ljava/lang/Object;
.source "LockType.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NONE:Lcom/sleepycat/je/txn/LockType;

.field public static final RANGE_INSERT:Lcom/sleepycat/je/txn/LockType;

.field public static final RANGE_READ:Lcom/sleepycat/je/txn/LockType;

.field public static final RANGE_WRITE:Lcom/sleepycat/je/txn/LockType;

.field public static final READ:Lcom/sleepycat/je/txn/LockType;

.field public static final RESTART:Lcom/sleepycat/je/txn/LockType;

.field public static final WRITE:Lcom/sleepycat/je/txn/LockType;

.field private static conflictMatrix:[[Lcom/sleepycat/je/txn/LockConflict;

.field private static upgradeMatrix:[[Lcom/sleepycat/je/txn/LockUpgrade;


# instance fields
.field private causesRestart:Z

.field private index:I

.field private name:Ljava/lang/String;

.field private write:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 21
    nop

    .line 27
    new-instance v0, Lcom/sleepycat/je/txn/LockType;

    const/4 v1, 0x0

    const-string v2, "READ"

    invoke-direct {v0, v1, v1, v2}, Lcom/sleepycat/je/txn/LockType;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    .line 29
    new-instance v0, Lcom/sleepycat/je/txn/LockType;

    const/4 v2, 0x1

    const-string v3, "WRITE"

    invoke-direct {v0, v2, v2, v3}, Lcom/sleepycat/je/txn/LockType;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockType;->WRITE:Lcom/sleepycat/je/txn/LockType;

    .line 31
    new-instance v0, Lcom/sleepycat/je/txn/LockType;

    const/4 v3, 0x2

    const-string v4, "RANGE_READ"

    invoke-direct {v0, v3, v1, v4}, Lcom/sleepycat/je/txn/LockType;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    .line 33
    new-instance v4, Lcom/sleepycat/je/txn/LockType;

    const/4 v5, 0x3

    const-string v6, "RANGE_WRITE"

    invoke-direct {v4, v5, v2, v6}, Lcom/sleepycat/je/txn/LockType;-><init>(IZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/je/txn/LockType;->RANGE_WRITE:Lcom/sleepycat/je/txn/LockType;

    .line 35
    new-instance v6, Lcom/sleepycat/je/txn/LockType;

    const/4 v7, 0x4

    const-string v8, "RANGE_INSERT"

    invoke-direct {v6, v7, v1, v8}, Lcom/sleepycat/je/txn/LockType;-><init>(IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/txn/LockType;->RANGE_INSERT:Lcom/sleepycat/je/txn/LockType;

    .line 42
    new-instance v6, Lcom/sleepycat/je/txn/LockType;

    const/4 v8, 0x5

    const-string v9, "NONE"

    invoke-direct {v6, v8, v1, v9}, Lcom/sleepycat/je/txn/LockType;-><init>(IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    .line 49
    new-instance v6, Lcom/sleepycat/je/txn/LockType;

    const/4 v9, 0x6

    const-string v10, "RESTART"

    invoke-direct {v6, v9, v1, v10}, Lcom/sleepycat/je/txn/LockType;-><init>(IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/txn/LockType;->RESTART:Lcom/sleepycat/je/txn/LockType;

    .line 59
    invoke-direct {v0}, Lcom/sleepycat/je/txn/LockType;->setCausesRestart()V

    .line 60
    invoke-direct {v4}, Lcom/sleepycat/je/txn/LockType;->setCausesRestart()V

    .line 67
    new-array v0, v8, [[Lcom/sleepycat/je/txn/LockConflict;

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockConflict;

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v7

    aput-object v4, v0, v1

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockConflict;

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v7

    aput-object v4, v0, v2

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockConflict;

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v7

    aput-object v4, v0, v3

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockConflict;

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->BLOCK:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v7

    aput-object v4, v0, v5

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockConflict;

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->RESTART:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->RESTART:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockConflict;->ALLOW:Lcom/sleepycat/je/txn/LockConflict;

    aput-object v6, v4, v7

    aput-object v4, v0, v7

    sput-object v0, Lcom/sleepycat/je/txn/LockType;->conflictMatrix:[[Lcom/sleepycat/je/txn/LockConflict;

    .line 109
    new-array v0, v8, [[Lcom/sleepycat/je/txn/LockUpgrade;

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_READ_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v7

    aput-object v4, v0, v1

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v7

    aput-object v4, v0, v2

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v7

    aput-object v4, v0, v3

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v1

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v2

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v3

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v7

    aput-object v4, v0, v5

    new-array v4, v8, [Lcom/sleepycat/je/txn/LockUpgrade;

    sget-object v6, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v6, v4, v1

    sget-object v1, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v1, v4, v2

    sget-object v1, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v1, v4, v3

    sget-object v1, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v1, v4, v5

    sget-object v1, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    aput-object v1, v4, v7

    aput-object v4, v0, v7

    sput-object v0, Lcom/sleepycat/je/txn/LockType;->upgradeMatrix:[[Lcom/sleepycat/je/txn/LockUpgrade;

    return-void
.end method

.method private constructor <init>(IZLjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "write"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/sleepycat/je/txn/LockType;->index:I

    .line 157
    iput-boolean p2, p0, Lcom/sleepycat/je/txn/LockType;->write:Z

    .line 158
    iput-object p3, p0, Lcom/sleepycat/je/txn/LockType;->name:Ljava/lang/String;

    .line 159
    return-void
.end method

.method private setCausesRestart()V
    .locals 1

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/LockType;->causesRestart:Z

    .line 176
    return-void
.end method


# virtual methods
.method final getCausesRestart()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/LockType;->causesRestart:Z

    return v0
.end method

.method getConflict(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockConflict;
    .locals 2
    .param p1, "requestedType"    # Lcom/sleepycat/je/txn/LockType;

    .line 191
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->conflictMatrix:[[Lcom/sleepycat/je/txn/LockConflict;

    iget v1, p0, Lcom/sleepycat/je/txn/LockType;->index:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/sleepycat/je/txn/LockType;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method getUpgrade(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockUpgrade;
    .locals 4
    .param p1, "requestedType"    # Lcom/sleepycat/je/txn/LockType;

    .line 202
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->upgradeMatrix:[[Lcom/sleepycat/je/txn/LockUpgrade;

    iget v1, p0, Lcom/sleepycat/je/txn/LockType;->index:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/sleepycat/je/txn/LockType;->index:I

    aget-object v0, v0, v1

    .line 203
    .local v0, "upgrade":Lcom/sleepycat/je/txn/LockUpgrade;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockUpgrade;->getIllegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    return-object v0

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final isWriteLock()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/LockType;->write:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockType;->name:Ljava/lang/String;

    return-object v0
.end method
