.class public Lcom/sleepycat/je/utilint/LongDiffStat;
.super Lcom/sleepycat/je/utilint/MapStatComponent;
.source "LongDiffStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LongDiffStat;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base:Lcom/sleepycat/je/utilint/Stat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private diff:J

.field private prevTime:J

.field private prevValue:J

.field private final validityMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/LongDiffStat;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongDiffStat;

    .line 77
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 78
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LongDiffStat;->base:Lcom/sleepycat/je/utilint/Stat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->base:Lcom/sleepycat/je/utilint/Stat;

    .line 79
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongDiffStat;->validityMillis:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->validityMillis:J

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongDiffStat;->prevValue:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevValue:J

    .line 83
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongDiffStat;->prevTime:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevTime:J

    .line 84
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongDiffStat;->diff:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->diff:J

    .line 85
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "other":Lcom/sleepycat/je/utilint/LongDiffStat;
    :try_start_4
    throw v0

    .line 86
    .restart local p1    # "other":Lcom/sleepycat/je/utilint/LongDiffStat;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/Stat;J)V
    .locals 2
    .param p2, "validityMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 70
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 71
    if-eqz p1, :cond_1

    .line 72
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->base:Lcom/sleepycat/je/utilint/Stat;

    .line 74
    iput-wide p2, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->validityMillis:J

    .line 75
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
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

    .line 183
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongDiffStat;
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

    .line 190
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 189
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongDiffStat;
    .end local p1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 146
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevValue:J

    .line 147
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevTime:J

    .line 148
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->diff:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 145
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongDiffStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongDiffStat;->copy()Lcom/sleepycat/je/utilint/LongDiffStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongDiffStat;
    .locals 1

    .line 153
    new-instance v0, Lcom/sleepycat/je/utilint/LongDiffStat;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongDiffStat;-><init>(Lcom/sleepycat/je/utilint/LongDiffStat;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/MapStatComponent;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongDiffStat;->copy()Lcom/sleepycat/je/utilint/LongDiffStat;

    move-result-object v0

    return-object v0
.end method

.method public get(J)J
    .locals 6
    .param p1, "time"    # J

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v2, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevTime:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 99
    monitor-exit p0

    return-wide v0

    .line 101
    :cond_0
    iget-wide v4, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->validityMillis:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 102
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->diff:J

    monitor-exit p0

    return-wide v0

    .line 104
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->base:Lcom/sleepycat/je/utilint/Stat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 106
    .local v2, "baseValue":J
    monitor-enter p0

    .line 107
    :try_start_1
    iget-wide v4, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevValue:J

    sub-long v4, v2, v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 104
    .end local v2    # "baseValue":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/utilint/LongDiffStat;->get(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongDiffStat;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getFormattedValue(Z)Ljava/lang/String;
    .locals 3
    .param p1, "useCommas"    # Z

    monitor-enter p0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongDiffStat;->isNotSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "Unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 160
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongDiffStat;
    :cond_0
    if-eqz p1, :cond_1

    .line 161
    :try_start_1
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/je/utilint/LongDiffStat;->get(J)J

    move-result-wide v1

    .line 161
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/utilint/LongDiffStat;->get(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 157
    .end local p1    # "useCommas":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isNotSet()Z
    .locals 4

    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevTime:J
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

    .line 170
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongDiffStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(J)V
    .locals 2
    .param p1, "newValue"    # J

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/LongDiffStat;->set(JJ)V

    .line 118
    return-void
.end method

.method public set(JJ)V
    .locals 6
    .param p1, "newValue"    # J
    .param p3, "time"    # J

    .line 127
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->base:Lcom/sleepycat/je/utilint/Stat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 129
    .local v2, "baseValue":J
    monitor-enter p0

    .line 130
    :try_start_0
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevValue:J

    .line 131
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevTime:J

    .line 132
    sub-long v4, v2, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->diff:J

    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 127
    .end local v2    # "baseValue":J
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongDiffStat[prevValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prevTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->prevTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongDiffStat;->diff:J

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

    .line 175
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongDiffStat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
