.class public Lorg/apache/commons/collections4/map/CompositeMap;
.super Lorg/apache/commons/collections4/map/AbstractIterableMap;
.source "CompositeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractIterableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x549ca6b25f2a5542L


# instance fields
.field private composite:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "one":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "two":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "one":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "two":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "mutator":Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;, "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    .line 87
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "composite":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    .line 98
    return-void
.end method

.method public constructor <init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "composite":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    .local p2, "mutator":Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;, "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;-><init>()V

    .line 109
    iput-object p2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    .line 110
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    .line 111
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 112
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;->addComposited(Ljava/util/Map;)V

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 136
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/CollectionUtils;->intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    .line 137
    .local v1, "intersect":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v2, :cond_0

    .line 141
    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v2, p0, v3, p1, v1}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_1

    .line 139
    .end local p0    # "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key collision adding Map to CompositeMap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v1    # "intersect":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/util/Map;

    .line 145
    .local v1, "temp":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    .line 147
    iput-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 134
    .end local v1    # "temp":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 179
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 180
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 179
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 202
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 203
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    return v1

    .line 202
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 228
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 229
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    return v1

    .line 228
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections4/set/CompositeSet;-><init>()V

    .line 256
    .local v0, "entries":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 257
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 256
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 479
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 480
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 481
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 483
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 289
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 288
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 492
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 493
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 494
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 495
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 496
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 303
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 304
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 308
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections4/set/CompositeSet;-><init>()V

    .line 329
    .local v0, "keys":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TK;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 330
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 329
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 332
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 365
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->put(Lorg/apache/commons/collections4/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->putAll(Lorg/apache/commons/collections4/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V

    .line 396
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 426
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 425
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 430
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized removeComposited(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    .line 159
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 160
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Ljava/util/Map;

    .line 162
    .local v2, "temp":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-object p1

    .line 159
    .end local v2    # "temp":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    .end local p0    # "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 157
    .end local v0    # "size":I
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMutator(Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "mutator":Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;, "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    .line 124
    return-void
.end method

.method public size()I
    .locals 3

    .line 442
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 443
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 444
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 443
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 464
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/collection/CompositeCollection;

    invoke-direct {v0}, Lorg/apache/commons/collections4/collection/CompositeCollection;-><init>()V

    .line 465
    .local v0, "values":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 466
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    .line 465
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 468
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
