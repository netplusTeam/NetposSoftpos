.class public Lorg/apache/commons/collections4/multiset/HashMultiSet;
.super Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.source "HashMultiSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337952L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    .local p0, "this":Lorg/apache/commons/collections4/multiset/HashMultiSet;, "Lorg/apache/commons/collections4/multiset/HashMultiSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;-><init>(Ljava/util/Map;)V

    .line 47
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

    .line 55
    .local p0, "this":Lorg/apache/commons/collections4/multiset/HashMultiSet;, "Lorg/apache/commons/collections4/multiset/HashMultiSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/HashMultiSet;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/HashMultiSet;->addAll(Ljava/util/Collection;)Z

    .line 57
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

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/multiset/HashMultiSet;, "Lorg/apache/commons/collections4/multiset/HashMultiSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/multiset/HashMultiSet;->setMap(Ljava/util/Map;)V

    .line 81
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 82
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/multiset/HashMultiSet;, "Lorg/apache/commons/collections4/multiset/HashMultiSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 68
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 69
    return-void
.end method
