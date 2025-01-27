.class public final Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
.super Ljava/lang/Object;
.source "ByteQuadsCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_T_SIZE:I = 0x40

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field private static final MAX_T_SIZE:I = 0x10000

.field private static final MIN_HASH_SIZE:I = 0x10

.field private static final MULT:I = 0x21

.field private static final MULT2:I = 0x1003f

.field private static final MULT3:I = 0x1f


# instance fields
.field private _count:I

.field private final _failOnDoS:Z

.field private _hashArea:[I

.field private _hashShared:Z

.field private _hashSize:I

.field private _intern:Z

.field private _longNameOffset:I

.field private _names:[Ljava/lang/String;

.field private final _parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

.field private _secondaryStart:I

.field private final _seed:I

.field private _spilloverEnd:I

.field private final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _tertiaryShift:I

.field private _tertiaryStart:I


# direct methods
.method private constructor <init>(IZIZ)V
    .locals 2
    .param p1, "sz"    # I
    .param p2, "intern"    # Z
    .param p3, "seed"    # I
    .param p4, "failOnDoS"    # Z

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 229
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 230
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 231
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 233
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 234
    const/16 p1, 0x10

    goto :goto_1

    .line 238
    :cond_0
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 239
    const/16 v0, 0x10

    .line 240
    .local v0, "curr":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 241
    add-int/2addr v0, v0

    goto :goto_0

    .line 243
    :cond_1
    move p1, v0

    .line 246
    .end local v0    # "curr":I
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 247
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V
    .locals 2
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .param p2, "intern"    # Z
    .param p3, "seed"    # I
    .param p4, "failOnDoS"    # Z
    .param p5, "state"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 256
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 257
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 258
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 262
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 263
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->size:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 264
    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 265
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 266
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->tertiaryShift:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 268
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 269
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->names:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 271
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->spilloverEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 272
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->longNameOffset:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 276
    return-void
.end method

.method private _appendLongName([II)I
    .locals 5
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .line 968
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 971
    .local v0, "start":I
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 973
    add-int v1, v0, p2

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 975
    .local v1, "toAdd":I
    const/16 v2, 0x1000

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 977
    .local v2, "minAdd":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 978
    .local v3, "newSize":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 980
    .end local v1    # "toAdd":I
    .end local v2    # "minAdd":I
    .end local v3    # "newSize":I
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 981
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 982
    return v0
.end method

.method private final _calcOffset(I)I
    .locals 2
    .param p1, "hash"    # I

    .line 609
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    .line 611
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    return v1
.end method

.method static _calcTertiaryShift(I)I
    .locals 2
    .param p0, "primarySlots"    # I

    .line 1219
    shr-int/lit8 v0, p0, 0x2

    .line 1222
    .local v0, "tertSlots":I
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 1223
    const/4 v1, 0x4

    return v1

    .line 1225
    :cond_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 1226
    const/4 v1, 0x5

    return v1

    .line 1228
    :cond_1
    const/16 v1, 0x400

    if-gt v0, v1, :cond_2

    .line 1229
    const/4 v1, 0x6

    return v1

    .line 1232
    :cond_2
    const/4 v1, 0x7

    return v1
.end method

.method private _checkNeedForRehash()Z
    .locals 9

    .line 956
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 957
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    .line 958
    .local v0, "spillCount":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v3, v3, 0x7

    if-gt v0, v3, :cond_0

    int-to-double v3, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    int-to-double v5, v1

    const-wide v7, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v5, v7

    cmpl-double v1, v3, v5

    if-lez v1, :cond_1

    .line 960
    :cond_0
    return v2

    .line 963
    .end local v0    # "spillCount":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private _findOffsetForAdd(I)I
    .locals 6
    .param p1, "hash"    # I

    .line 874
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 875
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 876
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    if-nez v2, :cond_0

    .line 878
    return v0

    .line 882
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_checkNeedForRehash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_resizeAndFindOffsetForAdd(I)I

    move-result v2

    return v2

    .line 887
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 888
    .local v2, "offset2":I
    add-int/lit8 v3, v2, 0x3

    aget v3, v1, v3

    if-nez v3, :cond_2

    .line 890
    return v2

    .line 894
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v5, v4, 0x2

    shr-int v5, v0, v5

    shl-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 895
    .end local v2    # "offset2":I
    .local v3, "offset2":I
    const/4 v2, 0x1

    shl-int/2addr v2, v4

    .line 896
    .local v2, "bucketSize":I
    add-int v4, v3, v2

    .local v4, "end":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 897
    add-int/lit8 v5, v3, 0x3

    aget v5, v1, v5

    if-nez v5, :cond_3

    .line 899
    return v3

    .line 896
    :cond_3
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 904
    .end local v4    # "end":I
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 905
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 915
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v5, v5, 0x3

    .line 916
    .local v5, "end":I
    if-lt v4, v5, :cond_6

    .line 917
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    if-eqz v4, :cond_5

    .line 918
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_reportTooManyCollisions()V

    .line 920
    :cond_5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_resizeAndFindOffsetForAdd(I)I

    move-result v4

    return v4

    .line 922
    :cond_6
    return v0
.end method

.method private _findSecondary(II)Ljava/lang/String;
    .locals 8
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I

    .line 626
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v1, 0x2

    shr-int v2, p1, v2

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 627
    .local v0, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 628
    .local v2, "hashArea":[I
    const/4 v3, 0x1

    shl-int v1, v3, v1

    .line 629
    .local v1, "bucketSize":I
    add-int v4, v0, v1

    .local v4, "end":I
    :goto_0
    const/4 v5, 0x0

    if-ge v0, v4, :cond_2

    .line 630
    add-int/lit8 v6, v0, 0x3

    aget v6, v2, v6

    .line 631
    .local v6, "len":I
    aget v7, v2, v0

    if-ne p2, v7, :cond_0

    if-ne v3, v6, :cond_0

    .line 632
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0x2

    aget-object v3, v3, v5

    return-object v3

    .line 634
    :cond_0
    if-nez v6, :cond_1

    .line 635
    return-object v5

    .line 629
    .end local v6    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 641
    .end local v4    # "end":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_1
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v4, :cond_4

    .line 642
    aget v4, v2, v0

    if-ne p2, v4, :cond_3

    add-int/lit8 v4, v0, 0x3

    aget v4, v2, v4

    if-ne v3, v4, :cond_3

    .line 643
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 641
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 646
    :cond_4
    return-object v5
.end method

.method private _findSecondary(III)Ljava/lang/String;
    .locals 8
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .line 651
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v1, 0x2

    shr-int v2, p1, v2

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 652
    .local v0, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 654
    .local v2, "hashArea":[I
    const/4 v3, 0x1

    shl-int v1, v3, v1

    .line 655
    .local v1, "bucketSize":I
    add-int v3, v0, v1

    .local v3, "end":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v0, v3, :cond_2

    .line 656
    add-int/lit8 v6, v0, 0x3

    aget v6, v2, v6

    .line 657
    .local v6, "len":I
    aget v7, v2, v0

    if-ne p2, v7, :cond_0

    add-int/lit8 v7, v0, 0x1

    aget v7, v2, v7

    if-ne p3, v7, :cond_0

    if-ne v5, v6, :cond_0

    .line 658
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    return-object v4

    .line 660
    :cond_0
    if-nez v6, :cond_1

    .line 661
    return-object v4

    .line 655
    .end local v6    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 664
    .end local v3    # "end":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 665
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-ne p3, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne v5, v3, :cond_3

    .line 666
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 664
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 669
    :cond_4
    return-object v4
.end method

.method private _findSecondary(IIII)Ljava/lang/String;
    .locals 8
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I
    .param p3, "q2"    # I
    .param p4, "q3"    # I

    .line 674
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v1, 0x2

    shr-int v2, p1, v2

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 675
    .local v0, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 677
    .local v2, "hashArea":[I
    const/4 v3, 0x1

    shl-int v1, v3, v1

    .line 678
    .local v1, "bucketSize":I
    add-int v3, v0, v1

    .local v3, "end":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ge v0, v3, :cond_2

    .line 679
    add-int/lit8 v6, v0, 0x3

    aget v6, v2, v6

    .line 680
    .local v6, "len":I
    aget v7, v2, v0

    if-ne p2, v7, :cond_0

    add-int/lit8 v7, v0, 0x1

    aget v7, v2, v7

    if-ne p3, v7, :cond_0

    add-int/lit8 v7, v0, 0x2

    aget v7, v2, v7

    if-ne p4, v7, :cond_0

    if-ne v5, v6, :cond_0

    .line 681
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    return-object v4

    .line 683
    :cond_0
    if-nez v6, :cond_1

    .line 684
    return-object v4

    .line 678
    .end local v6    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 687
    .end local v3    # "end":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 688
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-ne p3, v3, :cond_3

    add-int/lit8 v3, v0, 0x2

    aget v3, v2, v3

    if-ne p4, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne v5, v3, :cond_3

    .line 690
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 687
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 693
    :cond_4
    return-object v4
.end method

.method private _findSecondary(II[II)Ljava/lang/String;
    .locals 7
    .param p1, "origOffset"    # I
    .param p2, "hash"    # I
    .param p3, "q"    # [I
    .param p4, "qlen"    # I

    .line 698
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v1, 0x2

    shr-int v2, p1, v2

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 699
    .local v0, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 701
    .local v2, "hashArea":[I
    const/4 v3, 0x1

    shl-int v1, v3, v1

    .line 702
    .local v1, "bucketSize":I
    add-int v3, v0, v1

    .local v3, "end":I
    :goto_0
    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    .line 703
    add-int/lit8 v5, v0, 0x3

    aget v5, v2, v5

    .line 704
    .local v5, "len":I
    aget v6, v2, v0

    if-ne p2, v6, :cond_0

    if-ne p4, v5, :cond_0

    .line 705
    add-int/lit8 v6, v0, 0x1

    aget v6, v2, v6

    invoke-direct {p0, p3, p4, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 706
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v0, 0x2

    aget-object v4, v4, v6

    return-object v4

    .line 709
    :cond_0
    if-nez v5, :cond_1

    .line 710
    return-object v4

    .line 702
    .end local v5    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 713
    .end local v3    # "end":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 714
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne p4, v3, :cond_3

    .line 715
    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    invoke-direct {p0, p3, p4, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 716
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 713
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 720
    :cond_4
    return-object v4
.end method

.method private _resizeAndFindOffsetForAdd(I)I
    .locals 6
    .param p1, "hash"    # I

    .line 929
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->rehash()V

    .line 932
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 933
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 934
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    if-nez v2, :cond_0

    .line 935
    return v0

    .line 937
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 938
    .local v2, "offset2":I
    add-int/lit8 v3, v2, 0x3

    aget v3, v1, v3

    if-nez v3, :cond_1

    .line 939
    return v2

    .line 941
    :cond_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v5, v4, 0x2

    shr-int v5, v0, v5

    shl-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 942
    .end local v2    # "offset2":I
    .local v3, "offset2":I
    const/4 v2, 0x1

    shl-int/2addr v2, v4

    .line 943
    .local v2, "bucketSize":I
    add-int v4, v3, v2

    .local v4, "end":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 944
    add-int/lit8 v5, v3, 0x3

    aget v5, v1, v5

    if-nez v5, :cond_2

    .line 945
    return v3

    .line 943
    :cond_2
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 948
    .end local v4    # "end":I
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 949
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 950
    return v0
.end method

.method private final _spilloverStart()I
    .locals 2

    .line 1200
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1201
    .local v0, "offset":I
    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr v1, v0

    return v1
.end method

.method private _verifyLongName([III)Z
    .locals 5
    .param p1, "q"    # [I
    .param p2, "qlen"    # I
    .param p3, "spillOffset"    # I

    .line 725
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 727
    .local v0, "hashArea":[I
    const/4 v1, 0x0

    .line 729
    .local v1, "ix":I
    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 731
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName2([III)Z

    move-result v2

    return v2

    .line 733
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .local v3, "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .local v4, "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_0

    return v2

    :cond_0
    move v1, v3

    move p3, v4

    .line 735
    .end local v3    # "ix":I
    .end local v4    # "spillOffset":I
    .restart local v1    # "ix":I
    .restart local p3    # "spillOffset":I
    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .restart local v3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_1

    return v2

    :cond_1
    move v1, v3

    move p3, v4

    .line 737
    .end local v3    # "ix":I
    .end local v4    # "spillOffset":I
    .restart local v1    # "ix":I
    .restart local p3    # "spillOffset":I
    :pswitch_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .restart local v3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_2

    return v2

    :cond_2
    move v1, v3

    move p3, v4

    .line 739
    .end local v3    # "ix":I
    .end local v4    # "spillOffset":I
    .restart local v1    # "ix":I
    .restart local p3    # "spillOffset":I
    :pswitch_3
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .restart local v3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_3

    return v2

    :cond_3
    move v1, v3

    move p3, v4

    .line 741
    .end local v3    # "ix":I
    .end local v4    # "spillOffset":I
    .restart local v1    # "ix":I
    .restart local p3    # "spillOffset":I
    :pswitch_4
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .restart local v3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_4

    return v2

    .line 742
    :cond_4
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "ix":I
    .local p3, "ix":I
    aget v1, p1, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "spillOffset":I
    .local v3, "spillOffset":I
    aget v4, v0, v4

    if-eq v1, v4, :cond_5

    return v2

    .line 743
    :cond_5
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "ix":I
    .restart local v1    # "ix":I
    aget p3, p1, p3

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget v3, v0, v3

    if-eq p3, v3, :cond_6

    return v2

    .line 744
    :cond_6
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "ix":I
    .restart local p3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "spillOffset":I
    .restart local v3    # "spillOffset":I
    aget v4, v0, v4

    if-eq v1, v4, :cond_7

    return v2

    .line 746
    :cond_7
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private _verifyLongName2([III)Z
    .locals 4
    .param p1, "q"    # [I
    .param p2, "qlen"    # I
    .param p3, "spillOffset"    # I

    .line 751
    const/4 v0, 0x0

    .line 753
    .local v0, "ix":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ix":I
    .local v1, "ix":I
    aget v0, p1, v0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v3, p3, 0x1

    .end local p3    # "spillOffset":I
    .local v3, "spillOffset":I
    aget p3, v2, p3

    if-eq v0, p3, :cond_0

    .line 754
    const/4 p3, 0x0

    return p3

    .line 756
    :cond_0
    if-lt v1, p2, :cond_1

    .line 757
    const/4 p3, 0x1

    return p3

    .line 756
    :cond_1
    move v0, v1

    move p3, v3

    goto :goto_0
.end method

.method private _verifySharing()V
    .locals 2

    .line 861
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 863
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 866
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 29
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 29
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    return v0
.end method

.method static synthetic access$200(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 29
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    return v0
.end method

.method static synthetic access$300(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)[I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 29
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 29
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 29
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    return v0
.end method

.method static synthetic access$600(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 29
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    return v0
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 5

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
    .local v0, "now":J
    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x1

    .line 294
    .local v2, "seed":I
    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    move-result-object v3

    return-object v3
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 3
    .param p0, "seed"    # I

    .line 300
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(IZIZ)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V
    .locals 3
    .param p1, "childState"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .line 335
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    .line 336
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .line 340
    .local v1, "currState":Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    iget v2, v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    if-ne v0, v2, :cond_0

    .line 341
    return-void

    .line 348
    :cond_0
    const/16 v2, 0x1770

    if-le v0, v2, :cond_1

    .line 350
    const/16 v2, 0x40

    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-result-object p1

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method private nukeSymbols(Z)V
    .locals 2
    .param p1, "fill"    # Z

    .line 1177
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 1179
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1181
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 1182
    if-eqz p1, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1184
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1186
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 17

    .line 1094
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 1098
    iget-object v2, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1099
    .local v2, "oldHashArea":[I
    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 1100
    .local v3, "oldNames":[Ljava/lang/String;
    iget v4, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1101
    .local v4, "oldSize":I
    iget v5, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 1102
    .local v5, "oldCount":I
    add-int v6, v4, v4

    .line 1103
    .local v6, "newSize":I
    iget v7, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1108
    .local v7, "oldEnd":I
    const/4 v8, 0x1

    const/high16 v9, 0x10000

    if-le v6, v9, :cond_0

    .line 1109
    invoke-direct {v0, v8}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->nukeSymbols(Z)V

    .line 1110
    return-void

    .line 1113
    :cond_0
    array-length v9, v2

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v9, v10

    new-array v9, v9, [I

    iput-object v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1114
    iput v6, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1115
    shl-int/lit8 v9, v6, 0x2

    iput v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 1116
    shr-int/lit8 v10, v9, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 1117
    invoke-static {v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcTertiaryShift(I)I

    move-result v9

    iput v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 1120
    array-length v9, v3

    shl-int/2addr v9, v8

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 1121
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->nukeSymbols(Z)V

    .line 1128
    const/4 v9, 0x0

    .line 1129
    .local v9, "copyCount":I
    const/16 v10, 0x10

    new-array v10, v10, [I

    .line 1130
    .local v10, "q":[I
    const/4 v11, 0x0

    .local v11, "offset":I
    move v12, v7

    .local v12, "end":I
    :goto_0
    if-ge v11, v12, :cond_3

    .line 1131
    add-int/lit8 v13, v11, 0x3

    aget v13, v2, v13

    .line 1132
    .local v13, "len":I
    if-nez v13, :cond_1

    .line 1133
    goto :goto_2

    .line 1135
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 1136
    shr-int/lit8 v14, v11, 0x2

    aget-object v14, v3, v14

    .line 1137
    .local v14, "name":Ljava/lang/String;
    const/4 v15, 0x2

    packed-switch v13, :pswitch_data_0

    .line 1154
    array-length v15, v10

    if-le v13, v15, :cond_2

    .line 1155
    new-array v10, v13, [I

    goto :goto_1

    .line 1148
    :pswitch_0
    aget v16, v2, v11

    aput v16, v10, v1

    .line 1149
    add-int/lit8 v16, v11, 0x1

    aget v16, v2, v16

    aput v16, v10, v8

    .line 1150
    add-int/lit8 v16, v11, 0x2

    aget v16, v2, v16

    aput v16, v10, v15

    .line 1151
    const/4 v15, 0x3

    invoke-virtual {v0, v14, v10, v15}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    .line 1152
    goto :goto_2

    .line 1143
    :pswitch_1
    aget v16, v2, v11

    aput v16, v10, v1

    .line 1144
    add-int/lit8 v16, v11, 0x1

    aget v16, v2, v16

    aput v16, v10, v8

    .line 1145
    invoke-virtual {v0, v14, v10, v15}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    .line 1146
    goto :goto_2

    .line 1139
    :pswitch_2
    aget v15, v2, v11

    aput v15, v10, v1

    .line 1140
    invoke-virtual {v0, v14, v10, v8}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    .line 1141
    goto :goto_2

    .line 1158
    :cond_2
    :goto_1
    add-int/lit8 v15, v11, 0x1

    aget v15, v2, v15

    .line 1159
    .local v15, "qoff":I
    invoke-static {v2, v15, v10, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1160
    invoke-virtual {v0, v14, v10, v13}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    .line 1130
    .end local v13    # "len":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "qoff":I
    :goto_2
    add-int/lit8 v11, v11, 0x4

    goto :goto_0

    .line 1167
    .end local v11    # "offset":I
    .end local v12    # "end":I
    :cond_3
    if-ne v9, v5, :cond_4

    .line 1170
    return-void

    .line 1168
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed rehash(): old count="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", copyCount="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected _reportTooManyCollisions()V
    .locals 3

    .line 1207
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 1208
    return-void

    .line 1210
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spill-over slots in symbol table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries, hash area of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots is now full (all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shr-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I

    .line 767
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 768
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 769
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 771
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 772
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 773
    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 774
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v2, v0, 0x2

    aput-object p1, v1, v2

    .line 775
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 776
    return-object p1
.end method

.method public addName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .line 780
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 781
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 782
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 784
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v0

    .line 785
    .local v0, "hash":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v1

    .line 786
    .local v1, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v2, v1

    .line 787
    add-int/lit8 v3, v1, 0x1

    aput p3, v2, v3

    .line 788
    add-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 789
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v3, v1, 0x2

    aput-object p1, v2, v3

    .line 790
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 791
    return-object p1
.end method

.method public addName(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I
    .param p4, "q3"    # I

    .line 795
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 796
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 797
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 799
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 800
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 801
    add-int/lit8 v2, v0, 0x1

    aput p3, v1, v2

    .line 802
    add-int/lit8 v2, v0, 0x2

    aput p4, v1, v2

    .line 803
    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 804
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v2, v0, 0x2

    aput-object p1, v1, v2

    .line 805
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 806
    return-object p1
.end method

.method public addName(Ljava/lang/String;[II)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q"    # [I
    .param p3, "qlen"    # I

    .line 811
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 812
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 813
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 817
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p3, :pswitch_data_0

    .line 843
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash([II)I

    move-result v0

    .line 844
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v3

    .line 846
    .local v3, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput v0, v1, v3

    .line 847
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_appendLongName([II)I

    move-result v1

    .line 848
    .local v1, "longStart":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v5, v3, 0x1

    aput v1, v4, v5

    .line 849
    add-int/lit8 v5, v3, 0x3

    aput p3, v4, v5

    goto :goto_0

    .line 835
    .end local v0    # "hash":I
    .end local v1    # "longStart":I
    .end local v3    # "offset":I
    :pswitch_0
    aget v3, p2, v1

    aget v4, p2, v2

    aget v5, p2, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v3

    .line 836
    .restart local v3    # "offset":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v1, p2, v1

    aput v1, v4, v3

    .line 837
    add-int/lit8 v1, v3, 0x1

    aget v5, p2, v2

    aput v5, v4, v1

    .line 838
    add-int/lit8 v1, v3, 0x2

    aget v0, p2, v0

    aput v0, v4, v1

    .line 839
    add-int/lit8 v0, v3, 0x3

    const/4 v1, 0x3

    aput v1, v4, v0

    .line 841
    goto :goto_0

    .line 827
    .end local v3    # "offset":I
    :pswitch_1
    aget v3, p2, v1

    aget v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v3

    .line 828
    .restart local v3    # "offset":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v1, p2, v1

    aput v1, v4, v3

    .line 829
    add-int/lit8 v1, v3, 0x1

    aget v5, p2, v2

    aput v5, v4, v1

    .line 830
    add-int/lit8 v1, v3, 0x3

    aput v0, v4, v1

    .line 832
    goto :goto_0

    .line 820
    .end local v3    # "offset":I
    :pswitch_2
    aget v0, p2, v1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v3

    .line 821
    .restart local v3    # "offset":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v1, p2, v1

    aput v1, v0, v3

    .line 822
    add-int/lit8 v1, v3, 0x3

    aput v2, v0, v1

    .line 824
    nop

    .line 852
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v3, 0x2

    aput-object p1, v0, v1

    .line 855
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 856
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bucketCount()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    return v0
.end method

.method public calcHash(I)I
    .locals 2
    .param p1, "q1"    # I

    .line 1007
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, p1

    .line 1013
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 1014
    shl-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    .line 1015
    ushr-int/lit8 v1, v0, 0xc

    add-int/2addr v0, v1

    .line 1016
    return v0
.end method

.method public calcHash(II)I
    .locals 2
    .param p1, "q1"    # I
    .param p2, "q2"    # I

    .line 1023
    move v0, p1

    .line 1025
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1026
    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 1027
    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    .line 1028
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 1029
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 1030
    ushr-int/lit8 v1, v0, 0x4

    xor-int/2addr v0, v1

    .line 1031
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1033
    return v0
.end method

.method public calcHash(III)I
    .locals 2
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I

    .line 1038
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, p1

    .line 1039
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    .line 1040
    mul-int/lit8 v0, v0, 0x1f

    .line 1041
    add-int/2addr v0, p2

    .line 1042
    mul-int/lit8 v0, v0, 0x21

    .line 1043
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1044
    xor-int/2addr v0, p3

    .line 1046
    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 1048
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1049
    shl-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 1051
    return v0
.end method

.method public calcHash([II)I
    .locals 4
    .param p1, "q"    # [I
    .param p2, "qlen"    # I

    .line 1056
    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    .line 1064
    const/4 v0, 0x0

    aget v0, p1, v0

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 1065
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    .line 1066
    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    .line 1067
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1068
    mul-int/lit8 v0, v0, 0x21

    .line 1069
    const/4 v1, 0x2

    aget v1, p1, v1

    xor-int/2addr v0, v1

    .line 1070
    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 1072
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1073
    aget v2, p1, v1

    .line 1074
    .local v2, "next":I
    shr-int/lit8 v3, v2, 0x15

    xor-int/2addr v2, v3

    .line 1075
    add-int/2addr v0, v2

    .line 1072
    .end local v2    # "next":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    .end local v1    # "i":I
    :cond_0
    const v1, 0x1003f

    mul-int/2addr v0, v1

    .line 1080
    ushr-int/lit8 v1, v0, 0x13

    add-int/2addr v0, v1

    .line 1081
    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 1082
    return v0

    .line 1057
    .end local v0    # "hash":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public findName(I)Ljava/lang/String;
    .locals 7
    .param p1, "q1"    # I

    .line 470
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 472
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 474
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    .line 476
    .local v2, "len":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 477
    aget v5, v1, v0

    if-ne v5, p1, :cond_1

    .line 478
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 480
    :cond_0
    if-nez v2, :cond_1

    .line 481
    return-object v3

    .line 484
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v0, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 486
    .local v5, "offset2":I
    add-int/lit8 v6, v5, 0x3

    aget v2, v1, v6

    .line 488
    if-ne v2, v4, :cond_2

    .line 489
    aget v3, v1, v5

    if-ne v3, p1, :cond_3

    .line 490
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v5, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 492
    :cond_2
    if-nez v2, :cond_3

    .line 493
    return-object v3

    .line 497
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findName(II)Ljava/lang/String;
    .locals 7
    .param p1, "q1"    # I
    .param p2, "q2"    # I

    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 504
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 506
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    .line 508
    .local v2, "len":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 509
    aget v5, v1, v0

    if-ne p1, v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    aget v5, v1, v5

    if-ne p2, v5, :cond_1

    .line 510
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 512
    :cond_0
    if-nez v2, :cond_1

    .line 513
    return-object v3

    .line 516
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v0, 0x3

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 518
    .local v5, "offset2":I
    add-int/lit8 v6, v5, 0x3

    aget v2, v1, v6

    .line 520
    if-ne v2, v4, :cond_2

    .line 521
    aget v3, v1, v5

    if-ne p1, v3, :cond_3

    add-int/lit8 v3, v5, 0x1

    aget v3, v1, v3

    if-ne p2, v3, :cond_3

    .line 522
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v5, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 524
    :cond_2
    if-nez v2, :cond_3

    .line 525
    return-object v3

    .line 527
    :cond_3
    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(III)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findName(III)Ljava/lang/String;
    .locals 7
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I

    .line 532
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 533
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 534
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    .line 536
    .local v2, "len":I
    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 537
    aget v5, v1, v0

    if-ne p1, v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    aget v5, v1, v5

    if-ne v5, p2, :cond_1

    add-int/lit8 v5, v0, 0x2

    aget v5, v1, v5

    if-ne v5, p3, :cond_1

    .line 538
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 540
    :cond_0
    if-nez v2, :cond_1

    .line 541
    return-object v3

    .line 544
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v0, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 546
    .local v5, "offset2":I
    add-int/lit8 v6, v5, 0x3

    aget v2, v1, v6

    .line 548
    if-ne v2, v4, :cond_2

    .line 549
    aget v3, v1, v5

    if-ne p1, v3, :cond_3

    add-int/lit8 v3, v5, 0x1

    aget v3, v1, v3

    if-ne v3, p2, :cond_3

    add-int/lit8 v3, v5, 0x2

    aget v3, v1, v3

    if-ne v3, p3, :cond_3

    .line 550
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v5, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 552
    :cond_2
    if-nez v2, :cond_3

    .line 553
    return-object v3

    .line 555
    :cond_3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(IIII)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findName([II)Ljava/lang/String;
    .locals 8
    .param p1, "q"    # [I
    .param p2, "qlen"    # I

    .line 564
    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 565
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 573
    const-string v0, ""

    return-object v0

    .line 567
    :pswitch_0
    aget v1, p1, v1

    aget v2, p1, v2

    aget v0, p1, v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 569
    :pswitch_1
    aget v0, p1, v1

    aget v1, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 571
    :pswitch_2
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 576
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash([II)I

    move-result v1

    .line 577
    .local v1, "hash":I
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v2

    .line 579
    .local v2, "offset":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 581
    .local v3, "hashArea":[I
    add-int/lit8 v4, v2, 0x3

    aget v4, v3, v4

    .line 583
    .local v4, "len":I
    aget v5, v3, v2

    if-ne v1, v5, :cond_1

    if-ne v4, p2, :cond_1

    .line 585
    add-int/lit8 v5, v2, 0x1

    aget v5, v3, v5

    invoke-direct {p0, p1, p2, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 586
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v2, 0x2

    aget-object v0, v0, v5

    return-object v0

    .line 589
    :cond_1
    if-nez v4, :cond_2

    .line 590
    const/4 v0, 0x0

    return-object v0

    .line 593
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v2, 0x3

    shl-int/lit8 v0, v6, 0x2

    add-int/2addr v5, v0

    .line 595
    .local v5, "offset2":I
    add-int/lit8 v0, v5, 0x3

    aget v0, v3, v0

    .line 596
    .local v0, "len2":I
    aget v6, v3, v5

    if-ne v1, v6, :cond_3

    if-ne v0, p2, :cond_3

    .line 597
    add-int/lit8 v6, v5, 0x1

    aget v6, v3, v6

    invoke-direct {p0, p1, p2, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 598
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v7, v5, 0x2

    aget-object v6, v6, v7

    return-object v6

    .line 601
    :cond_3
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(II[II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashSeed()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    return v0
.end method

.method public makeChild(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 7
    .param p1, "flags"    # I

    .line 308
    new-instance v6, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 309
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 311
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 312
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V

    .line 308
    return-object v6
.end method

.method public maybeDirty()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public primaryCount()I
    .locals 4

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "count":I
    const/4 v1, 0x3

    .local v1, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 393
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    .line 392
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 397
    .end local v1    # "offset":I
    .end local v2    # "end":I
    :cond_1
    return v0
.end method

.method public release()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 331
    :cond_0
    return-void
.end method

.method public secondaryCount()I
    .locals 4

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "count":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    add-int/lit8 v1, v1, 0x3

    .line 407
    .local v1, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 408
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 409
    add-int/lit8 v0, v0, 0x1

    .line 407
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 412
    .end local v2    # "end":I
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    return v0

    .line 367
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    return v0
.end method

.method public spilloverCount()I
    .locals 2

    .line 436
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public tertiaryCount()I
    .locals 4

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "count":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    add-int/lit8 v1, v1, 0x3

    .line 422
    .local v1, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    add-int/2addr v2, v1

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 423
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 424
    add-int/lit8 v0, v0, 0x1

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 427
    .end local v2    # "end":I
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 452
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->primaryCount()I

    move-result v0

    .line 453
    .local v0, "pri":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->secondaryCount()I

    move-result v1

    .line 454
    .local v1, "sec":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->tertiaryCount()I

    move-result v2

    .line 455
    .local v2, "tert":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->spilloverCount()I

    move-result v3

    .line 456
    .local v3, "spill":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->totalCount()I

    move-result v4

    .line 457
    .local v4, "total":I
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    .line 458
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    add-int v6, v0, v1

    add-int/2addr v6, v2

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 457
    const-string v6, "[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public totalCount()I
    .locals 4

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "count":I
    const/4 v1, 0x3

    .local v1, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v2, v2, 0x3

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 443
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 444
    add-int/lit8 v0, v0, 0x1

    .line 442
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 447
    .end local v1    # "offset":I
    .end local v2    # "end":I
    :cond_1
    return v0
.end method
