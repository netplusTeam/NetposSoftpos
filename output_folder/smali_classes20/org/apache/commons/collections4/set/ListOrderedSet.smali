.class public Lorg/apache/commons/collections4/set/ListOrderedSet;
.super Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;
.source "ListOrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x32c610905e312adL


# instance fields
.field private final setOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 139
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 150
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 164
    if-eqz p2, :cond_0

    .line 167
    iput-object p2, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 168
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static listOrderedSet(Ljava/util/List;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    .line 120
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz p0, :cond_0

    .line 123
    invoke-static {}, Lorg/apache/commons/collections4/functors/UniquePredicate;->uniquePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v1

    .line 121
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static listOrderedSet(Ljava/util/Set;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    .line 102
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static listOrderedSet(Ljava/util/Set;Ljava/util/List;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    .line 78
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz p0, :cond_2

    .line 81
    if-eqz p1, :cond_1

    .line 84
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 87
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set and List must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/set/ListOrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 307
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 321
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 323
    .local v0, "changed":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v1, "toAdd":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 325
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/set/ListOrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v0, 0x1

    .line 331
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 333
    :cond_1
    if-eqz v0, :cond_2

    .line 334
    iget-object v2, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 337
    :cond_2
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 205
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/set/ListOrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 206
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 207
    :cond_0
    return v0
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 184
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 290
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 55
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->iterator()Lorg/apache/commons/collections4/OrderedIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/commons/collections4/OrderedIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedIterator<",
            "TE;>;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Collection;Lorg/apache/commons/collections4/set/ListOrderedSet$1;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    .line 351
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 212
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 213
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    :cond_0
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

    .line 221
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 222
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "name":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 224
    .end local v2    # "name":Ljava/lang/Object;
    goto :goto_0

    .line 225
    :cond_0
    return v0
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

    .line 239
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 240
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x0

    return v1

    .line 243
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 244
    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 246
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 252
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_3
    :goto_1
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 257
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 364
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
