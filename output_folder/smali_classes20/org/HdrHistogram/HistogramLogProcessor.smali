.class public Lorg/HdrHistogram/HistogramLogProcessor;
.super Ljava/lang/Thread;
.source "HistogramLogProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;
    }
.end annotation


# static fields
.field static final versionString:Ljava/lang/String; = "Histogram Log Processor version 2.1.12"


# instance fields
.field private final config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

.field private lineNumber:I

.field private logReader:Lorg/HdrHistogram/HistogramLogReader;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 512
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lorg/HdrHistogram/HistogramLogProcessor;->lineNumber:I

    .line 513
    const-string v0, "HistogramLogProcessor"

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/HistogramLogProcessor;->setName(Ljava/lang/String;)V

    .line 514
    new-instance v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    invoke-direct {v0, p1}, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    .line 515
    iget-object v1, v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->inputFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 516
    new-instance v1, Lorg/HdrHistogram/HistogramLogReader;

    iget-object v0, v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->inputFileName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/HdrHistogram/HistogramLogReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    goto :goto_0

    .line 518
    :cond_0
    new-instance v0, Lorg/HdrHistogram/HistogramLogReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/HdrHistogram/HistogramLogReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    .line 520
    :goto_0
    return-void
.end method

.method private getIntervalHistogram()Lorg/HdrHistogram/EncodableHistogram;
    .locals 7

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "histogram":Lorg/HdrHistogram/EncodableHistogram;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    iget-object v3, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v3, v3, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeStartTimeSec:D

    iget-object v5, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v5, v5, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeEndTimeSec:D

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/HdrHistogram/HistogramLogReader;->nextIntervalHistogram(DD)Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v2

    move-object v0, v2

    .line 205
    iget-object v2, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v2, v2, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->expectedIntervalForCoordinatedOmissionCorrection:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 208
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/HistogramLogProcessor;->copyCorrectedForCoordinatedOmission(Lorg/HdrHistogram/EncodableHistogram;)Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 218
    :cond_0
    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "ex":Ljava/lang/RuntimeException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log file parsing error at line number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/HdrHistogram/HistogramLogProcessor;->lineNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": line appears to be malformed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v3, v3, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->verbose:Z

    if-nez v3, :cond_1

    .line 216
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 219
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    iget v2, p0, Lorg/HdrHistogram/HistogramLogProcessor;->lineNumber:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/HdrHistogram/HistogramLogProcessor;->lineNumber:I

    .line 220
    return-object v0

    .line 214
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    throw v2
.end method

