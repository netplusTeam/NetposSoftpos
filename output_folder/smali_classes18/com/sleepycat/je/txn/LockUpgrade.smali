.class public Lcom/sleepycat/je/txn/LockUpgrade;
.super Ljava/lang/Object;
.source "LockUpgrade.java"


# static fields
.field public static final EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

.field public static final ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

.field public static final RANGE_READ_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

.field public static final RANGE_WRITE_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

.field public static final RANGE_WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

.field public static final WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;


# instance fields
.field private illegal:Z

.field private promotion:Z

.field private upgrade:Lcom/sleepycat/je/txn/LockType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcom/sleepycat/je/txn/LockUpgrade;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/txn/LockUpgrade;-><init>(Lcom/sleepycat/je/txn/LockType;ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->ILLEGAL:Lcom/sleepycat/je/txn/LockUpgrade;

    .line 32
    new-instance v0, Lcom/sleepycat/je/txn/LockUpgrade;

    invoke-direct {v0, v1, v2, v2}, Lcom/sleepycat/je/txn/LockUpgrade;-><init>(Lcom/sleepycat/je/txn/LockType;ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->EXISTING:Lcom/sleepycat/je/txn/LockUpgrade;

    .line 35
    new-instance v0, Lcom/sleepycat/je/txn/LockUpgrade;

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/txn/LockUpgrade;-><init>(Lcom/sleepycat/je/txn/LockType;ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

    .line 38
    new-instance v0, Lcom/sleepycat/je/txn/LockUpgrade;

    invoke-direct {v0, v1, v2, v2}, Lcom/sleepycat/je/txn/LockUpgrade;-><init>(Lcom/sleepycat/je/txn/LockType;ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_READ_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

    .line 41
    new-instance v0, Lcom/sleepycat/je/txn/LockUpgrade;

    invoke-direct {v0, v1, v2, v2}, Lcom/sleepycat/je/txn/LockUpgrade;-><init>(Lcom/sleepycat/je/txn/LockType;ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_IMMED:Lcom/sleepycat/je/txn/LockUpgrade;

    .line 44
    new-instance v0, Lcom/sleepycat/je/txn/LockUpgrade;

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/txn/LockUpgrade;-><init>(Lcom/sleepycat/je/txn/LockType;ZZ)V

    sput-object v0, Lcom/sleepycat/je/txn/LockUpgrade;->RANGE_WRITE_PROMOTE:Lcom/sleepycat/je/txn/LockUpgrade;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/txn/LockType;ZZ)V
    .locals 0
    .param p1, "upgrade"    # Lcom/sleepycat/je/txn/LockType;
    .param p2, "promotion"    # Z
    .param p3, "illegal"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockUpgrade;->upgrade:Lcom/sleepycat/je/txn/LockType;

    .line 56
    iput-boolean p2, p0, Lcom/sleepycat/je/txn/LockUpgrade;->promotion:Z

    .line 57
    iput-boolean p3, p0, Lcom/sleepycat/je/txn/LockUpgrade;->illegal:Z

    .line 58
    return-void
.end method


# virtual methods
.method getIllegal()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/LockUpgrade;->illegal:Z

    return v0
.end method

.method getPromotion()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/LockUpgrade;->promotion:Z

    return v0
.end method

.method getUpgrade()Lcom/sleepycat/je/txn/LockType;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockUpgrade;->upgrade:Lcom/sleepycat/je/txn/LockType;

    return-object v0
.end method

.method public setUpgrade(Lcom/sleepycat/je/txn/LockType;)V
    .locals 0
    .param p1, "upgrade"    # Lcom/sleepycat/je/txn/LockType;

    .line 87
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockUpgrade;->upgrade:Lcom/sleepycat/je/txn/LockType;

    .line 88
    return-void
.end method
