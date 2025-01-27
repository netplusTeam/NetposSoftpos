.class public Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "TimeBasedArchiveRemover.java"

# interfaces
.implements Lch/qos/logback/core/rolling/helper/ArchiveRemover;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;
    }
.end annotation


# static fields
.field protected static final INACTIVITY_TOLERANCE_IN_MILLIS:J = 0xa4cb8000L

.field static final MAX_VALUE_FOR_INACTIVITY_PERIODS:I = 0x150

.field protected static final UNINITIALIZED:J = -0x1L


# instance fields
.field callCount:I

.field final fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

.field lastHeartBeat:J

.field private maxHistory:I

.field final parentClean:Z

.field final rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

.field private totalSizeCap:J


# direct methods
.method public constructor <init>(Lch/qos/logback/core/rolling/helper/FileNamePattern;Lch/qos/logback/core/rolling/helper/RollingCalendar;)V
    .locals 3
    .param p1, "fileNamePattern"    # Lch/qos/logback/core/rolling/helper/FileNamePattern;
    .param p2, "rc"    # Lch/qos/logback/core/rolling/helper/RollingCalendar;

    .line 45
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->maxHistory:I

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->totalSizeCap:J

    .line 43
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->lastHeartBeat:J

    .line 51
    iput v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->callCount:I

    .line 46
    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    .line 47
    iput-object p2, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    .line 48
    invoke-virtual {p0, p1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->computeParentCleaningFlag(Lch/qos/logback/core/rolling/helper/FileNamePattern;)Z

    move-result v0

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->parentClean:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;)J
    .locals 2
    .param p0, "x0"    # Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;

    .line 31
    iget-wide v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->totalSizeCap:J

    return-wide v0
.end method