.method private getIntervalHistogram(Ljava/lang/String;)Lorg/HdrHistogram/EncodableHistogram;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 225
    if-nez p1, :cond_1

    .line 227
    :cond_0
    invoke-direct {p0}, Lorg/HdrHistogram/HistogramLogProcessor;->getIntervalHistogram()Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v0

    .line 228
    .local v0, "histogram":Lorg/HdrHistogram/EncodableHistogram;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/HdrHistogram/EncodableHistogram;->getTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 231
    .end local v0    # "histogram":Lorg/HdrHistogram/EncodableHistogram;
    :cond_1
    invoke-direct {p0}, Lorg/HdrHistogram/HistogramLogProcessor;->getIntervalHistogram()Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v0

    .line 232
    .restart local v0    # "histogram":Lorg/HdrHistogram/EncodableHistogram;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/HdrHistogram/EncodableHistogram;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 530
    :try_start_0
    new-instance v0, Lorg/HdrHistogram/HistogramLogProcessor;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/HistogramLogProcessor;-><init>([Ljava/lang/String;)V

    .line 531
    .local v0, "processor":Lorg/HdrHistogram/HistogramLogProcessor;
    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramLogProcessor;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    goto :goto_0

    .line 532
    .end local v0    # "processor":Lorg/HdrHistogram/HistogramLogProcessor;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "ex":Ljava/io/FileNotFoundException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "failed to open input file."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_0
    return-void
.end method

.method private outputStartTime(Ljava/io/PrintStream;Ljava/lang/Double;)V
    .locals 7
    .param p1, "log"    # Ljava/io/PrintStream;
    .param p2, "startTime"    # Ljava/lang/Double;

    .line 179
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance v2, Ljava/util/Date;

    .line 180
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 179
    const-string v2, "#[StartTime: %.3f (seconds since epoch), %s]\n"

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 181
    return-void
.end method

.method private outputTimeRange(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "log"    # Ljava/io/PrintStream;
    .param p2, "title"    # Ljava/lang/String;

    .line 169
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    iget-object v3, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v3, v3, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeStartTimeSec:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "#[%s between %.3f and"

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 170
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v0, v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeEndTimeSec:D

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v5

    if-gez v0, :cond_0

    .line 171
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v3, v1, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeEndTimeSec:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, " %.3f"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 173
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "<Infinite>"

    aput-object v1, v0, v2

    const-string v1, " %s"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 175
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, " seconds (relative to StartTime)]\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 176
    return-void
.end method


# virtual methods
.method copyCorrectedForCoordinatedOmission(Lorg/HdrHistogram/EncodableHistogram;)Lorg/HdrHistogram/EncodableHistogram;
    .locals 5
    .param p1, "inputHistogram"    # Lorg/HdrHistogram/EncodableHistogram;

    .line 184
    move-object v0, p1

    .line 185
    .local v0, "histogram":Lorg/HdrHistogram/EncodableHistogram;
    instance-of v1, v0, Lorg/HdrHistogram/DoubleHistogram;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v1, v1, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->expectedIntervalForCoordinatedOmissionCorrection:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 187
    move-object v1, v0

    check-cast v1, Lorg/HdrHistogram/DoubleHistogram;

    iget-object v2, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v2, v2, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->expectedIntervalForCoordinatedOmissionCorrection:D

    invoke-virtual {v1, v2, v3}, Lorg/HdrHistogram/DoubleHistogram;->copyCorrectedForCoordinatedOmission(D)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    instance-of v1, v0, Lorg/HdrHistogram/Histogram;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v1, v1, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->expectedIntervalForCoordinatedOmissionCorrection:D

    double-to-long v1, v1

    .line 192
    .local v1, "expectedInterval":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 193
    move-object v3, v0

    check-cast v3, Lorg/HdrHistogram/Histogram;

    invoke-virtual {v3, v1, v2}, Lorg/HdrHistogram/Histogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/Histogram;

    move-result-object v0

    .line 196
    .end local v1    # "expectedInterval":J
    :cond_1
    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 42

    .line 242
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 243
    .local v2, "timeIntervalLog":Ljava/io/PrintStream;
    const/4 v3, 0x0

    .line 244
    .local v3, "movingWindowLog":Ljava/io/PrintStream;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 245
    .local v4, "histogramPercentileLog":Ljava/io/PrintStream;
    const-wide/16 v5, 0x0

    .line 246
    .local v5, "firstStartTime":D
    const/4 v7, 0x0

    .line 247
    .local v7, "timeIntervalLogLegendWritten":Z
    const/4 v8, 0x0

    .line 249
    .local v8, "movingWindowLogLegendWritten":Z
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v9, v0

    .line 251
    .local v9, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v0, v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->listTags:Z

    if-eqz v0, :cond_4

    .line 252
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 254
    .local v0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 255
    .local v10, "nullTagFound":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/HdrHistogram/HistogramLogProcessor;->getIntervalHistogram()Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v11

    move-object v12, v11

    .local v12, "histogram":Lorg/HdrHistogram/EncodableHistogram;
    if-eqz v11, :cond_1

    .line 256
    invoke-virtual {v12}, Lorg/HdrHistogram/EncodableHistogram;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, "tag":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 258
    invoke-virtual {v12}, Lorg/HdrHistogram/EncodableHistogram;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_0
    const/4 v10, 0x1

    .line 262
    .end local v11    # "tag":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 263
    :cond_1
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Tags found in input file:"

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    if-eqz v10, :cond_2

    .line 265
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "[NO TAG (default)]"

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 268
    .local v13, "tag":Ljava/lang/String;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    .end local v13    # "tag":Ljava/lang/String;
    goto :goto_2

    .line 271
    :cond_3
    return-void

    .line 276
    .end local v0    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "nullTagFound":Z
    .end local v12    # "histogram":Lorg/HdrHistogram/EncodableHistogram;
    :cond_4
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v0, v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->logFormatCsv:Z

    if-eqz v0, :cond_5

    .line 277
    const-string v0, "%.3f,%d,%.3f,%.3f,%.3f,%d,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f\n"

    .line 278
    .local v0, "logFormat":Ljava/lang/String;
    const-string v10, "%.3f,%d,%.3f,%.3f\n"

    move-object v11, v10

    move-object v10, v0

    .local v10, "movingWindowLogFormat":Ljava/lang/String;
    goto :goto_3

    .line 280
    .end local v0    # "logFormat":Ljava/lang/String;
    .end local v10    # "movingWindowLogFormat":Ljava/lang/String;
    :cond_5
    const-string v0, "%4.3f: I:%d ( %7.3f %7.3f %7.3f ) T:%d ( %7.3f %7.3f %7.3f %7.3f %7.3f %7.3f )\n"

    .line 281
    .restart local v0    # "logFormat":Ljava/lang/String;
    const-string v10, "%4.3f: I:%d P:%7.3f M:%7.3f\n"

    move-object v11, v10

    move-object v10, v0

    .line 285
    .end local v0    # "logFormat":Ljava/lang/String;
    .local v10, "logFormat":Ljava/lang/String;
    .local v11, "movingWindowLogFormat":Ljava/lang/String;
    :goto_3
    :try_start_0
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v0, v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    const/4 v12, 0x0

    if-eqz v0, :cond_6

    .line 287
    :try_start_1
    new-instance v0, Ljava/io/PrintStream;

    new-instance v13, Ljava/io/FileOutputStream;

    iget-object v14, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v14, v14, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputFileName:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v13, v12}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    move-object v2, v0

    .line 288
    const-string v0, "Interval percentile log"

    invoke-direct {v1, v2, v0}, Lorg/HdrHistogram/HistogramLogProcessor;->outputTimeRange(Ljava/io/PrintStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    goto :goto_4

    .line 476
    :catchall_0
    move-exception v0

    move-object/from16 v17, v9

    move-object v14, v10

    move-object v13, v11

    goto/16 :goto_16

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to open output file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v15, v15, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v13, v13, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputFileName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ".hgrm"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v0

    .line 294
    .local v13, "hgrmOutputFileName":Ljava/lang/String;
    :try_start_3
    new-instance v0, Ljava/io/PrintStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v14, v12}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    move-object v4, v0

    .line 295
    const-string v0, "Overall percentile distribution"

    invoke-direct {v1, v4, v0}, Lorg/HdrHistogram/HistogramLogProcessor;->outputTimeRange(Ljava/io/PrintStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    goto :goto_5

    .line 296
    :catch_1
    move-exception v0

    .line 297
    .restart local v0    # "ex":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to open percentiles histogram output file "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_5
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v0, v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindow:Z

    if-eqz v0, :cond_6

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v12, v12, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputFileName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ".mwp"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v12, v0

    .line 302
    .local v12, "movingWindowOutputFileName":Ljava/lang/String;
    :try_start_5
    new-instance v0, Ljava/io/PrintStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-direct {v0, v14, v15}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    move-object v3, v0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Moving window log for "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v14, v14, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowPercentileToReport:D

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " percentile"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/HdrHistogram/HistogramLogProcessor;->outputTimeRange(Ljava/io/PrintStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 307
    goto :goto_6

    .line 305
    :catch_2
    move-exception v0

    .line 306
    .restart local v0    # "ex":Ljava/io/FileNotFoundException;
    :try_start_6
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .local v16, "ex":Ljava/io/FileNotFoundException;
    const-string v0, "Failed to open moving window output file "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 311
    .end local v12    # "movingWindowOutputFileName":Ljava/lang/String;
    .end local v13    # "hgrmOutputFileName":Ljava/lang/String;
    .end local v16    # "ex":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_6
    :try_start_7
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v0, v0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->tag:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/HdrHistogram/HistogramLogProcessor;->getIntervalHistogram(Ljava/lang/String;)Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v0

    .line 312
    .local v0, "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    instance-of v12, v0, Lorg/HdrHistogram/DoubleHistogram;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_14

    .line 314
    .local v12, "logUsesDoubleHistograms":Z
    const/4 v13, 0x3

    if-eqz v12, :cond_7

    :try_start_8
    new-instance v14, Lorg/HdrHistogram/Histogram;

    invoke-direct {v14, v13}, Lorg/HdrHistogram/Histogram;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :cond_7
    :try_start_9
    move-object v14, v0

    check-cast v14, Lorg/HdrHistogram/Histogram;

    .line 316
    invoke-virtual {v14}, Lorg/HdrHistogram/Histogram;->copy()Lorg/HdrHistogram/Histogram;

    move-result-object v14

    :goto_7
    nop

    .line 317
    .local v14, "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    invoke-virtual {v14}, Lorg/HdrHistogram/Histogram;->reset()V

    .line 318
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/HdrHistogram/Histogram;->setAutoResize(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_14

    .line 320
    if-eqz v12, :cond_8

    :try_start_a
    move-object/from16 v16, v0

    check-cast v16, Lorg/HdrHistogram/DoubleHistogram;

    .line 321
    invoke-virtual/range {v16 .. v16}, Lorg/HdrHistogram/DoubleHistogram;->copy()Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v15, v16

    goto :goto_8

    :cond_8
    :try_start_b
    new-instance v15, Lorg/HdrHistogram/DoubleHistogram;

    invoke-direct {v15, v13}, Lorg/HdrHistogram/DoubleHistogram;-><init>(I)V

    .line 323
    .local v15, "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :goto_8
    invoke-virtual {v15}, Lorg/HdrHistogram/DoubleHistogram;->reset()V

    .line 324
    const/4 v13, 0x1

    invoke-virtual {v15, v13}, Lorg/HdrHistogram/DoubleHistogram;->setAutoResize(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_14

    .line 327
    if-eqz v12, :cond_9

    :try_start_c
    new-instance v13, Lorg/HdrHistogram/DoubleHistogram;

    move-object/from16 v17, v0

    const/4 v0, 0x3

    .end local v0    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .local v17, "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    invoke-direct {v13, v0}, Lorg/HdrHistogram/DoubleHistogram;-><init>(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_9

    .end local v17    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v0    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    :cond_9
    move-object/from16 v17, v0

    .end local v0    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v17    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    :try_start_d
    new-instance v13, Lorg/HdrHistogram/Histogram;

    const/4 v0, 0x3

    invoke-direct {v13, v0}, Lorg/HdrHistogram/Histogram;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_14

    :goto_9
    move-object v0, v13

    move v13, v8

    move v8, v7

    move-wide v6, v5

    move-object/from16 v5, v17

    .line 332
    .end local v7    # "timeIntervalLogLegendWritten":Z
    .end local v17    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .local v0, "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .local v5, "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .local v6, "firstStartTime":D
    .local v8, "timeIntervalLogLegendWritten":Z
    .local v13, "movingWindowLogLegendWritten":Z
    :goto_a
    if-eqz v5, :cond_1e

    .line 335
    move-object/from16 v17, v11

    .end local v11    # "movingWindowLogFormat":Ljava/lang/String;
    .local v17, "movingWindowLogFormat":Ljava/lang/String;
    :try_start_e
    instance-of v11, v5, Lorg/HdrHistogram/DoubleHistogram;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    if-eqz v11, :cond_b

    .line 336
    if-eqz v12, :cond_a

    .line 339
    :try_start_f
    move-object v11, v5

    check-cast v11, Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v15, v11}, Lorg/HdrHistogram/DoubleHistogram;->add(Lorg/HdrHistogram/DoubleHistogram;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move/from16 v18, v13

    goto :goto_b

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v12    # "logUsesDoubleHistograms":Z
    .end local v14    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_1
    move-exception v0

    move-wide v5, v6

    move v7, v8

    move-object v14, v10

    move v8, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v9

    goto/16 :goto_16

    .line 337
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v12    # "logUsesDoubleHistograms":Z
    .restart local v14    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :cond_a
    :try_start_10
    new-instance v11, Ljava/lang/IllegalStateException;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move/from16 v18, v13

    .end local v13    # "movingWindowLogLegendWritten":Z
    .local v18, "movingWindowLogLegendWritten":Z
    :try_start_11
    const-string v13, "Encountered a DoubleHistogram line in a log of Histograms."

    invoke-direct {v11, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "timeIntervalLog":Ljava/io/PrintStream;
    .end local v3    # "movingWindowLog":Ljava/io/PrintStream;
    .end local v4    # "histogramPercentileLog":Ljava/io/PrintStream;
    .end local v6    # "firstStartTime":D
    .end local v8    # "timeIntervalLogLegendWritten":Z
    .end local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v10    # "logFormat":Ljava/lang/String;
    .end local v17    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v18    # "movingWindowLogLegendWritten":Z
    throw v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v12    # "logUsesDoubleHistograms":Z
    .end local v14    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local v2    # "timeIntervalLog":Ljava/io/PrintStream;
    .restart local v3    # "movingWindowLog":Ljava/io/PrintStream;
    .restart local v4    # "histogramPercentileLog":Ljava/io/PrintStream;
    .restart local v6    # "firstStartTime":D
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v10    # "logFormat":Ljava/lang/String;
    .restart local v17    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v18    # "movingWindowLogLegendWritten":Z
    :catchall_2
    move-exception v0

    move-wide v5, v6

    move v7, v8

    move-object v14, v10

    move-object/from16 v13, v17

    move/from16 v8, v18

    move-object/from16 v17, v9

    goto/16 :goto_16

    .end local v18    # "movingWindowLogLegendWritten":Z
    .restart local v13    # "movingWindowLogLegendWritten":Z
    :catchall_3
    move-exception v0

    move/from16 v18, v13

    move-wide v5, v6

    move v7, v8

    move-object v14, v10

    move-object/from16 v13, v17

    move/from16 v8, v18

    move-object/from16 v17, v9

    .end local v13    # "movingWindowLogLegendWritten":Z
    .restart local v18    # "movingWindowLogLegendWritten":Z
    goto/16 :goto_16

    .line 341
    .end local v18    # "movingWindowLogLegendWritten":Z
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v12    # "logUsesDoubleHistograms":Z
    .restart local v13    # "movingWindowLogLegendWritten":Z
    .restart local v14    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :cond_b
    move/from16 v18, v13

    .end local v13    # "movingWindowLogLegendWritten":Z
    .restart local v18    # "movingWindowLogLegendWritten":Z
    if-nez v12, :cond_1d

    .line 344
    :try_start_12
    move-object v11, v5

    check-cast v11, Lorg/HdrHistogram/Histogram;

    invoke-virtual {v14, v11}, Lorg/HdrHistogram/Histogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 347
    :goto_b
    invoke-virtual {v5}, Lorg/HdrHistogram/EncodableHistogram;->getEndTimeStamp()J

    move-result-wide v19

    iget-object v11, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    move-object/from16 v21, v14

    .end local v14    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .local v21, "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    iget-wide v13, v11, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowLengthInMsec:J

    sub-long v19, v19, v13

    .line 349
    .local v19, "windowCutOffTimeStamp":J
    iget-object v11, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v11, v11, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindow:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    if-eqz v11, :cond_13

    .line 351
    :try_start_13
    instance-of v11, v0, Lorg/HdrHistogram/DoubleHistogram;

    if-eqz v11, :cond_c

    instance-of v11, v5, Lorg/HdrHistogram/DoubleHistogram;

    if-eqz v11, :cond_c

    .line 353
    move-object v11, v0

    check-cast v11, Lorg/HdrHistogram/DoubleHistogram;

    move-object v13, v5

    check-cast v13, Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v11, v13}, Lorg/HdrHistogram/DoubleHistogram;->add(Lorg/HdrHistogram/DoubleHistogram;)V

    goto :goto_c

    .line 354
    :cond_c
    instance-of v11, v0, Lorg/HdrHistogram/Histogram;

    if-eqz v11, :cond_d

    instance-of v11, v5, Lorg/HdrHistogram/Histogram;

    if-eqz v11, :cond_d

    .line 356
    move-object v11, v0

    check-cast v11, Lorg/HdrHistogram/Histogram;

    move-object v13, v5

    check-cast v13, Lorg/HdrHistogram/Histogram;

    invoke-virtual {v11, v13}, Lorg/HdrHistogram/Histogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 360
    :cond_d
    :goto_c
    invoke-interface {v9}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/HdrHistogram/EncodableHistogram;

    move-object v13, v11

    .local v13, "head":Lorg/HdrHistogram/EncodableHistogram;
    if-eqz v11, :cond_12

    .line 361
    invoke-virtual {v13}, Lorg/HdrHistogram/EncodableHistogram;->getEndTimeStamp()J

    move-result-wide v22

    cmp-long v11, v22, v19

    if-gtz v11, :cond_11

    .line 362
    invoke-interface {v9}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/HdrHistogram/EncodableHistogram;

    .line 363
    .local v11, "prevHist":Lorg/HdrHistogram/EncodableHistogram;
    instance-of v14, v0, Lorg/HdrHistogram/DoubleHistogram;

    if-eqz v14, :cond_f

    .line 364
    if-eqz v11, :cond_e

    .line 365
    move-object v14, v0

    check-cast v14, Lorg/HdrHistogram/DoubleHistogram;

    move-object/from16 v22, v13

    .end local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .local v22, "head":Lorg/HdrHistogram/EncodableHistogram;
    move-object v13, v11

    check-cast v13, Lorg/HdrHistogram/DoubleHistogram;

    invoke-virtual {v14, v13}, Lorg/HdrHistogram/DoubleHistogram;->subtract(Lorg/HdrHistogram/DoubleHistogram;)V

    goto :goto_d

    .line 364
    .end local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    :cond_e
    move-object/from16 v22, v13

    .end local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    goto :goto_d

    .line 367
    .end local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    :cond_f
    move-object/from16 v22, v13

    .end local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    instance-of v13, v0, Lorg/HdrHistogram/Histogram;

    if-eqz v13, :cond_10

    .line 368
    if-eqz v11, :cond_10

    .line 369
    move-object v13, v0

    check-cast v13, Lorg/HdrHistogram/Histogram;

    move-object v14, v11

    check-cast v14, Lorg/HdrHistogram/Histogram;

    invoke-virtual {v13, v14}, Lorg/HdrHistogram/Histogram;->subtract(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 372
    .end local v11    # "prevHist":Lorg/HdrHistogram/EncodableHistogram;
    :cond_10
    :goto_d
    goto :goto_c

    .line 361
    .end local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    :cond_11
    move-object/from16 v22, v13

    .end local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    goto :goto_e

    .line 360
    .end local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    :cond_12
    move-object/from16 v22, v13

    .line 374
    .end local v13    # "head":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    :goto_e
    invoke-interface {v9, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v22    # "head":Lorg/HdrHistogram/EncodableHistogram;
    :cond_13
    const-wide/16 v13, 0x0

    cmpl-double v11, v6, v13

    if-nez v11, :cond_14

    iget-object v11, v1, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramLogReader;->getStartTimeSec()D

    move-result-wide v22

    cmpl-double v11, v22, v13

    if-eqz v11, :cond_14

    .line 378
    iget-object v11, v1, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramLogReader;->getStartTimeSec()D

    move-result-wide v13

    move-wide v6, v13

    .line 380
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-direct {v1, v4, v11}, Lorg/HdrHistogram/HistogramLogProcessor;->outputStartTime(Ljava/io/PrintStream;Ljava/lang/Double;)V

    .line 382
    if-eqz v2, :cond_14

    .line 383
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-direct {v1, v2, v11}, Lorg/HdrHistogram/HistogramLogProcessor;->outputStartTime(Ljava/io/PrintStream;Ljava/lang/Double;)V

    .line 387
    :cond_14
    if-eqz v2, :cond_18

    .line 388
    if-nez v8, :cond_16

    .line 389
    const/4 v8, 0x1

    .line 390
    iget-object v11, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v11, v11, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->logFormatCsv:Z

    if-eqz v11, :cond_15

    .line 391
    const-string v11, "\"Timestamp\",\"Int_Count\",\"Int_50%\",\"Int_90%\",\"Int_Max\",\"Total_Count\",\"Total_50%\",\"Total_90%\",\"Total_99%\",\"Total_99.9%\",\"Total_99.99%\",\"Total_Max\""

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 394
    :cond_15
    const-string v11, "Time: IntervalPercentiles:count ( 50% 90% Max ) TotalPercentiles:count ( 50% 90% 99% 99.9% 99.99% Max )"

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 398
    :cond_16
    :goto_f
    const/16 v26, 0xa

    const/16 v29, 0x9

    const/16 v32, 0x8

    const/16 v33, 0x7

    const/16 v34, 0x6

    const/16 v35, 0x5

    const/16 v11, 0xc

    if-eqz v12, :cond_17

    .line 399
    :try_start_14
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 400
    move-wide/from16 v38, v6

    .end local v6    # "firstStartTime":D
    .local v38, "firstStartTime":D
    :try_start_15
    invoke-virtual {v5}, Lorg/HdrHistogram/EncodableHistogram;->getEndTimeStamp()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v24

    iget-object v14, v1, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    invoke-virtual {v14}, Lorg/HdrHistogram/HistogramLogReader;->getStartTimeSec()D

    move-result-wide v40

    sub-double v6, v6, v40

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v11, v7

    move-object v6, v5

    check-cast v6, Lorg/HdrHistogram/DoubleHistogram;

    .line 402
    invoke-virtual {v6}, Lorg/HdrHistogram/DoubleHistogram;->getTotalCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v11, v7

    move-object v6, v5

    check-cast v6, Lorg/HdrHistogram/DoubleHistogram;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 403
    move v14, v8

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .end local v8    # "timeIntervalLogLegendWritten":Z
    .local v14, "timeIntervalLogLegendWritten":Z
    :try_start_16
    invoke-virtual {v6, v7, v8}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v40

    iget-object v6, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v6, v6, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double v40, v40, v6

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v11, v7

    move-object v6, v5

    check-cast v6, Lorg/HdrHistogram/DoubleHistogram;

    .line 404
    const-wide v7, 0x4056800000000000L    # 90.0

    invoke-virtual {v6, v7, v8}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v40

    iget-object v6, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v6, v6, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double v40, v40, v6

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v11, v7

    move-object v6, v5

    check-cast v6, Lorg/HdrHistogram/DoubleHistogram;

    .line 405
    invoke-virtual {v6}, Lorg/HdrHistogram/DoubleHistogram;->getMaxValue()D

    move-result-wide v6

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v40

    div-double v6, v6, v40

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v11, v7

    .line 407
    invoke-virtual {v15}, Lorg/HdrHistogram/DoubleHistogram;->getTotalCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v35

    .line 408
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-virtual {v15, v6, v7}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v6

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v36

    div-double v6, v6, v36

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v11, v34

    .line 409
    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-virtual {v15, v6, v7}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v6

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    div-double v6, v6, v34

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v11, v33

    .line 410
    const-wide v6, 0x4058c00000000000L    # 99.0

    invoke-virtual {v15, v6, v7}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v6

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v33

    div-double v6, v6, v33

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v11, v32

    .line 411
    const-wide v6, 0x4058f9999999999aL    # 99.9

    invoke-virtual {v15, v6, v7}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v6

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    div-double v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v11, v29

    .line 412
    const-wide v6, 0x4058ff5c28f5c28fL    # 99.99

    invoke-virtual {v15, v6, v7}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v6

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    div-double v6, v6, v27

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v11, v26

    .line 413
    invoke-virtual {v15}, Lorg/HdrHistogram/DoubleHistogram;->getMaxValue()D

    move-result-wide v6

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    div-double v6, v6, v26

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v11, v7

    .line 399
    invoke-virtual {v2, v13, v10, v11}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object v11, v9

    move/from16 v40, v14

    move-object/from16 v9, v21

    goto/16 :goto_10

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v12    # "logUsesDoubleHistograms":Z
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v19    # "windowCutOffTimeStamp":J
    .end local v21    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    :catchall_4
    move-exception v0

    move v7, v14

    move-object/from16 v13, v17

    move/from16 v8, v18

    move-wide/from16 v5, v38

    move-object/from16 v17, v9

    move-object v14, v10

    goto/16 :goto_16

    .end local v14    # "timeIntervalLogLegendWritten":Z
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    :catchall_5
    move-exception v0

    move v14, v8

    move v7, v14

    move-object/from16 v13, v17

    move/from16 v8, v18

    move-wide/from16 v5, v38

    move-object/from16 v17, v9

    move-object v14, v10

    .end local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v14    # "timeIntervalLogLegendWritten":Z
    goto/16 :goto_16

    .end local v14    # "timeIntervalLogLegendWritten":Z
    .end local v38    # "firstStartTime":D
    .restart local v6    # "firstStartTime":D
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    :catchall_6
    move-exception v0

    move-wide/from16 v38, v6

    move v14, v8

    move v7, v14

    move-object/from16 v13, v17

    move/from16 v8, v18

    move-wide/from16 v5, v38

    move-object/from16 v17, v9

    move-object v14, v10

    .end local v6    # "firstStartTime":D
    .end local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v14    # "timeIntervalLogLegendWritten":Z
    .restart local v38    # "firstStartTime":D
    goto/16 :goto_16

    .line 416
    .end local v14    # "timeIntervalLogLegendWritten":Z
    .end local v38    # "firstStartTime":D
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v6    # "firstStartTime":D
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v12    # "logUsesDoubleHistograms":Z
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local v19    # "windowCutOffTimeStamp":J
    .restart local v21    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    :cond_17
    move-wide/from16 v38, v6

    move v14, v8

    .end local v6    # "firstStartTime":D
    .end local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v14    # "timeIntervalLogLegendWritten":Z
    .restart local v38    # "firstStartTime":D
    :try_start_17
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v11, [Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 417
    move-object v11, v9

    .end local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .local v11, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    :try_start_18
    invoke-virtual {v5}, Lorg/HdrHistogram/EncodableHistogram;->getEndTimeStamp()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v8, v8, v24

    iget-object v13, v1, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    invoke-virtual {v13}, Lorg/HdrHistogram/HistogramLogReader;->getStartTimeSec()D

    move-result-wide v40

    sub-double v8, v8, v40

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    move-object v8, v5

    check-cast v8, Lorg/HdrHistogram/Histogram;

    .line 419
    invoke-virtual {v8}, Lorg/HdrHistogram/Histogram;->getTotalCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object v8, v5

    check-cast v8, Lorg/HdrHistogram/Histogram;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 420
    move/from16 v40, v14

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    .end local v14    # "timeIntervalLogLegendWritten":Z
    .local v40, "timeIntervalLogLegendWritten":Z
    :try_start_19
    invoke-virtual {v8, v13, v14}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v13, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v13, v13, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    move-object v8, v5

    check-cast v8, Lorg/HdrHistogram/Histogram;

    .line 421
    const-wide v13, 0x4056800000000000L    # 90.0

    invoke-virtual {v8, v13, v14}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v13, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v13, v13, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    move-object v8, v5

    check-cast v8, Lorg/HdrHistogram/Histogram;

    .line 422
    invoke-virtual {v8}, Lorg/HdrHistogram/Histogram;->getMaxValue()J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v13, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v13, v13, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 424
    invoke-virtual/range {v21 .. v21}, Lorg/HdrHistogram/Histogram;->getTotalCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v35

    .line 425
    move-object/from16 v9, v21

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    .end local v21    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .local v9, "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    invoke-virtual {v9, v13, v14}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v36

    div-double v13, v13, v36

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v34

    .line 426
    const-wide v13, 0x4056800000000000L    # 90.0

    invoke-virtual {v9, v13, v14}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    div-double v13, v13, v34

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v33

    .line 427
    const-wide v13, 0x4058c00000000000L    # 99.0

    invoke-virtual {v9, v13, v14}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v33

    div-double v13, v13, v33

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v32

    .line 428
    const-wide v13, 0x4058f9999999999aL    # 99.9

    invoke-virtual {v9, v13, v14}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    div-double v13, v13, v30

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v29

    .line 429
    const-wide v13, 0x4058ff5c28f5c28fL    # 99.99

    invoke-virtual {v9, v13, v14}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    div-double v13, v13, v27

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v26

    .line 430
    invoke-virtual {v9}, Lorg/HdrHistogram/Histogram;->getMaxValue()J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    div-double v13, v13, v26

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v7, v13

    .line 416
    invoke-virtual {v2, v6, v10, v7}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 435
    :goto_10
    move/from16 v8, v40

    goto :goto_11

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .end local v12    # "logUsesDoubleHistograms":Z
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v19    # "windowCutOffTimeStamp":J
    :catchall_7
    move-exception v0

    move-object v14, v10

    move-object/from16 v13, v17

    move/from16 v8, v18

    move-wide/from16 v5, v38

    move/from16 v7, v40

    move-object/from16 v17, v11

    goto/16 :goto_16

    .end local v40    # "timeIntervalLogLegendWritten":Z
    .restart local v14    # "timeIntervalLogLegendWritten":Z
    :catchall_8
    move-exception v0

    move/from16 v40, v14

    move-object v14, v10

    move-object/from16 v13, v17

    move/from16 v8, v18

    move-wide/from16 v5, v38

    move/from16 v7, v40

    move-object/from16 v17, v11

    .end local v14    # "timeIntervalLogLegendWritten":Z
    .restart local v40    # "timeIntervalLogLegendWritten":Z
    goto/16 :goto_16

    .end local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v40    # "timeIntervalLogLegendWritten":Z
    .local v9, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v14    # "timeIntervalLogLegendWritten":Z
    :catchall_9
    move-exception v0

    move/from16 v40, v14

    move-object v14, v10

    move-object/from16 v13, v17

    move/from16 v8, v18

    move-wide/from16 v5, v38

    move/from16 v7, v40

    move-object/from16 v17, v9

    .end local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v14    # "timeIntervalLogLegendWritten":Z
    .restart local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v40    # "timeIntervalLogLegendWritten":Z
    goto/16 :goto_16

    .line 387
    .end local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v38    # "firstStartTime":D
    .end local v40    # "timeIntervalLogLegendWritten":Z
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v6    # "firstStartTime":D
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v12    # "logUsesDoubleHistograms":Z
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local v19    # "windowCutOffTimeStamp":J
    .restart local v21    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    :cond_18
    move-wide/from16 v38, v6

    move-object v11, v9

    move-object/from16 v9, v21

    .line 435
    .end local v6    # "firstStartTime":D
    .end local v21    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .local v9, "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v38    # "firstStartTime":D
    :goto_11
    if-eqz v3, :cond_1c

    .line 436
    if-nez v18, :cond_1a

    .line 437
    const/4 v6, 0x1

    .line 438
    .end local v18    # "movingWindowLogLegendWritten":Z
    .local v6, "movingWindowLogLegendWritten":Z
    :try_start_1a
    iget-object v7, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v7, v7, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->logFormatCsv:Z

    if-eqz v7, :cond_19

    .line 439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\"Timestamp\",\"Window_Count\",\""

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v13, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v13, v13, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowPercentileToReport:D

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "%\'ile\",\"Max\""

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 442
    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Time: WindoCount "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v13, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v13, v13, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowPercentileToReport:D

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "%\'ile Max"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 445
    :goto_12
    move/from16 v18, v6

    goto :goto_13

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .end local v12    # "logUsesDoubleHistograms":Z
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v19    # "windowCutOffTimeStamp":J
    :catchall_a
    move-exception v0

    move v7, v8

    move-object v14, v10

    move-object/from16 v13, v17

    move v8, v6

    move-object/from16 v17, v11

    move-wide/from16 v5, v38

    goto/16 :goto_16

    .line 445
    .end local v6    # "movingWindowLogLegendWritten":Z
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v12    # "logUsesDoubleHistograms":Z
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local v18    # "movingWindowLogLegendWritten":Z
    .restart local v19    # "windowCutOffTimeStamp":J
    :cond_1a
    :goto_13
    :try_start_1b
    instance-of v6, v5, Lorg/HdrHistogram/DoubleHistogram;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    if-eqz v6, :cond_1b

    .line 446
    :try_start_1c
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 447
    invoke-virtual {v5}, Lorg/HdrHistogram/EncodableHistogram;->getEndTimeStamp()J

    move-result-wide v13
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    long-to-double v13, v13

    const-wide v23, 0x408f400000000000L    # 1000.0

    div-double v13, v13, v23

    move/from16 v21, v8

    .end local v8    # "timeIntervalLogLegendWritten":Z
    .local v21, "timeIntervalLogLegendWritten":Z
    :try_start_1d
    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    invoke-virtual {v8}, Lorg/HdrHistogram/HistogramLogReader;->getStartTimeSec()D

    move-result-wide v23

    sub-double v13, v13, v23

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v13, 0x0

    aput-object v8, v7, v13

    move-object v8, v0

    check-cast v8, Lorg/HdrHistogram/DoubleHistogram;

    .line 449
    invoke-virtual {v8}, Lorg/HdrHistogram/DoubleHistogram;->getTotalCount()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v13, 0x1

    aput-object v8, v7, v13

    move-object v8, v0

    check-cast v8, Lorg/HdrHistogram/DoubleHistogram;

    iget-object v13, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-wide v13, v13, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowPercentileToReport:D

    .line 450
    invoke-virtual {v8, v13, v14}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v13

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    div-double v13, v13, v23

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v13, 0x2

    aput-object v8, v7, v13

    move-object v8, v0

    check-cast v8, Lorg/HdrHistogram/DoubleHistogram;

    .line 451
    invoke-virtual {v8}, Lorg/HdrHistogram/DoubleHistogram;->getMaxValue()D

    move-result-wide v13

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    div-double v13, v13, v22

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v13, 0x3

    aput-object v8, v7, v13
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 446
    move-object/from16 v13, v17

    .end local v17    # "movingWindowLogFormat":Ljava/lang/String;
    .local v13, "movingWindowLogFormat":Ljava/lang/String;
    :try_start_1e
    invoke-virtual {v3, v6, v13, v7}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    move-object v14, v10

    move-object/from16 v17, v11

    move/from16 v16, v12

    const/4 v10, 0x3

    goto/16 :goto_14

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .end local v12    # "logUsesDoubleHistograms":Z
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v19    # "windowCutOffTimeStamp":J
    :catchall_b
    move-exception v0

    move-object v14, v10

    move-object/from16 v17, v11

    move/from16 v8, v18

    move/from16 v7, v21

    move-wide/from16 v5, v38

    goto/16 :goto_16

    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v17    # "movingWindowLogFormat":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object/from16 v13, v17

    move-object v14, v10

    move-object/from16 v17, v11

    move/from16 v8, v18

    move/from16 v7, v21

    move-wide/from16 v5, v38

    .end local v17    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v13    # "movingWindowLogFormat":Ljava/lang/String;
    goto/16 :goto_16

    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v21    # "timeIntervalLogLegendWritten":Z
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v17    # "movingWindowLogFormat":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move/from16 v21, v8

    move-object/from16 v13, v17

    move-object v14, v10

    move-object/from16 v17, v11

    move/from16 v8, v18

    move/from16 v7, v21

    move-wide/from16 v5, v38

    .end local v8    # "timeIntervalLogLegendWritten":Z
    .end local v17    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v21    # "timeIntervalLogLegendWritten":Z
    goto/16 :goto_16

    .line 454
    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v21    # "timeIntervalLogLegendWritten":Z
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v12    # "logUsesDoubleHistograms":Z
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local v17    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v19    # "windowCutOffTimeStamp":J
    :cond_1b
    move/from16 v21, v8

    move-object/from16 v13, v17

    .end local v8    # "timeIntervalLogLegendWritten":Z
    .end local v17    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v21    # "timeIntervalLogLegendWritten":Z
    :try_start_1f
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 455
    move-object v14, v10

    move-object/from16 v17, v11

    .end local v10    # "logFormat":Ljava/lang/String;
    .end local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .local v14, "logFormat":Ljava/lang/String;
    .local v17, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    :try_start_20
    invoke-virtual {v5}, Lorg/HdrHistogram/EncodableHistogram;->getEndTimeStamp()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v23, 0x408f400000000000L    # 1000.0

    div-double v10, v10, v23

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->logReader:Lorg/HdrHistogram/HistogramLogReader;

    invoke-virtual {v8}, Lorg/HdrHistogram/HistogramLogReader;->getStartTimeSec()D

    move-result-wide v23

    sub-double v10, v10, v23

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    move-object v8, v0

    check-cast v8, Lorg/HdrHistogram/Histogram;

    .line 457
    invoke-virtual {v8}, Lorg/HdrHistogram/Histogram;->getTotalCount()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v7, v11

    move-object v8, v0

    check-cast v8, Lorg/HdrHistogram/Histogram;

    iget-object v10, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    move/from16 v16, v12

    .end local v12    # "logUsesDoubleHistograms":Z
    .local v16, "logUsesDoubleHistograms":Z
    iget-wide v11, v10, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowPercentileToReport:D

    .line 458
    invoke-virtual {v8, v11, v12}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v10

    long-to-double v10, v10

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    div-double v10, v10, v24

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v7, v10

    move-object v8, v0

    check-cast v8, Lorg/HdrHistogram/Histogram;

    .line 459
    invoke-virtual {v8}, Lorg/HdrHistogram/Histogram;->getMaxValue()J

    move-result-wide v10

    long-to-double v10, v10

    iget-object v8, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v8, v8, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    div-double v10, v10, v24

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v7, v10

    .line 454
    invoke-virtual {v3, v6, v13, v7}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_14

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .end local v14    # "logFormat":Ljava/lang/String;
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v16    # "logUsesDoubleHistograms":Z
    .end local v17    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v19    # "windowCutOffTimeStamp":J
    .restart local v10    # "logFormat":Ljava/lang/String;
    .restart local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    :catchall_e
    move-exception v0

    move-object v14, v10

    move-object/from16 v17, v11

    move/from16 v8, v18

    move/from16 v7, v21

    move-wide/from16 v5, v38

    .end local v10    # "logFormat":Ljava/lang/String;
    .end local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v14    # "logFormat":Ljava/lang/String;
    .restart local v17    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    goto/16 :goto_16

    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v14    # "logFormat":Ljava/lang/String;
    .end local v21    # "timeIntervalLogLegendWritten":Z
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v10    # "logFormat":Ljava/lang/String;
    .restart local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .local v17, "movingWindowLogFormat":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move/from16 v21, v8

    move-object v14, v10

    move-object/from16 v13, v17

    move-object/from16 v17, v11

    move/from16 v8, v18

    move/from16 v7, v21

    move-wide/from16 v5, v38

    .end local v8    # "timeIntervalLogLegendWritten":Z
    .end local v10    # "logFormat":Ljava/lang/String;
    .end local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v14    # "logFormat":Ljava/lang/String;
    .local v17, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v21    # "timeIntervalLogLegendWritten":Z
    goto/16 :goto_16

    .line 435
    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v14    # "logFormat":Ljava/lang/String;
    .end local v21    # "timeIntervalLogLegendWritten":Z
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .restart local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v10    # "logFormat":Ljava/lang/String;
    .restart local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v12    # "logUsesDoubleHistograms":Z
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .local v17, "movingWindowLogFormat":Ljava/lang/String;
    .restart local v19    # "windowCutOffTimeStamp":J
    :cond_1c
    move/from16 v21, v8

    move-object v14, v10

    move/from16 v16, v12

    move-object/from16 v13, v17

    const/4 v10, 0x3

    move-object/from16 v17, v11

    .line 465
    .end local v8    # "timeIntervalLogLegendWritten":Z
    .end local v10    # "logFormat":Ljava/lang/String;
    .end local v11    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v12    # "logUsesDoubleHistograms":Z
    .restart local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v14    # "logFormat":Ljava/lang/String;
    .restart local v16    # "logUsesDoubleHistograms":Z
    .local v17, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v21    # "timeIntervalLogLegendWritten":Z
    :goto_14
    iget-object v6, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v6, v6, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->tag:Ljava/lang/String;

    invoke-direct {v1, v6}, Lorg/HdrHistogram/HistogramLogProcessor;->getIntervalHistogram(Ljava/lang/String;)Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    move-object v5, v6

    .line 466
    .end local v19    # "windowCutOffTimeStamp":J
    move-object v11, v13

    move-object v10, v14

    move/from16 v12, v16

    move/from16 v13, v18

    move/from16 v8, v21

    move-wide/from16 v6, v38

    move-object v14, v9

    move-object/from16 v9, v17

    goto/16 :goto_a

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v16    # "logUsesDoubleHistograms":Z
    :catchall_10
    move-exception v0

    move/from16 v8, v18

    move/from16 v7, v21

    move-wide/from16 v5, v38

    goto/16 :goto_16

    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v14    # "logFormat":Ljava/lang/String;
    .end local v21    # "timeIntervalLogLegendWritten":Z
    .end local v38    # "firstStartTime":D
    .local v6, "firstStartTime":D
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .local v9, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v10    # "logFormat":Ljava/lang/String;
    .local v17, "movingWindowLogFormat":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-object v14, v10

    move-object/from16 v13, v17

    move-object/from16 v17, v9

    move-wide v5, v6

    move v7, v8

    move/from16 v8, v18

    .end local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v10    # "logFormat":Ljava/lang/String;
    .restart local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v14    # "logFormat":Ljava/lang/String;
    .local v17, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    goto/16 :goto_16

    .line 342
    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v10    # "logFormat":Ljava/lang/String;
    .restart local v12    # "logUsesDoubleHistograms":Z
    .local v14, "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .local v17, "movingWindowLogFormat":Ljava/lang/String;
    :cond_1d
    move/from16 v16, v12

    move-object/from16 v13, v17

    move-object/from16 v17, v9

    move-object v9, v14

    move-object v14, v10

    .end local v10    # "logFormat":Ljava/lang/String;
    .end local v12    # "logUsesDoubleHistograms":Z
    .local v9, "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .local v14, "logFormat":Ljava/lang/String;
    .restart local v16    # "logUsesDoubleHistograms":Z
    .local v17, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    :try_start_21
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Encountered a Histogram line in a log of DoubleHistograms."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "timeIntervalLog":Ljava/io/PrintStream;
    .end local v3    # "movingWindowLog":Ljava/io/PrintStream;
    .end local v4    # "histogramPercentileLog":Ljava/io/PrintStream;
    .end local v6    # "firstStartTime":D
    .end local v8    # "timeIntervalLogLegendWritten":Z
    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v14    # "logFormat":Ljava/lang/String;
    .end local v17    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v18    # "movingWindowLogLegendWritten":Z
    throw v10

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v16    # "logUsesDoubleHistograms":Z
    .restart local v2    # "timeIntervalLog":Ljava/io/PrintStream;
    .restart local v3    # "movingWindowLog":Ljava/io/PrintStream;
    .restart local v4    # "histogramPercentileLog":Ljava/io/PrintStream;
    .restart local v6    # "firstStartTime":D
    .restart local v8    # "timeIntervalLogLegendWritten":Z
    .local v9, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v10    # "logFormat":Ljava/lang/String;
    .local v13, "movingWindowLogLegendWritten":Z
    .local v17, "movingWindowLogFormat":Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-object v14, v10

    move/from16 v18, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v9

    move-wide v5, v6

    move v7, v8

    move/from16 v8, v18

    .end local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v10    # "logFormat":Ljava/lang/String;
    .local v13, "movingWindowLogFormat":Ljava/lang/String;
    .restart local v14    # "logFormat":Ljava/lang/String;
    .local v17, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v18    # "movingWindowLogLegendWritten":Z
    goto :goto_16

    .line 468
    .end local v17    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v18    # "movingWindowLogLegendWritten":Z
    .restart local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .restart local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v10    # "logFormat":Ljava/lang/String;
    .local v11, "movingWindowLogFormat":Ljava/lang/String;
    .restart local v12    # "logUsesDoubleHistograms":Z
    .local v13, "movingWindowLogLegendWritten":Z
    .local v14, "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .restart local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :cond_1e
    move-object/from16 v17, v9

    move/from16 v16, v12

    move/from16 v18, v13

    move-object v9, v14

    move-object v14, v10

    move-object v13, v11

    .end local v10    # "logFormat":Ljava/lang/String;
    .end local v11    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v12    # "logUsesDoubleHistograms":Z
    .local v9, "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .local v13, "movingWindowLogFormat":Ljava/lang/String;
    .local v14, "logFormat":Ljava/lang/String;
    .restart local v16    # "logUsesDoubleHistograms":Z
    .restart local v17    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v18    # "movingWindowLogLegendWritten":Z
    if-eqz v16, :cond_1f

    .line 469
    iget-object v10, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget v10, v10, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->percentilesOutputTicksPerHalf:I

    iget-object v11, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v11, v11, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    iget-object v12, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v12, v12, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->logFormatCsv:Z

    invoke-virtual {v15, v4, v10, v11, v12}, Lorg/HdrHistogram/DoubleHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V

    goto :goto_15

    .line 472
    :cond_1f
    iget-object v10, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget v10, v10, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->percentilesOutputTicksPerHalf:I

    iget-object v11, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-object v11, v11, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    iget-object v12, v1, Lorg/HdrHistogram/HistogramLogProcessor;->config:Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;

    iget-boolean v12, v12, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->logFormatCsv:Z

    invoke-virtual {v9, v4, v10, v11, v12}, Lorg/HdrHistogram/Histogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    .line 476
    .end local v0    # "movingWindowSumHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v5    # "intervalHistogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v9    # "accumulatedRegularHistogram":Lorg/HdrHistogram/Histogram;
    .end local v15    # "accumulatedDoubleHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local v16    # "logUsesDoubleHistograms":Z
    :goto_15
    if-eqz v2, :cond_20

    .line 477
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 479
    :cond_20
    if-eqz v3, :cond_21

    .line 480
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 482
    :cond_21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v4, v0, :cond_22

    .line 483
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    .line 486
    :cond_22
    return-void

    .line 476
    :catchall_13
    move-exception v0

    move-wide v5, v6

    move v7, v8

    move/from16 v8, v18

    goto :goto_16

    .end local v6    # "firstStartTime":D
    .end local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .end local v14    # "logFormat":Ljava/lang/String;
    .end local v17    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v18    # "movingWindowLogLegendWritten":Z
    .local v5, "firstStartTime":D
    .restart local v7    # "timeIntervalLogLegendWritten":Z
    .local v8, "movingWindowLogLegendWritten":Z
    .local v9, "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .restart local v10    # "logFormat":Ljava/lang/String;
    .restart local v11    # "movingWindowLogFormat":Ljava/lang/String;
    :catchall_14
    move-exception v0

    move-object/from16 v17, v9

    move-object v14, v10

    move-object v13, v11

    .end local v9    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    .end local v10    # "logFormat":Ljava/lang/String;
    .end local v11    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v13    # "movingWindowLogFormat":Ljava/lang/String;
    .restart local v14    # "logFormat":Ljava/lang/String;
    .restart local v17    # "movingWindowQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/HdrHistogram/EncodableHistogram;>;"
    :goto_16
    if-eqz v2, :cond_23

    .line 477
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 479
    :cond_23
    if-eqz v3, :cond_24

    .line 480
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 482
    :cond_24
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v4, v9, :cond_25

    .line 483
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    .line 485
    :cond_25
    throw v0
.end method
