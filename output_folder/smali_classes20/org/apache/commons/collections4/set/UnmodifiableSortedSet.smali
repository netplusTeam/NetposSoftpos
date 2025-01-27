.class public final Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;
.super Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;
.source "UnmodifiableSortedSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xa10fc3e85b39c38L


# direct methods
.method private constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;-><init>(Ljava/util/Set;)V

    .line 71
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

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->setCollection(Ljava/util/Collection;)V

    .line 151
    return-void
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 57
    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

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

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 138
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

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 119
    .local v0, "head":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v1

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
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

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
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

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 113
    .local v0, "sub":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v1

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 125
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v1

    return-object v1
.end method
