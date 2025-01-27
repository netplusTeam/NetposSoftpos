.class Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;
.super Ljava/lang/Object;
.source "StatsFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/StatsFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckpointCounter"
.end annotation


# instance fields
.field public endCkptLsn:J

.field public postStartLNCount:I

.field public postStartLNTxnCount:I

.field public postStartMapLNCount:I

.field public postStartMapLNTxnCount:I

.field public preStartLNCount:I

.field public preStartLNTxnCount:I

.field public preStartMapLNCount:I

.field public preStartMapLNTxnCount:I

.field public startCkptLsn:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    .line 571
    iput-wide v0, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->endCkptLsn:J

    return-void
.end method


# virtual methods
.method public increment(Lcom/sleepycat/je/log/FileReader;B)V
    .locals 6
    .param p1, "reader"    # Lcom/sleepycat/je/log/FileReader;
    .param p2, "currentEntryTypeNum"    # B

    .line 582
    nop

    .line 583
    invoke-static {p2}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 585
    .local v0, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_START:Lcom/sleepycat/je/log/LogEntryType;

    if-ne v0, v1, :cond_0

    .line 586
    invoke-virtual {p1}, Lcom/sleepycat/je/log/FileReader;->getLastLsn()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isUserLNType()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4

    .line 588
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    iget-wide v4, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 590
    iget v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartLNTxnCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartLNTxnCount:I

    goto :goto_0

    .line 592
    :cond_1
    iget v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartLNTxnCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartLNTxnCount:I

    goto :goto_0

    .line 595
    :cond_2
    iget-wide v4, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_3

    .line 596
    iget v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartLNCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartLNCount:I

    goto :goto_0

    .line 598
    :cond_3
    iget v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartLNCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartLNCount:I

    goto :goto_0

    .line 601
    :cond_4
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN:Lcom/sleepycat/je/log/LogEntryType;

    if-ne v0, v1, :cond_6

    .line 602
    iget-wide v4, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->startCkptLsn:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_5

    .line 603
    iget v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartMapLNCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->preStartMapLNCount:I

    goto :goto_0

    .line 605
    :cond_5
    iget v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartMapLNCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointCounter;->postStartMapLNCount:I

    .line 608
    :cond_6
    :goto_0
    return-void
.end method
