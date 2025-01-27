.class final Lorg/jdom2/ContentList;
.super Ljava/util/AbstractList;
.source "ContentList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/ContentList$FilterListIterator;,
        Lorg/jdom2/ContentList$FilterList;,
        Lorg/jdom2/ContentList$CLListIterator;,
        Lorg/jdom2/ContentList$CLIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/jdom2/Content;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final INITIAL_ARRAY_SIZE:I = 0x4


# instance fields
.field private transient dataModiCount:I

.field private elementData:[Lorg/jdom2/Content;

.field private final parent:Lorg/jdom2/Parent;

.field private size:I

.field private transient sizeModCount:I


# direct methods
.method constructor <init>(Lorg/jdom2/Parent;)V
    .locals 1
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .line 115
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 98
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    .line 104
    iput v0, p0, Lorg/jdom2/ContentList;->dataModiCount:I

    .line 116
    iput-object p1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lorg/jdom2/ContentList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/ContentList;

    .line 79
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getModCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/jdom2/ContentList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/ContentList;

    .line 79
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    return v0
.end method

.method static synthetic access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/ContentList;

    .line 79
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jdom2/ContentList;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/jdom2/ContentList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/jdom2/ContentList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/ContentList;

    .line 79
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getDataModCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/jdom2/ContentList;II)V
    .locals 0
    .param p0, "x0"    # Lorg/jdom2/ContentList;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/jdom2/ContentList;->setModCount(II)V

    return-void
.end method

