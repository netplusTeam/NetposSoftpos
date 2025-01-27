.class public final Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "UnmodifiableBoundedCollection.java"

# interfaces
.implements Lorg/apache/commons/collections4/BoundedCollection;
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/BoundedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x62b549d99a7f6feaL


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/BoundedCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    .local p1, "coll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 113
    return-void
.end method

.method public static unmodifiableBoundedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/BoundedCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "TE;>;"
        }
    .end annotation

    .line 82
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-eqz p0, :cond_5

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_3

    .line 88
    instance-of v1, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v1, :cond_0

    .line 89
    goto :goto_2

    .line 91
    :cond_0
    instance-of v1, p0, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;

    if-eqz v1, :cond_1

    .line 92
    move-object v1, p0

    check-cast v1, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object p0

    goto :goto_1

    .line 93
    :cond_1
    instance-of v1, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;

    if-eqz v1, :cond_2

    .line 94
    move-object v1, p0

    check-cast v1, Lorg/apache/commons/collections4/collection/SynchronizedCollection;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object p0

    .line 87
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_3
    :goto_2
    instance-of v0, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;

    move-object v1, p0

    check-cast v1, Lorg/apache/commons/collections4/BoundedCollection;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections4/BoundedCollection;)V

    return-object v0

    .line 99
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collection is not a bounded collection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unmodifiableBoundedCollection(Lorg/apache/commons/collections4/BoundedCollection;)Lorg/apache/commons/collections4/BoundedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "TE;>;"
        }
    .end annotation

    .line 59
    .local p0, "coll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<+TE;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p0

    .line 62
    .local v0, "tmpColl":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<TE;>;"
    return-object v0

    .line 64
    .end local v0    # "tmpColl":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<TE;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections4/BoundedCollection;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
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

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 43
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->decorated()Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/BoundedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "TE;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/BoundedCollection;

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->decorated()Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->isFull()Z

    move-result v0

    return v0
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

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->decorated()Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 159
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->decorated()Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->maxSize()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 138
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
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

    .line 143
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
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

    .line 148
    .local p0, "this":Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;, "Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
