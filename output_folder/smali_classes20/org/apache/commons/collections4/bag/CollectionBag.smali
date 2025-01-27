.class public final Lorg/apache/commons/collections4/bag/CollectionBag;
.super Lorg/apache/commons/collections4/bag/AbstractBagDecorator;
.source "CollectionBag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2387111919426757L


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Bag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    .local p1, "bag":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;-><init>(Lorg/apache/commons/collections4/Bag;)V

    .line 66
    return-void
.end method

.method public static collectionBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 54
    .local p0, "bag":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/bag/CollectionBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/CollectionBag;-><init>(Lorg/apache/commons/collections4/Bag;)V

    return-object v0
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

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 91
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/CollectionBag;->setCollection(Ljava/util/Collection;)V

    .line 92
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 78
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/CollectionBag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    .line 237
    const/4 v0, 0x1

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

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 137
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/CollectionBag;->add(Ljava/lang/Object;I)Z

    move-result v2

    .line 140
    .local v2, "added":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v0, v3

    .line 141
    .end local v2    # "added":Z
    goto :goto_0

    .line 142
    :cond_2
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/bag/CollectionBag;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const/4 v1, 0x0

    return v1

    .line 116
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/CollectionBag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_3

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 176
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/CollectionBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/CollectionBag;->remove(Ljava/lang/Object;I)Z

    move-result v3

    .line 177
    .local v3, "changed":Z
    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v0, v4

    .line 178
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "changed":Z
    goto :goto_0

    .line 179
    :cond_2
    return v0

    .line 182
    .end local v0    # "result":Z
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/Bag;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionBag;, "Lorg/apache/commons/collections4/bag/CollectionBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_2

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionBag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    .local v1, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    return v0

    .line 216
    .end local v0    # "modified":Z
    .end local v1    # "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionBag;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/Bag;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
