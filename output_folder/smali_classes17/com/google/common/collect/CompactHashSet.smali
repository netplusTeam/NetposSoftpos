.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final HASH_FLOODING_FPP:D = 0.001

.field private static final MAX_HASH_BUCKET_LENGTH:I = 0x9


# instance fields
.field transient elements:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient entries:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient metadata:I

.field private transient size:I

.field private transient table:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 204
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 205
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 206
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 213
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;

    .line 80
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CompactHashSet;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 97
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 98
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    .line 99
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 111
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 112
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 113
    return-object v0
.end method

.method private createHashFloodingResistantDelegate(I)Ljava/util/Set;
    .locals 2
    .param p1, "tableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashSet;-><init>(IF)V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private element(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 742
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method private entry(I)I
    .locals 1
    .param p1, "i"    # I

    .line 746
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private hashTableMask()I
    .locals 2

    .line 289
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
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

    .line 711
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 712
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 713
    .local v0, "elementCount":I
    if-ltz v0, :cond_1

    .line 716
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 717
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 718
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 719
    .local v2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    .line 717
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 714
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

.method private requireElements()[Ljava/lang/Object;
    .locals 1

    .line 737
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private requireEntries()[I
    .locals 1

    .line 733
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private requireTable()Ljava/lang/Object;
    .locals 1

    .line 729
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private resizeMeMaybe(I)V
    .locals 4
    .param p1, "newSize"    # I

    .line 366
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    array-length v0, v0

    .line 367
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_0

    .line 369
    const v1, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v2, v0, 0x1

    .line 370
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 371
    .local v1, "newCapacity":I
    if-eq v1, v0, :cond_0

    .line 372
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 375
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

    .line 388
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    move-object v0, p0

    move v1, p1

    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    .line 389
    .local v2, "newTable":Ljava/lang/Object;
    add-int/lit8 v3, p2, -0x1

    .line 391
    .local v3, "newMask":I
    if-eqz p4, :cond_0

    .line 393
    and-int v4, p3, v3

    add-int/lit8 v5, p4, 0x1

    invoke-static {v2, v4, v5}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v4

    .line 397
    .local v4, "oldTable":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v5

    .line 400
    .local v5, "entries":[I
    const/4 v6, 0x0

    .local v6, "oldTableIndex":I
    :goto_0
    if-gt v6, v1, :cond_2

    .line 401
    invoke-static {v4, v6}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 402
    .local v7, "oldNext":I
    :goto_1
    if-eqz v7, :cond_1

    .line 403
    add-int/lit8 v8, v7, -0x1

    .line 404
    .local v8, "entryIndex":I
    aget v9, v5, v8

    .line 407
    .local v9, "oldEntry":I
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v10

    or-int/2addr v10, v6

    .line 409
    .local v10, "hash":I
    and-int v11, v10, v3

    .line 410
    .local v11, "newTableIndex":I
    invoke-static {v2, v11}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v12

    .line 411
    .local v12, "newNext":I
    invoke-static {v2, v11, v7}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 412
    invoke-static {v10, v12, v3}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v13

    aput v13, v5, v8

    .line 414
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v7

    .line 415
    .end local v8    # "entryIndex":I
    .end local v9    # "oldEntry":I
    .end local v10    # "hash":I
    .end local v11    # "newTableIndex":I
    .end local v12    # "newNext":I
    goto :goto_1

    .line 400
    .end local v7    # "oldNext":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 418
    .end local v6    # "oldTableIndex":I
    :cond_2
    iput-object v2, v0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 419
    invoke-direct {p0, v3}, Lcom/google/common/collect/CompactHashSet;->setHashTableMask(I)V

    .line 420
    return v3
.end method

.method private setElement(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 750
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 751
    return-void
.end method

.method private setEntry(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 754
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    aput p2, v0, p1

    .line 755
    return-void
.end method

.method private setHashTableMask(I)V
    .locals 3
    .param p1, "mask"    # I

    .line 282
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 283
    .local v0, "hashTableBits":I
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 284
    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 285
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 703
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 704
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 705
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 706
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 707
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 299
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->allocArrays()I

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 303
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v1

    .line 307
    .local v1, "entries":[I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v2

    .line 309
    .local v2, "elements":[Ljava/lang/Object;
    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 310
    .local v3, "newEntryIndex":I
    add-int/lit8 v4, v3, 0x1

    .line 311
    .local v4, "newSize":I
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v5

    .line 312
    .local v5, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v6

    .line 313
    .local v6, "mask":I
    and-int v7, v5, v6

    .line 314
    .local v7, "tableIndex":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v8

    .line 315
    .local v8, "next":I
    if-nez v8, :cond_3

    .line 316
    if-le v4, v6, :cond_2

    .line 318
    invoke-static {v6}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v9

    invoke-direct {p0, v6, v9, v5, v3}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    move-result v6

    goto :goto_1

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-static {v9, v7, v10}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_1

    .line 325
    :cond_3
    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v9

    .line 326
    .local v9, "hashPrefix":I
    const/4 v10, 0x0

    .line 328
    .local v10, "bucketLength":I
    :goto_0
    add-int/lit8 v11, v8, -0x1

    .line 329
    .local v11, "entryIndex":I
    aget v12, v1, v11

    .line 330
    .local v12, "entry":I
    invoke-static {v12, v6}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v13

    if-ne v13, v9, :cond_4

    aget-object v13, v2, v11

    .line 331
    invoke-static {p1, v13}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 332
    const/4 v13, 0x0

    return v13

    .line 334
    :cond_4
    invoke-static {v12, v6}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v8

    .line 335
    add-int/lit8 v10, v10, 0x1

    .line 336
    if-nez v8, :cond_7

    .line 338
    const/16 v13, 0x9

    if-lt v10, v13, :cond_5

    .line 339
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->convertToHashFloodingResistantImplementation()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    return v13

    .line 342
    :cond_5
    if-le v4, v6, :cond_6

    .line 344
    invoke-static {v6}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v13

    invoke-direct {p0, v6, v13, v5, v3}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    move-result v6

    goto :goto_1

    .line 346
    :cond_6
    add-int/lit8 v13, v3, 0x1

    invoke-static {v12, v13, v6}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v13

    aput v13, v1, v11

    .line 349
    .end local v9    # "hashPrefix":I
    .end local v10    # "bucketLength":I
    .end local v11    # "entryIndex":I
    .end local v12    # "entry":I
    :goto_1
    invoke-direct {p0, v4}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 350
    invoke-virtual {p0, v3, p1, v5, v6}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;II)V

    .line 351
    iput v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 353
    const/4 v9, 0x1

    return v9

    .line 336
    .restart local v9    # "hashPrefix":I
    .restart local v10    # "bucketLength":I
    .restart local v11    # "entryIndex":I
    .restart local v12    # "entry":I
    :cond_7
    goto :goto_0
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 539
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method allocArrays()I
    .locals 3

    .line 234
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 236
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 237
    .local v0, "expectedSize":I
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 238
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 239
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/google/common/collect/CompactHashSet;->setHashTableMask(I)V

    .line 241
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 242
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 244
    return v0
.end method

.method public clear()V
    .locals 6

    .line 682
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    return-void

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 686
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 687
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 688
    nop

    .line 689
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 690
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 691
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 692
    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    goto :goto_0

    .line 694
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 695
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->tableClear(Ljava/lang/Object;)V

    .line 696
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v1

    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v1, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 697
    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 699
    :goto_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 425
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 426
    return v1

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 429
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 430
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 432
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 433
    .local v2, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    .line 434
    .local v3, "mask":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v4

    and-int v5, v2, v3

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v4

    .line 435
    .local v4, "next":I
    if-nez v4, :cond_2

    .line 436
    return v1

    .line 438
    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v5

    .line 440
    .local v5, "hashPrefix":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    .line 441
    .local v6, "entryIndex":I
    invoke-direct {p0, v6}, Lcom/google/common/collect/CompactHashSet;->entry(I)I

    move-result v7

    .line 442
    .local v7, "entry":I
    invoke-static {v7, v3}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v8

    if-ne v8, v5, :cond_3

    .line 443
    invoke-direct {p0, v6}, Lcom/google/common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 444
    const/4 v1, 0x1

    return v1

    .line 446
    :cond_3
    invoke-static {v7, v3}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v4

    .line 447
    .end local v6    # "entryIndex":I
    .end local v7    # "entry":I
    if-nez v4, :cond_4

    .line 448
    return v1

    .line 447
    :cond_4
    goto :goto_0
.end method

.method convertToHashFloodingResistantImplementation()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashSet;->createHashFloodingResistantDelegate(I)Ljava/util/Set;

    move-result-object v0

    .line 265
    .local v0, "newDelegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 266
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 270
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 272
    return-object v0
.end method

.method delegateOrNull()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 251
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 252
    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method firstEntryIndex()I
    .locals 1

    .line 526
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 607
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 609
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_0

    .line 610
    invoke-interface {v0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 613
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v1

    goto :goto_0

    .line 616
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 530
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

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

    .line 293
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 294
    return-void
.end method

.method init(I)V
    .locals 3
    .param p1, "expectedSize"    # I

    .line 219
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 222
    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {p1, v0, v1}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 223
    return-void
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3, "hash"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;II)V"
        }
    .end annotation

    .line 360
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-static {p3, v0, p4}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->setEntry(II)V

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->setElement(ILjava/lang/Object;)V

    .line 362
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 626
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUsingHashFloodingResistance()Z
    .locals 1

    .line 277
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 545
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 548
    :cond_0
    new-instance v1, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v1
.end method

.method moveLastEntry(II)V
    .locals 11
    .param p1, "dstIndex"    # I
    .param p2, "mask"    # I

    .line 486
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v0

    .line 487
    .local v0, "table":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v1

    .line 488
    .local v1, "entries":[I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v2

    .line 489
    .local v2, "elements":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 490
    .local v3, "srcIndex":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge p1, v3, :cond_1

    .line 492
    aget-object v6, v2, v3

    .line 493
    .local v6, "object":Ljava/lang/Object;
    aput-object v6, v2, p1

    .line 494
    aput-object v5, v2, v3

    .line 497
    aget v5, v1, v3

    aput v5, v1, p1

    .line 498
    aput v4, v1, v3

    .line 501
    invoke-static {v6}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v4

    and-int v7, v4, p2

    .line 502
    .local v7, "tableIndex":I
    invoke-static {v0, v7}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v4

    .line 503
    .local v4, "next":I
    add-int/lit8 v8, v3, 0x1

    .line 504
    .local v8, "srcNext":I
    if-ne v4, v8, :cond_0

    .line 506
    add-int/lit8 v5, p1, 0x1

    invoke-static {v0, v7, v5}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_0

    .line 512
    :cond_0
    add-int/lit8 v5, v4, -0x1

    .line 513
    .local v5, "entryIndex":I
    aget v9, v1, v5

    .line 514
    .local v9, "entry":I
    invoke-static {v9, p2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v4

    .line 515
    if-ne v4, v8, :cond_0

    .line 517
    add-int/lit8 v10, p1, 0x1

    invoke-static {v9, v10, p2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v10

    aput v10, v1, v5

    .line 519
    .end local v4    # "next":I
    .end local v5    # "entryIndex":I
    .end local v6    # "object":Ljava/lang/Object;
    .end local v7    # "tableIndex":I
    .end local v8    # "srcNext":I
    .end local v9    # "entry":I
    :goto_0
    goto :goto_1

    .line 520
    :cond_1
    aput-object v5, v2, p1

    .line 521
    aput v4, v1, p1

    .line 523
    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 228
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 454
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    return v1

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 458
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 459
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v9

    .line 462
    .local v9, "mask":I
    const/4 v3, 0x0

    .line 467
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v5

    .line 468
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v6

    .line 469
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    .line 463
    move-object v2, p1

    move v4, v9

    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 471
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 472
    return v1

    .line 475
    :cond_2
    invoke-virtual {p0, v2, v9}, Lcom/google/common/collect/CompactHashSet;->moveLastEntry(II)V

    .line 476
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 477
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 479
    return v3
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 382
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 383
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 384
    return-void
.end method

.method public size()I
    .locals 2

    .line 620
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 621
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    :goto_0
    return v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 596
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 599
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 600
    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    goto :goto_0

    .line 601
    :cond_1
    nop

    .line 602
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 601
    invoke-static {v3, v2, v4, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v1

    .line 599
    :goto_0
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 631
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 635
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 642
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 643
    array-length v0, p1

    if-lez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 646
    :cond_0
    return-object p1

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 649
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_2

    .line 650
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 651
    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v2, v1, v3, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 649
    :goto_0
    return-object v1
.end method

.method public trimToSize()V
    .locals 5

    .line 659
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    return-void

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 663
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashSet;->createHashFloodingResistantDelegate(I)Ljava/util/Set;

    move-result-object v1

    .line 665
    .local v1, "newDelegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 666
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 667
    return-void

    .line 669
    .end local v1    # "newDelegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_1
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 670
    .local v1, "size":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 671
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 673
    :cond_2
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v2

    .line 674
    .local v2, "minimumTableSize":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    .line 675
    .local v3, "mask":I
    if-ge v2, v3, :cond_3

    .line 676
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4, v4}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    .line 678
    :cond_3
    return-void
.end method
