.class public Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
.super Lcom/sleepycat/je/utilint/MapStatComponent;
.source "DoubleExpMovingAvg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "Ljava/lang/Double;",
        "Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private avg:D

.field private final name:Ljava/lang/String;

.field private final periodMillis:J

.field private prevTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    .line 70
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->name:Ljava/lang/String;

    .line 72
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->periodMillis:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->periodMillis:J

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->prevTime:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->prevTime:J

    .line 76
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    .line 77
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "other":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    :try_start_4
    throw v0

    .line 78
    .restart local p1    # "other":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "periodMillis"    # J

    .line 58
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->name:Ljava/lang/String;

    .line 62
    iput-wide p2, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->periodMillis:J

    .line 63
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 185
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 184
    .end local p0    # "this":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    .end local p1    # "in":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    .end local p1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized add(DJ)V
    .locals 6
    .param p1, "value"    # D
    .param p3, "time"    # J

    monitor-enter p0

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    .line 99
    :try_start_0
    iget-wide v2, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->prevTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, p3, v2

    if-gtz v4, :cond_0

    .line 100
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 103
    :try_start_1
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    goto :goto_0

    .line 111
    .end local p0    # "this":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    :cond_1
    sub-long v0, p3, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->periodMillis:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 112
    .local v0, "m":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    .line 114
    .end local v0    # "m":D
    :goto_0
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->prevTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 97
    .end local p1    # "value":D
    .end local p3    # "time":J
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 98
    .restart local p1    # "value":D
    .restart local p3    # "time":J
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local p1    # "value":D
    .end local p3    # "time":J
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public add(Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;)V
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    .line 125
    monitor-enter p1

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->isNotSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    monitor-exit p1

    return-void

    .line 129
    :cond_0
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    .line 130
    .local v0, "otherValue":D
    iget-wide v2, p1, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->prevTime:J

    .line 131
    .local v2, "otherTime":J
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->add(DJ)V

    .line 133
    return-void

    .line 131
    .end local v0    # "otherValue":D
    .end local v2    # "otherTime":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 148
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->prevTime:J

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 147
    .end local p0    # "this":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->copy()Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    .locals 1

    .line 154
    new-instance v0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;-><init>(Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/MapStatComponent;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->copy()Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Double;
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->getPrimitive()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->get()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getFormattedValue(Z)Ljava/lang/String;
    .locals 5
    .param p1, "useCommas"    # Z

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->isNotSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 161
    .end local p0    # "this":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "NaN"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 163
    :cond_1
    if-eqz p1, :cond_2

    .line 164
    :try_start_2
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale2()Ljava/text/DecimalFormat;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 166
    :cond_2
    :try_start_3
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 158
    .end local p1    # "useCommas":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->name:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getPrimitive()D
    .locals 2

    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 137
    .end local p0    # "this":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotSet()Z
    .locals 4

    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->prevTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 172
    .end local p0    # "this":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 177
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DoubleExpMovingAvg[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->avg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prevTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->prevTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", periodMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->periodMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 177
    .end local p0    # "this":Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
