.class public final Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;
.super Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;
.source "UnmodifiableNavigableSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337900L


# direct methods
.method private constructor <init>(Ljava/util/NavigableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;-><init>(Ljava/util/NavigableSet;)V

    .line 69
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

    .line 179
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 180
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->setCollection(Ljava/util/Collection;)V

    .line 181
    return-void
.end method

.method public static unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 54
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 55
    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

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

    .line 166
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 168
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

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
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

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 149
    .local v0, "head":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v1

    return-object v1
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

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 118
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

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
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

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
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

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 143
    .local v0, "sub":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v1

    return-object v1
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

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 112
    .local v0, "sub":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v1

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 155
    .local v0, "tail":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

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

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 124
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v1

    return-object v1
.end method
