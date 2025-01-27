.class public final Lorg/apache/commons/collections4/map/UnmodifiableMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "UnmodifiableMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25fbdc4e444af805L


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 108
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    .line 109
    return-void
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 64
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    .line 67
    .local v0, "tmpMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    return-object v0

    .line 69
    .end local v0    # "tmpMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 95
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 145
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 151
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    instance-of v0, v0, Lorg/apache/commons/collections4/IterableMap;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections4/IterableMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/IterableMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    .line 136
    .local v0, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    return-object v1

    .line 138
    .end local v0    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;-><init>(Ljava/util/Map;)V

    .line 139
    .restart local v0    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    .local p1, "mapToCopy":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableMap;, "Lorg/apache/commons/collections4/map/UnmodifiableMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 157
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
