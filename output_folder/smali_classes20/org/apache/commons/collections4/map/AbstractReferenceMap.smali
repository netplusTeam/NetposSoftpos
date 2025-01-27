.class public abstract Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$SoftRef;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceMapIterator;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceValuesIterator;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySetIterator;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntrySetIterator;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceValues;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntrySet;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

.field private purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 146
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>()V

    .line 147
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V
    .locals 0
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p3, "capacity"    # I
    .param p4, "loadFactor"    # F
    .param p5, "purgeValues"    # Z

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    .line 170
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    .line 171
    iput-object p2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    .line 172
    iput-boolean p5, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeValues:Z

    .line 173
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 84
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeValues:Z

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 296
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clear()V

    .line 298
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 214
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 216
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 217
    return v1

    .line 219
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 230
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 231
    if-nez p1, :cond_0

    .line 232
    const/4 v0, 0x0

    return v0

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 0

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method protected createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 7
    .param p2, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;ITK;TV;)",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    .local p1, "next":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    new-instance v6, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 485
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntrySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceValuesIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1041
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->resolve(I)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    .line 1042
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->resolve(I)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    .line 1043
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeValues:Z

    .line 1044
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->loadFactor:F

    .line 1045
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1046
    .local v0, "capacity":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->init()V

    .line 1047
    new-array v1, v0, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 1055
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->calculateThreshold(IF)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->threshold:I

    .line 1058
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1059
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_0

    .line 1060
    nop

    .line 1066
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    return-void

    .line 1062
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1063
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->value:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1007
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->value:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1008
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1009
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 1010
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1011
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    .local v0, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1013
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1015
    .end local v0    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1017
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntrySet;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 246
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 247
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 248
    const/4 v1, 0x0

    return-object v1

    .line 250
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 427
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 428
    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    return-object v0
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 442
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 443
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    xor-int/2addr v0, v1

    .line 442
    return v0
.end method

.method protected init()V
    .locals 1

    .line 180
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 181
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 202
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 203
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 459
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    move-object p2, v0

    .line 460
    if-eq p1, p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method protected isKeyType(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;)Z
    .locals 1
    .param p1, "type"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    .line 1074
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

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

    .line 310
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceMapIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected purge()V
    .locals 2

    .line 382
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 383
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    .line 385
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method protected purge(Ljava/lang/ref/Reference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)V"
        }
    .end annotation

    .line 398
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    .local p1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 399
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->hashIndex(II)I

    move-result v1

    .line 400
    .local v1, "index":I
    const/4 v2, 0x0

    .line 401
    .local v2, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v1

    .line 402
    .local v3, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_2

    .line 403
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v4, p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    if-nez v2, :cond_0

    .line 405
    iget-object v4, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget-object v5, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aput-object v5, v4, v1

    goto :goto_1

    .line 407
    :cond_0
    iget-object v4, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 409
    :goto_1
    iget v4, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->size:I

    .line 410
    return-void

    .line 412
    :cond_1
    move-object v2, v3

    .line 413
    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 416
    :cond_2
    return-void
.end method

.method protected purgeBeforeRead()V
    .locals 0

    .line 361
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purge()V

    .line 362
    return-void
.end method

.method protected purgeBeforeWrite()V
    .locals 0

    .line 370
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purge()V

    .line 371
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    .line 268
    if-eqz p2, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 273
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null values not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null keys not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 284
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 288
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 191
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 192
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
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

    .line 348
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceValues;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceValues;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    return-object v0
.end method
