.class public Lorg/apache/commons/collections4/map/MultiKeyMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "MultiKeyMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
        "+TK;>;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 125
    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    .line 126
    return-void
.end method

.method public static multiKeyMap(Lorg/apache/commons/collections4/map/AbstractHashedMap;)Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;)",
            "Lorg/apache/commons/collections4/map/MultiKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 98
    .local p0, "map":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    if-eqz p0, :cond_1

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/commons/collections4/map/MultiKeyMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 905
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 906
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    .line 907
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

    .line 892
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 893
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 894
    return-void
.end method


# virtual methods
.method protected checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "*>;)V"
        }
    .end annotation

    .line 818
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<*>;"
    if-eqz p1, :cond_0

    .line 821
    return-void

    .line 819
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->clone()Lorg/apache/commons/collections4/map/MultiKeyMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/MultiKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 832
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/MultiKeyMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 158
    .local v0, "hashCode":I
    nop

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 160
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 161
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x1

    return v2

    .line 164
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 166
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 288
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 289
    .local v0, "hashCode":I
    nop

    .line 290
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 291
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 292
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const/4 v2, 0x1

    return v2

    .line 295
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 297
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 429
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 430
    .local v0, "hashCode":I
    nop

    .line 431
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 432
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 433
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const/4 v2, 0x1

    return v2

    .line 436
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 438
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;

    .line 581
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 582
    .local v0, "hashCode":I
    nop

    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 584
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 585
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    const/4 v2, 0x1

    return v2

    .line 588
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 590
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;"
        }
    .end annotation

    .line 881
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 138
    .local v0, "hashCode":I
    nop

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 140
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 141
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 144
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 146
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 268
    .local v0, "hashCode":I
    nop

    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 270
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 271
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 274
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 276
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 407
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 408
    .local v0, "hashCode":I
    nop

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 410
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 411
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 414
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 416
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 557
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 558
    .local v0, "hashCode":I
    nop

    .line 559
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 560
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 561
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 564
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 566
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 226
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 227
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 230
    :cond_0
    if-eqz p2, :cond_1

    .line 231
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 233
    :cond_1
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 234
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 235
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 236
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 237
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 360
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 361
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 364
    :cond_0
    if-eqz p2, :cond_1

    .line 365
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 367
    :cond_1
    if-eqz p3, :cond_2

    .line 368
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 370
    :cond_2
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 371
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 372
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 373
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 374
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 504
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 505
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 508
    :cond_0
    if-eqz p2, :cond_1

    .line 509
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 511
    :cond_1
    if-eqz p3, :cond_2

    .line 512
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 514
    :cond_2
    if-eqz p4, :cond_3

    .line 515
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 517
    :cond_3
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 518
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 519
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 520
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 521
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;

    .line 660
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 661
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 664
    :cond_0
    if-eqz p2, :cond_1

    .line 665
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 667
    :cond_1
    if-eqz p3, :cond_2

    .line 668
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 670
    :cond_2
    if-eqz p4, :cond_3

    .line 671
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 673
    :cond_3
    if-eqz p5, :cond_4

    .line 674
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 676
    :cond_4
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 677
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 678
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 679
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 680
    return v0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 251
    .local v0, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    nop

    .line 252
    invoke-virtual {v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 253
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 251
    :cond_2
    :goto_0
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 388
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 389
    .local v0, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    nop

    .line 390
    invoke-virtual {v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 391
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p4, v4, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 389
    :cond_3
    :goto_0
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;
    .param p5, "key4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 536
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 537
    .local v0, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    nop

    .line 538
    invoke-virtual {v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    .line 539
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p4, v4, :cond_2

    if-eqz p4, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p5, v4, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 537
    :cond_4
    :goto_0
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;
    .param p5, "key4"    # Ljava/lang/Object;
    .param p6, "key5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 696
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 697
    .local v0, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    nop

    .line 698
    invoke-virtual {v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 699
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 700
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_4

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 701
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p4, v4, :cond_2

    if-eqz p4, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 702
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p5, v4, :cond_3

    if-eqz p5, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 703
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p6, v4, :cond_5

    if-eqz p6, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    .line 697
    :cond_5
    :goto_0
    return v2
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;"
        }
    .end annotation

    .line 873
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->put(Lorg/apache/commons/collections4/keyvalue/MultiKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TV;)TV;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 179
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 180
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 181
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 182
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 184
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v4

    invoke-virtual {v4, v2, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 185
    return-object v3

    .line 187
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 190
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 311
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 312
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 313
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 314
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 316
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v4

    invoke-virtual {v4, v2, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 317
    return-object v3

    .line 319
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 322
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    .local p4, "key4":Ljava/lang/Object;, "TK;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 453
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 454
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 455
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 456
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 458
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v4

    invoke-virtual {v4, v2, p5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 459
    return-object v3

    .line 461
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2, p3, p4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 464
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 605
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    .local p4, "key4":Ljava/lang/Object;, "TK;"
    .local p5, "key5":Ljava/lang/Object;, "TK;"
    .local p6, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p6

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 606
    .local v1, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 607
    .local v2, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v2

    .line 608
    .local v3, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 609
    iget v4, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v1, :cond_0

    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    invoke-virtual {v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 611
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 612
    return-object v4

    .line 614
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v4

    new-instance v11, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v1, v11, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 617
    const/4 v4, 0x0

    return-object v4
.end method

.method public put(Lorg/apache/commons/collections4/keyvalue/MultiKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;)TV;"
        }
    .end annotation

    .line 850
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V

    .line 851
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;+TV;>;)V"
        }
    .end annotation

    .line 864
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "mapToCopy":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 865
    .local v1, "key":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V

    .line 866
    .end local v1    # "key":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    goto :goto_0

    .line 867
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->putAll(Ljava/util/Map;)V

    .line 868
    return-void
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;

    .line 717
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 718
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 719
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 720
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 721
    .local v2, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 722
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 723
    :goto_1
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    .line 724
    const/4 v0, 0x1

    .line 726
    .end local v2    # "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    :cond_1
    goto :goto_0

    .line 727
    :cond_2
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 741
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 742
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 743
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 744
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 745
    .local v2, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 746
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 747
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 748
    :goto_2
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    .line 749
    const/4 v0, 0x1

    .line 751
    .end local v2    # "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    :cond_2
    goto :goto_0

    .line 752
    :cond_3
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 767
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 768
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 769
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 770
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 771
    .local v2, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 772
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 773
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    const/4 v3, 0x2

    if-nez p3, :cond_2

    .line 774
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 775
    :goto_3
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    .line 776
    const/4 v0, 0x1

    .line 778
    .end local v2    # "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    :cond_3
    goto :goto_0

    .line 779
    :cond_4
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 795
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 796
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 797
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 798
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 799
    .local v2, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 800
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 801
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    const/4 v3, 0x2

    if-nez p3, :cond_2

    .line 802
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    const/4 v3, 0x3

    if-nez p4, :cond_3

    .line 803
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 804
    :goto_4
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    .line 805
    const/4 v0, 0x1

    .line 807
    .end local v2    # "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    :cond_4
    goto :goto_0

    .line 808
    :cond_5
    return v0
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 203
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 204
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 205
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    const/4 v3, 0x0

    .line 206
    .local v3, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 207
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 209
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 210
    return-object v4

    .line 212
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v2

    .line 213
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 215
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 336
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 337
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 338
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    const/4 v3, 0x0

    .line 339
    .local v3, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 340
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 342
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 343
    return-object v4

    .line 345
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v2

    .line 346
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 348
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 478
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 479
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 480
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 481
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    const/4 v3, 0x0

    .line 482
    .local v3, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 483
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 485
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 486
    return-object v4

    .line 488
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v2

    .line 489
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 491
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 633
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 634
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 635
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 636
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    const/4 v3, 0x0

    .line 637
    .local v3, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 638
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 639
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 640
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 641
    return-object v4

    .line 643
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v2

    .line 644
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 646
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method
