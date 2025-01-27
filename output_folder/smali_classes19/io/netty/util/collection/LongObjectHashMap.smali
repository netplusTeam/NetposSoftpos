.class public Lio/netty/util/collection/LongObjectHashMap;
.super Ljava/lang/Object;
.source "LongObjectHashMap.java"

# interfaces
.implements Lio/netty/util/collection/LongObjectMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/collection/LongObjectHashMap$MapEntry;,
        Lio/netty/util/collection/LongObjectHashMap$MapIterator;,
        Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;,
        Lio/netty/util/collection/LongObjectHashMap$KeySet;,
        Lio/netty/util/collection/LongObjectHashMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/collection/LongObjectMap<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_CAPACITY:I = 0x8

.field public static final DEFAULT_LOAD_FACTOR:F = 0.5f

.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final entries:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lio/netty/util/collection/LongObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private keys:[J

.field private final loadFactor:F

.field private mask:I

.field private maxSize:I

.field private size:I

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    nop

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/collection/LongObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    const/16 v0, 0x8

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lio/netty/util/collection/LongObjectHashMap;-><init>(IF)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 76
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Lio/netty/util/collection/LongObjectHashMap;-><init>(IF)V

    .line 77
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 79
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/util/collection/LongObjectHashMap$KeySet;-><init>(Lio/netty/util/collection/LongObjectHashMap;Lio/netty/util/collection/LongObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keySet:Ljava/util/Set;

    .line 63
    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$EntrySet;

    invoke-direct {v0, p0, v1}, Lio/netty/util/collection/LongObjectHashMap$EntrySet;-><init>(Lio/netty/util/collection/LongObjectHashMap;Lio/netty/util/collection/LongObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entrySet:Ljava/util/Set;

    .line 64
    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$1;

    invoke-direct {v0, p0}, Lio/netty/util/collection/LongObjectHashMap$1;-><init>(Lio/netty/util/collection/LongObjectHashMap;)V

    iput-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entries:Ljava/lang/Iterable;

    .line 80
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 86
    iput p2, p0, Lio/netty/util/collection/LongObjectHashMap;->loadFactor:F

    .line 89
    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result v0

    .line 90
    .local v0, "capacity":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/netty/util/collection/LongObjectHashMap;->mask:I

    .line 93
    new-array v1, v0, [J

    iput-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    .line 95
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 96
    .local v1, "temp":[Ljava/lang/Object;, "[TV;"
    iput-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    .line 99
    invoke-direct {p0, v0}, Lio/netty/util/collection/LongObjectHashMap;->calcMaxSize(I)I

    move-result v2

    iput v2, p0, Lio/netty/util/collection/LongObjectHashMap;->maxSize:I

    .line 100
    return-void

    .line 83
    .end local v0    # "capacity":I
    .end local v1    # "temp":[Ljava/lang/Object;, "[TV;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "loadFactor must be > 0 and <= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 37
    invoke-static {p0}, Lio/netty/util/collection/LongObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/util/collection/LongObjectHashMap;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/collection/LongObjectHashMap;

    .line 37
    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    return v0
.end method

.method static synthetic access$500(Lio/netty/util/collection/LongObjectHashMap;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/collection/LongObjectHashMap;

    .line 37
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/util/collection/LongObjectHashMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/collection/LongObjectHashMap;

    .line 37
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lio/netty/util/collection/LongObjectHashMap;I)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/util/collection/LongObjectHashMap;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->removeAt(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lio/netty/util/collection/LongObjectHashMap;)[J
    .locals 1
    .param p0, "x0"    # Lio/netty/util/collection/LongObjectHashMap;

    .line 37
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 37
    invoke-static {p0}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private calcMaxSize(I)I
    .locals 3
    .param p1, "capacity"    # I

    .line 442
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    add-int/lit8 v0, p1, -0x1

    .line 443
    .local v0, "upperBound":I
    int-to-float v1, p1

    iget v2, p0, Lio/netty/util/collection/LongObjectHashMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private growSize()V
    .locals 3

    .line 387
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    .line 389
    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap;->maxSize:I

    if-le v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    array-length v1, v0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 395
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/util/collection/LongObjectHashMap;->rehash(I)V

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max capacity reached at size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    :goto_0
    return-void
.end method

.method private static hashCode(J)I
    .locals 2
    .param p0, "key"    # J

    .line 372
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private hashIndex(J)I
    .locals 2
    .param p1, "key"    # J

    .line 365
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-static {p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->hashCode(J)I

    move-result v0

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private indexOf(J)I
    .locals 6
    .param p1, "key"    # J

    .line 341
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->hashIndex(J)I

    move-result v0

    .line 342
    .local v0, "startIndex":I
    move v1, v0

    .line 345
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 347
    return v3

    .line 349
    :cond_0
    iget-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v4, v2, v1

    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 350
    return v1

    .line 354
    :cond_1
    invoke-direct {p0, v1}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v2

    move v1, v2

    if-ne v2, v0, :cond_2

    .line 355
    return v3

    .line 354
    :cond_2
    goto :goto_0
.end method

.method private objectToKey(Ljava/lang/Object;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 331
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private probeNext(I)I
    .locals 2
    .param p1, "index"    # I

    .line 380
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private rehash(I)V
    .locals 10
    .param p1, "newCapacity"    # I

    .line 452
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    .line 453
    .local v0, "oldKeys":[J
    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    .line 455
    .local v1, "oldVals":[Ljava/lang/Object;, "[TV;"
    new-array v2, p1, [J

    iput-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    .line 457
    new-array v2, p1, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 458
    .local v2, "temp":[Ljava/lang/Object;, "[TV;"
    iput-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    .line 460
    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->calcMaxSize(I)I

    move-result v3

    iput v3, p0, Lio/netty/util/collection/LongObjectHashMap;->maxSize:I

    .line 461
    add-int/lit8 v3, p1, -0x1

    iput v3, p0, Lio/netty/util/collection/LongObjectHashMap;->mask:I

    .line 464
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 465
    aget-object v4, v1, v3

    .line 466
    .local v4, "oldVal":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_1

    .line 469
    aget-wide v5, v0, v3

    .line 470
    .local v5, "oldKey":J
    invoke-direct {p0, v5, v6}, Lio/netty/util/collection/LongObjectHashMap;->hashIndex(J)I

    move-result v7

    .line 473
    .local v7, "index":I
    :goto_1
    iget-object v8, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v9, v8, v7

    if-nez v9, :cond_0

    .line 474
    iget-object v9, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aput-wide v5, v9, v7

    .line 475
    aput-object v4, v8, v7

    .line 476
    goto :goto_2

    .line 480
    :cond_0
    invoke-direct {p0, v7}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v7

    goto :goto_1

    .line 464
    .end local v4    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v5    # "oldKey":J
    .end local v7    # "index":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private removeAt(I)Z
    .locals 12
    .param p1, "index"    # I

    .line 407
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    .line 410
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    .line 411
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v0, p1

    .line 418
    move v0, p1

    .line 419
    .local v0, "nextFree":I
    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v5

    .line 420
    .local v5, "i":I
    iget-object v6, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v6, v6, v5

    .local v6, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    if-eqz v6, :cond_3

    .line 421
    iget-object v7, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v7, v7, v5

    .line 422
    .local v7, "key":J
    invoke-direct {p0, v7, v8}, Lio/netty/util/collection/LongObjectHashMap;->hashIndex(J)I

    move-result v9

    .line 423
    .local v9, "bucket":I
    if-ge v5, v9, :cond_0

    if-le v9, v0, :cond_1

    if-le v0, v5, :cond_1

    :cond_0
    if-gt v9, v0, :cond_2

    if-gt v0, v5, :cond_2

    .line 426
    :cond_1
    iget-object v10, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aput-wide v7, v10, v0

    .line 427
    iget-object v11, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aput-object v6, v11, v0

    .line 429
    aput-wide v2, v10, v5

    .line 430
    aput-object v4, v11, v5

    .line 431
    move v0, v5

    .line 420
    .end local v7    # "key":J
    .end local v9    # "bucket":I
    :cond_2
    iget-object v7, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, v5}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v8

    move v5, v8

    aget-object v6, v7, v8

    goto :goto_0

    .line 434
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    if-eq v0, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static toExternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 103
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    .line 104
    sget-object v0, Lio/netty/util/collection/LongObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "null is not a legitimate internal value. Concurrent Modification?"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static toInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 109
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    sget-object v0, Lio/netty/util/collection/LongObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 191
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 192
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    .line 194
    return-void
.end method

.method public containsKey(J)Z
    .locals 1
    .param p1, "key"    # J

    .line 198
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 302
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->objectToKey(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/collection/LongObjectHashMap;->containsKey(J)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .line 204
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-static {p1}, Lio/netty/util/collection/LongObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "v1":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 207
    .local v5, "v2":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    const/4 v1, 0x1

    return v1

    .line 205
    .end local v5    # "v2":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return v3
.end method

.method public entries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lio/netty/util/collection/LongObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entries:Ljava/lang/Iterable;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 272
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 273
    return v0

    .line 275
    :cond_0
    instance-of v1, p1, Lio/netty/util/collection/LongObjectMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 276
    return v2

    .line 279
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/netty/util/collection/LongObjectMap;

    .line 280
    .local v1, "other":Lio/netty/util/collection/LongObjectMap;
    iget v3, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    invoke-interface {v1}, Lio/netty/util/collection/LongObjectMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 281
    return v2

    .line 283
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 284
    aget-object v4, v4, v3

    .line 285
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_4

    .line 286
    iget-object v5, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v5, v5, v3

    .line 287
    .local v5, "key":J
    invoke-interface {v1, v5, v6}, Lio/netty/util/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    .line 288
    .local v7, "otherValue":Ljava/lang/Object;
    sget-object v8, Lio/netty/util/collection/LongObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne v4, v8, :cond_3

    .line 289
    if-eqz v7, :cond_4

    .line 290
    return v2

    .line 292
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 293
    return v2

    .line 283
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "key":J
    .end local v7    # "otherValue":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    .end local v3    # "i":I
    :cond_5
    return v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->indexOf(J)I

    move-result v0

    .line 115
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
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

    .line 307
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->objectToKey(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/collection/LongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 256
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    .line 257
    .local v0, "hash":I
    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 265
    .local v4, "key":J
    invoke-static {v4, v5}, Lio/netty/util/collection/LongObjectHashMap;->hashCode(J)I

    move-result v6

    xor-int/2addr v0, v6

    .line 257
    .end local v4    # "key":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 186
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method protected keyToString(J)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # J

    .line 513
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->hashIndex(J)I

    move-result v0

    .line 121
    .local v0, "startIndex":I
    move v1, v0

    .line 124
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 126
    iget-object v3, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aput-wide p1, v3, v1

    .line 127
    invoke-static {p3}, Lio/netty/util/collection/LongObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 128
    invoke-direct {p0}, Lio/netty/util/collection/LongObjectHashMap;->growSize()V

    .line 129
    const/4 v2, 0x0

    return-object v2

    .line 131
    :cond_0
    iget-object v3, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v3, v3, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 133
    aget-object v3, v2, v1

    .line 134
    .local v3, "previousValue":Ljava/lang/Object;, "TV;"
    invoke-static {p3}, Lio/netty/util/collection/LongObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 135
    invoke-static {v3}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 139
    .end local v3    # "previousValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v1}, Lio/netty/util/collection/LongObjectHashMap;->probeNext(I)I

    move-result v2

    move v1, v2

    if-eq v2, v0, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to insert"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TV;)TV;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->objectToKey(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lio/netty/util/collection/LongObjectHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+TV;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    .local p1, "sourceMap":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Long;+TV;>;"
    instance-of v0, p1, Lio/netty/util/collection/LongObjectHashMap;

    if-eqz v0, :cond_2

    .line 151
    move-object v0, p1

    check-cast v0, Lio/netty/util/collection/LongObjectHashMap;

    .line 152
    .local v0, "source":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 153
    aget-object v2, v2, v1

    .line 154
    .local v2, "sourceValue":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    .line 155
    iget-object v3, v0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v3, v3, v1

    invoke-virtual {p0, v3, v4, v2}, Lio/netty/util/collection/LongObjectHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v2    # "sourceValue":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 162
    .end local v0    # "source":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Long;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/util/collection/LongObjectHashMap;->put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Long;+TV;>;"
    goto :goto_1

    .line 165
    :cond_3
    return-void
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/collection/LongObjectHashMap;->indexOf(J)I

    move-result v0

    .line 170
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_0
    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 175
    .local v1, "prev":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0}, Lio/netty/util/collection/LongObjectHashMap;->removeAt(I)Z

    .line 176
    invoke-static {v1}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap;->objectToKey(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/collection/LongObjectHashMap;->remove(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 181
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    iget v0, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 488
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/collection/LongObjectHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const-string v0, "{}"

    return-object v0

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap;->size:I

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    const/4 v1, 0x1

    .line 494
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lio/netty/util/collection/LongObjectHashMap;->values:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 495
    aget-object v3, v3, v2

    .line 496
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_3

    .line 497
    if-nez v1, :cond_1

    .line 498
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_1
    iget-object v4, p0, Lio/netty/util/collection/LongObjectHashMap;->keys:[J

    aget-wide v4, v4, v2

    invoke-virtual {p0, v4, v5}, Lio/netty/util/collection/LongObjectHashMap;->keyToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v3, p0, :cond_2

    const-string v5, "(this Map)"

    goto :goto_1

    .line 501
    :cond_2
    invoke-static {v3}, Lio/netty/util/collection/LongObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 500
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    const/4 v1, 0x0

    .line 494
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    :cond_4
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
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

    .line 221
    .local p0, "this":Lio/netty/util/collection/LongObjectHashMap;, "Lio/netty/util/collection/LongObjectHashMap<TV;>;"
    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$2;

    invoke-direct {v0, p0}, Lio/netty/util/collection/LongObjectHashMap$2;-><init>(Lio/netty/util/collection/LongObjectHashMap;)V

    return-object v0
.end method
