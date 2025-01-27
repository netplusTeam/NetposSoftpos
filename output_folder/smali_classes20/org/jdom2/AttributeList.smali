.class final Lorg/jdom2/AttributeList;
.super Ljava/util/AbstractList;
.source "AttributeList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/AttributeList$ALIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/jdom2/Attribute;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_NATURAL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/jdom2/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final INITIAL_ARRAY_SIZE:I = 0x4


# instance fields
.field private attributeData:[Lorg/jdom2/Attribute;

.field private final parent:Lorg/jdom2/Element;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lorg/jdom2/AttributeList$1;

    invoke-direct {v0}, Lorg/jdom2/AttributeList$1;-><init>()V

    sput-object v0, Lorg/jdom2/AttributeList;->ATTRIBUTE_NATURAL:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "parent"    # Lorg/jdom2/Element;

    .line 110
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lorg/jdom2/AttributeList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/jdom2/AttributeList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    return v0
.end method

.method static synthetic access$300(Lorg/jdom2/AttributeList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/jdom2/AttributeList;)[Lorg/jdom2/Attribute;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .line 75
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jdom2/AttributeList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/jdom2/AttributeList;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    return v0
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
            "Lorg/jdom2/Attribute;",
            ">;)I"
        }
    .end annotation

    .line 576
    .local p4, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Attribute;>;"
    const/4 v0, 0x0

    .local v0, "left":I
    const/4 v1, 0x0

    .local v1, "mid":I
    add-int/lit8 v2, p2, -0x1

    .local v2, "right":I
    const/4 v3, 0x0

    .line 577
    .local v3, "cmp":I
    iget-object v4, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v4, v4, p3

    .line 578
    .local v4, "base":Lorg/jdom2/Attribute;
    :goto_0
    if-gt v0, v2, :cond_3

    .line 579
    add-int v5, v0, v2

    ushr-int/lit8 v1, v5, 0x1

    .line 580
    iget-object v5, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget v6, p1, v1

    aget-object v5, v5, v6

    invoke-interface {p4, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 581
    if-nez v3, :cond_1

    .line 582
    :goto_1
    if-nez v3, :cond_0

    if-ge v1, v2, :cond_0

    iget-object v5, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v6, v1, 0x1

    aget v6, p1, v6

    aget-object v5, v5, v6

    invoke-interface {p4, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_0

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 586
    :cond_0
    add-int/lit8 v5, v1, 0x1

    return v5

    .line 587
    :cond_1
    if-gez v3, :cond_2

    .line 588
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 590
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 593
    :cond_3
    return v0
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "minCapacity"    # I

    .line 362
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Lorg/jdom2/Attribute;

    iput-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 365
    return-void

    .line 366
    :cond_0
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 367
    return-void

    .line 372
    :cond_1
    add-int/lit8 v1, p1, 0x4

    ushr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Attribute;

    iput-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 374
    return-void
.end method

.method private indexOfDuplicate(Lorg/jdom2/Attribute;)I
    .locals 2
    .param p1, "attribute"    # Lorg/jdom2/Attribute;

    .line 527
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jdom2/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I

    move-result v0

    return v0
.end method

.method private sortInPlace([I)V
    .locals 6
    .param p1, "indexes"    # [I

    .line 600
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/jdom2/internal/ArrayCopy;->copyOf([II)[I

    move-result-object v0

    .line 601
    .local v0, "unsorted":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 602
    array-length v1, v0

    new-array v1, v1, [Lorg/jdom2/Attribute;

    .line 603
    .local v1, "usc":[Lorg/jdom2/Attribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 604
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget v4, p1, v2

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 608
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget v4, v0, v2

    aget-object v5, v1, v2

    aput-object v5, v3, v4

    .line 607
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 610
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .line 75
    move-object v0, p2

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/AttributeList;->add(ILorg/jdom2/Attribute;)V

    return-void
.end method

.method public add(ILorg/jdom2/Attribute;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "attribute"    # Lorg/jdom2/Attribute;

    .line 180
    if-ltz p1, :cond_4

    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-gt p1, v0, :cond_4

    .line 185
    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    if-nez v0, :cond_3

    .line 190
    invoke-direct {p0, p2}, Lorg/jdom2/AttributeList;->indexOfDuplicate(Lorg/jdom2/Attribute;)I

    move-result v0

    .line 191
    .local v0, "duplicate":I
    if-gez v0, :cond_2

    .line 195
    iget-object v1, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-static {p2, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "reason":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 200
    iget-object v2, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {p2, v2}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 202
    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/jdom2/AttributeList;->ensureCapacity(I)V

    .line 203
    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    if-ne p1, v2, :cond_0

    .line 204
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object p2, v3, v2

    goto :goto_0

    .line 206
    :cond_0
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    invoke-static {v3, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aput-object p2, v2, p1

    .line 209
    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom2/AttributeList;->size:I

    .line 211
    :goto_0
    iget v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 212
    return-void

    .line 197
    :cond_1
    new-instance v2, Lorg/jdom2/IllegalAddException;

    iget-object v3, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-direct {v2, v3, p2, v1}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Lorg/jdom2/Attribute;Ljava/lang/String;)V

    throw v2

    .line 192
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/jdom2/IllegalAddException;

    const-string v2, "Cannot add duplicate attribute"

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .end local v0    # "duplicate":I
    :cond_3
    new-instance v0, Lorg/jdom2/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The attribute already has an existing parent \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {p0, v0}, Lorg/jdom2/AttributeList;->add(Lorg/jdom2/Attribute;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/jdom2/Attribute;)Z
    .locals 5
    .param p1, "attribute"    # Lorg/jdom2/Attribute;

    .line 141
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-static {p1, v0}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0, p1}, Lorg/jdom2/AttributeList;->indexOfDuplicate(Lorg/jdom2/Attribute;)I

    move-result v0

    .line 154
    .local v0, "duplicate":I
    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 155
    iget-object v2, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {p1, v2}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 156
    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lorg/jdom2/AttributeList;->ensureCapacity(I)V

    .line 157
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v3, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object p1, v2, v3

    .line 158
    iget v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    goto :goto_0

    .line 160
    :cond_0
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v2, v2, v0

    .line 161
    .local v2, "old":Lorg/jdom2/Attribute;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 162
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aput-object p1, v3, v0

    .line 163
    iget-object v3, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {p1, v3}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 165
    .end local v2    # "old":Lorg/jdom2/Attribute;
    :goto_0
    return v1

    .line 148
    .end local v0    # "duplicate":I
    :cond_1
    new-instance v0, Lorg/jdom2/IllegalAddException;

    iget-object v1, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-static {p1, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Lorg/jdom2/Attribute;Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2
    new-instance v0, Lorg/jdom2/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The attribute already has an existing parent \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Attribute;",
            ">;)Z"
        }
    .end annotation

    .line 246
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Attribute;>;"
    if-ltz p1, :cond_8

    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-gt p1, v0, :cond_8

    .line 251
    if-eqz p2, :cond_7

    .line 255
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 256
    .local v0, "addcnt":I
    if-nez v0, :cond_0

    .line 257
    const/4 v1, 0x0

    return v1

    .line 259
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 261
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Attribute;

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/AttributeList;->add(ILorg/jdom2/Attribute;)V

    .line 262
    return v1

    .line 265
    :cond_1
    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lorg/jdom2/AttributeList;->ensureCapacity(I)V

    .line 267
    iget v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 268
    .local v2, "tmpmodcount":I
    const/4 v3, 0x0

    .line 270
    .local v3, "ok":Z
    const/4 v4, 0x0

    .line 273
    .local v4, "count":I
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jdom2/Attribute;

    .line 274
    .local v6, "att":Lorg/jdom2/Attribute;
    add-int v7, p1, v4

    invoke-virtual {p0, v7, v6}, Lorg/jdom2/AttributeList;->add(ILorg/jdom2/Attribute;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    nop

    .end local v6    # "att":Lorg/jdom2/Attribute;
    add-int/lit8 v4, v4, 0x1

    .line 276
    goto :goto_0

    .line 277
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    .line 279
    if-nez v3, :cond_4

    .line 280
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 281
    add-int v5, p1, v4

    invoke-virtual {p0, v5}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    goto :goto_1

    .line 283
    :cond_3
    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 287
    :cond_4
    return v1

    .line 279
    :catchall_0
    move-exception v1

    if-nez v3, :cond_6

    .line 280
    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_5

    .line 281
    add-int v5, p1, v4

    invoke-virtual {p0, v5}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    goto :goto_2

    .line 283
    :cond_5
    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    :cond_6
    throw v1

    .line 252
    .end local v0    # "addcnt":I
    .end local v2    # "tmpmodcount":I
    .end local v3    # "ok":Z
    .end local v4    # "count":I
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can not add a null Collection to AttributeList"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Attribute;",
            ">;)Z"
        }
    .end annotation

    .line 226
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Attribute;>;"
    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom2/AttributeList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    .line 295
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-lez v0, :cond_0

    .line 297
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom2/AttributeList;->size:I

    .line 298
    iget-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 299
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object v1, v0, v2

    goto :goto_0

    .line 302
    :cond_0
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 303
    return-void
.end method

.method clearAndSet(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 314
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Attribute;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 321
    .local v0, "old":[Lorg/jdom2/Attribute;
    iget v1, p0, Lorg/jdom2/AttributeList;->size:I

    .line 322
    .local v1, "oldSize":I
    iget v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 328
    .local v2, "oldModCount":I
    :goto_0
    iget v3, p0, Lorg/jdom2/AttributeList;->size:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 329
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jdom2/AttributeList;->size:I

    aget-object v3, v0, v3

    invoke-virtual {v3, v4}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    goto :goto_0

    .line 331
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lorg/jdom2/AttributeList;->size:I

    .line 332
    iput-object v4, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 334
    const/4 v4, 0x0

    .line 336
    .local v4, "ok":Z
    :try_start_0
    invoke-virtual {p0, v3, p1}, Lorg/jdom2/AttributeList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    const/4 v3, 0x1

    .line 339
    .end local v4    # "ok":Z
    .local v3, "ok":Z
    if-nez v3, :cond_3

    .line 343
    iput-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 344
    :goto_1
    iget v4, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge v4, v1, :cond_2

    .line 345
    iget-object v5, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/jdom2/AttributeList;->size:I

    aget-object v4, v5, v4

    iget-object v5, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {v4, v5}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    goto :goto_1

    .line 347
    :cond_2
    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 351
    :cond_3
    return-void

    .line 339
    .end local v3    # "ok":Z
    .restart local v4    # "ok":Z
    :catchall_0
    move-exception v3

    if-nez v4, :cond_5

    .line 343
    iput-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 344
    :goto_2
    iget v5, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge v5, v1, :cond_4

    .line 345
    iget-object v6, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/jdom2/AttributeList;->size:I

    aget-object v5, v6, v5

    iget-object v6, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {v5, v6}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    goto :goto_2

    .line 347
    :cond_4
    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    :cond_5
    throw v3

    .line 315
    .end local v0    # "old":[Lorg/jdom2/Attribute;
    .end local v1    # "oldSize":I
    .end local v2    # "oldModCount":I
    .end local v4    # "ok":Z
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->clear()V

    .line 316
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 75
    invoke-virtual {p0, p1}, Lorg/jdom2/AttributeList;->get(I)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/jdom2/Attribute;
    .locals 3
    .param p1, "index"    # I

    .line 385
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge p1, v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v0, v0, p1

    return-object v0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method get(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .line 404
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I

    move-result v0

    .line 405
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    return-object v1

    .line 408
    :cond_0
    iget-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v1, v1, v0

    return-object v1
.end method

.method indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .line 423
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    if-eqz v0, :cond_2

    .line 424
    if-nez p2, :cond_0

    .line 425
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I

    move-result v0

    return v0

    .line 427
    :cond_0
    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "uri":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge v1, v2, :cond_2

    .line 429
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v2, v2, v1

    .line 430
    .local v2, "att":Lorg/jdom2/Attribute;
    invoke-virtual {v2}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    return v1

    .line 428
    .end local v2    # "att":Lorg/jdom2/Attribute;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 553
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-nez v0, :cond_0

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
            "Lorg/jdom2/Attribute;",
            ">;"
        }
    .end annotation

    .line 538
    new-instance v0, Lorg/jdom2/AttributeList$ALIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jdom2/AttributeList$ALIterator;-><init>(Lorg/jdom2/AttributeList;Lorg/jdom2/AttributeList$1;)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 75
    invoke-virtual {p0, p1}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/jdom2/Attribute;
    .locals 5
    .param p1, "index"    # I

    .line 448
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge p1, v0, :cond_0

    .line 452
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v0, v0, p1

    .line 453
    .local v0, "old":Lorg/jdom2/Attribute;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 454
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lorg/jdom2/AttributeList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v3, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object v1, v2, v3

    .line 457
    iget v1, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 458
    return-object v0

    .line 449
    .end local v0    # "old":Lorg/jdom2/Attribute;
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method remove(Ljava/lang/String;Lorg/jdom2/Namespace;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .line 473
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I

    move-result v0

    .line 474
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 475
    const/4 v1, 0x0

    return v1

    .line 477
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    .line 478
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .line 75
    move-object v0, p2

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/AttributeList;->set(ILorg/jdom2/Attribute;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/jdom2/Attribute;)Lorg/jdom2/Attribute;
    .locals 4
    .param p1, "index"    # I
    .param p2, "attribute"    # Lorg/jdom2/Attribute;

    .line 494
    if-ltz p1, :cond_4

    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge p1, v0, :cond_4

    .line 498
    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    if-nez v0, :cond_3

    .line 504
    invoke-direct {p0, p2}, Lorg/jdom2/AttributeList;->indexOfDuplicate(Lorg/jdom2/Attribute;)I

    move-result v0

    .line 505
    .local v0, "duplicate":I
    if-ltz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    new-instance v1, Lorg/jdom2/IllegalAddException;

    const-string v2, "Cannot set duplicate attribute"

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-static {p2, v1, p1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;I)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "reason":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 514
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v2, v2, p1

    .line 515
    .local v2, "old":Lorg/jdom2/Attribute;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 517
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aput-object p2, v3, p1

    .line 518
    iget-object v3, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {p2, v3}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 519
    return-object v2

    .line 511
    .end local v2    # "old":Lorg/jdom2/Attribute;
    :cond_2
    new-instance v2, Lorg/jdom2/IllegalAddException;

    iget-object v3, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-direct {v2, v3, p2, v1}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Lorg/jdom2/Attribute;Ljava/lang/String;)V

    throw v2

    .line 499
    .end local v0    # "duplicate":I
    .end local v1    # "reason":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/jdom2/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The attribute already has an existing parent \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 548
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lorg/jdom2/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 623
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Attribute;>;"
    if-nez p1, :cond_0

    .line 624
    sget-object p1, Lorg/jdom2/AttributeList;->ATTRIBUTE_NATURAL:Ljava/util/Comparator;

    .line 626
    :cond_0
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    .line 627
    .local v0, "sz":I
    new-array v1, v0, [I

    .line 628
    .local v1, "indexes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 629
    invoke-direct {p0, v1, v2, v2, p1}, Lorg/jdom2/AttributeList;->binarySearch([IIILjava/util/Comparator;)I

    move-result v3

    .line 630
    .local v3, "ip":I
    if-ge v3, v2, :cond_1

    .line 631
    add-int/lit8 v4, v3, 0x1

    sub-int v5, v2, v3

    invoke-static {v1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    :cond_1
    aput v2, v1, v3

    .line 628
    .end local v3    # "ip":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0, v1}, Lorg/jdom2/AttributeList;->sortInPlace([I)V

    .line 636
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 561
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final uncheckedAddAttribute(Lorg/jdom2/Attribute;)V
    .locals 3
    .param p1, "a"    # Lorg/jdom2/Attribute;

    .line 122
    iget-object v0, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    iput-object v0, p1, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    .line 123
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom2/AttributeList;->ensureCapacity(I)V

    .line 124
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v1, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object p1, v0, v1

    .line 125
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 126
    return-void
.end method
