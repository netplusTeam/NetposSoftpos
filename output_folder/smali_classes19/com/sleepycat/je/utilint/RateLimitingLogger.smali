.class public Lcom/sleepycat/je/utilint/RateLimitingLogger;
.super Ljava/lang/Object;
.source "RateLimitingLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private limitedMessageCount:J

.field private final logEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final logSamplePeriodMs:I

.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(IILjava/util/logging/Logger;)V
    .locals 2
    .param p1, "logSamplePeriodMs"    # I
    .param p2, "maxObjects"    # I
    .param p3, "logger"    # Ljava/util/logging/Logger;

    .line 64
    .local p0, "this":Lcom/sleepycat/je/utilint/RateLimitingLogger;, "Lcom/sleepycat/je/utilint/RateLimitingLogger<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->limitedMessageCount:J

    .line 66
    iput p1, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logSamplePeriodMs:I

    .line 67
    iput-object p3, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logger:Ljava/util/logging/Logger;

    .line 69
    new-instance v0, Lcom/sleepycat/je/utilint/RateLimitingLogger$1;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1, p2}, Lcom/sleepycat/je/utilint/RateLimitingLogger$1;-><init>(Lcom/sleepycat/je/utilint/RateLimitingLogger;II)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logEvents:Ljava/util/Map;

    .line 77
    return-void
.end method


# virtual methods
.method public getInternalLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 119
    .local p0, "this":Lcom/sleepycat/je/utilint/RateLimitingLogger;, "Lcom/sleepycat/je/utilint/RateLimitingLogger<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public declared-synchronized getLimitedMessageCount()J
    .locals 2

    .local p0, "this":Lcom/sleepycat/je/utilint/RateLimitingLogger;, "Lcom/sleepycat/je/utilint/RateLimitingLogger<TT;>;"
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->limitedMessageCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 81
    .end local p0    # "this":Lcom/sleepycat/je/utilint/RateLimitingLogger;, "Lcom/sleepycat/je/utilint/RateLimitingLogger<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMapSize()I
    .locals 1

    .line 87
    .local p0, "this":Lcom/sleepycat/je/utilint/RateLimitingLogger;, "Lcom/sleepycat/je/utilint/RateLimitingLogger<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized log(Ljava/lang/Object;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 7
    .param p2, "level"    # Ljava/util/logging/Level;
    .param p3, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/logging/Level;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/utilint/RateLimitingLogger;, "Lcom/sleepycat/je/utilint/RateLimitingLogger<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 102
    if-nez p1, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 107
    .end local p0    # "this":Lcom/sleepycat/je/utilint/RateLimitingLogger;, "Lcom/sleepycat/je/utilint/RateLimitingLogger<TT;>;"
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 109
    .local v0, "timeMs":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 110
    .local v1, "now":J
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v5, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logSamplePeriodMs:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 112
    :cond_1
    iget-wide v3, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->limitedMessageCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->limitedMessageCount:J

    .line 113
    iget-object v3, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logEvents:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v3, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v3, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_2
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "timeMs":Ljava/lang/Long;
    .end local v1    # "now":J
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    .end local p2    # "level":Ljava/util/logging/Level;
    .end local p3    # "string":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
