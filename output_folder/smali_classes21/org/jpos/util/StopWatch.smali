.class public Lorg/jpos/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field end:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "periodInMillis"    # J

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lorg/jpos/util/StopWatch;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 31
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jpos/util/StopWatch;->end:J

    .line 28
    return-void
.end method

.method public static get(JLjava/util/concurrent/TimeUnit;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .param p0, "period"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 45
    .local p3, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Lorg/jpos/util/StopWatch;

    invoke-direct {v0, p0, p1, p2}, Lorg/jpos/util/StopWatch;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 46
    .local v0, "w":Lorg/jpos/util/StopWatch;
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 47
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Lorg/jpos/util/StopWatch;->finish()V

    .line 48
    return-object v1
.end method

.method public static get(JLjava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 52
    .local p2, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0, p2}, Lorg/jpos/util/StopWatch;->get(JLjava/util/concurrent/TimeUnit;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    .local v0, "now":J
    iget-wide v2, p0, Lorg/jpos/util/StopWatch;->end:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 36
    sub-long/2addr v2, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method public isFinished()Z
    .locals 4

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/util/StopWatch;->end:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
