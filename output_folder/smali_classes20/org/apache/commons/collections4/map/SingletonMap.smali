.class public Lorg/apache/commons/collections4/map/SingletonMap;
.super Ljava/lang/Object;
.source "SingletonMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMap;
.implements Lorg/apache/commons/collections4/BoundedMap;
.implements Lorg/apache/commons/collections4/KeyValue;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/SingletonMap$SingletonValues;,
        Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;
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
        "Lorg/apache/commons/collections4/OrderedMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/BoundedMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/KeyValue<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7bf23fc3356fbebdL


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->key:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/commons/collections4/map/SingletonMap;->key:Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lorg/apache/commons/collections4/map/SingletonMap;->value:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->key:Ljava/lang/Object;

    .line 110
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->value:Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/map/SingletonMap;->key:Ljava/lang/Object;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/map/SingletonMap;->value:Ljava/lang/Object;

    .line 128
    return-void

    .line 123
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The map size must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/KeyValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/KeyValue<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "keyValue":Lorg/apache/commons/collections4/KeyValue;, "Lorg/apache/commons/collections4/KeyValue<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-interface {p1}, Lorg/apache/commons/collections4/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->key:Ljava/lang/Object;

    .line 99
    invoke-interface {p1}, Lorg/apache/commons/collections4/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->value:Ljava/lang/Object;

    .line 100
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 309
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->clone()Lorg/apache/commons/collections4/map/SingletonMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/SingletonMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/SingletonMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/SingletonMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 231
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 242
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/SingletonMap;->isEqualValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 322
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 323
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 566
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 567
    return v0

    .line 569
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 570
    return v2

    .line 572
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 573
    .local v1, "other":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 574
    return v2

    .line 576
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 577
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections4/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections4/map/SingletonMap;->isEqualValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->value:Ljava/lang/Object;

    return-object v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 587
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 588
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 587
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 219
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 408
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected isEqualValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 418
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 173
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    const/4 v0, 0x1

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

    .line 335
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;-><init>(Lorg/apache/commons/collections4/map/SingletonMap;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 397
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/map/SingletonMap;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot put new key/value pair - Map is fixed size singleton"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The map size must be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/map/SingletonMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void

    .line 280
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 301
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap;->value:Ljava/lang/Object;

    .line 160
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/commons/collections4/map/SingletonMap;->value:Ljava/lang/Object;

    .line 161
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 209
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 598
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 599
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(this Map)"

    if-ne v1, p0, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
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

    .line 347
    .local p0, "this":Lorg/apache/commons/collections4/map/SingletonMap;, "Lorg/apache/commons/collections4/map/SingletonMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonValues;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/SingletonMap$SingletonValues;-><init>(Lorg/apache/commons/collections4/map/SingletonMap;)V

    return-object v0
.end method
