.class public Lcom/sleepycat/utilint/Latency;
.super Ljava/lang/Object;
.source "Latency.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private avg:F

.field private max:I

.field private maxTrackedLatencyMillis:I

.field private min:I

.field private opsOverflow:I

.field private percent95:I

.field private percent99:I

.field private totalOps:I

.field private totalRequests:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxTrackedLatencyMillis"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/sleepycat/utilint/Latency;->maxTrackedLatencyMillis:I

    .line 59
    return-void
.end method

.method public constructor <init>(IIIFIIIII)V
    .locals 0
    .param p1, "maxTrackedLatencyMillis"    # I
    .param p2, "minMillis"    # I
    .param p3, "maxMillis"    # I
    .param p4, "avg"    # F
    .param p5, "totalOps"    # I
    .param p6, "totalRequests"    # I
    .param p7, "percent95"    # I
    .param p8, "percent99"    # I
    .param p9, "requestsOverflow"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/sleepycat/utilint/Latency;->maxTrackedLatencyMillis:I

    .line 71
    iput p2, p0, Lcom/sleepycat/utilint/Latency;->min:I

    .line 72
    iput p3, p0, Lcom/sleepycat/utilint/Latency;->max:I

    .line 73
    iput p4, p0, Lcom/sleepycat/utilint/Latency;->avg:F

    .line 74
    iput p5, p0, Lcom/sleepycat/utilint/Latency;->totalOps:I

    .line 75
    iput p6, p0, Lcom/sleepycat/utilint/Latency;->totalRequests:I

    .line 76
    iput p7, p0, Lcom/sleepycat/utilint/Latency;->percent95:I

    .line 77
    iput p8, p0, Lcom/sleepycat/utilint/Latency;->percent99:I

    .line 78
    iput p9, p0, Lcom/sleepycat/utilint/Latency;->opsOverflow:I

    .line 79
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 87
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->totalRequests:I

    if-nez v0, :cond_0

    .line 88
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->totalOps:I

    iput v0, p0, Lcom/sleepycat/utilint/Latency;->totalRequests:I

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/utilint/Latency;
    .locals 2

    .line 95
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/utilint/Latency;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/sleepycat/utilint/Latency;->clone()Lcom/sleepycat/utilint/Latency;

    move-result-object v0

    return-object v0
.end method

.method public get95thPercent()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->percent95:I

    return v0
.end method

.method public get99thPercent()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->percent99:I

    return v0
.end method

.method public getAvg()F
    .locals 1

    .line 168
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->avg:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->max:I

    return v0
.end method

.method public getMaxTrackedLatencyMillis()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->maxTrackedLatencyMillis:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->min:I

    return v0
.end method

.method public getRequestsOverflow()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->opsOverflow:I

    return v0
.end method

.method public getTotalOps()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->totalOps:I

    return v0
.end method

.method public getTotalRequests()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->totalRequests:I

    return v0
.end method

.method public rollup(Lcom/sleepycat/utilint/Latency;)V
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/utilint/Latency;

    .line 192
    if-eqz p1, :cond_3

    iget v0, p1, Lcom/sleepycat/utilint/Latency;->totalOps:I

    if-eqz v0, :cond_3

    iget v1, p1, Lcom/sleepycat/utilint/Latency;->totalRequests:I

    if-eqz v1, :cond_3

    .line 197
    iget v2, p0, Lcom/sleepycat/utilint/Latency;->maxTrackedLatencyMillis:I

    iget v3, p1, Lcom/sleepycat/utilint/Latency;->maxTrackedLatencyMillis:I

    if-ne v2, v3, :cond_2

    .line 203
    iget v2, p0, Lcom/sleepycat/utilint/Latency;->min:I

    iget v3, p1, Lcom/sleepycat/utilint/Latency;->min:I

    if-le v2, v3, :cond_0

    .line 204
    iput v3, p0, Lcom/sleepycat/utilint/Latency;->min:I

    .line 207
    :cond_0
    iget v2, p0, Lcom/sleepycat/utilint/Latency;->max:I

    iget v3, p1, Lcom/sleepycat/utilint/Latency;->max:I

    if-ge v2, v3, :cond_1

    .line 208
    iput v3, p0, Lcom/sleepycat/utilint/Latency;->max:I

    .line 211
    :cond_1
    iget v2, p0, Lcom/sleepycat/utilint/Latency;->totalRequests:I

    int-to-float v3, v2

    iget v4, p0, Lcom/sleepycat/utilint/Latency;->avg:F

    mul-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, p1, Lcom/sleepycat/utilint/Latency;->avg:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int v4, v2, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sleepycat/utilint/Latency;->avg:F

    .line 215
    const/4 v3, 0x0

    iput v3, p0, Lcom/sleepycat/utilint/Latency;->percent95:I

    .line 216
    iput v3, p0, Lcom/sleepycat/utilint/Latency;->percent99:I

    .line 218
    iget v3, p0, Lcom/sleepycat/utilint/Latency;->totalOps:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sleepycat/utilint/Latency;->totalOps:I

    .line 219
    add-int/2addr v2, v1

    iput v2, p0, Lcom/sleepycat/utilint/Latency;->totalRequests:I

    .line 220
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->opsOverflow:I

    iget v1, p1, Lcom/sleepycat/utilint/Latency;->opsOverflow:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/utilint/Latency;->opsOverflow:I

    .line 221
    return-void

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t rollup a Latency whose maxTrackedLatencyMillis is different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t rollup a Latency that doesn\'t have any data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 104
    iget v0, p0, Lcom/sleepycat/utilint/Latency;->totalOps:I

    if-nez v0, :cond_0

    .line 105
    const-string v0, "No operations"

    return-object v0

    .line 108
    :cond_0
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale2()Ljava/text/DecimalFormat;

    move-result-object v0

    .line 110
    .local v0, "fmt":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxTrackedLatencyMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->maxTrackedLatencyMillis:I

    int-to-long v2, v2

    .line 111
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalOps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->totalOps:I

    int-to-long v2, v2

    .line 112
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->totalRequests:I

    int-to-long v2, v2

    .line 113
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqOverflow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->opsOverflow:I

    int-to-long v2, v2

    .line 114
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->min:I

    int-to-long v2, v2

    .line 115
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->max:I

    int-to-long v2, v2

    .line 116
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " avg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->avg:F

    float-to-double v2, v2

    .line 117
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 95%="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->percent95:I

    int-to-long v2, v2

    .line 118
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 99%="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/utilint/Latency;->percent99:I

    int-to-long v2, v2

    .line 119
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    return-object v1
.end method
