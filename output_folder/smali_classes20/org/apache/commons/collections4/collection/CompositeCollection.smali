.class public Lorg/apache/commons/collections4/collection/CompositeCollection;
.super Ljava/lang/Object;
.source "CompositeCollection.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x74d105f656c97d71L


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollection1":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "compositeCollection2":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 79
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollections":[Ljava/util/Collection;, "[Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    .line 89
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

    .line 225
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->add(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported on CompositeCollection without a CollectionMutator strategy"

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

    .line 285
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->addAll(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addAll() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addComposited(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method public addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollection1":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "compositeCollection2":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method public varargs addComposited([Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 383
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollections":[Ljava/util/Collection;, "[Ljava/util/Collection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    return-void
.end method

.method public clear()V
    .locals 2

    .line 341
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 342
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 343
    .end local v1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 136
    .local v1, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    .end local v1    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    goto :goto_0

    .line 140
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

    .line 263
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 264
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/CompositeCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    const/4 v0, 0x0

    return v0

    .line 267
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMutator()Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 118
    .local v1, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    .end local v1    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    goto :goto_0

    .line 122
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

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>()V

    .line 159
    .local v0, "chain":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 160
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 161
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 162
    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 245
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->remove(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 303
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    return v0

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 307
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 308
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 309
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 310
    :cond_1
    return v0
.end method

.method public removeComposited(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 393
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

    .line 325
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 326
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 327
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 328
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 329
    :cond_0
    return v0
.end method

.method public setMutator(Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;)V"
        }
    .end annotation

    .line 353
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "mutator":Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;, "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    .line 354
    return-void
.end method

.method public size()I
    .locals 4

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 103
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 104
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 105
    :cond_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 172
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 174
    .local v1, "i":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
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

    .line 191
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->size()I

    move-result v0

    .line 192
    .local v0, "size":I
    const/4 v1, 0x0

    .line 193
    .local v1, "result":[Ljava/lang/Object;
    array-length v2, p1

    if-lt v2, v0, :cond_0

    .line 194
    move-object v1, p1

    goto :goto_0

    .line 196
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

    .line 199
    :goto_0
    const/4 v2, 0x0

    .line 200
    .local v2, "offset":I
    iget-object v3, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 201
    .local v4, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 202
    .local v6, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "offset":I
    .local v7, "offset":I
    aput-object v6, v1, v2

    .line 203
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    move v2, v7

    goto :goto_2

    .line 204
    .end local v4    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .end local v7    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    goto :goto_1

    .line 205
    :cond_2
    array-length v3, v1

    if-le v3, v0, :cond_3

    .line 206
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 208
    :cond_3
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    return-object v3
.end method

.method public toCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
