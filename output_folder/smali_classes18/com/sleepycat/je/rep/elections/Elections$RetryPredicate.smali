.class Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;
.super Ljava/lang/Object;
.source "Elections.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Elections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetryPredicate"
.end annotation


# static fields
.field private static final BACKOFF_SLEEP_MAX:I = 0x20

.field private static final BACKOFF_SLEEP_MIN:I = 0x1


# instance fields
.field private final electionLatch:Ljava/util/concurrent/CountDownLatch;

.field private final maxRetries:I

.field private nextBackoffSec:I

.field private pendingRetries:I

.field private final primaryRetries:I

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;ILjava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "maxRetries"    # I
    .param p3, "electionLatch"    # Ljava/util/concurrent/CountDownLatch;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->nextBackoffSec:I

    .line 670
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 671
    iput p2, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->maxRetries:I

    .line 672
    iput p2, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->pendingRetries:I

    .line 673
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->electionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 674
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 675
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTIONS_PRIMARY_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 677
    .local v1, "retriesParam":Lcom/sleepycat/je/config/IntConfigParam;
    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->primaryRetries:I

    .line 680
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;

    .line 645
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->pendingRetries:I

    return v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;

    .line 645
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->maxRetries:I

    return v0
.end method

.method private backoffWaitTime()I
    .locals 3

    .line 690
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->nextBackoffSec:I

    .line 692
    .local v0, "currBackOffSec":I
    iget v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->nextBackoffSec:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    mul-int/lit8 v1, v1, 0x2

    .line 694
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->nextBackoffSec:I

    .line 696
    mul-int/lit16 v1, v0, 0x3e8

    return v1
.end method


# virtual methods
.method public electionRoundConcluded()Z
    .locals 4

    .line 734
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->electionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retries()I
    .locals 2

    .line 729
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->maxRetries:I

    iget v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->pendingRetries:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public retry()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 704
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->maxRetries:I

    iget v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->pendingRetries:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->primaryRetries:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->activateArbitration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->maxRetries:I

    iput v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->pendingRetries:I

    .line 708
    return v2

    .line 711
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->pendingRetries:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->pendingRetries:I

    if-gtz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->electionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 714
    const/4 v0, 0x0

    return v0

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->electionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->backoffWaitTime()I

    move-result v1

    int-to-long v3, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method
