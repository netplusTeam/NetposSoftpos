.class public Lorg/jpos/util/ExceptionLogFilter;
.super Ljava/lang/Object;
.source "ExceptionLogFilter.java"

# interfaces
.implements Lorg/jpos/util/LogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 4
    .param p1, "evt"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    :try_start_1
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 35
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 36
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 37
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 37
    :catchall_0
    move-exception v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lorg/jpos/util/ExceptionLogFilter;
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 31
    .end local p1    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
