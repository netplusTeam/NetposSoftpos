.class public abstract Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.super Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.source "AbstractMapMultiSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MultiSetEntry;,
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;,
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;,
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;,
        Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MapBasedMultiSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient size:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 54
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;-><init>()V

    .line 55
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    .line 41
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    .line 41
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    return v0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    .line 41
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 4
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    if-ltz p2, :cond_3

    .line 223
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    .line 224
    .local v0, "mut":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 226
    .local v1, "oldCount":I
    :goto_0
    if-lez p2, :cond_2

    .line 227
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    .line 228
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    .line 229
    if-nez v0, :cond_1

    .line 230
    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    new-instance v3, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    invoke-direct {v3, p2}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 232
    :cond_1
    iget v2, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    add-int/2addr v2, p2

    iput v2, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    .line 235
    :cond_2
    :goto_1
    return v1

    .line 220
    .end local v0    # "mut":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    .end local v1    # "oldCount":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Occurrences must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 244
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    .line 245
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    .line 247
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V

    return-object v0
.end method

.method protected createUniqueSetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$UniqueSetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 465
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 466
    .local v0, "entrySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 468
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 469
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 470
    .local v3, "count":I
    iget-object v4, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    new-instance v5, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    invoke-direct {v5, v3}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;-><init>(I)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget v4, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    .line 466
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    .end local v3    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 449
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    iget v2, v2, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 452
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    goto :goto_0

    .line 453
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 536
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 537
    return v0

    .line 539
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/MultiSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 540
    return v2

    .line 542
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections4/MultiSet;

    .line 543
    .local v1, "other":Lorg/apache/commons/collections4/MultiSet;, "Lorg/apache/commons/collections4/MultiSet<*>;"
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 544
    return v2

    .line 546
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 547
    .local v4, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v4}, Lorg/apache/commons/collections4/MultiSet;->getCount(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 548
    return v2

    .line 550
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_3
    goto :goto_0

    .line 551
    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    .line 120
    .local v0, "count":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    if-eqz v0, :cond_0

    .line 121
    iget v1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    return v1

    .line 123
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 556
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    const/4 v0, 0x0

    .line 557
    .local v0, "total":I
    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 558
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 559
    .local v3, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    .line 560
    .local v4, "count":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    if-nez v3, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    iget v6, v4, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    xor-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 561
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    .end local v3    # "element":Ljava/lang/Object;, "TE;"
    .end local v4    # "count":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    goto :goto_0

    .line 562
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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

    .line 148
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MapBasedMultiSetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MapBasedMultiSetIterator;-><init>(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .line 251
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    if-ltz p2, :cond_3

    .line 255
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    .line 256
    .local v0, "mut":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    if-nez v0, :cond_0

    .line 257
    const/4 v1, 0x0

    return v1

    .line 259
    :cond_0
    iget v1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    .line 260
    .local v1, "oldCount":I
    if-lez p2, :cond_2

    .line 261
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->modCount:I

    .line 262
    iget v2, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    if-ge p2, v2, :cond_1

    .line 263
    iget v2, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    sub-int/2addr v2, p2

    iput v2, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    .line 264
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    sub-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    goto :goto_0

    .line 266
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    iget v3, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    .line 270
    :cond_2
    :goto_0
    return v1

    .line 252
    .end local v0    # "mut":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    .end local v1    # "oldCount":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Occurrences must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public size()I
    .locals 1

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 8

    .line 483
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 484
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 485
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 486
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 487
    .local v4, "current":Ljava/lang/Object;, "TE;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    .line 488
    .local v5, "count":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    iget v6, v5, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    .local v6, "index":I
    :goto_1
    if-lez v6, :cond_0

    .line 489
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    aput-object v4, v0, v1

    .line 488
    add-int/lit8 v6, v6, -0x1

    move v1, v7

    goto :goto_1

    .line 491
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    .end local v4    # "current":Ljava/lang/Object;, "TE;"
    .end local v5    # "count":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    .end local v6    # "index":I
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 492
    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->size()I

    move-result v0

    .line 510
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 512
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 513
    .local v1, "unchecked":[Ljava/lang/Object;, "[TT;"
    move-object p1, v1

    .line 516
    .end local v1    # "unchecked":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    .line 517
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 518
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 519
    .local v4, "current":Ljava/lang/Object;, "TE;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    .line 520
    .local v5, "count":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    iget v6, v5, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    .local v6, "index":I
    :goto_1
    if-lez v6, :cond_1

    .line 523
    move-object v7, v4

    .line 524
    .local v7, "unchecked":Ljava/lang/Object;, "TT;"
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "i":I
    .local v8, "i":I
    aput-object v7, p1, v1

    .line 520
    .end local v7    # "unchecked":Ljava/lang/Object;, "TT;"
    add-int/lit8 v6, v6, -0x1

    move v1, v8

    goto :goto_1

    .line 526
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;>;"
    .end local v4    # "current":Ljava/lang/Object;, "TE;"
    .end local v5    # "count":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;
    .end local v6    # "index":I
    .end local v8    # "i":I
    .restart local v1    # "i":I
    :cond_1
    goto :goto_0

    .line 527
    :cond_2
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 528
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v3, 0x0

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_2

    .line 530
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    return-object p1
.end method

.method protected uniqueElements()I
    .locals 1

    .line 311
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
