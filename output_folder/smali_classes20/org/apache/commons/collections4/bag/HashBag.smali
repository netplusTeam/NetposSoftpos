.class public Lorg/apache/commons/collections4/bag/HashBag;
.super Lorg/apache/commons/collections4/bag/AbstractMapBag;
.source "HashBag.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/AbstractMapBag<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5b0dc3ba0157ee9dL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    .local p0, "this":Lorg/apache/commons/collections4/bag/HashBag;, "Lorg/apache/commons/collections4/bag/HashBag<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;-><init>(Ljava/util/Map;)V

    .line 49
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

    .line 57
    .local p0, "this":Lorg/apache/commons/collections4/bag/HashBag;, "Lorg/apache/commons/collections4/bag/HashBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/HashBag;->addAll(Ljava/util/Collection;)Z

    .line 59
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

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/bag/HashBag;, "Lorg/apache/commons/collections4/bag/HashBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-super {p0, v0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 83
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

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/bag/HashBag;, "Lorg/apache/commons/collections4/bag/HashBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 70
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 71
    return-void
.end method
