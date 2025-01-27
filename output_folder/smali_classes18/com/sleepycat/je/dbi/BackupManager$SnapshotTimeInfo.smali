.class Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnapshotTimeInfo"
.end annotation


# instance fields
.field private final interval:J

.field final next:J

.field final previous:J

.field private final schedule:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "schedule"    # Ljava/lang/String;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->schedule:Ljava/lang/String;

    .line 554
    nop

    .line 555
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->createSnapshotScheduleParser(Ljava/lang/String;)Lcom/sleepycat/je/utilint/CronScheduleParser;

    move-result-object v0

    .line 556
    .local v0, "parser":Lcom/sleepycat/je/utilint/CronScheduleParser;
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->getDelayTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->next:J

    .line 557
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->getInterval()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->interval:J

    .line 558
    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->previous:J

    .line 559
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "schedule"    # Ljava/lang/String;
    .param p2, "next"    # J
    .param p4, "interval"    # J

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->schedule:Ljava/lang/String;

    .line 565
    iput-wide p2, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->next:J

    .line 566
    iput-wide p4, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->interval:J

    .line 567
    sub-long v0, p2, p4

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->previous:J

    .line 568
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapshotTimeInfo[schedule=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->schedule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->next:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->next:J

    .line 597
    invoke-static {v2, v3}, Lcom/sleepycat/je/dbi/BackupManager;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") interval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->interval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " previous="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->previous:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->previous:J

    .line 599
    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/BackupManager;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    return-object v0
.end method

.method update(Ljava/lang/String;)Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;
    .locals 11
    .param p1, "newSchedule"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->schedule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 582
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v0

    .line 583
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->next:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 584
    return-object p0

    .line 586
    :cond_1
    iget-wide v4, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->interval:J

    add-long/2addr v2, v4

    .line 587
    .local v2, "newNext":J
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 588
    iget-wide v4, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->interval:J

    add-long/2addr v2, v4

    goto :goto_0

    .line 590
    :cond_2
    new-instance v10, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    iget-wide v8, p0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->interval:J

    move-object v4, v10

    move-object v5, p1

    move-wide v6, v2

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;-><init>(Ljava/lang/String;JJ)V

    return-object v10
.end method
