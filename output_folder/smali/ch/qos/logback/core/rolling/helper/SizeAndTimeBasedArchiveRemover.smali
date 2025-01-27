.class public Lch/qos/logback/core/rolling/helper/SizeAndTimeBasedArchiveRemover;
.super Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;
.source "SizeAndTimeBasedArchiveRemover.java"


# direct methods
.method public constructor <init>(Lch/qos/logback/core/rolling/helper/FileNamePattern;Lch/qos/logback/core/rolling/helper/RollingCalendar;)V
    .locals 0
    .param p1, "fileNamePattern"    # Lch/qos/logback/core/rolling/helper/FileNamePattern;
    .param p2, "rc"    # Lch/qos/logback/core/rolling/helper/RollingCalendar;

    .line 22
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;-><init>(Lch/qos/logback/core/rolling/helper/FileNamePattern;Lch/qos/logback/core/rolling/helper/RollingCalendar;)V

    .line 23
    return-void
.end method

.method private createStemRegex(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "dateOfPeriodToClean"    # Ljava/util/Date;

    .line 34
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/SizeAndTimeBasedArchiveRemover;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->toRegexForFixedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "regex":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->afterLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getFilesInPeriod(Ljava/util/Date;)[Ljava/io/File;
    .locals 5
    .param p1, "dateOfPeriodToClean"    # Ljava/util/Date;

    .line 26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/SizeAndTimeBasedArchiveRemover;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertMultipleArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "archive0":Ljava/io/File;
    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/SizeAndTimeBasedArchiveRemover;->getParentDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 28
    .local v1, "parentDir":Ljava/io/File;
    invoke-direct {p0, p1}, Lch/qos/logback/core/rolling/helper/SizeAndTimeBasedArchiveRemover;->createStemRegex(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "stemRegex":Ljava/lang/String;
    invoke-static {v1, v2}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->filesInFolderMatchingStemRegex(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 30
    .local v3, "matchingFileArray":[Ljava/io/File;
    return-object v3
.end method
