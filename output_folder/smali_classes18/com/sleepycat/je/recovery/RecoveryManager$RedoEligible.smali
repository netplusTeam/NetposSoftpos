.class Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;
.super Ljava/lang/Object;
.source "RecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/RecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedoEligible"
.end annotation


# static fields
.field static ELIGIBLE_NON_TXNAL:Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

.field static NOT:Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;


# instance fields
.field final commitLsn:J

.field final isEligible:Z

.field final resurrectTxn:Lcom/sleepycat/je/txn/Txn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2308
    new-instance v0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;-><init>(Z)V

    sput-object v0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->NOT:Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    .line 2309
    new-instance v0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;-><init>(Z)V

    sput-object v0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->ELIGIBLE_NON_TXNAL:Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "commitLsn"    # J

    .line 2319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->isEligible:Z

    .line 2321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;

    .line 2322
    iput-wide p1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->commitLsn:J

    .line 2323
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/txn/Txn;)V
    .locals 2
    .param p1, "resurrectTxn"    # Lcom/sleepycat/je/txn/Txn;

    .line 2312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->isEligible:Z

    .line 2314
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;

    .line 2315
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->commitLsn:J

    .line 2316
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "eligible"    # Z

    .line 2325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2326
    iput-boolean p1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->isEligible:Z

    .line 2327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;

    .line 2328
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->commitLsn:J

    .line 2329
    return-void
.end method


# virtual methods
.method isCommitted()Z
    .locals 4

    .line 2338
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->commitLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->isNonTransactional()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isNonTransactional()Z
    .locals 4

    .line 2332
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->isEligible:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->commitLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$RedoEligible;->resurrectTxn:Lcom/sleepycat/je/txn/Txn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