.method static synthetic access$700(Lorg/jdom2/ContentList;[I)V
    .locals 0
    .param p0, "x0"    # Lorg/jdom2/ContentList;
    .param p1, "x1"    # [I

    .line 79
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList;->sortInPlace([I)V

    return-void
.end method

.method private final binarySearch([IIILjava/util/Comparator;)I
    .locals 7
    .param p1, "indexes"    # [I
    .param p2, "len"    # I
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/Comparator<",
            "-",
            "Lorg/jdom2/Content;",
            ">;)I"
        }
    .end annotation

    .line 611
    .local p4, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Content;>;"
    const/4 v0, 0x0

    .local v0, "left":I
    const/4 v1, 0x0

    .local v1, "mid":I
    add-int/lit8 v2, p2, -0x1

    .local v2, "right":I
    const/4 v3, 0x0

    .line 612
    .local v3, "cmp":I
    iget-object v4, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v4, v4, p3

    .line 613
    .local v4, "base":Lorg/jdom2/Content;
    :goto_0
    if-gt v0, v2, :cond_3

    .line 614
    add-int v5, v0, v2

    ushr-int/lit8 v1, v5, 0x1

    .line 615
    iget-object v5, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget v6, p1, v1

    aget-object v5, v5, v6

    invoke-interface {p4, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 616
    if-nez v3, :cond_1

    .line 617
    :goto_1
    if-nez v3, :cond_0

    if-ge v1, v2, :cond_0

    iget-object v5, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v6, v1, 0x1

    aget v6, p1, v6

    aget-object v5, v5, v6

    invoke-interface {p4, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_0

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 621
    :cond_0
    add-int/lit8 v5, v1, 0x1

    return v5

    .line 622
    :cond_1
    if-gez v3, :cond_2

    .line 623
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 625
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 628
    :cond_3
    return v0
.end method

.method private final checkIndex(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "excludes"    # Z

    .line 187
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 189
    .local v0, "max":I
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 194
    return-void

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jdom2/ContentList;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final checkPreConditions(Lorg/jdom2/Content;IZ)V
    .locals 4
    .param p1, "child"    # Lorg/jdom2/Content;
    .param p2, "index"    # I
    .param p3, "replace"    # Z

    .line 198
    if-eqz p1, :cond_5

    .line 202
    invoke-direct {p0, p2, p3}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    .line 204
    invoke-virtual {p1}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p1}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    .line 207
    .local v0, "p":Lorg/jdom2/Parent;
    instance-of v1, v0, Lorg/jdom2/Document;

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Lorg/jdom2/IllegalAddException;

    move-object v2, p1

    check-cast v2, Lorg/jdom2/Element;

    const-string v3, "The Content already has an existing parent document"

    invoke-direct {v1, v2, v3}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    new-instance v1, Lorg/jdom2/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Content already has an existing parent \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {v3}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    .end local v0    # "p":Lorg/jdom2/Parent;
    :cond_1
    iget-object v0, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    if-eq p1, v0, :cond_4

    .line 222
    instance-of v1, v0, Lorg/jdom2/Element;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lorg/jdom2/Element;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/jdom2/Element;

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->isAncestor(Lorg/jdom2/Element;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 224
    :cond_2
    new-instance v0, Lorg/jdom2/IllegalAddException;

    const-string v1, "The Element cannot be added as a descendent of itself"

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_3
    :goto_0
    return-void

    .line 217
    :cond_4
    new-instance v0, Lorg/jdom2/IllegalAddException;

    const-string v1, "The Element cannot be added to itself"

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot add null object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getDataModCount()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/jdom2/ContentList;->dataModiCount:I

    return v0
.end method

.method private final getModCount()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    return v0
.end method

.method private final incDataModOnly()V
    .locals 1

    .line 175
    iget v0, p0, Lorg/jdom2/ContentList;->dataModiCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/ContentList;->dataModiCount:I

    .line 176
    return-void
.end method

.method private final incModCount()V
    .locals 1

    .line 169
    iget v0, p0, Lorg/jdom2/ContentList;->dataModiCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/ContentList;->dataModiCount:I

    .line 171
    iget v0, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    .line 172
    return-void
.end method

.method private static removeParent(Lorg/jdom2/Content;)V
    .locals 1
    .param p0, "c"    # Lorg/jdom2/Content;

    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    .line 512
    return-void
.end method

.method private final setModCount(II)V
    .locals 0
    .param p1, "sizemod"    # I
    .param p2, "datamod"    # I

    .line 145
    iput p1, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    .line 146
    iput p2, p0, Lorg/jdom2/ContentList;->dataModiCount:I

    .line 147
    return-void
.end method

.method private sortInPlace([I)V
    .locals 6
    .param p1, "indexes"    # [I

    .line 587
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/jdom2/internal/ArrayCopy;->copyOf([II)[I

    move-result-object v0

    .line 588
    .local v0, "unsorted":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 589
    array-length v1, v0

    new-array v1, v1, [Lorg/jdom2/Content;

    .line 590
    .local v1, "usc":[Lorg/jdom2/Content;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 591
    iget-object v3, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget v4, p1, v2

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 595
    iget-object v3, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget v4, v0, v2

    aget-object v5, v1, v2

    aput-object v5, v3, v4

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 597
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .line 79
    move-object v0, p2

    check-cast v0, Lorg/jdom2/Content;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    return-void
.end method

.method public add(ILorg/jdom2/Content;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lorg/jdom2/ContentList;->checkPreConditions(Lorg/jdom2/Content;IZ)V

    .line 246
    iget-object v1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-interface {v1, p2, p1, v0}, Lorg/jdom2/Parent;->canContainContent(Lorg/jdom2/Content;IZ)V

    .line 248
    iget-object v0, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-virtual {p2, v0}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    .line 250
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom2/ContentList;->ensureCapacity(I)V

    .line 251
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    if-ne p1, v0, :cond_0

    .line 252
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/jdom2/ContentList;->size:I

    aput-object p2, v1, v0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aput-object p2, v0, p1

    .line 256
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/ContentList;->size:I

    .line 259
    :goto_0
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incModCount()V

    .line 260
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)Z"
        }
    .end annotation

    .line 291
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    if-eqz p2, :cond_7

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    .line 298
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    return v0

    .line 303
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 304
    .local v0, "addcnt":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 306
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 307
    return v1

    .line 310
    :cond_1
    invoke-virtual {p0}, Lorg/jdom2/ContentList;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/jdom2/ContentList;->ensureCapacity(I)V

    .line 312
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getModCount()I

    move-result v2

    .line 313
    .local v2, "tmpmodcount":I
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getDataModCount()I

    move-result v3

    .line 314
    .local v3, "tmpdmc":I
    const/4 v4, 0x0

    .line 316
    .local v4, "ok":Z
    const/4 v5, 0x0

    .line 319
    .local v5, "count":I
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom2/Content;

    .line 320
    .local v7, "c":Lorg/jdom2/Content;
    add-int v8, p1, v5

    invoke-virtual {p0, v8, v7}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    nop

    .end local v7    # "c":Lorg/jdom2/Content;
    add-int/lit8 v5, v5, 0x1

    .line 322
    goto :goto_0

    .line 323
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x1

    .line 325
    if-nez v4, :cond_4

    .line 327
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_3

    .line 328
    add-int v6, p1, v5

    invoke-virtual {p0, v6}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    goto :goto_1

    .line 331
    :cond_3
    invoke-direct {p0, v2, v3}, Lorg/jdom2/ContentList;->setModCount(II)V

    .line 335
    :cond_4
    return v1

    .line 325
    :catchall_0
    move-exception v1

    if-nez v4, :cond_6

    .line 327
    :goto_2
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_5

    .line 328
    add-int v6, p1, v5

    invoke-virtual {p0, v6}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    goto :goto_2

    .line 331
    :cond_5
    invoke-direct {p0, v2, v3}, Lorg/jdom2/ContentList;->setModCount(II)V

    :cond_6
    throw v1

    .line 292
    .end local v0    # "addcnt":I
    .end local v2    # "tmpmodcount":I
    .end local v3    # "tmpdmc":I
    .end local v4    # "ok":Z
    .end local v5    # "count":I
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can not add a null collection to the ContentList"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)Z"
        }
    .end annotation

    .line 272
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    if-eqz v0, :cond_1

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v1, v1, v0

    .line 346
    .local v1, "obj":Lorg/jdom2/Content;
    invoke-static {v1}, Lorg/jdom2/ContentList;->removeParent(Lorg/jdom2/Content;)V

    .line 344
    .end local v1    # "obj":Lorg/jdom2/Content;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/ContentList;->size:I

    .line 351
    :cond_1
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incModCount()V

    .line 352
    return-void
.end method

.method clearAndSet(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 369
    .local v0, "old":[Lorg/jdom2/Content;
    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    .line 370
    .local v1, "oldSize":I
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getModCount()I

    move-result v2

    .line 371
    .local v2, "oldModCount":I
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getDataModCount()I

    move-result v3

    .line 377
    .local v3, "oldDataModCount":I
    :goto_0
    iget v4, p0, Lorg/jdom2/ContentList;->size:I

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 378
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jdom2/ContentList;->size:I

    aget-object v4, v0, v4

    invoke-virtual {v4, v5}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    goto :goto_0

    .line 380
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lorg/jdom2/ContentList;->size:I

    .line 381
    iput-object v5, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 383
    const/4 v5, 0x0

    .line 385
    .local v5, "ok":Z
    :try_start_0
    invoke-virtual {p0, v4, p1}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    const/4 v4, 0x1

    .line 388
    .end local v5    # "ok":Z
    .local v4, "ok":Z
    if-nez v4, :cond_3

    .line 394
    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 395
    :goto_1
    iget v5, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v5, v1, :cond_2

    .line 396
    iget-object v6, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/jdom2/ContentList;->size:I

    aget-object v5, v6, v5

    iget-object v6, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-virtual {v5, v6}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    goto :goto_1

    .line 398
    :cond_2
    invoke-direct {p0, v2, v3}, Lorg/jdom2/ContentList;->setModCount(II)V

    .line 402
    :cond_3
    return-void

    .line 388
    .end local v4    # "ok":Z
    .restart local v5    # "ok":Z
    :catchall_0
    move-exception v4

    if-nez v5, :cond_5

    .line 394
    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 395
    :goto_2
    iget v6, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v6, v1, :cond_4

    .line 396
    iget-object v7, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lorg/jdom2/ContentList;->size:I

    aget-object v6, v7, v6

    iget-object v7, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-virtual {v6, v7}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    goto :goto_2

    .line 398
    :cond_4
    invoke-direct {p0, v2, v3}, Lorg/jdom2/ContentList;->setModCount(II)V

    :cond_5
    throw v4

    .line 363
    .end local v0    # "old":[Lorg/jdom2/Content;
    .end local v1    # "oldSize":I
    .end local v2    # "oldModCount":I
    .end local v3    # "oldDataModCount":I
    .end local v5    # "ok":Z
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lorg/jdom2/ContentList;->clear()V

    .line 364
    return-void
.end method

.method ensureCapacity(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .line 413
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Lorg/jdom2/Content;

    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 415
    return-void

    .line 416
    :cond_0
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 417
    return-void

    .line 424
    :cond_1
    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 425
    .local v1, "newcap":I
    if-ge v1, p1, :cond_2

    move v2, p1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Content;

    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 427
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 79
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/jdom2/Content;
    .locals 1
    .param p1, "index"    # I

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    .line 439
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 452
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TE;>;"
    new-instance v0, Lorg/jdom2/ContentList$FilterList;

    invoke-direct {v0, p0, p1}, Lorg/jdom2/ContentList$FilterList;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method indexOfDocType()I
    .locals 2

    .line 480
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v0, v1, :cond_1

    .line 482
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom2/DocType;

    if-eqz v1, :cond_0

    .line 483
    return v0

    .line 481
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method indexOfFirstElement()I
    .locals 2

    .line 463
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    if-eqz v0, :cond_1

    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v0, v1, :cond_1

    .line 465
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom2/Element;

    if-eqz v1, :cond_0

    .line 466
    return v0

    .line 464
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 560
    new-instance v0, Lorg/jdom2/ContentList$CLIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jdom2/ContentList$CLIterator;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$1;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Lorg/jdom2/ContentList$CLListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jdom2/ContentList$CLListIterator;-><init>(Lorg/jdom2/ContentList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 570
    new-instance v0, Lorg/jdom2/ContentList$CLListIterator;

    invoke-direct {v0, p0, p1}, Lorg/jdom2/ContentList$CLListIterator;-><init>(Lorg/jdom2/ContentList;I)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 79
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/jdom2/Content;
    .locals 5
    .param p1, "index"    # I

    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    .line 501
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v1, v1, p1

    .line 502
    .local v1, "old":Lorg/jdom2/Content;
    invoke-static {v1}, Lorg/jdom2/ContentList;->removeParent(Lorg/jdom2/Content;)V

    .line 503
    iget-object v2, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lorg/jdom2/ContentList;->size:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, v0

    invoke-static {v2, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iget-object v2, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget v3, p0, Lorg/jdom2/ContentList;->size:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/jdom2/ContentList;->size:I

    const/4 v0, 0x0

    aput-object v0, v2, v3

    .line 505
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incModCount()V

    .line 506
    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .line 79
    move-object v0, p2

    check-cast v0, Lorg/jdom2/Content;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/jdom2/Content;)Lorg/jdom2/Content;
    .locals 2
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .line 527
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lorg/jdom2/ContentList;->checkPreConditions(Lorg/jdom2/Content;IZ)V

    .line 530
    iget-object v1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-interface {v1, p2, p1, v0}, Lorg/jdom2/Parent;->canContainContent(Lorg/jdom2/Content;IZ)V

    .line 538
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v0, v0, p1

    .line 539
    .local v0, "old":Lorg/jdom2/Content;
    invoke-static {v0}, Lorg/jdom2/ContentList;->removeParent(Lorg/jdom2/Content;)V

    .line 540
    iget-object v1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-virtual {p2, v1}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    .line 541
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aput-object p2, v1, p1

    .line 544
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incDataModOnly()V

    .line 545
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 555
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    return v0
.end method

.method public final sort(Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .line 640
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Content;>;"
    if-nez p1, :cond_0

    .line 644
    return-void

    .line 647
    :cond_0
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    .line 648
    .local v0, "sz":I
    new-array v1, v0, [I

    .line 649
    .local v1, "indexes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 650
    invoke-direct {p0, v1, v2, v2, p1}, Lorg/jdom2/ContentList;->binarySearch([IIILjava/util/Comparator;)I

    move-result v3

    .line 651
    .local v3, "ip":I
    if-ge v3, v2, :cond_1

    .line 652
    add-int/lit8 v4, v3, 0x1

    sub-int v5, v2, v3

    invoke-static {v1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    :cond_1
    aput v2, v1, v3

    .line 649
    .end local v3    # "ip":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0, v1}, Lorg/jdom2/ContentList;->sortInPlace([I)V

    .line 657
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 580
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final uncheckedAddContent(Lorg/jdom2/Content;)V
    .locals 3
    .param p1, "c"    # Lorg/jdom2/Content;

    .line 127
    iget-object v0, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    iput-object v0, p1, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    .line 128
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom2/ContentList;->ensureCapacity(I)V

    .line 129
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/ContentList;->size:I

    aput-object p1, v0, v1

    .line 130
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incModCount()V

    .line 131
    return-void
.end method
