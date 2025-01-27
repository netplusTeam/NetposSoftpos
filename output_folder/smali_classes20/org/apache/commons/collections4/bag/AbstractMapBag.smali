.class public abstract Lorg/apache/commons/collections4/bag/AbstractMapBag;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;,
        Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private size:I

.field private transient uniqueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 59
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/bag/AbstractMapBag;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bag/AbstractMapBag;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bag/AbstractMapBag;

    .line 44
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    return v0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/collections4/bag/AbstractMapBag;

    .line 44
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 4
    .param p2, "nCopies"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 263
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 264
    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 265
    iget-object v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 266
    .local v2, "mut":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    iget v3, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/2addr v3, p2

    iput v3, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    .line 267
    if-nez v2, :cond_0

    .line 268
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    new-instance v3, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v3, p2}, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return v1

    .line 271
    :cond_0
    iget v1, v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    add-int/2addr v1, p2

    iput v1, v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    .line 272
    return v0

    .line 274
    .end local v2    # "mut":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 286
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 287
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 289
    .local v2, "added":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 290
    .end local v2    # "added":Z
    goto :goto_0

    .line 291
    :cond_2
    return v0
.end method

.method public clear()V
    .locals 1

    .line 300
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 301
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    .line 303
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 130
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Lorg/apache/commons/collections4/Bag;

    if-eqz v0, :cond_0

    .line 142
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result v0

    return v0

    .line 144
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result v0

    return v0
.end method

.method containsAll(Lorg/apache/commons/collections4/Bag;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "*>;)Z"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "other":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<*>;"
    invoke-interface {p1}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 156
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, "current":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 159
    const/4 v2, 0x0

    return v2

    .line 161
    .end local v1    # "current":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 162
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p2, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;",
            "Ljava/io/ObjectInputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 538
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    .line 539
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 540
    .local v0, "entrySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 542
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 543
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 544
    .local v3, "count":I
    new-instance v4, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget v4, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    .line 540
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    .end local v3    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
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

    .line 521
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 522
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

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

    .line 523
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 524
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    iget v2, v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 525
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;>;"
    goto :goto_0

    .line 526
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 559
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 560
    return v0

    .line 562
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/Bag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 563
    return v2

    .line 565
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections4/Bag;

    .line 566
    .local v1, "other":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<*>;"
    invoke-interface {v1}, Lorg/apache/commons/collections4/Bag;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 567
    return v2

    .line 569
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

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

    .line 570
    .local v4, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v4}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 571
    return v2

    .line 573
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_3
    goto :goto_0

    .line 574
    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 114
    .local v0, "count":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    if-eqz v0, :cond_0

    .line 115
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    return v1

    .line 117
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
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 588
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    const/4 v0, 0x0

    .line 589
    .local v0, "total":I
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

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

    .line 590
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 591
    .local v3, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 592
    .local v4, "count":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    if-nez v3, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    iget v6, v4, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    xor-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 593
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;>;"
    .end local v3    # "element":Ljava/lang/Object;, "TE;"
    .end local v4    # "count":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    goto :goto_0

    .line 594
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

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

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;-><init>(Lorg/apache/commons/collections4/bag/AbstractMapBag;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 313
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 314
    .local v0, "mut":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    if-nez v0, :cond_0

    .line 315
    const/4 v1, 0x0

    return v1

    .line 317
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 318
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    iget v3, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    .line 320
    return v2
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "nCopies"    # I

    .line 332
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 333
    .local v0, "mut":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 334
    return v1

    .line 336
    :cond_0
    if-gtz p2, :cond_1

    .line 337
    return v1

    .line 339
    :cond_1
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 340
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    if-ge p2, v1, :cond_2

    .line 341
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, p2

    iput v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    .line 342
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    goto :goto_0

    .line 344
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    iget v3, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    .line 347
    :goto_0
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 360
    .local v0, "result":Z
    if-eqz p1, :cond_2

    .line 361
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 362
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v2

    .line 364
    .local v2, "changed":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v0, v3

    .line 365
    .end local v2    # "changed":Z
    goto :goto_0

    .line 367
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    return v0
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

    .line 379
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Lorg/apache/commons/collections4/Bag;

    if-eqz v0, :cond_0

    .line 380
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result v0

    return v0

    .line 382
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result v0

    return v0
.end method

.method retainAll(Lorg/apache/commons/collections4/Bag;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "*>;)Z"
        }
    .end annotation

    .line 394
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "other":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<*>;"
    const/4 v0, 0x0

    .line 395
    .local v0, "result":Z
    new-instance v1, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    .line 396
    .local v1, "excess":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 397
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 399
    .local v3, "current":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .line 400
    .local v4, "myCount":I
    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v5

    .line 401
    .local v5, "otherCount":I
    const/4 v6, 0x1

    if-gt v6, v5, :cond_0

    if-gt v5, v4, :cond_0

    .line 402
    sub-int v6, v4, v5

    invoke-interface {v1, v3, v6}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_1

    .line 404
    :cond_0
    invoke-interface {v1, v3, v4}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    .line 406
    .end local v3    # "current":Ljava/lang/Object;, "TE;"
    .end local v4    # "myCount":I
    .end local v5    # "otherCount":I
    :goto_1
    goto :goto_0

    .line 407
    :cond_1
    invoke-interface {v1}, Lorg/apache/commons/collections4/Bag;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 410
    :cond_2
    return v0
.end method

.method public size()I
    .locals 1

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 451
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 452
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 453
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 454
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 456
    .local v3, "current":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .local v4, "index":I
    :goto_1
    if-lez v4, :cond_0

    .line 457
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput-object v3, v0, v1

    .line 456
    add-int/lit8 v4, v4, -0x1

    move v1, v5

    goto :goto_1

    .line 459
    .end local v3    # "current":Ljava/lang/Object;, "TE;"
    .end local v4    # "index":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 460
    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    .line 478
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 480
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 481
    .local v1, "unchecked":[Ljava/lang/Object;, "[TT;"
    move-object p1, v1

    .line 484
    .end local v1    # "unchecked":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    .line 485
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 486
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 488
    .local v3, "current":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .local v4, "index":I
    :goto_1
    if-lez v4, :cond_1

    .line 491
    move-object v5, v3

    .line 492
    .local v5, "unchecked":Ljava/lang/Object;, "TT;"
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    aput-object v5, p1, v1

    .line 488
    .end local v5    # "unchecked":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, -0x1

    move v1, v6

    goto :goto_1

    .line 494
    .end local v3    # "current":Ljava/lang/Object;, "TE;"
    .end local v4    # "index":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_1
    goto :goto_0

    .line 495
    :cond_2
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 496
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    const/4 v4, 0x0

    aput-object v4, p1, v1

    move v1, v3

    goto :goto_2

    .line 498
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 604
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 605
    const-string v0, "[]"

    return-object v0

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 610
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 612
    .local v2, "current":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 613
    .local v3, "count":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 616
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 617
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    .end local v2    # "current":Ljava/lang/Object;
    .end local v3    # "count":I
    :cond_1
    goto :goto_0

    .line 620
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 508
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    .line 511
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    return-object v0
.end method
