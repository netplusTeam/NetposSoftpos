.class public final Lcom/google/common/primitives/ImmutableIntArray;
.super Ljava/lang/Object;
.source "ImmutableIntArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableIntArray$AsList;,
        Lcom/google/common/primitives/ImmutableIntArray$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/primitives/ImmutableIntArray;


# instance fields
.field private final array:[I

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    sput-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-void
.end method

.method private constructor <init>([I)V
    .locals 2
    .param p1, "array"    # [I

    .line 346
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    .line 347
    return-void
.end method

.method private constructor <init>([III)V
    .locals 0
    .param p1, "array"    # [I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    .line 351
    iput p2, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    .line 352
    iput p3, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    .line 353
    return-void
.end method

.method synthetic constructor <init>([IIILcom/google/common/primitives/ImmutableIntArray$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/primitives/ImmutableIntArray$1;

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/primitives/ImmutableIntArray;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableIntArray;

    .line 92
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/primitives/ImmutableIntArray;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableIntArray;

    .line 92
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lcom/google/common/primitives/ImmutableIntArray;
    .locals 1

    .line 92
    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/primitives/ImmutableIntArray;)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableIntArray;

    .line 92
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableIntArray;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 2

    .line 203
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 2
    .param p0, "initialCapacity"    # I

    .line 190
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 191
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray;"
        }
    .end annotation

    .line 166
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableIntArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->builder()Lcom/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->build()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray;"
        }
    .end annotation

    .line 155
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    :goto_0
    return-object v0
.end method

.method public static copyOf(Ljava/util/stream/IntStream;)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "stream"    # Ljava/util/stream/IntStream;

    .line 175
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 176
    .local v0, "array":[I
    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    :goto_0
    return-object v1
.end method

.method public static copyOf([I)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "values"    # [I

    .line 150
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    :goto_0
    return-object v0
.end method

.method private isPartialView()Z
    .locals 2

    .line 608
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static of()Lcom/google/common/primitives/ImmutableIntArray;
    .locals 1

    .line 97
    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-object v0
.end method

.method public static of(I)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I

    .line 102
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(II)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I

    .line 107
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(III)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I

    .line 112
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIII)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I

    .line 117
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIII)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I
    .param p4, "e4"    # I

    .line 122
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    const/4 v2, 0x4

    aput p4, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIIII)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I
    .param p4, "e4"    # I
    .param p5, "e5"    # I

    .line 127
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    const/4 v2, 0x4

    aput p4, v1, v2

    const/4 v2, 0x5

    aput p5, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static varargs of(I[I)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 4
    .param p0, "first"    # I
    .param p1, "rest"    # [I

    .line 140
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7ffffffe

    if-gt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 142
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 143
    .local v0, "array":[I
    aput p0, v0, v2

    .line 144
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    new-instance v1, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v1
.end method

.method private spliterator()Ljava/util/Spliterator$OfInt;
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    const/16 v3, 0x410

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/ImmutableIntArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableIntArray;Lcom/google/common/primitives/ImmutableIntArray$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 407
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableIntArray;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 549
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 550
    return v0

    .line 552
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 553
    return v2

    .line 555
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/common/primitives/ImmutableIntArray;

    .line 556
    .local v1, "that":Lcom/google/common/primitives/ImmutableIntArray;
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 557
    return v2

    .line 559
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 560
    invoke-virtual {p0, v3}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 561
    return v2

    .line 559
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 412
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 2
    .param p1, "index"    # I

    .line 372
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 373
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 570
    const/4 v0, 0x1

    .line 571
    .local v0, "hash":I
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v1, v2, :cond_0

    .line 572
    mul-int/lit8 v0, v0, 0x1f

    .line 573
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "target"    # I

    .line 381
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v0, v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 383
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 362
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 3
    .param p1, "target"    # I

    .line 394
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-lt v0, v1, :cond_1

    .line 395
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 396
    sub-int v1, v0, v1

    return v1

    .line 394
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 399
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public length()I
    .locals 2

    .line 357
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public stream()Ljava/util/stream/IntStream;
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 436
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 437
    if-ne p1, p2, :cond_0

    .line 438
    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    .line 439
    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    .line 437
    :goto_0
    return-object v0
.end method

.method public toArray()[I
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 584
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "[]"

    return-object v0

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 588
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v3, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v1, v2, :cond_1

    .line 591
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableIntArray;
    .locals 2

    .line 604
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->toArray()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->trimmed()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    return-object v0
.end method
