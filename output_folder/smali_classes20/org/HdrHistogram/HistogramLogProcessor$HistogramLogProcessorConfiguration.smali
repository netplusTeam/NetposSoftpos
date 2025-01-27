.class Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;
.super Ljava/lang/Object;
.source "HistogramLogProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/HistogramLogProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistogramLogProcessorConfiguration"
.end annotation


# instance fields
.field allTags:Z

.field errorMessage:Ljava/lang/String;

.field expectedIntervalForCoordinatedOmissionCorrection:D

.field inputFileName:Ljava/lang/String;

.field listTags:Z

.field logFormatCsv:Z

.field movingWindow:Z

.field movingWindowLengthInMsec:J

.field movingWindowPercentileToReport:D

.field outputFileName:Ljava/lang/String;

.field outputValueUnitRatio:Ljava/lang/Double;

.field percentilesOutputTicksPerHalf:I

.field rangeEndTimeSec:D

.field rangeStartTimeSec:D

.field tag:Ljava/lang/String;

.field verbose:Z


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->verbose:Z

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputFileName:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->inputFileName:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->tag:Ljava/lang/String;

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeStartTimeSec:D

    .line 67
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeEndTimeSec:D

    .line 69
    iput-boolean v0, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->logFormatCsv:Z

    .line 70
    iput-boolean v0, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->listTags:Z

    .line 71
    iput-boolean v0, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->allTags:Z

    .line 73
    iput-boolean v0, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindow:Z

    .line 74
    const-wide v3, 0x4058c00000000000L    # 99.0

    iput-wide v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowPercentileToReport:D

    .line 75
    const-wide/32 v3, 0xea60

    iput-wide v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowLengthInMsec:J

    .line 77
    const/4 v3, 0x5

    iput v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->percentilesOutputTicksPerHalf:I

    .line 78
    const-wide v3, 0x412e848000000000L    # 1000000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    .line 80
    iput-wide v1, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->expectedIntervalForCoordinatedOmissionCorrection:D

    .line 82
    const-string v1, ""

    iput-object v1, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->errorMessage:Ljava/lang/String;

    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "askedForHelp":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    :try_start_0
    array-length v4, p1

    if-ge v2, v4, :cond_f

    .line 88
    aget-object v4, p1, v2

    const-string v5, "-csv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iput-boolean v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->logFormatCsv:Z

    goto/16 :goto_1

    .line 90
    :cond_0
    aget-object v4, p1, v2

    const-string v5, "-v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    iput-boolean v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->verbose:Z

    goto/16 :goto_1

    .line 92
    :cond_1
    aget-object v4, p1, v2

    const-string v5, "-listtags"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    iput-boolean v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->listTags:Z

    goto/16 :goto_1

    .line 94
    :cond_2
    aget-object v4, p1, v2

    const-string v5, "-alltags"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    iput-boolean v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->allTags:Z

    goto/16 :goto_1

    .line 96
    :cond_3
    aget-object v4, p1, v2

    const-string v5, "-i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    iput-object v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->inputFileName:Ljava/lang/String;

    goto/16 :goto_1

    .line 98
    :cond_4
    aget-object v4, p1, v2

    const-string v5, "-tag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 99
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    iput-object v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->tag:Ljava/lang/String;

    goto/16 :goto_1

    .line 100
    :cond_5
    aget-object v4, p1, v2

    const-string v5, "-mwp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowPercentileToReport:D

    .line 102
    iput-boolean v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindow:Z

    goto/16 :goto_1

    .line 103
    :cond_6
    aget-object v4, p1, v2

    const-string v5, "-mwpl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 104
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindowLengthInMsec:J

    .line 105
    iput-boolean v3, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->movingWindow:Z

    goto/16 :goto_1

    .line 106
    :cond_7
    aget-object v4, p1, v2

    const-string v5, "-start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 107
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeStartTimeSec:D

    goto :goto_1

    .line 108
    :cond_8
    aget-object v4, p1, v2

    const-string v5, "-end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 109
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->rangeEndTimeSec:D

    goto :goto_1

    .line 110
    :cond_9
    aget-object v4, p1, v2

    const-string v5, "-o"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 111
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    iput-object v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputFileName:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_a
    aget-object v4, p1, v2

    const-string v5, "-percentilesOutputTicksPerHalf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 113
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->percentilesOutputTicksPerHalf:I

    goto :goto_1

    .line 114
    :cond_b
    aget-object v4, p1, v2

    const-string v5, "-outputValueUnitRatio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 115
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->outputValueUnitRatio:Ljava/lang/Double;

    goto :goto_1

    .line 116
    :cond_c
    aget-object v4, p1, v2

    const-string v5, "-correctLogWithKnownCoordinatedOmission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 117
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    .line 118
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->expectedIntervalForCoordinatedOmissionCorrection:D

    .line 87
    :goto_1
    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 119
    :cond_d
    aget-object v4, p1, v2

    const-string v5, "-h"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 120
    const/4 v1, 0x1

    .line 121
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Help: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "askedForHelp":Z
    .end local p1    # "args":[Ljava/lang/String;
    throw v4

    .line 123
    .restart local v1    # "askedForHelp":Z
    .restart local p1    # "args":[Ljava/lang/String;
    :cond_e
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid args: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "askedForHelp":Z
    .end local p1    # "args":[Ljava/lang/String;
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "i":I
    .restart local v1    # "askedForHelp":Z
    .restart local p1    # "args":[Ljava/lang/String;
    :cond_f
    goto :goto_3

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Error: Histogram Log Processor version 2.1.12 launched with the following args:\n"

    iput-object v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->errorMessage:Ljava/lang/String;

    .line 129
    array-length v4, p1

    :goto_2
    if-ge v0, v4, :cond_10

    aget-object v5, p1, v0

    .line 130
    .local v5, "arg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->errorMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->errorMessage:Ljava/lang/String;

    .line 129
    .end local v5    # "arg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 132
    :cond_10
    if-nez v1, :cond_11

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\nWhich was parsed as an error, indicated by the following exception:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->errorMessage:Ljava/lang/String;

    .line 134
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogProcessor$HistogramLogProcessorConfiguration;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    :cond_11
    const-string v0, "\"[-csv] [-v] [-i inputFileName] [-o outputFileName] [-tag tag] [-start rangeStartTimeSec] [-end rangeEndTimeSec] [-outputValueUnitRatio r] [-correctLogWithKnownCoordinatedOmission i] [-listtags]"

    .line 142
    .local v0, "validArgs":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "valid arguments = \"[-csv] [-v] [-i inputFileName] [-o outputFileName] [-tag tag] [-start rangeStartTimeSec] [-end rangeEndTimeSec] [-outputValueUnitRatio r] [-correctLogWithKnownCoordinatedOmission i] [-listtags]"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, " [-h]                                         help\n [-v]                                         Provide verbose error output\n [-csv]                                       Use CSV format for output log files\n [-i logFileName]                             File name of Histogram Log to process (default is standard input)\n [-o outputFileName]                          File name to output to (default is standard output)\n [-tag tag]                                   The tag (default no tag) of the histogram lines to be processed\n [-start rangeStartTimeSec]                   The start time for the range in the file, in seconds (default 0.0)\n [-end rangeEndTimeSec]                       The end time for the range in the file, in seconds (default is infinite)\n [-outputValueUnitRatio r]                    The scaling factor by which to divide histogram recorded values units\n                                              in output. [default = 1000000.0 (1 msec in nsec)]\n [-correctLogWithKnownCoordinatedOmission i]  When the supplied expected interval i is than 0, performs coordinated\n                                              omission corection on the input log\'s interval histograms by adding\n                                              missing values as appropriate based on the supplied expected interval\n                                              value i (in wahtever units the log histograms were recorded with). This\n                                              feature should only be used when the input log is known to have been\n                                              recorded with coordinated ommisions, and when an expected interval is known.\n [-listtags]                                  list all tags found on histogram lines the input file."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 165
    .end local v0    # "validArgs":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
