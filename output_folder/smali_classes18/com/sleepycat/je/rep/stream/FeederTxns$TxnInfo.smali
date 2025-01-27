.class public Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
.super Ljava/lang/Object;
.source "FeederTxns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/FeederTxns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TxnInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/FeederTxns;

.field final txn:Lcom/sleepycat/je/rep/txn/MasterTxn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    const-class v0, Lcom/sleepycat/je/rep/stream/FeederTxns;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/rep/stream/FeederTxns;Lcom/sleepycat/je/rep/txn/MasterTxn;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/FeederTxns;
    .param p2, "txn"    # Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 202
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->this$0:Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getRequiredAckCount()I

    move-result v0

    .line 205
    .local v0, "numRequiredAcks":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    :goto_0
    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 208
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->txn:Lcom/sleepycat/je/rep/txn/MasterTxn;

    .line 209
    return-void

    .line 203
    .end local v0    # "numRequiredAcks":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/stream/FeederTxns;Lcom/sleepycat/je/rep/txn/MasterTxn;Lcom/sleepycat/je/rep/stream/FeederTxns$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/stream/FeederTxns;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/txn/MasterTxn;
    .param p3, "x2"    # Lcom/sleepycat/je/rep/stream/FeederTxns$1;

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;-><init>(Lcom/sleepycat/je/rep/stream/FeederTxns;Lcom/sleepycat/je/rep/txn/MasterTxn;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;IJ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->await(IJ)Z

    move-result v0

    return v0
.end method

.method private final await(IJ)Z
    .locals 6
    .param p1, "timeoutMs"    # I
    .param p2, "ackAwaitStartMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 223
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 224
    .local v0, "isZero":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 225
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->this$0:Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-static {v1}, Lcom/sleepycat/je/rep/stream/FeederTxns;->access$200(Lcom/sleepycat/je/rep/stream/FeederTxns;)Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 227
    .local v1, "now":J
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->this$0:Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-static {v3}, Lcom/sleepycat/je/rep/stream/FeederTxns;->access$300(Lcom/sleepycat/je/rep/stream/FeederTxns;)Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v3

    sub-long v4, v1, p2

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;->add(J)V

    .line 228
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->this$0:Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-static {v3}, Lcom/sleepycat/je/rep/stream/FeederTxns;->access$400(Lcom/sleepycat/je/rep/stream/FeederTxns;)Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->txn:Lcom/sleepycat/je/rep/txn/MasterTxn;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getStartMs()J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;->add(J)V

    .line 229
    .end local v1    # "now":J
    goto :goto_2

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->this$0:Lcom/sleepycat/je/rep/stream/FeederTxns;

    invoke-static {v1}, Lcom/sleepycat/je/rep/stream/FeederTxns;->access$500(Lcom/sleepycat/je/rep/stream/FeederTxns;)Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 232
    :goto_2
    return v0
.end method


# virtual methods
.method public final countDown()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 241
    return-void
.end method

.method public getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->txn:Lcom/sleepycat/je/rep/txn/MasterTxn;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method public final getPendingAcks()I
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final getTxn()Lcom/sleepycat/je/rep/txn/MasterTxn;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederTxns$TxnInfo;->txn:Lcom/sleepycat/je/rep/txn/MasterTxn;

    return-object v0
.end method
