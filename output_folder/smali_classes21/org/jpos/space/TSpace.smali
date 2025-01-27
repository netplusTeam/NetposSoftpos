.class public Lorg/jpos/space/TSpace;
.super Ljava/lang/Object;
.source "TSpace.java"

# interfaces
.implements Lorg/jpos/space/LocalSpace;
.implements Lorg/jpos/util/Loggeable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/space/TSpace$Expirable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jpos/space/LocalSpace<",
        "TK;TV;>;",
        "Lorg/jpos/util/Loggeable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final GCDELAY:J = 0x1388L

.field private static final GCLONG:J = 0xea60L

.field private static final MAX_ENTRIES_IN_DUMP:I = 0x3e8

.field private static final NRD_RESOLUTION:J = 0x1f4L


# instance fields
.field protected entries:Ljava/util/Map;

.field private final expirables:[Ljava/util/Set;

.field private lastLongGC:J

.field protected sl:Lorg/jpos/space/TSpace;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 47
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/space/TSpace;->lastLongGC:J

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jpos/space/TSpace;->expirables:[Ljava/util/Set;

    .line 50
    invoke-static {}, Lorg/jpos/space/SpaceFactory;->getGCExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v3

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    const-wide/16 v7, 0x1388

    move-object v4, p0

    invoke-virtual/range {v3 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 51
    return-void
.end method

.method private gc(I)V
    .locals 4
    .param p1, "generation"    # I

    .line 197
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/jpos/space/TSpace;->expirables:[Ljava/util/Set;

    aget-object v1, v0, p1

    .line 199
    .local v1, "exps":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    aput-object v2, v0, p1

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 201
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 202
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-object v3, p0, Lorg/jpos/space/TSpace;->expirables:[Ljava/util/Set;

    aget-object v3, v3, p1

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 207
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 208
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v0, :cond_3

    .line 210
    monitor-enter p0

    .line 211
    :try_start_2
    iget-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jpos/space/TSpace;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    .line 213
    :cond_2
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 215
    :cond_3
    :goto_2
    return-void

    .line 200
    .end local v1    # "exps":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private getHead(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "remove"    # Z

    .line 440
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    const/4 v0, 0x0

    .line 441
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 442
    .local v1, "l":Ljava/util/List;
    const/4 v2, 0x0

    .line 443
    .local v2, "wasExpirable":Z
    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 444
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 445
    instance-of v4, v0, Lorg/jpos/space/TSpace$Expirable;

    if-eqz v4, :cond_1

    .line 446
    move-object v4, v0

    check-cast v4, Lorg/jpos/space/TSpace$Expirable;

    invoke-virtual {v4}, Lorg/jpos/space/TSpace$Expirable;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 447
    const/4 v2, 0x1

    .line 449
    :cond_1
    if-nez v0, :cond_0

    .line 450
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 451
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_2
    if-eqz v1, :cond_4

    .line 457
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 458
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 459
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 460
    iget-object v3, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    if-eqz v2, :cond_4

    .line 462
    invoke-direct {p0, p1}, Lorg/jpos/space/TSpace;->unregisterExpirable(Ljava/lang/Object;)V

    .line 465
    :cond_4
    return-object v0
.end method

.method private getList(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 433
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 434
    .local v0, "l":Ljava/util/List;
    if-nez v0, :cond_0

    .line 435
    iget-object v1, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    return-object v0
.end method

.method private getObject(Lorg/jpos/space/Template;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "tmpl"    # Lorg/jpos/space/Template;
    .param p2, "remove"    # Z

    .line 469
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    const/4 v0, 0x0

    .line 470
    .local v0, "obj":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/jpos/space/Template;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 471
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 472
    .local v2, "l":Ljava/util/List;
    if-eqz v2, :cond_3

    .line 473
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 474
    .local v3, "iter":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 475
    .local v4, "wasExpirable":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 476
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 477
    instance-of v5, v0, Lorg/jpos/space/TSpace$Expirable;

    if-eqz v5, :cond_0

    .line 478
    move-object v5, v0

    check-cast v5, Lorg/jpos/space/TSpace$Expirable;

    invoke-virtual {v5}, Lorg/jpos/space/TSpace$Expirable;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 479
    if-nez v0, :cond_0

    .line 480
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 481
    const/4 v4, 0x1

    .line 482
    goto :goto_0

    .line 485
    :cond_0
    invoke-interface {p1, v0}, Lorg/jpos/space/Template;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 486
    if-eqz p2, :cond_2

    .line 487
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 490
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 492
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 493
    iget-object v5, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    if-eqz v4, :cond_3

    .line 495
    invoke-direct {p0, v1}, Lorg/jpos/space/TSpace;->unregisterExpirable(Ljava/lang/Object;)V

    .line 498
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "wasExpirable":Z
    :cond_3
    return-object v0
.end method

.method private getSL()Lorg/jpos/space/TSpace;
    .locals 1

    .line 502
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lorg/jpos/space/TSpace;

    invoke-direct {v0}, Lorg/jpos/space/TSpace;-><init>()V

    iput-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    .line 505
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    iget-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    return-object v0

    .line 505
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerExpirable(Ljava/lang/Object;J)V
    .locals 3
    .param p2, "t"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)V"
        }
    .end annotation

    .line 510
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/TSpace;->expirables:[Ljava/util/Set;

    const-wide/32 v1, 0xea60

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method private unregisterExpirable(Ljava/lang/Object;)V
    .locals 4
    .param p1, "k"    # Ljava/lang/Object;

    .line 514
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/TSpace;->expirables:[Ljava/util/Set;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 515
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 514
    .end local v3    # "s":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "listener"    # Lorg/jpos/space/SpaceListener;

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 228
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/space/TSpace;->getSL()Lorg/jpos/space/TSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jpos/space/TSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 227
    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "listener":Lorg/jpos/space/SpaceListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "listener"    # Lorg/jpos/space/SpaceListener;
    .param p3, "timeout"    # J

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 235
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/space/TSpace;->getSL()Lorg/jpos/space/TSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jpos/space/TSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 234
    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "listener":Lorg/jpos/space/SpaceListener;
    .end local p3    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 13
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 272
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 273
    .local v0, "size":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x186a0

    if-le v0, v4, :cond_0

    .line 274
    const-string v4, "%sWARNING - space too big, size=%d%n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v4, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 275
    return-void

    .line 277
    :cond_0
    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v4, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 279
    .local v4, "keys":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    const/4 v5, 0x0

    .line 281
    .local v5, "i":I
    array-length v6, v4

    move v7, v2

    :goto_0
    const/4 v8, 0x3

    if-ge v7, v6, :cond_2

    aget-object v9, v4, v7

    .line 282
    .local v9, "key":Ljava/lang/Object;
    const-string v10, "%s<key count=\'%d\'>%s</key>%n"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object p2, v11, v2

    invoke-virtual {p0, v9}, Lorg/jpos/space/TSpace;->size(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    aput-object v9, v11, v1

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 283
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "i":I
    .local v10, "i":I
    const/16 v11, 0x3e8

    if-le v5, v11, :cond_1

    .line 284
    const-string v5, "%s...%n"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p2, v6, v2

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 285
    const-string v5, "%s...%n"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p2, v6, v2

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 286
    move v5, v10

    goto :goto_1

    .line 281
    .end local v9    # "key":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    move v5, v10

    goto :goto_0

    .line 289
    .end local v10    # "i":I
    .restart local v5    # "i":I
    :cond_2
    :goto_1
    const-string v6, "%s key-count: %d%n"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v2

    array-length v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 291
    monitor-enter p0

    .line 292
    :try_start_1
    iget-object v6, p0, Lorg/jpos/space/TSpace;->expirables:[Ljava/util/Set;

    aget-object v6, v6, v2

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    .line 293
    .local v6, "exp0":I
    iget-object v7, p0, Lorg/jpos/space/TSpace;->expirables:[Ljava/util/Set;

    aget-object v7, v7, v3

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    .line 294
    .local v7, "exp1":I
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    const-string v9, "%s    gcinfo: %d,%d%n"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-virtual {p1, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 296
    return-void

    .line 294
    .end local v6    # "exp0":I
    .end local v7    # "exp1":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 279
    .end local v4    # "keys":[Ljava/lang/Object;
    .end local v5    # "i":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public existAny([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)Z"
        }
    .end annotation

    .line 393
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 394
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 395
    const/4 v0, 0x1

    return v0

    .line 393
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    return v1
.end method

.method public existAny([Ljava/lang/Object;J)Z
    .locals 5
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;J)Z"
        }
    .end annotation

    .line 402
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 404
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    move-wide v3, v1

    .local v3, "duration":J
    cmp-long v1, v1, p2

    if-gez v1, :cond_1

    .line 405
    invoke-virtual {p0, p1}, Lorg/jpos/space/TSpace;->existAny([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const/4 v1, 0x1

    return v1

    .line 407
    :cond_0
    monitor-enter p0

    .line 409
    sub-long v1, p2, v3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :goto_1
    goto :goto_2

    .line 411
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 410
    :catch_0
    move-exception v1

    goto :goto_1

    .line 411
    :goto_2
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 413
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public gc()V
    .locals 4

    .line 188
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jpos/space/TSpace;->gc(I)V

    .line 189
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/space/TSpace;->lastLongGC:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jpos/space/TSpace;->gc(I)V

    .line 191
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/space/TSpace;->lastLongGC:J

    .line 193
    :cond_0
    return-void
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1

    .line 421
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 252
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 252
    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKeysAsString()Ljava/lang/String;
    .locals 4

    .line 256
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "sb":Ljava/lang/StringBuilder;
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v1, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "keys":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 262
    if-lez v2, :cond_0

    .line 263
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 260
    .end local v1    # "keys":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized in(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 105
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/TSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .local v1, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 107
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 110
    :cond_0
    monitor-exit p0

    return-object v1

    .line 104
    .end local v1    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized in(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 118
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/TSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 119
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 122
    sub-long v3, p2, v5

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 125
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 115
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized inp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 97
    :try_start_0
    instance-of v0, p1, Lorg/jpos/space/Template;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p1

    check-cast v0, Lorg/jpos/space/Template;

    invoke-direct {p0, v0, v1}, Lorg/jpos/space/TSpace;->getObject(Lorg/jpos/space/Template;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 99
    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v1}, Lorg/jpos/space/TSpace;->getHead(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 247
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 299
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    const/4 v0, 0x0

    .line 300
    .local v0, "listeners":[Ljava/lang/Object;
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v1, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-nez v1, :cond_0

    .line 302
    monitor-exit p0

    return-void

    .line 303
    :cond_0
    iget-object v1, v1, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 304
    .local v1, "l":Ljava/util/List;
    if-eqz v1, :cond_1

    .line 305
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 306
    .end local v1    # "l":Ljava/util/List;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    if-eqz v0, :cond_4

    .line 308
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 309
    .local v3, "listener":Ljava/lang/Object;
    move-object v4, v3

    .line 310
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Lorg/jpos/space/TSpace$Expirable;

    if-eqz v5, :cond_2

    .line 311
    move-object v5, v4

    check-cast v5, Lorg/jpos/space/TSpace$Expirable;

    invoke-virtual {v5}, Lorg/jpos/space/TSpace$Expirable;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 312
    :cond_2
    instance-of v5, v4, Lorg/jpos/space/SpaceListener;

    if-eqz v5, :cond_3

    .line 313
    move-object v5, v4

    check-cast v5, Lorg/jpos/space/SpaceListener;

    invoke-interface {v5, p1, p2}, Lorg/jpos/space/SpaceListener;->notify(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .end local v3    # "listener":Ljava/lang/Object;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_4
    return-void

    .line 306
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized nrd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 166
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 168
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 169
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 172
    const-wide/16 v3, 0x1f4

    sub-long v7, p2, v5

    :try_start_1
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 175
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 165
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nrd(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 156
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 158
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/space/TSpace;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 62
    .end local v0    # "l":Ljava/util/List;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/TSpace;->notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 71
    move-object v0, p2

    .line 72
    .local v0, "v":Ljava/lang/Object;
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 73
    new-instance v3, Lorg/jpos/space/TSpace$Expirable;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-direct {v3, p2, v4, v5}, Lorg/jpos/space/TSpace$Expirable;-><init>(Ljava/lang/Object;J)V

    move-object v0, v3

    .line 75
    :cond_0
    monitor-enter p0

    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/space/TSpace;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, "l":Ljava/util/List;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 80
    :cond_1
    cmp-long v1, p3, v1

    if-lez v1, :cond_2

    .line 81
    invoke-direct {p0, p1, p3, p4}, Lorg/jpos/space/TSpace;->registerExpirable(Ljava/lang/Object;J)V

    .line 83
    .end local v3    # "l":Ljava/util/List;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v1, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/TSpace;->notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    :cond_3
    return-void

    .line 83
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 70
    .end local v0    # "v":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/space/TSpace;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 324
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 325
    .local v1, "wasEmpty":Z
    const/4 v2, 0x0

    invoke-interface {v0, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 326
    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    .end local v0    # "l":Ljava/util/List;
    .end local v1    # "wasEmpty":Z
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iget-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/TSpace;->notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    :cond_1
    return-void

    .line 328
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 321
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 335
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 337
    move-object v0, p2

    .line 338
    .local v0, "v":Ljava/lang/Object;
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 339
    new-instance v3, Lorg/jpos/space/TSpace$Expirable;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-direct {v3, p2, v4, v5}, Lorg/jpos/space/TSpace$Expirable;-><init>(Ljava/lang/Object;J)V

    move-object v0, v3

    .line 341
    :cond_0
    monitor-enter p0

    .line 342
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/space/TSpace;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 343
    .local v3, "l":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 344
    .local v4, "wasEmpty":Z
    const/4 v5, 0x0

    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 345
    if-eqz v4, :cond_1

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 347
    :cond_1
    cmp-long v1, p3, v1

    if-lez v1, :cond_2

    .line 348
    invoke-direct {p0, p1, p3, p4}, Lorg/jpos/space/TSpace;->registerExpirable(Ljava/lang/Object;J)V

    .line 350
    .end local v3    # "l":Ljava/util/List;
    .end local v4    # "wasEmpty":Z
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    iget-object v1, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v1, :cond_3

    .line 352
    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/TSpace;->notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    :cond_3
    return-void

    .line 350
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 336
    .end local v0    # "v":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 357
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 362
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v1, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 365
    .end local v0    # "l":Ljava/util/List;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iget-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/TSpace;->notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    :cond_0
    return-void

    .line 365
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 374
    move-object v0, p2

    .line 375
    .local v0, "v":Ljava/lang/Object;
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 376
    new-instance v3, Lorg/jpos/space/TSpace$Expirable;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-direct {v3, p2, v4, v5}, Lorg/jpos/space/TSpace$Expirable;-><init>(Ljava/lang/Object;J)V

    move-object v0, v3

    .line 378
    :cond_0
    monitor-enter p0

    .line 379
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 380
    .local v3, "l":Ljava/util/List;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v4, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 383
    cmp-long v1, p3, v1

    if-lez v1, :cond_1

    .line 384
    invoke-direct {p0, p1, p3, p4}, Lorg/jpos/space/TSpace;->registerExpirable(Ljava/lang/Object;J)V

    .line 386
    .end local v3    # "l":Ljava/util/List;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    iget-object v1, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v1, :cond_2

    .line 388
    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/TSpace;->notifyListeners(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    :cond_2
    return-void

    .line 386
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 373
    .end local v0    # "v":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized rd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 131
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .local v1, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 133
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 136
    :cond_0
    monitor-exit p0

    return-object v1

    .line 130
    .end local v1    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 142
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 144
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 148
    sub-long v3, p2, v5

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 151
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 141
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rdp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 90
    :try_start_0
    instance-of v0, p1, Lorg/jpos/space/Template;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p1

    check-cast v0, Lorg/jpos/space/Template;

    invoke-direct {p0, v0, v1}, Lorg/jpos/space/TSpace;->getObject(Lorg/jpos/space/Template;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 92
    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v1}, Lorg/jpos/space/TSpace;->getHead(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "listener"    # Lorg/jpos/space/SpaceListener;

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/jpos/space/TSpace;->sl:Lorg/jpos/space/TSpace;

    if-eqz v0, :cond_0

    .line 243
    new-instance v1, Lorg/jpos/space/ObjectTemplate;

    invoke-direct {v1, p1, p2}, Lorg/jpos/space/ObjectTemplate;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jpos/space/TSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 241
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "listener":Lorg/jpos/space/SpaceListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 181
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/space/TSpace;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setEntries(Ljava/util/Map;)V
    .locals 0
    .param p1, "entries"    # Ljava/util/Map;

    .line 429
    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    iput-object p1, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    .line 430
    return-void
.end method

.method public declared-synchronized size(Ljava/lang/Object;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    monitor-enter p0

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "size":I
    :try_start_0
    iget-object v1, p0, Lorg/jpos/space/TSpace;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 221
    .local v1, "l":Ljava/util/List;
    if-eqz v1, :cond_0

    .line 222
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 223
    .end local p0    # "this":Lorg/jpos/space/TSpace;, "Lorg/jpos/space/TSpace<TK;TV;>;"
    :cond_0
    monitor-exit p0

    return v0

    .line 218
    .end local v0    # "size":I
    .end local v1    # "l":Ljava/util/List;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
