.class public Lorg/apache/commons/collections4/set/CompositeSet;
.super Ljava/lang/Object;
.source "CompositeSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x47f511720dacfd3cL


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/set/CompositeSet$SetMutator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 75
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "sets":[Ljava/util/Set;, "[Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited([Ljava/util/Set;)V

    .line 85
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 220
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;->add(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported on CompositeSet without a SetMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;->addAll(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/List;Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addAll() is not supported on CompositeSet without a SetMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized addComposited(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    monitor-enter p0

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->getSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 358
    .local v1, "existingSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {v1, p1}, Lorg/apache/commons/collections4/CollectionUtils;->intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    .line 359
    .local v2, "intersects":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 360
    iget-object v3, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    if-eqz v3, :cond_1

    .line 364
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->getMutator()Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    move-result-object v3

    invoke-interface {v3, p0, v1, p1, v2}, Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;->resolveCollision(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Collection;)V

    .line 365
    invoke-static {v1, p1}, Lorg/apache/commons/collections4/CollectionUtils;->intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempt to add illegal entry unresolved by SetMutator.resolveCollision()"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    .end local p0    # "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Collision adding composited set with no SetMutator set"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    .end local v1    # "existingSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .end local v2    # "intersects":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 371
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 356
    .end local p1    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addComposited(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 381
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "set2":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 382
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 383
    return-void
.end method

.method public varargs addComposited([Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "sets":[Ljava/util/Set;, "[Ljava/util/Set<TE;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 392
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 391
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 332
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 333
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 334
    .end local v1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 132
    .local v1, "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    .end local v1    # "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/set/CompositeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const/4 v0, 0x0

    return v0

    .line 259
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 439
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 440
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 441
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 443
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_1
    return v1
.end method

.method protected getMutator()Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/set/CompositeSet$SetMutator<",
            "TE;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    return-object v0
.end method

.method public getSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 422
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 452
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    const/4 v0, 0x0

    .line 453
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 454
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 455
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 456
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 114
    .local v1, "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const/4 v0, 0x0

    return v0

    .line 117
    .end local v1    # "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>()V

    .line 155
    .local v0, "chain":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 156
    .local v2, "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 157
    .end local v2    # "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    goto :goto_0

    .line 158
    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 236
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->getSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 237
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 240
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 298
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 299
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 300
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 301
    :cond_1
    return v0
.end method

.method public removeComposited(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 402
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 317
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 318
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 319
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 320
    :cond_0
    return v0
.end method

.method public setMutator(Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/set/CompositeSet$SetMutator<",
            "TE;>;)V"
        }
    .end annotation

    .line 344
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "mutator":Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;, "Lorg/apache/commons/collections4/set/CompositeSet$SetMutator<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    .line 345
    return-void
.end method

.method public size()I
    .locals 4

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    const/4 v0, 0x0

    .line 98
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 99
    .local v2, "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 100
    .end local v2    # "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    goto :goto_0

    .line 101
    :cond_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 168
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 169
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 170
    .local v1, "i":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->size()I

    move-result v0

    .line 188
    .local v0, "size":I
    const/4 v1, 0x0

    .line 189
    .local v1, "result":[Ljava/lang/Object;
    array-length v2, p1

    if-lt v2, v0, :cond_0

    .line 190
    move-object v1, p1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 195
    :goto_0
    const/4 v2, 0x0

    .line 196
    .local v2, "offset":I
    iget-object v3, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 197
    .local v4, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 198
    .local v6, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "offset":I
    .local v7, "offset":I
    aput-object v6, v1, v2

    .line 199
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    move v2, v7

    goto :goto_2

    .line 200
    .end local v4    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .end local v7    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    goto :goto_1

    .line 201
    :cond_2
    array-length v3, v1

    if-le v3, v0, :cond_3

    .line 202
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 204
    :cond_3
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    return-object v3
.end method

.method public toSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
