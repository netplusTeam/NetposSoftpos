.class public Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;
.super Ljava/util/concurrent/CountDownLatch;
.source "VLSNIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VLSNAwaitLatch"
.end annotation


# instance fields
.field private logItem:Lcom/sleepycat/je/log/LogItem;

.field private terminated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2502
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->logItem:Lcom/sleepycat/je/log/LogItem;

    .line 2499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->terminated:Z

    .line 2503
    return-void
.end method


# virtual methods
.method public getLogItem()Lcom/sleepycat/je/log/LogItem;
    .locals 1

    .line 2525
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->logItem:Lcom/sleepycat/je/log/LogItem;

    return-object v0
.end method

.method public getTriggerLSN()J
    .locals 2

    .line 2506
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->logItem:Lcom/sleepycat/je/log/LogItem;

    iget-wide v0, v0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    return-wide v0
.end method

.method public getTriggerVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 2510
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->logItem:Lcom/sleepycat/je/log/LogItem;

    iget-object v0, v0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 2535
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->terminated:Z

    return v0
.end method

.method public setLogItem(Lcom/sleepycat/je/log/LogItem;)V
    .locals 0
    .param p1, "logItem"    # Lcom/sleepycat/je/log/LogItem;

    .line 2514
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->logItem:Lcom/sleepycat/je/log/LogItem;

    .line 2515
    return-void
.end method

.method public terminate()V
    .locals 1

    .line 2530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->terminated:Z

    .line 2531
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNAwaitLatch;->countDown()V

    .line 2532
    return-void
.end method
