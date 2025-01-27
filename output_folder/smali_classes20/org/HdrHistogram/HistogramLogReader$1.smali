.class Lorg/HdrHistogram/HistogramLogReader$1;
.super Ljava/lang/Object;
.source "HistogramLogReader.java"

# interfaces
.implements Lorg/HdrHistogram/HistogramLogScanner$EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/HistogramLogReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/HdrHistogram/HistogramLogReader;


# direct methods
.method constructor <init>(Lorg/HdrHistogram/HistogramLogReader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/HistogramLogReader;

    .line 57
    iput-object p1, p0, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBaseTime(D)Z
    .locals 2
    .param p1, "secondsSinceEpoch"    # D

    .line 67
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0, p1, p2}, Lorg/HdrHistogram/HistogramLogReader;->access$002(Lorg/HdrHistogram/HistogramLogReader;D)D

    .line 68
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/HdrHistogram/HistogramLogReader;->access$102(Lorg/HdrHistogram/HistogramLogReader;Z)Z

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onComment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 140
    instance-of v0, p1, Ljava/util/NoSuchElementException;

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_0
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 145
    move-object v0, p1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onHistogram(Ljava/lang/String;DDLorg/HdrHistogram/HistogramLogScanner$EncodableHistogramSupplier;)Z
    .locals 19
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "timestamp"    # D
    .param p4, "length"    # D
    .param p6, "lazyReader"    # Lorg/HdrHistogram/HistogramLogScanner$EncodableHistogramSupplier;

    .line 83
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    .line 85
    .local v2, "logTimeStampInSec":D
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$300(Lorg/HdrHistogram/HistogramLogReader;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 87
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0, v2, v3}, Lorg/HdrHistogram/HistogramLogReader;->access$202(Lorg/HdrHistogram/HistogramLogReader;D)D

    .line 88
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0, v4}, Lorg/HdrHistogram/HistogramLogReader;->access$302(Lorg/HdrHistogram/HistogramLogReader;Z)Z

    .line 90
    :cond_0
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$100(Lorg/HdrHistogram/HistogramLogReader;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$200(Lorg/HdrHistogram/HistogramLogReader;)D

    move-result-wide v5

    const-wide v7, 0x417e133800000000L    # 3.1536E7

    sub-double/2addr v5, v7

    cmpg-double v0, v2, v5

    if-gez v0, :cond_1

    .line 95
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$200(Lorg/HdrHistogram/HistogramLogReader;)D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lorg/HdrHistogram/HistogramLogReader;->access$002(Lorg/HdrHistogram/HistogramLogReader;D)D

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    const-wide/16 v5, 0x0

    invoke-static {v0, v5, v6}, Lorg/HdrHistogram/HistogramLogReader;->access$002(Lorg/HdrHistogram/HistogramLogReader;D)D

    .line 100
    :goto_0
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0, v4}, Lorg/HdrHistogram/HistogramLogReader;->access$102(Lorg/HdrHistogram/HistogramLogReader;Z)Z

    .line 103
    :cond_2
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$000(Lorg/HdrHistogram/HistogramLogReader;)D

    move-result-wide v5

    add-double/2addr v5, v2

    .line 104
    .local v5, "absoluteStartTimeStampSec":D
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$200(Lorg/HdrHistogram/HistogramLogReader;)D

    move-result-wide v7

    sub-double v7, v5, v7

    .line 106
    .local v7, "offsetStartTimeStampSec":D
    move-wide/from16 v9, p4

    .line 107
    .local v9, "intervalLengthSec":D
    add-double v11, v5, v9

    .line 109
    .local v11, "absoluteEndTimeStampSec":D
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$400(Lorg/HdrHistogram/HistogramLogReader;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v13, v5

    goto :goto_1

    :cond_3
    move-wide v13, v7

    .line 111
    .local v13, "startTimeStampToCheckRangeOn":D
    :goto_1
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$500(Lorg/HdrHistogram/HistogramLogReader;)D

    move-result-wide v15

    cmpg-double v0, v13, v15

    if-gez v0, :cond_4

    .line 113
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_4
    iget-object v0, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0}, Lorg/HdrHistogram/HistogramLogReader;->access$600(Lorg/HdrHistogram/HistogramLogReader;)D

    move-result-wide v15

    cmpl-double v0, v13, v15

    if-lez v0, :cond_5

    .line 118
    return v4

    .line 122
    :cond_5
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lorg/HdrHistogram/HistogramLogScanner$EncodableHistogramSupplier;->read()Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v0, "histogram":Lorg/HdrHistogram/EncodableHistogram;
    nop

    .line 128
    const-wide v15, 0x408f400000000000L    # 1000.0

    move-wide/from16 v17, v2

    .end local v2    # "logTimeStampInSec":D
    .local v17, "logTimeStampInSec":D
    mul-double v2, v5, v15

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/HdrHistogram/EncodableHistogram;->setStartTimeStamp(J)V

    .line 129
    mul-double v2, v11, v15

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/HdrHistogram/EncodableHistogram;->setEndTimeStamp(J)V

    .line 130
    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lorg/HdrHistogram/EncodableHistogram;->setTag(Ljava/lang/String;)V

    .line 131
    iget-object v3, v1, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v3, v0}, Lorg/HdrHistogram/HistogramLogReader;->access$702(Lorg/HdrHistogram/HistogramLogReader;Lorg/HdrHistogram/EncodableHistogram;)Lorg/HdrHistogram/EncodableHistogram;

    .line 132
    return v4

    .line 123
    .end local v0    # "histogram":Lorg/HdrHistogram/EncodableHistogram;
    .end local v17    # "logTimeStampInSec":D
    .restart local v2    # "logTimeStampInSec":D
    :catch_0
    move-exception v0

    move-wide/from16 v17, v2

    move-object/from16 v2, p1

    move-object v3, v0

    .end local v2    # "logTimeStampInSec":D
    .restart local v17    # "logTimeStampInSec":D
    move-object v0, v3

    .line 125
    .local v0, "e":Ljava/util/zip/DataFormatException;
    return v4
.end method

.method public onStartTime(D)Z
    .locals 2
    .param p1, "secondsSinceEpoch"    # D

    .line 75
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    invoke-static {v0, p1, p2}, Lorg/HdrHistogram/HistogramLogReader;->access$202(Lorg/HdrHistogram/HistogramLogReader;D)D

    .line 76
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogReader$1;->this$0:Lorg/HdrHistogram/HistogramLogReader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/HdrHistogram/HistogramLogReader;->access$302(Lorg/HdrHistogram/HistogramLogReader;Z)Z

    .line 77
    const/4 v0, 0x0

    return v0
.end method
