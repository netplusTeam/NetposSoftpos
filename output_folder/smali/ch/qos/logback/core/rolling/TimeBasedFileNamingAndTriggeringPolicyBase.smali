.class public abstract Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "TimeBasedFileNamingAndTriggeringPolicyBase.java"

# interfaces
.implements Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;",
        "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicy<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static COLLIDING_DATE_FORMAT_URL:Ljava/lang/String;


# instance fields
.field protected archiveRemover:Lch/qos/logback/core/rolling/helper/ArchiveRemover;

.field protected artificialCurrentTime:J

.field protected dateInCurrentPeriod:Ljava/util/Date;

.field protected elapsedPeriodsFileName:Ljava/lang/String;

.field protected errorFree:Z

.field protected nextCheck:J

.field protected rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

.field protected started:Z

.field protected tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/rolling/TimeBasedRollingPolicy<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "http://logback.qos.ch/codes.html#rfa_collision_in_dateFormat"

    sput-object v0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->COLLIDING_DATE_FORMAT_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->archiveRemover:Lch/qos/logback/core/rolling/helper/ArchiveRemover;

    .line 38
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->artificialCurrentTime:J

    .line 39
    iput-object v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->dateInCurrentPeriod:Ljava/util/Date;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->started:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->errorFree:Z

    return-void
.end method


# virtual methods
.method protected computeNextCheck()V
    .locals 2

    .line 86
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    iget-object v1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->dateInCurrentPeriod:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getNextTriggeringDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->nextCheck:J

    .line 87
    return-void
.end method

.method public getArchiveRemover()Lch/qos/logback/core/rolling/helper/ArchiveRemover;
    .locals 1

    .line 126
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->archiveRemover:Lch/qos/logback/core/rolling/helper/ArchiveRemover;

    return-object v0
.end method

.method public getCurrentPeriodsFileNameWithoutCompressionSuffix()Ljava/lang/String;
    .locals 2

    .line 104
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v0, v0, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePatternWithoutCompSuffix:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget-object v1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->dateInCurrentPeriod:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 4

    .line 113
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-wide v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->artificialCurrentTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 114
    return-wide v0

    .line 116
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedPeriodsFileName()Ljava/lang/String;
    .locals 1

    .line 100
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->elapsedPeriodsFileName:Ljava/lang/String;

    return-object v0
.end method

.method protected isErrorFree()Z
    .locals 1

    .line 134
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->errorFree:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 46
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->started:Z

    return v0
.end method

.method public setCurrentTime(J)V
    .locals 0
    .param p1, "timeInMillis"    # J

    .line 108
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iput-wide p1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->artificialCurrentTime:J

    .line 109
    return-void
.end method

.method protected setDateInCurrentPeriod(J)V
    .locals 1
    .param p1, "now"    # J

    .line 90
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->dateInCurrentPeriod:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 91
    return-void
.end method

.method public setDateInCurrentPeriod(Ljava/util/Date;)V
    .locals 0
    .param p1, "_dateInCurrentPeriod"    # Ljava/util/Date;

    .line 96
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->dateInCurrentPeriod:Ljava/util/Date;

    .line 97
    return-void
.end method

.method public setTimeBasedRollingPolicy(Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/rolling/TimeBasedRollingPolicy<",
            "TE;>;)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    .local p1, "_tbrp":Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;, "Lch/qos/logback/core/rolling/TimeBasedRollingPolicy<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    .line 123
    return-void
.end method

.method public start()V
    .locals 5

    .line 50
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v0, v0, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getPrimaryDateTokenConverter()Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    move-result-object v0

    .line 51
    .local v0, "dtc":Lch/qos/logback/core/rolling/helper/DateTokenConverter;, "Lch/qos/logback/core/rolling/helper/DateTokenConverter<Ljava/lang/Object;>;"
    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lch/qos/logback/core/rolling/helper/RollingCalendar;

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->getDatePattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Lch/qos/logback/core/rolling/helper/RollingCalendar;

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->getDatePattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/qos/logback/core/rolling/helper/RollingCalendar;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    .line 60
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The date pattern is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->getDatePattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from file name pattern \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v2, v2, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v2}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->addInfo(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    invoke-virtual {v1, p0}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->printPeriodicity(Lch/qos/logback/core/spi/ContextAwareBase;)V

    .line 63
    iget-object v1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->isCollisionFree()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string v1, "The date format in FileNamePattern will result in collisions in the names of archived log files."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->addError(Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For more information, please visit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->COLLIDING_DATE_FORMAT_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->addError(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->withErrors()V

    .line 67
    return-void

    .line 70
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->getCurrentTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->setDateInCurrentPeriod(Ljava/util/Date;)V

    .line 71
    iget-object v1, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    invoke-virtual {v1}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->getParentsRawFileProperty()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    invoke-virtual {v2}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->getParentsRawFileProperty()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "currentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->setDateInCurrentPeriod(Ljava/util/Date;)V

    .line 77
    .end local v1    # "currentFile":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting initial period to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->dateInCurrentPeriod:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->addInfo(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->computeNextCheck()V

    .line 79
    return-void

    .line 52
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamePattern ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v3, v3, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v3}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not contain a valid DateToken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stop()V
    .locals 1

    .line 82
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->started:Z

    .line 83
    return-void
.end method

.method protected withErrors()V
    .locals 1

    .line 130
    .local p0, "this":Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;, "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->errorFree:Z

    .line 131
    return-void
.end method
