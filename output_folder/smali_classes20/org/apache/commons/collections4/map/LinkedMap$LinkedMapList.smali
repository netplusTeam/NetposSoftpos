.class Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;
.super Ljava/util/AbstractList;
.source "LinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/LinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkedMapList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/LinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/LinkedMap<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/LinkedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/LinkedMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/LinkedMap;, "Lorg/apache/commons/collections4/map/LinkedMap<TK;*>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 222
    iput-object p1, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    .line 223
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 277
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 237
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 242
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 247
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TK;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    invoke-super {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->umodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TK;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->umodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 262
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 267
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 272
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 227
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndexInclusive"    # I
    .param p2, "toIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 282
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

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

    .line 287
    .local p0, "this":Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;, "Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList<TK;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
