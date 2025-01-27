.class public Lorg/jpos/util/ThroughputControl;
.super Ljava/lang/Object;
.source "ThroughputControl.java"


# instance fields
.field private cnt:[I

.field private max:[I

.field private period:[I

.field private sleep:[J

.field private start:[J


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "maxTransactions"    # I
    .param p2, "periodInMillis"    # I

    .line 40
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    new-array v0, v0, [I

    aput p2, v0, v2

    invoke-direct {p0, v1, v0}, Lorg/jpos/util/ThroughputControl;-><init>([I[I)V

    .line 42
    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 7
    .param p1, "maxTransactions"    # [I
    .param p2, "periodInMillis"    # [I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    array-length v0, p1

    .line 50
    .local v0, "l":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jpos/util/ThroughputControl;->period:[I

    .line 51
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jpos/util/ThroughputControl;->max:[I

    .line 52
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jpos/util/ThroughputControl;->cnt:[I

    .line 53
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/jpos/util/ThroughputControl;->start:[J

    .line 54
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/jpos/util/ThroughputControl;->sleep:[J

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    iget-object v2, p0, Lorg/jpos/util/ThroughputControl;->max:[I

    aget v3, p1, v1

    aput v3, v2, v1

    .line 57
    iget-object v2, p0, Lorg/jpos/util/ThroughputControl;->period:[I

    aget v3, p2, v1

    aput v3, v2, v1

    .line 58
    iget-object v2, p0, Lorg/jpos/util/ThroughputControl;->sleep:[J

    aget v3, p2, v1

    div-int/lit8 v3, v3, 0xa

    int-to-long v3, v3

    const-wide/16 v5, 0x1f4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x32

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 59
    iget-object v2, p0, Lorg/jpos/util/ThroughputControl;->start:[J

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public control()J
    .locals 14

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "delayed":Z
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 72
    .local v1, "init":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/jpos/util/ThroughputControl;->cnt:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v4, p0, Lorg/jpos/util/ThroughputControl;->cnt:[I

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :goto_1
    iget-object v4, p0, Lorg/jpos/util/ThroughputControl;->cnt:[I

    aget v4, v4, v3

    iget-object v5, p0, Lorg/jpos/util/ThroughputControl;->max:[I

    aget v5, v5, v3

    if-le v4, v5, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :try_start_1
    iget-object v4, p0, Lorg/jpos/util/ThroughputControl;->sleep:[J

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 81
    :catch_0
    move-exception v4

    :goto_2
    nop

    .line 83
    move v4, v0

    goto :goto_3

    .line 77
    :cond_0
    move v4, v0

    .line 83
    .end local v0    # "delayed":Z
    .local v4, "delayed":Z
    :goto_3
    monitor-enter p0

    .line 84
    :try_start_2
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 85
    .local v5, "now":J
    iget-object v0, p0, Lorg/jpos/util/ThroughputControl;->start:[J

    aget-wide v7, v0, v3

    sub-long v9, v5, v7

    iget-object v11, p0, Lorg/jpos/util/ThroughputControl;->period:[I

    aget v11, v11, v3

    int-to-long v12, v11

    cmp-long v9, v9, v12

    if-lez v9, :cond_1

    .line 86
    sub-long v7, v5, v7

    .line 87
    .local v7, "elapsed":J
    iget-object v9, p0, Lorg/jpos/util/ThroughputControl;->max:[I

    aget v9, v9, v3

    int-to-long v9, v9

    mul-long/2addr v9, v7

    int-to-long v11, v11

    div-long/2addr v9, v11

    long-to-int v9, v9

    .line 88
    .local v9, "allowed":I
    aput-wide v5, v0, v3

    .line 89
    iget-object v0, p0, Lorg/jpos/util/ThroughputControl;->cnt:[I

    aget v10, v0, v3

    sub-int/2addr v10, v9

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v0, v3

    .line 91
    .end local v5    # "now":J
    .end local v7    # "elapsed":J
    .end local v9    # "allowed":I
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    iget-object v0, p0, Lorg/jpos/util/ThroughputControl;->cnt:[I

    aget v0, v0, v3

    iget-object v5, p0, Lorg/jpos/util/ThroughputControl;->max:[I

    aget v5, v5, v3

    if-gt v0, v5, :cond_2

    .line 72
    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    .line 92
    :cond_2
    move v0, v4

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 75
    .end local v4    # "delayed":Z
    .restart local v0    # "delayed":Z
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 94
    .end local v3    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    sub-long/2addr v3, v1

    goto :goto_4

    :cond_4
    const-wide/16 v3, 0x0

    :goto_4
    return-wide v3
.end method
