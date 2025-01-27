.class public abstract Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.super Ljava/lang/Object;
.source "AbstractMultiValuedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiValuedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;,
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;,
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;,
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;,
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapEntry;,
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;,
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;,
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;
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
        "Lorg/apache/commons/collections4/MultiValuedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient asMapView:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<",
            "TK;TV;>.AsMap;"
        }
    .end annotation
.end field

.field private transient entryValuesView:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<",
            "TK;TV;>.EntryValues;"
        }
    .end annotation
.end field

.field private transient keysMultiSetView:Lorg/apache/commons/collections4/MultiSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_0

    .line 93
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->map:Ljava/util/Map;

    .line 94
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    .line 58
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->map:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->asMapView:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->asMapView:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    :goto_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 243
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 134
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract createCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 929
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 930
    .local v0, "entrySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 932
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 933
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 934
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 935
    .local v4, "valueSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 938
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 939
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 930
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v4    # "valueSize":I
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 911
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 912
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 913
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 914
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 915
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 916
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 917
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    :cond_0
    goto :goto_0

    .line 918
    :cond_1
    return-void
.end method

.method public entries()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->entryValuesView:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->entryValuesView:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 373
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    if-ne p0, p1, :cond_0

    .line 374
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/collections4/MultiValuedMap;

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->asMap()Ljava/util/Map;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiValuedMap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 379
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->wrappedCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 384
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 200
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lorg/apache/commons/collections4/MultiSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TK;>;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->keysMultiSetView:Lorg/apache/commons/collections4/MultiSet;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V

    invoke-static {v0}, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;->unmodifiableMultiSet(Lorg/apache/commons/collections4/MultiSet;)Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->keysMultiSetView:Lorg/apache/commons/collections4/MultiSet;

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->keysMultiSetView:Lorg/apache/commons/collections4/MultiSet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->emptyMapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 258
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 259
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 261
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/4 v1, 0x1

    return v1

    .line 265
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 267
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 351
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    if-eqz p2, :cond_3

    .line 355
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 356
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    .line 357
    .local v0, "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 359
    .end local v0    # "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 360
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/commons/collections4/CollectionUtils;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 352
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Values must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    if-eqz p1, :cond_1

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 289
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 290
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 291
    :cond_0
    return v0

    .line 285
    .end local v0    # "changed":Z
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    if-eqz p1, :cond_1

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "changed":Z
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 313
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 314
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 315
    :cond_0
    return v0

    .line 309
    .end local v0    # "changed":Z
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lorg/apache/commons/collections4/CollectionUtils;->emptyIfNull(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 187
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 188
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 189
    const/4 v1, 0x0

    return v1

    .line 191
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 192
    .local v1, "changed":Z
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_1
    return v1
.end method

.method protected setMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->map:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public size()I
    .locals 4

    .line 221
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 222
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 223
    .local v2, "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 224
    .end local v2    # "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    goto :goto_0

    .line 225
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 389
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 237
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->valuesView:Ljava/util/Collection;

    .line 238
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V

    iput-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->valuesView:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method

.method wrappedCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    return-object v0
.end method
