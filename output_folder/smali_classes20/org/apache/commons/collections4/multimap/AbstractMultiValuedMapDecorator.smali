.class public abstract Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;
.super Ljava/lang/Object;
.source "AbstractMultiValuedMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiValuedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MultiValuedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337954L


# instance fields
.field private final map:Lorg/apache/commons/collections4/MultiValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->map:Lorg/apache/commons/collections4/MultiValuedMap;

    .line 61
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MultiValuedMap must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->clear()V

    .line 117
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/MultiValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->map:Lorg/apache/commons/collections4/MultiValuedMap;

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 171
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 179
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

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

    .line 126
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lorg/apache/commons/collections4/MultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TK;>;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->keys()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

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

    .line 166
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->putAll(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z

    move-result v0

    return v0
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

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 184
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
