.class public Lorg/jpos/space/SpaceUtil;
.super Ljava/lang/Object;
.source "SpaceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inpAll(Lorg/jpos/space/Space;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "sp"    # Lorg/jpos/space/Space;
    .param p1, "key"    # Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "list":Ljava/util/List;
    :goto_0
    invoke-interface {p0, p1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    if-nez v1, :cond_1

    .line 50
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 49
    :cond_1
    goto :goto_0
.end method

.method public static nextLong(Lorg/jpos/space/Space;Ljava/lang/Object;)J
    .locals 5
    .param p0, "sp"    # Lorg/jpos/space/Space;
    .param p1, "key"    # Ljava/lang/Object;

    .line 78
    const-wide/16 v0, 0x0

    .line 79
    .local v0, "l":J
    monitor-enter p0

    .line 80
    :try_start_0
    invoke-interface {p0, p1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "obj":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 82
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 83
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v0, v3

    .line 84
    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    move-wide v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, p1, v3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .end local v2    # "obj":Ljava/lang/Object;
    monitor-exit p0

    .line 86
    return-wide v0

    .line 85
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static outIfEmpty(Lorg/jpos/space/Space;Ljava/lang/Object;Ljava/lang/Object;JJ)Z
    .locals 1
    .param p0, "sp"    # Lorg/jpos/space/Space;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "nrdTimeout"    # J
    .param p5, "outTimeout"    # J

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    invoke-interface {p0, p1, p3, p4}, Lorg/jpos/space/Space;->nrd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    invoke-interface {p0, p1, p2, p5, p6}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 92
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 94
    :cond_0
    monitor-exit p0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static outWhenEmpty(Lorg/jpos/space/Space;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sp"    # Lorg/jpos/space/Space;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    invoke-interface {p0, p1}, Lorg/jpos/space/Space;->nrd(Ljava/lang/Object;)V

    .line 106
    invoke-interface {p0, p1, p2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static outWhenEmpty(Lorg/jpos/space/Space;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p0, "sp"    # Lorg/jpos/space/Space;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "timeout"    # J

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-interface {p0, p1}, Lorg/jpos/space/Space;->nrd(Ljava/lang/Object;)V

    .line 100
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sp"    # Lorg/jpos/space/Space;
    .param p1, "key"    # Ljava/lang/Object;

    .line 60
    :goto_0
    invoke-interface {p0, p1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public static wipeAndOut(Lorg/jpos/space/Space;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "sp"    # Lorg/jpos/space/Space;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 68
    invoke-interface {p0, p1, p2}, Lorg/jpos/space/Space;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static wipeAndOut(Lorg/jpos/space/Space;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0
    .param p0, "sp"    # Lorg/jpos/space/Space;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "timeout"    # J

    .line 75
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 76
    return-void
.end method