.method private descendingSortByLastModified([Ljava/io/File;)V
    .locals 1
    .param p1, "matchingFileArray"    # [Ljava/io/File;

    .line 118
    new-instance v0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$1;

    invoke-direct {v0, p0}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$1;-><init>(Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 132
    return-void
.end method

.method private fileExistsAndIsFile(Ljava/io/File;)Z
    .locals 1
    .param p1, "file2Delete"    # Ljava/io/File;

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeFolderIfEmpty(Ljava/io/File;I)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "depth"    # I

    .line 200
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->isEmptyDirectory(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleting folder ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->addInfo(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->removeFolderIfEmpty(Ljava/io/File;I)V

    .line 208
    :cond_1
    return-void
.end method


# virtual methods
.method capTotalSize(Ljava/util/Date;)V
    .locals 19
    .param p1, "now"    # Ljava/util/Date;

    .line 98
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 99
    .local v1, "totalSize":J
    const-wide/16 v3, 0x0

    .line 100
    .local v3, "totalRemoved":J
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    iget v6, v0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->maxHistory:I

    if-ge v5, v6, :cond_2

    .line 101
    iget-object v6, v0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    neg-int v7, v5

    move-object/from16 v8, p1

    invoke-virtual {v6, v8, v7}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getEndOfNextNthPeriod(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v6

    .line 102
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v0, v6}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->getFilesInPeriod(Ljava/util/Date;)[Ljava/io/File;

    move-result-object v7

    .line 103
    .local v7, "matchingFileArray":[Ljava/io/File;
    invoke-direct {v0, v7}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->descendingSortByLastModified([Ljava/io/File;)V

    .line 104
    move-object v9, v7

    .local v9, "arr$":[Ljava/io/File;
    array-length v10, v9

    .local v10, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 105
    .local v12, "f":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 106
    .local v13, "size":J
    add-long v15, v1, v13

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v6    # "date":Ljava/util/Date;
    .end local v7    # "matchingFileArray":[Ljava/io/File;
    .local v17, "date":Ljava/util/Date;
    .local v18, "matchingFileArray":[Ljava/io/File;
    iget-wide v6, v0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->totalSizeCap:J

    cmp-long v6, v15, v6

    if-lez v6, :cond_0

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Lch/qos/logback/core/util/FileSize;

    invoke-direct {v7, v13, v14}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->addInfo(Ljava/lang/String;)V

    .line 108
    add-long/2addr v3, v13

    .line 109
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 111
    :cond_0
    add-long/2addr v1, v13

    .line 104
    .end local v12    # "f":Ljava/io/File;
    .end local v13    # "size":J
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_1

    .end local v17    # "date":Ljava/util/Date;
    .end local v18    # "matchingFileArray":[Ljava/io/File;
    .restart local v6    # "date":Ljava/util/Date;
    .restart local v7    # "matchingFileArray":[Ljava/io/File;
    :cond_1
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 100
    .end local v6    # "date":Ljava/util/Date;
    .end local v7    # "matchingFileArray":[Ljava/io/File;
    .end local v9    # "arr$":[Ljava/io/File;
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v8, p1

    .line 114
    .end local v5    # "offset":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lch/qos/logback/core/util/FileSize;

    invoke-direct {v6, v3, v4}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->addInfo(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public clean(Ljava/util/Date;)V
    .locals 6
    .param p1, "now"    # Ljava/util/Date;

    .line 54
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 56
    .local v0, "nowInMillis":J
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->computeElapsedPeriodsSinceLastClean(J)I

    move-result v2

    .line 57
    .local v2, "periodsElapsed":I
    iput-wide v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->lastHeartBeat:J

    .line 58
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple periods, i.e. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " periods, seem to have elapsed. This is expected at application start."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->addInfo(Ljava/lang/String;)V

    .line 61
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->getPeriodOffsetForDeletionTarget()I

    move-result v4

    sub-int/2addr v4, v3

    .line 63
    .local v4, "offset":I
    iget-object v5, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    invoke-virtual {v5, p1, v4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getEndOfNextNthPeriod(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    .line 64
    .local v5, "dateOfPeriodToClean":Ljava/util/Date;
    invoke-virtual {p0, v5}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->cleanPeriod(Ljava/util/Date;)V

    .line 61
    .end local v4    # "offset":I
    .end local v5    # "dateOfPeriodToClean":Ljava/util/Date;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public cleanAsynchronously(Ljava/util/Date;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 227
    new-instance v0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;

    invoke-direct {v0, p0, p1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;-><init>(Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;Ljava/util/Date;)V

    .line 228
    .local v0, "runnable":Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;
    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1}, Lch/qos/logback/core/Context;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 229
    .local v1, "executorService":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 230
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    return-object v2
.end method

.method public cleanPeriod(Ljava/util/Date;)V
    .locals 7
    .param p1, "dateOfPeriodToClean"    # Ljava/util/Date;

    .line 84
    invoke-virtual {p0, p1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->getFilesInPeriod(Ljava/util/Date;)[Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "matchingFileArray":[Ljava/io/File;
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 87
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->addInfo(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 86
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-boolean v1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->parentClean:Z

    if-eqz v1, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 92
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->getParentDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 93
    .local v1, "parentDir":Ljava/io/File;
    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->removeFolderIfEmpty(Ljava/io/File;)V

    .line 95
    .end local v1    # "parentDir":Ljava/io/File;
    :cond_1
    return-void
.end method

.method computeElapsedPeriodsSinceLastClean(J)I
    .locals 6
    .param p1, "nowInMillis"    # J

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "periodsElapsed":J
    iget-wide v2, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->lastHeartBeat:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 143
    const-string v2, "first clean up after appender initialization"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->addInfo(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    const-wide v3, 0xa4cb8000L

    add-long/2addr v3, p1

    invoke-virtual {v2, p1, p2, v3, v4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodBarriersCrossed(JJ)J

    move-result-wide v0

    .line 145
    const-wide/16 v2, 0x150

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v4, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    invoke-virtual {v4, v2, v3, p1, p2}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodBarriersCrossed(JJ)J

    move-result-wide v0

    .line 150
    :goto_0
    long-to-int v2, v0

    return v2
.end method

.method computeParentCleaningFlag(Lch/qos/logback/core/rolling/helper/FileNamePattern;)Z
    .locals 7
    .param p1, "fileNamePattern"    # Lch/qos/logback/core/rolling/helper/FileNamePattern;

    .line 154
    invoke-virtual {p1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getPrimaryDateTokenConverter()Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    move-result-object v0

    .line 156
    .local v0, "dtc":Lch/qos/logback/core/rolling/helper/DateTokenConverter;, "Lch/qos/logback/core/rolling/helper/DateTokenConverter<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->getDatePattern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 157
    return v3

    .line 162
    :cond_0
    iget-object v1, p1, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    .line 165
    .local v1, "p":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 166
    instance-of v5, v1, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    if-eqz v5, :cond_1

    .line 167
    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    .line 172
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 173
    instance-of v5, v1, Lch/qos/logback/core/pattern/LiteralConverter;

    if-eqz v5, :cond_3

    .line 174
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 176
    return v3

    .line 179
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_1

    .line 183
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method protected getFilesInPeriod(Ljava/util/Date;)[Ljava/io/File;
    .locals 4
    .param p1, "dateOfPeriodToClean"    # Ljava/util/Date;

    .line 69
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "filenameToDelete":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "file2Delete":Ljava/io/File;
    invoke-direct {p0, v1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->fileExistsAndIsFile(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 73
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/File;

    aput-object v1, v2, v3

    return-object v2

    .line 75
    :cond_0
    new-array v2, v3, [Ljava/io/File;

    return-object v2
.end method

.method getParentDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 136
    .local v0, "absolute":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 137
    .local v1, "parentDir":Ljava/io/File;
    return-object v1
.end method

.method protected getPeriodOffsetForDeletionTarget()I
    .locals 1

    .line 215
    iget v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->maxHistory:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method removeFolderIfEmpty(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->removeFolderIfEmpty(Ljava/io/File;I)V

    .line 188
    return-void
.end method

.method public setMaxHistory(I)V
    .locals 0
    .param p1, "maxHistory"    # I

    .line 211
    iput p1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->maxHistory:I

    .line 212
    return-void
.end method

.method public setTotalSizeCap(J)V
    .locals 0
    .param p1, "totalSizeCap"    # J

    .line 219
    iput-wide p1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->totalSizeCap:J

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 223
    const-string v0, "c.q.l.core.rolling.helper.TimeBasedArchiveRemover"

    return-object v0
.end method
