.class Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CompactHashMap$ValuesView;,
        Lcom/google/common/collect/CompactHashMap$MapEntry;,
        Lcom/google/common/collect/CompactHashMap$EntrySetView;,
        Lcom/google/common/collect/CompactHashMap$KeySetView;,
        Lcom/google/common/collect/CompactHashMap$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final HASH_FLOODING_FPP:D = 0.001

.field private static final MAX_HASH_BUCKET_LENGTH:I = 0x9

.field private static final NOT_FOUND:Ljava/lang/Object;


# instance fields
.field transient entries:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient metadata:I

.field private transient size:I

.field private transient table:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient values:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 238
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 239
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 240
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 247
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 84
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/common/collect/CompactHashMap;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 84
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/CompactHashMap;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 84
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 84
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/common/collect/CompactHashMap;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 84
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/CompactHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 84
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method static synthetic access$310(Lcom/google/common/collect/CompactHashMap;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 84
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .line 84
    sget-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/common/collect/CompactHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 84
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    return-object v0
.end method

.method private entry(I)I
    .locals 1
    .param p1, "i"    # I

    .line 1192
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private hashTableMask()I
    .locals 2

    .line 320
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 483
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 484
    return v1

    .line 486
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 487
    .local v0, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    .line 488
    .local v2, "mask":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v3

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    .line 489
    .local v3, "next":I
    if-nez v3, :cond_1

    .line 490
    return v1

    .line 492
    :cond_1
    invoke-static {v0, v2}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v4

    .line 494
    .local v4, "hashPrefix":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    .line 495
    .local v5, "entryIndex":I
    invoke-direct {p0, v5}, Lcom/google/common/collect/CompactHashMap;->entry(I)I

    move-result v6

    .line 496
    .local v6, "entry":I
    invoke-static {v6, v2}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 497
    invoke-direct {p0, v5}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 498
    return v5

    .line 500
    :cond_2
    invoke-static {v6, v2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v3

    .line 501
    .end local v5    # "entryIndex":I
    .end local v6    # "entry":I
    if-nez v3, :cond_3

    .line 502
    return v1

    .line 501
    :cond_3
    goto :goto_0
.end method

.method private key(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 1183
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1132
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1134
    .local v0, "elementCount":I
    if-ltz v0, :cond_1

    .line 1137
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 1138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1139
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1140
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1141
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1143
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1135
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    const/16 v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeHelper(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 540
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object v0

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    .line 544
    .local v0, "mask":I
    const/4 v2, 0x0

    .line 549
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v4

    .line 550
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v5

    .line 551
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    .line 545
    move-object v1, p1

    move v3, v0

    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    .line 553
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 554
    sget-object v2, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object v2

    .line 557
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v2

    .line 559
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 560
    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 561
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 563
    return-object v2
.end method

.method private requireEntries()[I
    .locals 1

    .line 1162
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private requireKeys()[Ljava/lang/Object;
    .locals 1

    .line 1166
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private requireTable()Ljava/lang/Object;
    .locals 1

    .line 1158
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private requireValues()[Ljava/lang/Object;
    .locals 1

    .line 1170
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private resizeMeMaybe(I)V
    .locals 4
    .param p1, "newSize"    # I

    .line 414
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    array-length v0, v0

    .line 415
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_0

    .line 417
    const v1, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v2, v0, 0x1

    .line 418
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 419
    .local v1, "newCapacity":I
    if-eq v1, v0, :cond_0

    .line 420
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 423
    .end local v1    # "newCapacity":I
    :cond_0
    return-void
.end method

.method private resizeTable(IIII)I
    .locals 14
    .param p1, "oldMask"    # I
    .param p2, "newCapacity"    # I
    .param p3, "targetHash"    # I
    .param p4, "targetEntryIndex"    # I

    .line 437
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    move-object v0, p0

    move v1, p1

    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    .line 438
    .local v2, "newTable":Ljava/lang/Object;
    add-int/lit8 v3, p2, -0x1

    .line 440
    .local v3, "newMask":I
    if-eqz p4, :cond_0

    .line 442
    and-int v4, p3, v3

    add-int/lit8 v5, p4, 0x1

    invoke-static {v2, v4, v5}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v4

    .line 446
    .local v4, "oldTable":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v5

    .line 453
    .local v5, "entries":[I
    const/4 v6, 0x0

    .local v6, "oldTableIndex":I
    :goto_0
    if-gt v6, v1, :cond_2

    .line 454
    invoke-static {v4, v6}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 461
    .local v7, "oldNext":I
    :goto_1
    if-eqz v7, :cond_1

    .line 462
    add-int/lit8 v8, v7, -0x1

    .line 463
    .local v8, "entryIndex":I
    aget v9, v5, v8

    .line 466
    .local v9, "oldEntry":I
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v10

    or-int/2addr v10, v6

    .line 468
    .local v10, "hash":I
    and-int v11, v10, v3

    .line 469
    .local v11, "newTableIndex":I
    invoke-static {v2, v11}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v12

    .line 470
    .local v12, "newNext":I
    invoke-static {v2, v11, v7}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 471
    invoke-static {v10, v12, v3}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v13

    aput v13, v5, v8

    .line 473
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v7

    .line 474
    .end local v8    # "entryIndex":I
    .end local v9    # "oldEntry":I
    .end local v10    # "hash":I
    .end local v11    # "newTableIndex":I
    .end local v12    # "newNext":I
    goto :goto_1

    .line 453
    .end local v7    # "oldNext":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 477
    .end local v6    # "oldTableIndex":I
    :cond_2
    iput-object v2, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 478
    invoke-direct {p0, v3}, Lcom/google/common/collect/CompactHashMap;->setHashTableMask(I)V

    .line 479
    return v3
.end method

.method private setEntry(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 1204
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    aput p2, v0, p1

    .line 1205
    return-void
.end method

.method private setHashTableMask(I)V
    .locals 3
    .param p1, "mask"    # I

    .line 313
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 314
    .local v0, "hashTableBits":I
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 315
    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 316
    return-void
.end method

.method private setKey(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .line 1196
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 1197
    return-void
.end method

.method private setValue(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 1200
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 1201
    return-void
.end method

.method private value(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1188
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1120
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1121
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1122
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1123
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1125
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1127
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 1128
    :cond_0
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 0
    .param p1, "index"    # I

    .line 333
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 627
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method allocArrays()I
    .locals 3

    .line 268
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 270
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 271
    .local v0, "expectedSize":I
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 272
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 273
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/google/common/collect/CompactHashMap;->setHashTableMask(I)V

    .line 275
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 276
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 277
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 279
    return v0
.end method

.method public clear()V
    .locals 6

    .line 1099
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    return-void

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 1103
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 1104
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1105
    nop

    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 1107
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1108
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 1109
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    goto :goto_0

    .line 1111
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1112
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1113
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->tableClear(Ljava/lang/Object;)V

    .line 1114
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v1

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v1, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 1115
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 1117
    :goto_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 507
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 508
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 971
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 972
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 973
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 975
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_2

    .line 976
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 977
    const/4 v2, 0x1

    return v2

    .line 975
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 980
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->createHashFloodingResistantDelegate(I)Ljava/util/Map;

    move-result-object v0

    .line 300
    .local v0, "newDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 301
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    goto :goto_0

    .line 303
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 305
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 306
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 308
    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 808
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createHashFloodingResistantDelegate(I)Ljava/util/Map;
    .locals 2
    .param p1, "tableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 698
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 991
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method delegateOrNull()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 286
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 287
    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    .line 804
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method entrySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 880
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 881
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 882
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 884
    :cond_0
    new-instance v1, Lcom/google/common/collect/CompactHashMap$2;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CompactHashMap$2;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v1
.end method

.method firstEntryIndex()I
    .locals 1

    .line 614
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 789
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 791
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 792
    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 795
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 794
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    goto :goto_0

    .line 798
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 514
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 515
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 518
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 519
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 520
    const/4 v2, 0x0

    return-object v2

    .line 522
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 523
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 618
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method incrementModCount()V
    .locals 1

    .line 324
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 325
    return-void
.end method

.method init(I)V
    .locals 3
    .param p1, "expectedSize"    # I

    .line 253
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 256
    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {p1, v0, v1}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 257
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .param p5, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 407
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-static {p4, v0, p5}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->setEntry(II)V

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->setKey(ILjava/lang/Object;)V

    .line 409
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/CompactHashMap;->setValue(ILjava/lang/Object;)V

    .line 410
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 966
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

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

    .line 694
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method keySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 774
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 775
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 776
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 778
    :cond_0
    new-instance v1, Lcom/google/common/collect/CompactHashMap$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v1
.end method

.method moveLastEntry(II)V
    .locals 12
    .param p1, "dstIndex"    # I
    .param p2, "mask"    # I

    .line 570
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v0

    .line 571
    .local v0, "table":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v1

    .line 572
    .local v1, "entries":[I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v2

    .line 573
    .local v2, "keys":[Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v3

    .line 574
    .local v3, "values":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 575
    .local v4, "srcIndex":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v4, :cond_1

    .line 577
    aget-object v7, v2, v4

    .line 578
    .local v7, "key":Ljava/lang/Object;
    aput-object v7, v2, p1

    .line 579
    aget-object v8, v3, v4

    aput-object v8, v3, p1

    .line 580
    aput-object v6, v2, v4

    .line 581
    aput-object v6, v3, v4

    .line 584
    aget v6, v1, v4

    aput v6, v1, p1

    .line 585
    aput v5, v1, v4

    .line 588
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v5

    and-int v8, v5, p2

    .line 589
    .local v8, "tableIndex":I
    invoke-static {v0, v8}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v5

    .line 590
    .local v5, "next":I
    add-int/lit8 v9, v4, 0x1

    .line 591
    .local v9, "srcNext":I
    if-ne v5, v9, :cond_0

    .line 593
    add-int/lit8 v6, p1, 0x1

    invoke-static {v0, v8, v6}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_0

    .line 599
    :cond_0
    add-int/lit8 v6, v5, -0x1

    .line 600
    .local v6, "entryIndex":I
    aget v10, v1, v6

    .line 601
    .local v10, "entry":I
    invoke-static {v10, p2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v5

    .line 602
    if-ne v5, v9, :cond_0

    .line 604
    add-int/lit8 v11, p1, 0x1

    invoke-static {v10, v11, p2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v11

    aput v11, v1, v6

    .line 606
    .end local v5    # "next":I
    .end local v6    # "entryIndex":I
    .end local v7    # "key":Ljava/lang/Object;
    .end local v8    # "tableIndex":I
    .end local v9    # "srcNext":I
    .end local v10    # "entry":I
    :goto_0
    goto :goto_1

    .line 607
    :cond_1
    aput-object v6, v2, p1

    .line 608
    aput-object v6, v3, p1

    .line 609
    aput v5, v1, p1

    .line 611
    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 262
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 339
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->allocArrays()I

    .line 342
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v9

    .line 343
    .local v9, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v9, :cond_1

    .line 344
    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 346
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v10

    .line 347
    .local v10, "entries":[I
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v11

    .line 348
    .local v11, "keys":[Ljava/lang/Object;
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v12

    .line 350
    .local v12, "values":[Ljava/lang/Object;
    iget v13, v6, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 351
    .local v13, "newEntryIndex":I
    add-int/lit8 v14, v13, 0x1

    .line 352
    .local v14, "newSize":I
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v15

    .line 353
    .local v15, "hash":I
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    .line 354
    .local v0, "mask":I
    and-int v5, v15, v0

    .line 355
    .local v5, "tableIndex":I
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v1

    .line 356
    .local v1, "next":I
    if-nez v1, :cond_3

    .line 357
    if-le v14, v0, :cond_2

    .line 359
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v2

    invoke-direct {v6, v0, v2, v15, v13}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v0

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v5

    goto :goto_1

    .line 361
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v13, 0x1

    invoke-static {v2, v5, v3}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v5

    goto :goto_1

    .line 366
    :cond_3
    invoke-static {v15, v0}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v2

    .line 367
    .local v2, "hashPrefix":I
    const/4 v3, 0x0

    .line 369
    .local v3, "bucketLength":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    .line 370
    .local v4, "entryIndex":I
    move/from16 v16, v1

    .end local v1    # "next":I
    .local v16, "next":I
    aget v1, v10, v4

    .line 371
    .local v1, "entry":I
    move/from16 v17, v5

    .end local v5    # "tableIndex":I
    .local v17, "tableIndex":I
    invoke-static {v1, v0}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v5

    if-ne v5, v2, :cond_4

    aget-object v5, v11, v4

    .line 372
    invoke-static {v7, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 374
    aget-object v5, v12, v4

    .line 376
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v8, v12, v4

    .line 377
    invoke-virtual {v6, v4}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 378
    return-object v5

    .line 380
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-static {v1, v0}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v5

    .line 381
    .end local v16    # "next":I
    .local v5, "next":I
    add-int/lit8 v3, v3, 0x1

    .line 382
    if-nez v5, :cond_7

    .line 384
    move/from16 v16, v2

    .end local v2    # "hashPrefix":I
    .local v16, "hashPrefix":I
    const/16 v2, 0x9

    if-lt v3, v2, :cond_5

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 388
    :cond_5
    if-le v14, v0, :cond_6

    .line 390
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v2

    invoke-direct {v6, v0, v2, v15, v13}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v0

    move/from16 v16, v0

    move/from16 v18, v5

    goto :goto_1

    .line 392
    :cond_6
    add-int/lit8 v2, v13, 0x1

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v2

    aput v2, v10, v4

    move/from16 v16, v0

    move/from16 v18, v5

    .line 395
    .end local v0    # "mask":I
    .end local v1    # "entry":I
    .end local v3    # "bucketLength":I
    .end local v4    # "entryIndex":I
    .end local v5    # "next":I
    .local v16, "mask":I
    .local v18, "next":I
    :goto_1
    invoke-direct {v6, v14}, Lcom/google/common/collect/CompactHashMap;->resizeMeMaybe(I)V

    .line 396
    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 397
    iput v14, v6, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 399
    const/4 v0, 0x0

    return-object v0

    .line 382
    .end local v16    # "mask":I
    .end local v18    # "next":I
    .restart local v0    # "mask":I
    .restart local v1    # "entry":I
    .restart local v2    # "hashPrefix":I
    .restart local v3    # "bucketLength":I
    .restart local v4    # "entryIndex":I
    .restart local v5    # "next":I
    :cond_7
    move/from16 v16, v2

    .end local v2    # "hashPrefix":I
    .local v16, "hashPrefix":I
    move v1, v5

    move/from16 v5, v17

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 531
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 532
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 535
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 536
    .local v1, "oldValue":Ljava/lang/Object;
    sget-object v2, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 679
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 681
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 682
    invoke-interface {v0, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    goto :goto_1

    .line 684
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_1

    .line 685
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactHashMap;->setValue(ILjava/lang/Object;)V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 430
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 431
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 432
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public size()I
    .locals 2

    .line 960
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 961
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    :goto_0
    return v1
.end method

.method public trimToSize()V
    .locals 5

    .line 1076
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    return-void

    .line 1079
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 1080
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 1081
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->createHashFloodingResistantDelegate(I)Ljava/util/Map;

    move-result-object v1

    .line 1082
    .local v1, "newDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1083
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 1084
    return-void

    .line 1086
    .end local v1    # "newDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 1087
    .local v1, "size":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1088
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 1090
    :cond_2
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v2

    .line 1091
    .local v2, "minimumTableSize":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v3

    .line 1092
    .local v3, "mask":I
    if-ge v2, v3, :cond_3

    .line 1093
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4, v4}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    .line 1095
    :cond_3
    return-void
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

    .line 987
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method valuesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1058
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 1059
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1060
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 1062
    :cond_0
    new-instance v1, Lcom/google/common/collect/CompactHashMap$3;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CompactHashMap$3;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v1
.end method
