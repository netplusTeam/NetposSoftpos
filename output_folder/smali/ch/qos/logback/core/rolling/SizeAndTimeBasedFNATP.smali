.class public Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;
.super Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;
.source "SizeAndTimeBasedFNATP.java"


# annotations
.annotation runtime Lch/qos/logback/core/joran/spi/NoAutoStart;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;
    }
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


# static fields
.field static MISSING_DATE_TOKEN:Ljava/lang/String;

.field static MISSING_INT_TOKEN:Ljava/lang/String;


# instance fields
.field currentPeriodsCounter:I

.field invocationGate:Lch/qos/logback/core/util/InvocationGate;

.field maxFileSize:Lch/qos/logback/core/util/FileSize;

.field nextSizeCheck:J

.field private final usage:Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "Missing integer token, that is %i, in FileNamePattern ["

    sput-object v0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->MISSING_INT_TOKEN:Ljava/lang/String;

    .line 43
    const-string v0, "Missing date token, that is %d, in FileNamePattern ["

    sput-object v0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->MISSING_DATE_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    sget-object v0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;->DIRECT:Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;

    invoke-direct {p0, v0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;-><init>(Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;)V
    .locals 2
    .param p1, "usage"    # Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;

    .line 51
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->nextSizeCheck:J

    .line 134
    new-instance v0, Lch/qos/logback/core/util/DefaultInvocationGate;

    invoke-direct {v0}, Lch/qos/logback/core/util/DefaultInvocationGate;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->invocationGate:Lch/qos/logback/core/util/InvocationGate;

    .line 52
    iput-object p1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->usage:Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;

    .line 53
    return-void
.end method

.method private validateDateAndIntegerTokens()Z
    .locals 4

    .line 96
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    const/4 v0, 0x0

    .line 97
    .local v0, "inError":Z
    iget-object v1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v1, v1, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getIntegerTokenConverter()Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    move-result-object v1

    const-string v2, "]"

    if-nez v1, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->MISSING_INT_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v3, v3, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePatternStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->addError(Ljava/lang/String;)V

    .line 100
    const-string v1, "See also http://logback.qos.ch/codes.html#sat_missing_integer_token"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->addError(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v1, v1, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getPrimaryDateTokenConverter()Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 103
    const/4 v0, 0x1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->MISSING_DATE_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v3, v3, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePatternStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->addError(Ljava/lang/String;)V

    .line 107
    :cond_1
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method


# virtual methods
.method computeCurrentPeriodsHighestCounterValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "stemRegex"    # Ljava/lang/String;

    .line 115
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->getCurrentPeriodsFileNameWithoutCompressionSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 118
    .local v1, "parentDir":Ljava/io/File;
    invoke-static {v1, p1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->filesInFolderMatchingStemRegex(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 120
    .local v2, "matchingFileArray":[Ljava/io/File;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v2, p1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->findHighestCounter([Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    .line 128
    iget-object v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    invoke-virtual {v3}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->getParentsRawFileProperty()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v3, v3, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    sget-object v4, Lch/qos/logback/core/rolling/helper/CompressionMode;->NONE:Lch/qos/logback/core/rolling/helper/CompressionMode;

    if-eq v3, v4, :cond_2

    .line 130
    :cond_1
    iget v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    .line 132
    :cond_2
    return-void

    .line 121
    :cond_3
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    .line 122
    return-void
.end method

.method protected createArchiveRemover()Lch/qos/logback/core/rolling/helper/ArchiveRemover;
    .locals 3

    .line 111
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    new-instance v0, Lch/qos/logback/core/rolling/helper/SizeAndTimeBasedArchiveRemover;

    iget-object v1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v1, v1, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->rc:Lch/qos/logback/core/rolling/helper/RollingCalendar;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/rolling/helper/SizeAndTimeBasedArchiveRemover;-><init>(Lch/qos/logback/core/rolling/helper/FileNamePattern;Lch/qos/logback/core/rolling/helper/RollingCalendar;)V

    return-object v0
.end method

.method public getCurrentPeriodsFileNameWithoutCompressionSuffix()Ljava/lang/String;
    .locals 4

    .line 176
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v0, v0, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePatternWithoutCompSuffix:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->dateInCurrentPeriod:Ljava/util/Date;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertMultipleArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTriggeringEvent(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "activeFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TE;)Z"
        }
    .end annotation

    .line 139
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    .local p2, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->getCurrentTime()J

    move-result-wide v0

    .line 142
    .local v0, "time":J
    iget-wide v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->nextCheck:J

    cmp-long v2, v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_0

    .line 143
    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->dateInCurrentPeriod:Ljava/util/Date;

    .line 144
    .local v2, "dateInElapsedPeriod":Ljava/util/Date;
    iget-object v6, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v6, v6, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePatternWithoutCompSuffix:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    iget v7, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v6, v3}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertMultipleArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->elapsedPeriodsFileName:Ljava/lang/String;

    .line 145
    iput v5, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    .line 146
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->setDateInCurrentPeriod(J)V

    .line 147
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->computeNextCheck()V

    .line 148
    return v4

    .line 152
    .end local v2    # "dateInElapsedPeriod":Ljava/util/Date;
    :cond_0
    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->invocationGate:Lch/qos/logback/core/util/InvocationGate;

    invoke-interface {v2, v0, v1}, Lch/qos/logback/core/util/InvocationGate;->isTooSoon(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    return v5

    .line 156
    :cond_1
    if-nez p1, :cond_2

    .line 157
    const-string v2, "activeFile == null"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->addWarn(Ljava/lang/String;)V

    .line 158
    return v5

    .line 160
    :cond_2
    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    if-nez v2, :cond_3

    .line 161
    const-string v2, "maxFileSize = null"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->addWarn(Ljava/lang/String;)V

    .line 162
    return v5

    .line 164
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v2}, Lch/qos/logback/core/util/FileSize;->getSize()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-ltz v2, :cond_4

    .line 166
    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v2, v2, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePatternWithoutCompSuffix:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->dateInCurrentPeriod:Ljava/util/Date;

    aput-object v6, v3, v5

    iget v5, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertMultipleArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->elapsedPeriodsFileName:Ljava/lang/String;

    .line 167
    iget v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    add-int/2addr v2, v4

    iput v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->currentPeriodsCounter:I

    .line 168
    return v4

    .line 171
    :cond_4
    return v5
.end method

.method public setMaxFileSize(Lch/qos/logback/core/util/FileSize;)V
    .locals 0
    .param p1, "aMaxFileSize"    # Lch/qos/logback/core/util/FileSize;

    .line 180
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    .line 181
    return-void
.end method

.method public start()V
    .locals 3

    .line 58
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    invoke-super {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->start()V

    .line 60
    iget-object v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->usage:Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;

    sget-object v1, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;->DIRECT:Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;

    if-ne v0, v1, :cond_0

    .line 61
    const-string v0, "SizeAndTimeBasedFNATP is deprecated. Use SizeAndTimeBasedRollingPolicy instead"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->addWarn(Ljava/lang/String;)V

    .line 62
    const-string v0, "For more information see http://logback.qos.ch/manual/appenders.html#SizeAndTimeBasedRollingPolicy"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->addWarn(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-super {p0}, Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicyBase;->isErrorFree()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    if-nez v0, :cond_2

    .line 70
    const-string v0, "maxFileSize property is mandatory."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->addError(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->withErrors()V

    .line 74
    :cond_2
    invoke-direct {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->validateDateAndIntegerTokens()Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->withErrors()V

    .line 76
    return-void

    .line 79
    :cond_3
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->createArchiveRemover()Lch/qos/logback/core/rolling/helper/ArchiveRemover;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->archiveRemover:Lch/qos/logback/core/rolling/helper/ArchiveRemover;

    .line 80
    iget-object v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->archiveRemover:Lch/qos/logback/core/rolling/helper/ArchiveRemover;

    iget-object v1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0, v1}, Lch/qos/logback/core/rolling/helper/ArchiveRemover;->setContext(Lch/qos/logback/core/Context;)V

    .line 85
    iget-object v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->tbrp:Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    iget-object v0, v0, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget-object v1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->dateInCurrentPeriod:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->toRegexForFixedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "regex":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->afterLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "stemRegex":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->computeCurrentPeriodsHighestCounterValue(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->isErrorFree()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    const/4 v2, 0x1

    iput-boolean v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->started:Z

    .line 93
    :cond_4
    return-void
.end method
