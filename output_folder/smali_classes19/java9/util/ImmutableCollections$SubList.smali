.class final Ljava9/util/ImmutableCollections$SubList;
.super Ljava9/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final offset:I

.field private final root:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method private constructor <init>(Ljava/util/List;II)V
    .locals 0
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;II)V"
        }
    .end annotation

    .line 326
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    .local p1, "root":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 327
    iput-object p1, p0, Ljava9/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    .line 328
    iput p2, p0, Ljava9/util/ImmutableCollections$SubList;->offset:I

    .line 329
    iput p3, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    .line 330
    return-void
.end method

.method static fromList(Ljava/util/List;II)Ljava9/util/ImmutableCollections$SubList;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;II)",
            "Ljava9/util/ImmutableCollections$SubList<",
            "TE;>;"
        }
    .end annotation

    .line 344
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Ljava9/util/ImmutableCollections$SubList;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava9/util/ImmutableCollections$SubList;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method static fromSubList(Ljava9/util/ImmutableCollections$SubList;II)Ljava9/util/ImmutableCollections$SubList;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/ImmutableCollections$SubList<",
            "TE;>;II)",
            "Ljava9/util/ImmutableCollections$SubList<",
            "TE;>;"
        }
    .end annotation

    .line 336
    .local p0, "parent":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    new-instance v0, Ljava9/util/ImmutableCollections$SubList;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iget v2, p0, Ljava9/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava9/util/ImmutableCollections$SubList;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method private rangeCheck(I)V
    .locals 1
    .param p1, "index"    # I

    .line 371
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    if-gt p1, v0, :cond_0

    .line 374
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0, p1}, Ljava9/util/ImmutableCollections$SubList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 348
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, v0}, Ljava9/util/Objects;->checkIndex(II)I

    .line 349
    iget-object v0, p0, Ljava9/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iget v1, p0, Ljava9/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 357
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    new-instance v0, Ljava9/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava9/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    invoke-direct {p0, p1}, Ljava9/util/ImmutableCollections$SubList;->rangeCheck(I)V

    .line 362
    new-instance v0, Ljava9/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava9/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 353
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 366
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava9/util/ImmutableCollections$SubList;->subListRangeCheck(III)V

    .line 367
    invoke-static {p0, p1, p2}, Ljava9/util/ImmutableCollections$SubList;->fromSubList(Ljava9/util/ImmutableCollections$SubList;II)Ljava9/util/ImmutableCollections$SubList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 378
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 379
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    if-ge v1, v2, :cond_0

    .line 380
    invoke-virtual {p0, v1}, Ljava9/util/ImmutableCollections$SubList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 388
    .local p0, "this":Ljava9/util/ImmutableCollections$SubList;, "Ljava9/util/ImmutableCollections$SubList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    if-lt v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    nop

    .line 391
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Ljava9/util/ImmutableCollections$SubList;->size:I

    if-ge v1, v2, :cond_1

    .line 392
    invoke-virtual {p0, v1}, Ljava9/util/ImmutableCollections$SubList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    .end local v1    # "i":I
    :cond_1
    array-length v1, v0

    if-le v1, v2, :cond_2

    .line 395
    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 397
    :cond_2
    return-object v0
.end method
