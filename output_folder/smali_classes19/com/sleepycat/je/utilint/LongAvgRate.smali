.class public Lcom/sleepycat/je/utilint/LongAvgRate;
.super Lcom/sleepycat/je/utilint/MapStatComponent;
.source "LongAvgRate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LongAvgRate;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MIN_PERIOD:J = 0xc8L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

.field private prevTime:J

.field private prevValue:J

.field private final reportTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/LongAvgRate;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 76
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 77
    new-instance v0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->copy()Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;-><init>(Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    .line 78
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LongAvgRate;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongAvgRate;->prevValue:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevValue:J

    .line 82
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

    .line 83
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRate;
    :try_start_4
    throw v0

    .line 84
    .restart local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRate;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "periodMillis"    # J
    .param p4, "reportTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 65
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 66
    new-instance v0, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-direct {v0, p1, p2, p3}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    .line 67
    if-eqz p4, :cond_0

    .line 68
    iput-object p4, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private addInternal(Lcom/sleepycat/je/utilint/LongAvgRate;)V
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 136
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->add(Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;)V

    .line 145
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongAvgRate;->prevValue:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevValue:J

    .line 146
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

    .line 148
    :cond_0
    return-void

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getPrimitive()J
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->getPrimitive()D

    move-result-wide v0

    .line 195
    .local v0, "inMillis":D
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne v2, v3, :cond_0

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    return-wide v2

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const-wide/16 v3, 0x1

    if-gez v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 199
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v2, v0, v2

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    return-wide v2

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    return-wide v2
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

    .line 245
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRate;
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

    .line 252
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 251
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRate;
    .end local p1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized add(JJ)V
    .locals 7
    .param p1, "value"    # J
    .param p3, "time"    # J

    monitor-enter p0

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    .line 105
    :try_start_0
    iget-wide v2, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 106
    sub-long v0, p3, v2

    .line 107
    .local v0, "deltaTime":J
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    iget-wide v3, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevValue:J

    sub-long v3, p1, v3

    long-to-double v3, v3

    long-to-double v5, v0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4, p3, p4}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->add(DJ)V

    .line 113
    .end local v0    # "deltaTime":J
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRate;
    :cond_1
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevValue:J

    .line 114
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 103
    .end local p1    # "value":J
    .end local p3    # "time":J
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 104
    .restart local p1    # "value":J
    .restart local p3    # "time":J
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .end local p1    # "value":J
    .end local p3    # "time":J
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public add(Lcom/sleepycat/je/utilint/LongAvgRate;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 123
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/LongAvgRate;->copy()Lcom/sleepycat/je/utilint/LongAvgRate;

    move-result-object v0

    .line 124
    .local v0, "copyOther":Lcom/sleepycat/je/utilint/LongAvgRate;
    monitor-enter p0

    .line 125
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/LongAvgRate;->addInternal(Lcom/sleepycat/je/utilint/LongAvgRate;)V

    .line 127
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "copyOther":Lcom/sleepycat/je/utilint/LongAvgRate;
    .end local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRate;
    :try_start_4
    throw v1

    .line 128
    .restart local v0    # "copyOther":Lcom/sleepycat/je/utilint/LongAvgRate;
    .restart local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRate;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->clear()V

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevValue:J

    .line 209
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 206
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRate;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRate;->copy()Lcom/sleepycat/je/utilint/LongAvgRate;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongAvgRate;
    .locals 1

    .line 214
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongAvgRate;-><init>(Lcom/sleepycat/je/utilint/LongAvgRate;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/MapStatComponent;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRate;->copy()Lcom/sleepycat/je/utilint/LongAvgRate;

    move-result-object v0

    return-object v0
.end method

.method public copyLatest(Lcom/sleepycat/je/utilint/LongAvgRate;)Lcom/sleepycat/je/utilint/LongAvgRate;
    .locals 5
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 158
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/LongAvgRate;->copy()Lcom/sleepycat/je/utilint/LongAvgRate;

    move-result-object v0

    .line 159
    .local v0, "otherCopy":Lcom/sleepycat/je/utilint/LongAvgRate;
    monitor-enter p0

    .line 160
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 161
    :try_start_1
    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

    iget-wide v3, v0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 162
    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongAvgRate;->addInternal(Lcom/sleepycat/je/utilint/LongAvgRate;)V

    .line 163
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    .line 165
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRate;->copy()Lcom/sleepycat/je/utilint/LongAvgRate;

    move-result-object v1

    .line 166
    .local v1, "result":Lcom/sleepycat/je/utilint/LongAvgRate;
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    :try_start_4
    invoke-direct {v1, v0}, Lcom/sleepycat/je/utilint/LongAvgRate;->addInternal(Lcom/sleepycat/je/utilint/LongAvgRate;)V

    .line 168
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v1

    .line 169
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "otherCopy":Lcom/sleepycat/je/utilint/LongAvgRate;
    .end local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRate;
    :try_start_8
    throw v2

    .line 170
    .end local v1    # "result":Lcom/sleepycat/je/utilint/LongAvgRate;
    .restart local v0    # "otherCopy":Lcom/sleepycat/je/utilint/LongAvgRate;
    .restart local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRate;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v0    # "otherCopy":Lcom/sleepycat/je/utilint/LongAvgRate;
    .end local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRate;
    :try_start_9
    throw v1

    .line 171
    .restart local v0    # "otherCopy":Lcom/sleepycat/je/utilint/LongAvgRate;
    .restart local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRate;
    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/LongAvgRate;->getPrimitive()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRate;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue(Z)Ljava/lang/String;
    .locals 3
    .param p1, "useCommas"    # Z

    .line 219
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRate;->isNotSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "unknown"

    return-object v0

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/LongAvgRate;->getPrimitive()J

    move-result-wide v0

    .line 223
    .local v0, "val":J
    if-eqz p1, :cond_1

    .line 224
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 226
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getPrevTime()J
    .locals 2

    monitor-enter p0

    .line 181
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 181
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRate;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNotSet()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;->isNotSet()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 237
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongAvgRate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->avg:Lcom/sleepycat/je/utilint/DoubleExpMovingAvg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prevValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prevTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongAvgRate;->prevTime:J

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

    .line 237
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRate;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
