.class public Lorg/HdrHistogram/HistogramLogWriter;
.super Ljava/lang/Object;
.source "HistogramLogWriter.java"


# static fields
.field private static final HISTOGRAM_LOG_FORMAT_VERSION:Ljava/lang/String; = "1.3"

.field private static containsDelimeterPattern:Ljava/util/regex/Pattern;


# instance fields
.field private baseTime:J

.field private containsDelimeterMatcher:Ljava/util/regex/Matcher;

.field private final log:Ljava/io/PrintStream;

.field private targetBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, ".[, \\r\\n]."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterPattern:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterMatcher:Ljava/util/regex/Matcher;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->baseTime:J

    .line 71
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterPattern:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterMatcher:Ljava/util/regex/Matcher;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->baseTime:J

    .line 79
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterPattern:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterMatcher:Ljava/util/regex/Matcher;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->baseTime:J

    .line 87
    iput-object p1, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterPattern:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterMatcher:Ljava/util/regex/Matcher;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->baseTime:J

    .line 62
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    .line 63
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 95
    return-void
.end method

.method public getBaseTime()J
    .locals 2

    .line 242
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->baseTime:J

    return-wide v0
.end method

.method public outputBaseTime(J)V
    .locals 7
    .param p1, "baseTimeMsec"    # J

    .line 199
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 200
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 199
    const-string v3, "#[BaseTime: %.3f (seconds since epoch)]\n"

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 201
    return-void
.end method

.method public outputComment(Ljava/lang/String;)V
    .locals 3
    .param p1, "comment"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "#%s\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 210
    return-void
.end method

.method public outputIntervalHistogram(DDLorg/HdrHistogram/EncodableHistogram;)V
    .locals 8
    .param p1, "startTimeStampSec"    # D
    .param p3, "endTimeStampSec"    # D
    .param p5, "histogram"    # Lorg/HdrHistogram/EncodableHistogram;

    .line 157
    const-wide v6, 0x412e848000000000L    # 1000000.0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/HdrHistogram/HistogramLogWriter;->outputIntervalHistogram(DDLorg/HdrHistogram/EncodableHistogram;D)V

    .line 158
    return-void
.end method

.method public declared-synchronized outputIntervalHistogram(DDLorg/HdrHistogram/EncodableHistogram;D)V
    .locals 15
    .param p1, "startTimeStampSec"    # D
    .param p3, "endTimeStampSec"    # D
    .param p5, "histogram"    # Lorg/HdrHistogram/EncodableHistogram;
    .param p6, "maxValueUnitRatio"    # D

    move-object v1, p0

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogWriter;->targetBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/EncodableHistogram;->getNeededByteBufferCapacity()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 113
    .end local p0    # "this":Lorg/HdrHistogram/HistogramLogWriter;
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/EncodableHistogram;->getNeededByteBufferCapacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lorg/HdrHistogram/HistogramLogWriter;->targetBuffer:Ljava/nio/ByteBuffer;

    .line 115
    :cond_1
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogWriter;->targetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 117
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogWriter;->targetBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    move-object/from16 v3, p5

    invoke-virtual {v3, v0, v2}, Lorg/HdrHistogram/EncodableHistogram;->encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 118
    .local v0, "compressedLength":I
    iget-object v2, v1, Lorg/HdrHistogram/HistogramLogWriter;->targetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 120
    .local v2, "compressedArray":[B
    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/EncodableHistogram;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-nez v4, :cond_2

    .line 122
    iget-object v10, v1, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%.3f,%.3f,%.3f,%s\n"

    new-array v9, v9, [Ljava/lang/Object;

    .line 123
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v9, v8

    sub-double v13, p3, p1

    .line 124
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v9, v7

    .line 125
    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/EncodableHistogram;->getMaxValueAsDouble()D

    move-result-wide v7

    div-double v7, v7, p6

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v9, v6

    .line 126
    invoke-static {v2}, Lorg/HdrHistogram/Base64Helper;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    .line 122
    invoke-virtual {v10, v11, v12, v9}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 129
    :cond_2
    iget-object v10, v1, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 130
    iget-object v10, v1, Lorg/HdrHistogram/HistogramLogWriter;->containsDelimeterMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_3

    .line 133
    iget-object v10, v1, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "Tag=%s,%.3f,%.3f,%.3f,%s\n"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v8

    .line 135
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v13, v7

    sub-double v7, p3, p1

    .line 136
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v13, v6

    .line 137
    invoke-virtual/range {p5 .. p5}, Lorg/HdrHistogram/EncodableHistogram;->getMaxValueAsDouble()D

    move-result-wide v6

    div-double v6, v6, p6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v13, v5

    .line 138
    invoke-static {v2}, Lorg/HdrHistogram/Base64Helper;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v9

    .line 133
    invoke-virtual {v10, v11, v12, v13}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_3
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Tag string cannot contain commas, spaces, or line breaks"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v0    # "compressedLength":I
    .end local v2    # "compressedArray":[B
    .end local v4    # "tag":Ljava/lang/String;
    .end local p1    # "startTimeStampSec":D
    .end local p3    # "endTimeStampSec":D
    .end local p5    # "histogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local p6    # "maxValueUnitRatio":D
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public outputIntervalHistogram(Lorg/HdrHistogram/EncodableHistogram;)V
    .locals 10
    .param p1, "histogram"    # Lorg/HdrHistogram/EncodableHistogram;

    .line 178
    invoke-virtual {p1}, Lorg/HdrHistogram/EncodableHistogram;->getStartTimeStamp()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/HdrHistogram/HistogramLogWriter;->baseTime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v5, v0, v2

    .line 179
    invoke-virtual {p1}, Lorg/HdrHistogram/EncodableHistogram;->getEndTimeStamp()J

    move-result-wide v0

    iget-wide v7, p0, Lorg/HdrHistogram/HistogramLogWriter;->baseTime:J

    sub-long/2addr v0, v7

    long-to-double v0, v0

    div-double v7, v0, v2

    .line 178
    move-object v4, p0

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lorg/HdrHistogram/HistogramLogWriter;->outputIntervalHistogram(DDLorg/HdrHistogram/EncodableHistogram;)V

    .line 181
    return-void
.end method

.method public outputLegend()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    const-string v1, "\"StartTimestamp\",\"Interval_Length\",\"Interval_Max\",\"Interval_Compressed_Histogram\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public outputLogFormatVersion()V
    .locals 1

    .line 223
    const-string v0, "[Histogram log format version 1.3]"

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/HistogramLogWriter;->outputComment(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public outputStartTime(J)V
    .locals 7
    .param p1, "startTimeMsec"    # J

    .line 188
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogWriter;->log:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 190
    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 188
    const-string v3, "#[StartTime: %.3f (seconds since epoch), %s]\n"

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 191
    return-void
.end method

.method public setBaseTime(J)V
    .locals 0
    .param p1, "baseTimeMsec"    # J

    .line 234
    iput-wide p1, p0, Lorg/HdrHistogram/HistogramLogWriter;->baseTime:J

    .line 235
    return-void
.end method
