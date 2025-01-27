.class public Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;
.super Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;
.source "DefaultTimeBasedFileNamingAndTriggeringPolicy.java"


# annotations
.annotation runtime Lch/qos/logback/core/joran/spi/NoAutoStart;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;, "Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public isTriggeringEvent(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "activeFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TE;)Z"
        }
    .end annotation

    .line 47
    .local p0, "this":Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;, "Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy<TE;>;"
    .local p2, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->getCurrentTime()J

    move-result-wide v0

    .line 48
    .local v0, "time":J
    iget-wide v2, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->nextCheck:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 49
    iget-object v2, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->dateInCurrentPeriod:Ljava/util/Date;

    .line 50
    .local v2, "dateOfElapsedPeriod":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Elapsed period: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->addInfo(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v3, v3, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePatternWithoutCompSuffix:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v3, v2}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->elapsedPeriodsFileName:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->setDateInCurrentPeriod(J)V

    .line 53
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->computeNextCheck()V

    .line 54
    const/4 v3, 0x1

    return v3

    .line 56
    .end local v2    # "dateOfElapsedPeriod":Ljava/util/Date;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public start()V
    .locals 3

    .line 33
    .local p0, "this":Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;, "Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy<TE;>;"
    invoke-super {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->start()V

    .line 34
    invoke-super {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->isErrorFree()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v0, v0, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->hasIntegerTokenCOnverter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filename pattern ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v1, v1, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] contains an integer token converter, i.e. %i, INCOMPATIBLE with this configuration. Remove it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->addError(Ljava/lang/String;)V

    .line 38
    return-void

    .line 41
    :cond_1
    new-instance v0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;

    iget-object v1, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v1, v1, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget-object v2, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;-><init>(Lch/qos/logback/core/rolling/helper/FileNamePattern;Lch/qos/logback/core/rolling/helper/RollingCalendar;)V

    iput-object v0, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->archiveRemover:Lch/qos/logback/core/rolling/helper/ArchiveRemover;

    .line 42
    iget-object v0, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->archiveRemover:Lch/qos/logback/core/rolling/helper/ArchiveRemover;

    iget-object v1, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0, v1}, Lch/qos/logback/core/rolling/helper/ArchiveRemover;->setContext(Lch/qos/logback/core/Context;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;->started:Z

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    .local p0, "this":Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy;, "Lch/qos/logback/core/rolling/DefaultTimeBasedFileNamingAndTriggeringPolicy<TE;>;"
    const-string v0, "c.q.l.core.rolling.DefaultTimeBasedFileNamingAndTriggeringPolicy"

    return-object v0
.end method
