.class public Lorg/jpos/util/DailyLogListener;
.super Lorg/jpos/util/RotateLogListener;
.source "DailyLogListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/util/DailyLogListener$DailyRotate;,
        Lorg/jpos/util/DailyLogListener$Compressor;
    }
.end annotation


# static fields
.field private static final COMPRESSION_FORMATS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEF_BUFFER_SIZE:I = 0x20000

.field private static final DEF_COMPRESSED_SUFFIX:[Ljava/lang/String;

.field private static final DEF_COMPRESSION:I = 0x0

.field private static final DEF_DATE_FMT:Ljava/lang/String; = "-yyyy-MM-dd"

.field private static final DEF_MAXAGE:I = 0x0

.field private static final DEF_MAXDEPTH:I = 0x1

.field private static final DEF_MAXSIZE:J = -0x1L

.field private static final DEF_SUFFIX:Ljava/lang/String; = ".log"

.field private static final DEF_WIN:I = 0x15180

.field private static final GZIP:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZIP:I = 0x2


# instance fields
.field private compressedSuffix:Ljava/lang/String;

.field private compressionBufferSize:I

.field private compressionFormat:I

.field private dateFmt:Ljava/text/DateFormat;

.field private deleteRegex:Ljava/lang/String;

.field private lastDate:Ljava/lang/String;

.field private maxAge:J

.field private prefix:Ljava/lang/String;

.field private rotateCount:I

.field private suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const-string v0, ""

    const-string v1, ".gz"

    const-string v2, ".zip"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jpos/util/DailyLogListener;->DEF_COMPRESSED_SUFFIX:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jpos/util/DailyLogListener;->COMPRESSION_FORMATS:Ljava/util/Map;

    .line 60
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "none"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gzip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "zip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lorg/jpos/util/RotateLogListener;-><init>()V

    .line 201
    const-string v0, ".log"

    iput-object v0, p0, Lorg/jpos/util/DailyLogListener;->suffix:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DailyLogListener;->dateFmt:Ljava/text/DateFormat;

    .line 306
    sget-object v0, Lorg/jpos/util/DailyLogListener;->DEF_COMPRESSED_SUFFIX:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jpos/util/DailyLogListener;->compressedSuffix:Ljava/lang/String;

    .line 456
    iput v1, p0, Lorg/jpos/util/DailyLogListener;->compressionFormat:I

    .line 477
    const/high16 v0, 0x20000

    iput v0, p0, Lorg/jpos/util/DailyLogListener;->compressionBufferSize:I

    .line 67
    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getDateFmt()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DailyLogListener;->setLastDate(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private defaultDeleteRegex()Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener;->prefix:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 168
    .local v0, "prefixPath":Ljava/nio/file/Path;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".+\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/DailyLogListener;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/DailyLogListener;->compressedSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$deleteOldLogs$3(Ljava/nio/file/Path;)V
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 188
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected closeCompressedOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    instance-of v0, p1, Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_0

    .line 393
    move-object v0, p1

    check-cast v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 394
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 395
    return-void
.end method

.method protected compress(Ljava/io/File;)V
    .locals 3
    .param p1, "logFile"    # Ljava/io/File;

    .line 500
    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getCompressionFormat()I

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Lorg/jpos/util/DailyLogListener;->getCompressorThread(Ljava/io/File;)Ljava/lang/Thread;

    move-result-object v0

    .line 503
    .local v0, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 504
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "error compressing file"

    invoke-virtual {p0, v2, v1}, Lorg/jpos/util/DailyLogListener;->logDebugEx(Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    .line 509
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public deleteOldLogs()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-wide v0, p0, Lorg/jpos/util/DailyLogListener;->maxAge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 173
    const-string v0, "maxage feature is disabled."

    invoke-virtual {p0, v0}, Lorg/jpos/util/DailyLogListener;->logDebug(Ljava/lang/String;)V

    .line 174
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener;->prefix:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    .line 178
    .local v0, "logBasePath":Ljava/nio/file/Path;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, "currentSystemTime":J
    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v3}, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/util/DailyLogListener;J)V

    new-array v1, v1, [Ljava/nio/file/FileVisitOption;

    invoke-static {v0, v4, v5, v1}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda1;-><init>()V

    .line 186
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected getCompressedOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 383
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getCompressionFormat()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 384
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 385
    .local v1, "ret":Ljava/util/zip/ZipOutputStream;
    new-instance v2, Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Lorg/jpos/util/DailyLogListener;->logName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 386
    return-object v1

    .line 388
    .end local v1    # "ret":Ljava/util/zip/ZipOutputStream;
    :cond_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public getCompressedSuffix()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener;->compressedSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionBufferSize()I
    .locals 1

    .line 483
    iget v0, p0, Lorg/jpos/util/DailyLogListener;->compressionBufferSize:I

    return v0
.end method

.method public getCompressionFormat()I
    .locals 1

    .line 463
    iget v0, p0, Lorg/jpos/util/DailyLogListener;->compressionFormat:I

    return v0
.end method

.method protected getCompressorThread(Ljava/io/File;)Ljava/lang/Thread;
    .locals 3
    .param p1, "f"    # Ljava/io/File;

    .line 372
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jpos/util/DailyLogListener$Compressor;

    invoke-direct {v1, p0, p1}, Lorg/jpos/util/DailyLogListener$Compressor;-><init>(Lorg/jpos/util/DailyLogListener;Ljava/io/File;)V

    const-string v2, "DailyLogListener-Compressor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDateFmt()Ljava/text/DateFormat;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener;->dateFmt:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getDeleteRegex()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener;->deleteRegex:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDate()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener;->lastDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()J
    .locals 2

    .line 334
    iget-wide v0, p0, Lorg/jpos/util/DailyLogListener;->maxAge:J

    return-wide v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRotateCount()I
    .locals 1

    .line 250
    iget v0, p0, Lorg/jpos/util/DailyLogListener;->rotateCount:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$deleteOldLogs$2$org-jpos-util-DailyLogListener(JLjava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 4
    .param p1, "currentSystemTime"    # J
    .param p3, "path"    # Ljava/nio/file/Path;
    .param p4, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 183
    invoke-interface {p3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/util/DailyLogListener;->deleteRegex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {p4}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {p4}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-wide v2, p0, Lorg/jpos/util/DailyLogListener;->maxAge:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0
.end method

.method synthetic lambda$setConfiguration$0$org-jpos-util-DailyLogListener(Lorg/jpos/core/Configuration;)V
    .locals 12
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 102
    const-string v0, "first-rotate-date"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "strDate":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "first-rotate-time"

    const-string v3, "00:00:00"

    invoke-interface {p1, v2, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .local v1, "time":Ljava/util/Date;
    nop

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 111
    .local v2, "cal":Ljava/util/Calendar;
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 113
    .local v3, "calTemp":Ljava/util/Calendar;
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 118
    if-eqz v0, :cond_0

    .line 121
    :try_start_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .local v4, "date":Ljava/util/Date;
    nop

    .line 126
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 127
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    .line 128
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 127
    invoke-virtual {v2, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 122
    .end local v4    # "date":Ljava/util/Date;
    :catch_0
    move-exception v4

    .line 123
    .local v4, "ex":Ljava/text/ParseException;
    new-instance v5, Lorg/jpos/core/ConfigurationException;

    const-string v6, "Bad \'first-rotate-date\' format, expected (yyyy-MM-dd)"

    invoke-direct {v5, v6, v4}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 131
    .end local v4    # "ex":Ljava/text/ParseException;
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lorg/jpos/util/DailyLogListener;->sleepTime:J

    div-long/2addr v4, v6

    .line 137
    .local v4, "n":J
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/jpos/util/DailyLogListener;->sleepTime:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v4

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 139
    .end local v4    # "n":J
    :cond_1
    invoke-static {}, Lorg/jpos/util/DefaultTimer;->getTimer()Ljava/util/Timer;

    move-result-object v4

    new-instance v5, Lorg/jpos/util/DailyLogListener$DailyRotate;

    invoke-direct {v5, p0}, Lorg/jpos/util/DailyLogListener$DailyRotate;-><init>(Lorg/jpos/util/DailyLogListener;)V

    iput-object v5, p0, Lorg/jpos/util/DailyLogListener;->rotate:Lorg/jpos/util/RotateLogListener$Rotate;

    .line 140
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iget-wide v7, p0, Lorg/jpos/util/DailyLogListener;->sleepTime:J

    .line 139
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 141
    return-void

    .line 105
    .end local v1    # "time":Ljava/util/Date;
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v3    # "calTemp":Ljava/util/Calendar;
    :catch_1
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    const-string v3, "Bad \'first-rotate-time\' format expected HH(0-23):mm:ss "

    invoke-direct {v2, v3, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method synthetic lambda$setConfiguration$1$org-jpos-util-DailyLogListener()V
    .locals 8

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getCompressedSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "compressedSuffix":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/util/DailyLogListener;->fileNamePattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jpos/util/DailyLogListener;->fileNamePattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getPrefix()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/util/DailyLogListener;->fileNamePattern:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/jpos/util/DailyLogListener;->fileNameFromPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getLastDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "newName":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v1    # "newName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getLastDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .restart local v1    # "newName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 155
    .local v2, "i":I
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "dest":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/jpos/util/DailyLogListener;->logName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v4, "source":Ljava/io/File;
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 159
    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener;->getDateFmt()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jpos/util/DailyLogListener;->setLastDate(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, v3}, Lorg/jpos/util/DailyLogListener;->compress(Ljava/io/File;)V

    .line 161
    return-void
.end method

.method protected logDebugEx(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 398
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 399
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 400
    .local v1, "ps":Ljava/io/PrintStream;
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 402
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 403
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jpos/util/DailyLogListener;->logDebug(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public setCompressedSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "compressedSuffix"    # Ljava/lang/String;

    .line 321
    iput-object p1, p0, Lorg/jpos/util/DailyLogListener;->compressedSuffix:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setCompressionBufferSize(I)V
    .locals 1
    .param p1, "compressionBufferSize"    # I

    .line 491
    if-ltz p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    :goto_0
    iput v0, p0, Lorg/jpos/util/DailyLogListener;->compressionBufferSize:I

    .line 493
    return-void
.end method

.method public setCompressionFormat(I)V
    .locals 0
    .param p1, "compressionFormat"    # I

    .line 471
    iput p1, p0, Lorg/jpos/util/DailyLogListener;->compressionFormat:I

    .line 472
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 9
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 71
    const-string v0, "maxsize"

    const-wide/16 v1, -0x1

    invoke-interface {p1, v0, v1, v2}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/util/DailyLogListener;->maxSize:J

    .line 72
    const-string v0, "sleeptime"

    const-wide/32 v1, 0x15180

    invoke-interface {p1, v0, v1, v2}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jpos/util/DailyLogListener;->sleepTime:J

    .line 74
    const-string v0, "suffix"

    const-string v1, ".log"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "suffix":Ljava/lang/String;
    const-string v1, "prefix"

    invoke-interface {p1, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jpos/util/DailyLogListener;->setSuffix(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v1}, Lorg/jpos/util/DailyLogListener;->setPrefix(Ljava/lang/String;)V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/util/DailyLogListener;->logName:Ljava/lang/String;

    .line 79
    const-string v4, "maxage"

    const-wide/16 v5, 0x0

    invoke-interface {p1, v4, v5, v6}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/jpos/util/DailyLogListener;->maxAge:J

    .line 80
    cmp-long v4, v7, v5

    if-lez v4, :cond_0

    .line 81
    mul-long/2addr v7, v2

    iput-wide v7, p0, Lorg/jpos/util/DailyLogListener;->maxAge:J

    .line 84
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "date-format"

    const-string v4, "-yyyy-MM-dd"

    invoke-interface {p1, v3, v4}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "fmt":Ljava/text/DateFormat;
    invoke-virtual {p0, v2}, Lorg/jpos/util/DailyLogListener;->setDateFmt(Ljava/text/DateFormat;)V

    .line 86
    invoke-direct {p0}, Lorg/jpos/util/DailyLogListener;->defaultDeleteRegex()Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete-regex"

    invoke-interface {p1, v4, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/util/DailyLogListener;->deleteRegex:Ljava/lang/String;

    .line 88
    sget-object v3, Lorg/jpos/util/DailyLogListener;->COMPRESSION_FORMATS:Ljava/util/Map;

    .line 90
    const-string v4, "compression-format"

    const-string v5, "none"

    invoke-interface {p1, v4, v5}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 91
    .local v3, "formatObj":Ljava/lang/Integer;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 92
    .local v4, "compressionFormat":I
    :goto_0
    invoke-virtual {p0, v4}, Lorg/jpos/util/DailyLogListener;->setCompressionFormat(I)V

    .line 93
    sget-object v5, Lorg/jpos/util/DailyLogListener;->DEF_COMPRESSED_SUFFIX:[Ljava/lang/String;

    aget-object v5, v5, v4

    const-string v6, "compressed-suffix"

    invoke-interface {p1, v6, v5}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jpos/util/DailyLogListener;->setCompressedSuffix(Ljava/lang/String;)V

    .line 95
    const/high16 v5, 0x20000

    const-string v6, "compression-buffer-size"

    invoke-interface {p1, v6, v5}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/jpos/util/DailyLogListener;->setCompressionBufferSize(I)V

    .line 98
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jpos/util/DailyLogListener;->setLastDate(Ljava/lang/String;)V

    .line 100
    new-instance v5, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1}, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda2;-><init>(Lorg/jpos/util/DailyLogListener;Lorg/jpos/core/Configuration;)V

    iput-object v5, p0, Lorg/jpos/util/DailyLogListener;->timer:Lorg/jpos/util/RotateLogListener$ScheduleTimer;

    .line 144
    const/4 v5, 0x0

    const-string v6, "file-name-pattern"

    invoke-interface {p1, v6, v5}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/util/DailyLogListener;->fileNamePattern:Ljava/lang/String;

    .line 146
    new-instance v5, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda3;-><init>(Lorg/jpos/util/DailyLogListener;)V

    iput-object v5, p0, Lorg/jpos/util/DailyLogListener;->rotationAlgo:Lorg/jpos/util/RotateLogListener$RotationAlgo;

    .line 163
    invoke-super {p0, p1}, Lorg/jpos/util/RotateLogListener;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 164
    return-void
.end method

.method public setDateFmt(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFmt"    # Ljava/text/DateFormat;

    .line 279
    iput-object p1, p0, Lorg/jpos/util/DailyLogListener;->dateFmt:Ljava/text/DateFormat;

    .line 280
    return-void
.end method

.method public setDeleteRegex(Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteRegex"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lorg/jpos/util/DailyLogListener;->deleteRegex:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setLastDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastDate"    # Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lorg/jpos/util/DailyLogListener;->lastDate:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setMaxAge(J)V
    .locals 0
    .param p1, "maxAge"    # J

    .line 342
    iput-wide p1, p0, Lorg/jpos/util/DailyLogListener;->maxAge:J

    .line 343
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lorg/jpos/util/DailyLogListener;->prefix:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setRotateCount(I)V
    .locals 0
    .param p1, "rotateCount"    # I

    .line 258
    iput p1, p0, Lorg/jpos/util/DailyLogListener;->rotateCount:I

    .line 259
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lorg/jpos/util/DailyLogListener;->suffix:Ljava/lang/String;

    .line 217
    return-void
.end method
