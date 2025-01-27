.class public Lorg/apache/commons/collections4/bag/TreeBag;
.super Lorg/apache/commons/collections4/bag/AbstractMapBag;
.source "TreeBag.java"

# interfaces
.implements Lorg/apache/commons/collections4/SortedBag;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/AbstractMapBag<",
        "TE;>;",
        "Lorg/apache/commons/collections4/SortedBag<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b6a863e27182494L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;-><init>(Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/bag/TreeBag;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/TreeBag;->addAll(Ljava/util/Collection;)Z

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;-><init>(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 143
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 144
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-super {p0, v1, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 145
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

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TreeBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 130
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 131
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TreeBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_1

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be added to a naturally ordered TreeBag as it does not implement Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TreeBag;->getMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TreeBag;->getMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getMap()Ljava/util/Map;
    .locals 1

    .line 44
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TreeBag;->getMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected getMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/bag/TreeBag;, "Lorg/apache/commons/collections4/bag/TreeBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TreeBag;->getMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
