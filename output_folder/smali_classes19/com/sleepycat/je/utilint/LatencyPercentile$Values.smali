.class Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
.super Ljava/lang/Object;
.source "LatencyPercentile.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/LatencyPercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final count:Ljava/util/concurrent/atomic/AtomicLong;

.field final histogram:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "maxTrackedLatencyMillis"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/utilint/LatencyPercentile$Values;)V
    .locals 5
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    iget-object v1, p1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 80
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    .line 81
    .local v0, "max":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    iget-object v3, p1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method add(Lcom/sleepycat/je/utilint/LatencyPercentile$Values;)Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    .locals 8
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 92
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    .line 93
    .local v0, "max":I
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    add-int/lit8 v2, v0, -0x1

    invoke-direct {v1, v2}, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;-><init>(I)V

    .line 94
    .local v1, "result":Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    iget-object v2, v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object v5, p1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 95
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 96
    iget-object v3, v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    iget-object v4, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 97
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    iget-object v6, p1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 96
    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method computeInterval(Lcom/sleepycat/je/utilint/LatencyPercentile$Values;)Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    .locals 8
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    .line 107
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    .line 108
    .local v0, "max":I
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    add-int/lit8 v2, v0, -0x1

    invoke-direct {v1, v2}, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;-><init>(I)V

    .line 109
    .local v1, "result":Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    iget-object v2, v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object v5, p1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 111
    iget-object v3, v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    iget-object v4, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 112
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    iget-object v6, p1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 111
    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method negate()Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    .line 123
    .local v0, "max":I
    new-instance v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;

    add-int/lit8 v2, v0, -0x1

    invoke-direct {v1, v2}, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;-><init>(I)V

    .line 124
    .local v1, "result":Lcom/sleepycat/je/utilint/LatencyPercentile$Values;
    iget-object v2, v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 125
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 126
    iget-object v3, v1, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    iget-object v4, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Values["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, " histogram={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/4 v1, 0x1

    .line 137
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LatencyPercentile$Values;->histogram:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    .line 139
    .local v3, "val":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 140
    if-nez v1, :cond_0

    .line 141
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 143
    :cond_0
    const/4 v1, 0x0

    .line 145
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .end local v3    # "val":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_2
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
