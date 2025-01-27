.class public Lorg/jpos/core/VolatileSequencer;
.super Ljava/lang/Object;
.source "VolatileSequencer.java"

# interfaces
.implements Lorg/jpos/core/Sequencer;
.implements Lorg/jpos/core/VolatileSequencerMBean;


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/core/VolatileSequencer;->map:Ljava/util/Map;

    .line 37
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 1
    .param p1, "counterName"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/VolatileSequencer;->get(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized get(Ljava/lang/String;I)I
    .locals 4
    .param p1, "counterName"    # Ljava/lang/String;
    .param p2, "add"    # I

    monitor-enter p0

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lorg/jpos/core/VolatileSequencer;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 46
    .local v1, "I":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 48
    .end local p0    # "this":Lorg/jpos/core/VolatileSequencer;
    :cond_0
    add-int/2addr v0, p2

    .line 49
    iget-object v2, p0, Lorg/jpos/core/VolatileSequencer;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return v0

    .line 43
    .end local v0    # "i":I
    .end local v1    # "I":Ljava/lang/Integer;
    .end local p1    # "counterName":Ljava/lang/String;
    .end local p2    # "add":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCounterNames()[Ljava/lang/String;
    .locals 4

    .line 73
    iget-object v0, p0, Lorg/jpos/core/VolatileSequencer;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "o":[Ljava/lang/Object;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 75
    .local v1, "s":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    return-object v1
.end method

.method public declared-synchronized set(Ljava/lang/String;I)I
    .locals 4
    .param p1, "counterName"    # Ljava/lang/String;
    .param p2, "newValue"    # I

    monitor-enter p0

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "oldValue":I
    :try_start_0
    iget-object v1, p0, Lorg/jpos/core/VolatileSequencer;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 67
    .local v1, "I":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 69
    .end local p0    # "this":Lorg/jpos/core/VolatileSequencer;
    :cond_0
    iget-object v2, p0, Lorg/jpos/core/VolatileSequencer;->map:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return v0

    .line 64
    .end local v0    # "oldValue":I
    .end local v1    # "I":Ljava/lang/Integer;
    .end local p1    # "counterName":Ljava/lang/String;
    .end local p2    # "newValue":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
