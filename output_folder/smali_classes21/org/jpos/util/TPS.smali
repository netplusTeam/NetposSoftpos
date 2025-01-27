.class public Lorg/jpos/util/TPS;
.super Ljava/lang/Object;
.source "TPS.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# static fields
.field static final FROM_NANOS:J = 0xf4240L


# instance fields
.field autoupdate:Z

.field avg:F

.field count:Ljava/util/concurrent/atomic/AtomicInteger;

.field peak:I

.field peakWhen:Ljava/time/Instant;

.field period:Ljava/time/Duration;

.field readings:Ljava/util/concurrent/atomic/AtomicLong;

.field protected simulatedNanoTime:J

.field start:Ljava/time/Instant;

.field timer:Ljava/util/Timer;

.field tps:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/util/TPS;-><init>(JZ)V

    .line 66
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 7
    .param p1, "period"    # J
    .param p3, "autoupdate"    # Z

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/util/TPS;->simulatedNanoTime:J

    .line 82
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/jpos/util/TPS;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/util/TPS;->peakWhen:Ljava/time/Instant;

    iput-object v2, p0, Lorg/jpos/util/TPS;->start:Ljava/time/Instant;

    .line 84
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lorg/jpos/util/TPS;->readings:Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/TPS;->period:Ljava/time/Duration;

    .line 86
    iput-boolean p3, p0, Lorg/jpos/util/TPS;->autoupdate:Z

    .line 87
    if-eqz p3, :cond_0

    .line 88
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/jpos/util/TPS;->timer:Ljava/util/Timer;

    .line 89
    new-instance v2, Lorg/jpos/util/TPS$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/jpos/util/TPS$1;-><init>(Lorg/jpos/util/TPS;J)V

    move-wide v3, p1

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 96
    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "autoupdate"    # Z

    .line 73
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1, p1}, Lorg/jpos/util/TPS;-><init>(JZ)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/util/TPS;J)F
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/TPS;
    .param p1, "x1"    # J

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/jpos/util/TPS;->calcTPS(J)F

    move-result v0

    return v0
.end method

.method private calcTPS()F
    .locals 3

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 189
    .local v0, "now":Ljava/time/Instant;
    iget-object v1, p0, Lorg/jpos/util/TPS;->start:Ljava/time/Instant;

    invoke-static {v1, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    .line 190
    .local v1, "interval":Ljava/time/Duration;
    iget-object v2, p0, Lorg/jpos/util/TPS;->period:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 191
    invoke-direct {p0, v1}, Lorg/jpos/util/TPS;->calcTPS(Ljava/time/Duration;)F

    .line 192
    iput-object v0, p0, Lorg/jpos/util/TPS;->start:Ljava/time/Instant;

    .line 194
    :cond_0
    iget v2, p0, Lorg/jpos/util/TPS;->tps:F

    monitor-exit p0

    return v2

    .line 195
    .end local v0    # "now":Ljava/time/Instant;
    .end local v1    # "interval":Ljava/time/Duration;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private calcTPS(J)F
    .locals 1
    .param p1, "interval"    # J

    .line 166
    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/util/TPS;->calcTPS(Ljava/time/Duration;)F

    move-result v0

    return v0
.end method

.method private calcTPS(Ljava/time/Duration;)F
    .locals 6
    .param p1, "interval"    # Ljava/time/Duration;

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/TPS;->period:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lorg/jpos/util/TPS;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/jpos/util/TPS;->tps:F

    .line 172
    iget-object v0, p0, Lorg/jpos/util/TPS;->period:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 173
    iget v0, p0, Lorg/jpos/util/TPS;->tps:F

    iget-object v1, p0, Lorg/jpos/util/TPS;->period:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/jpos/util/TPS;->tps:F

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/TPS;->readings:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 176
    .local v0, "r":J
    long-to-float v2, v0

    iget v3, p0, Lorg/jpos/util/TPS;->avg:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/jpos/util/TPS;->tps:F

    add-float/2addr v2, v3

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    move-wide v0, v4

    long-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Lorg/jpos/util/TPS;->avg:F

    .line 177
    iget v2, p0, Lorg/jpos/util/TPS;->peak:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    .line 178
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lorg/jpos/util/TPS;->peak:I

    .line 179
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/util/TPS;->peakWhen:Ljava/time/Instant;

    .line 181
    :cond_1
    iget-object v2, p0, Lorg/jpos/util/TPS;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 182
    iget v2, p0, Lorg/jpos/util/TPS;->tps:F

    monitor-exit p0

    return v2

    .line 183
    .end local v0    # "r":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<tps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jpos/util/TPS;->autoupdate:Z

    if-eqz v1, :cond_0

    const-string v1, " auto=\'true\'>"

    goto :goto_0

    :cond_0
    const-string v1, ">"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lorg/jpos/util/TPS;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</tps>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public floatValue()F
    .locals 1

    .line 103
    iget-boolean v0, p0, Lorg/jpos/util/TPS;->autoupdate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jpos/util/TPS;->tps:F

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/jpos/util/TPS;->calcTPS()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getAvg()F
    .locals 1

    .line 111
    iget v0, p0, Lorg/jpos/util/TPS;->avg:F

    return v0
.end method

.method public getElapsed()J
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/jpos/util/TPS;->start:Ljava/time/Instant;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getNanoTime()J
    .locals 4

    .line 206
    iget-wide v0, p0, Lorg/jpos/util/TPS;->simulatedNanoTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getPeak()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/jpos/util/TPS;->peak:I

    return v0
.end method

.method public getPeakWhen()J
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/jpos/util/TPS;->peakWhen:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeriod()J
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/jpos/util/TPS;->period:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public intValue()I
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/jpos/util/TPS;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    .line 126
    monitor-enter p0

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/jpos/util/TPS;->avg:F

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/util/TPS;->peak:I

    .line 129
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iput-object v0, p0, Lorg/jpos/util/TPS;->peakWhen:Ljava/time/Instant;

    .line 130
    iget-object v0, p0, Lorg/jpos/util/TPS;->readings:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 131
    monitor-exit p0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSimulatedNanoTime(J)V
    .locals 4
    .param p1, "simulatedNanoTime"    # J

    .line 199
    iget-wide v0, p0, Lorg/jpos/util/TPS;->simulatedNanoTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 200
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/TPS;->start:Ljava/time/Instant;

    .line 202
    :cond_0
    iput-wide p1, p0, Lorg/jpos/util/TPS;->simulatedNanoTime:J

    .line 203
    return-void
.end method

.method public stop()V
    .locals 1

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/TPS;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/TPS;->timer:Ljava/util/Timer;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/util/TPS;->autoupdate:Z

    .line 154
    :cond_0
    monitor-exit p0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tick()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/jpos/util/TPS;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jpos/util/TPS;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/jpos/util/TPS;->getPeak()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/jpos/util/TPS;->getAvg()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "tps=%d, peak=%d, avg=%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
