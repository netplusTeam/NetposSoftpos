.class final Ljava9/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/DualPivotQuicksort$RunMerger;,
        Ljava9/util/DualPivotQuicksort$Merger;,
        Ljava9/util/DualPivotQuicksort$Sorter;
    }
.end annotation


# static fields
.field private static final DELTA:I = 0x6

.field private static final MAX_BYTE_INDEX:I = 0x180

.field private static final MAX_INSERTION_SORT_SIZE:I = 0x2c

.field private static final MAX_MIXED_INSERTION_SORT_SIZE:I = 0x41

.field private static final MAX_RECURSION_DEPTH:I = 0x180

.field private static final MAX_RUN_CAPACITY:I = 0x1400

.field private static final MAX_SHORT_INDEX:I = 0x18000

.field private static final MIN_BYTE_COUNTING_SORT_SIZE:I = 0x40

.field private static final MIN_FIRST_RUNS_FACTOR:I = 0x7

.field private static final MIN_FIRST_RUN_SIZE:I = 0x10

.field private static final MIN_PARALLEL_MERGE_PARTS_SIZE:I = 0x1000

.field private static final MIN_PARALLEL_SORT_SIZE:I = 0x1000

.field private static final MIN_RUN_COUNT:I = 0x4

.field private static final MIN_SHORT_OR_CHAR_COUNTING_SORT_SIZE:I = 0x6d6

.field private static final MIN_TRY_MERGE_SIZE:I = 0x1000

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countingSort([BII)V
    .locals 5
    .param p0, "a"    # [B
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1703
    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 1708
    .local v1, "count":[I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-le v2, p1, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    goto :goto_0

    .line 1713
    .end local v2    # "i":I
    :cond_0
    sub-int v2, p2, p1

    if-le v2, v0, :cond_3

    .line 1714
    const/16 v0, 0x180

    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x7f

    if-le v0, v2, :cond_2

    .line 1715
    and-int/lit16 v2, v0, 0xff

    .line 1717
    .local v2, "value":I
    aget v3, v1, v2

    sub-int p1, p2, v3

    :goto_2
    if-le p2, p1, :cond_1

    .line 1718
    add-int/lit8 p2, p2, -0x1

    int-to-byte v3, v2

    aput-byte v3, p0, p2

    goto :goto_2

    .line 1720
    .end local v2    # "value":I
    :cond_1
    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    goto :goto_5

    .line 1722
    :cond_3
    const/16 v0, 0x180

    .restart local v0    # "i":I
    :goto_3
    if-le p2, p1, :cond_6

    .line 1723
    :goto_4
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .local v2, "i":I
    and-int/lit16 v0, v2, 0xff

    aget v0, v1, v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    .line 1725
    :cond_4
    and-int/lit16 v3, v2, 0xff

    .line 1726
    .local v3, "value":I
    aget v0, v1, v3

    .line 1729
    .local v0, "c":I
    :cond_5
    add-int/lit8 p2, p2, -0x1

    int-to-byte v4, v3

    aput-byte v4, p0, p2

    .line 1730
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_5

    .line 1731
    .end local v0    # "c":I
    .end local v3    # "value":I
    move v0, v2

    goto :goto_3

    .line 1733
    .end local v2    # "i":I
    :cond_6
    :goto_5
    return-void
.end method

.method private static countingSort([CII)V
    .locals 5
    .param p0, "a"    # [C
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2026
    const/high16 v0, 0x10000

    new-array v1, v0, [I

    .line 2031
    .local v1, "count":[I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-le v2, p1, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget-char v3, p0, v2

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    goto :goto_0

    .line 2036
    .end local v2    # "i":I
    :cond_0
    sub-int v2, p2, p1

    if-le v2, v0, :cond_3

    .line 2037
    const/high16 v0, 0x10000

    .local v0, "i":I
    :cond_1
    if-lez v0, :cond_2

    .line 2038
    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    sub-int p1, p2, v2

    :goto_1
    if-le p2, p1, :cond_1

    .line 2039
    add-int/lit8 p2, p2, -0x1

    int-to-char v2, v0

    aput-char v2, p0, p2

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    goto :goto_4

    .line 2043
    :cond_3
    const/high16 v0, 0x10000

    .restart local v0    # "i":I
    :goto_2
    if-le p2, p1, :cond_6

    .line 2044
    :goto_3
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget v0, v1, v2

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    .line 2045
    :cond_4
    aget v0, v1, v2

    .line 2048
    .local v0, "c":I
    :cond_5
    add-int/lit8 p2, p2, -0x1

    int-to-char v3, v2

    aput-char v3, p0, p2

    .line 2049
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_5

    .line 2050
    .end local v0    # "c":I
    move v0, v2

    goto :goto_2

    .line 2052
    .end local v2    # "i":I
    :cond_6
    :goto_4
    return-void
.end method

.method private static countingSort([SII)V
    .locals 6
    .param p0, "a"    # [S
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2350
    const/high16 v0, 0x10000

    new-array v1, v0, [I

    .line 2355
    .local v1, "count":[I
    move v2, p2

    .local v2, "i":I
    :goto_0
    const v3, 0xffff

    if-le v2, p1, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget-short v4, p0, v2

    and-int/2addr v3, v4

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    goto :goto_0

    .line 2360
    .end local v2    # "i":I
    :cond_0
    sub-int v2, p2, p1

    if-le v2, v0, :cond_3

    .line 2361
    const v0, 0x18000

    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_2

    .line 2362
    and-int v2, v0, v3

    .line 2364
    .local v2, "value":I
    aget v4, v1, v2

    sub-int p1, p2, v4

    :goto_2
    if-le p2, p1, :cond_1

    .line 2365
    add-int/lit8 p2, p2, -0x1

    int-to-short v4, v2

    aput-short v4, p0, p2

    goto :goto_2

    .line 2367
    .end local v2    # "value":I
    :cond_1
    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    goto :goto_5

    .line 2369
    :cond_3
    const v0, 0x18000

    .restart local v0    # "i":I
    :goto_3
    if-le p2, p1, :cond_6

    .line 2370
    :goto_4
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .local v2, "i":I
    and-int v0, v2, v3

    aget v0, v1, v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    .line 2372
    :cond_4
    and-int v4, v2, v3

    .line 2373
    .local v4, "value":I
    aget v0, v1, v4

    .line 2376
    .local v0, "c":I
    :cond_5
    add-int/lit8 p2, p2, -0x1

    int-to-short v5, v4

    aput-short v5, p0, p2

    .line 2377
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_5

    .line 2378
    .end local v0    # "c":I
    .end local v4    # "value":I
    move v0, v2

    goto :goto_3

    .line 2380
    .end local v2    # "i":I
    :cond_6
    :goto_5
    return-void
.end method

.method private static getDepth(II)I
    .locals 2
    .param p0, "parallelism"    # I
    .param p1, "size"    # I

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "depth":I
    :goto_0
    shr-int/lit8 v1, p0, 0x3

    move p0, v1

    if-lez v1, :cond_0

    shr-int/lit8 v1, p1, 0x2

    move p1, v1

    if-lez v1, :cond_0

    .line 136
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 138
    :cond_0
    return v0
.end method

.method private static heapSort([DII)V
    .locals 8
    .param p0, "a"    # [D
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 3687
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .local v0, "k":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 3688
    add-int/lit8 v0, v0, -0x1

    aget-wide v3, p0, v0

    move-object v1, p0

    move v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Ljava9/util/DualPivotQuicksort;->pushDown([DIDII)V

    goto :goto_0

    .line 3690
    .end local v0    # "k":I
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-le p2, p1, :cond_1

    .line 3691
    aget-wide v6, p0, p1

    .line 3692
    .local v6, "max":D
    aget-wide v2, p0, p2

    move-object v0, p0

    move v1, p1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Ljava9/util/DualPivotQuicksort;->pushDown([DIDII)V

    .line 3693
    aput-wide v6, p0, p2

    .line 3694
    .end local v6    # "max":D
    goto :goto_1

    .line 3695
    :cond_1
    return-void
.end method

.method private static heapSort([FII)V
    .locals 2
    .param p0, "a"    # [F
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2881
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .local v0, "k":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 2882
    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    invoke-static {p0, v0, v1, p1, p2}, Ljava9/util/DualPivotQuicksort;->pushDown([FIFII)V

    goto :goto_0

    .line 2884
    .end local v0    # "k":I
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-le p2, p1, :cond_1

    .line 2885
    aget v0, p0, p1

    .line 2886
    .local v0, "max":F
    aget v1, p0, p2

    invoke-static {p0, p1, v1, p1, p2}, Ljava9/util/DualPivotQuicksort;->pushDown([FIFII)V

    .line 2887
    aput v0, p0, p2

    .line 2888
    .end local v0    # "max":F
    goto :goto_1

    .line 2889
    :cond_1
    return-void
.end method

.method private static heapSort([III)V
    .locals 2
    .param p0, "a"    # [I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 586
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .local v0, "k":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 587
    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    invoke-static {p0, v0, v1, p1, p2}, Ljava9/util/DualPivotQuicksort;->pushDown([IIIII)V

    goto :goto_0

    .line 589
    .end local v0    # "k":I
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-le p2, p1, :cond_1

    .line 590
    aget v0, p0, p1

    .line 591
    .local v0, "max":I
    aget v1, p0, p2

    invoke-static {p0, p1, v1, p1, p2}, Ljava9/util/DualPivotQuicksort;->pushDown([IIIII)V

    .line 592
    aput v0, p0, p2

    .line 593
    .end local v0    # "max":I
    goto :goto_1

    .line 594
    :cond_1
    return-void
.end method

.method private static heapSort([JII)V
    .locals 8
    .param p0, "a"    # [J
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1340
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .local v0, "k":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 1341
    add-int/lit8 v0, v0, -0x1

    aget-wide v3, p0, v0

    move-object v1, p0

    move v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Ljava9/util/DualPivotQuicksort;->pushDown([JIJII)V

    goto :goto_0

    .line 1343
    .end local v0    # "k":I
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-le p2, p1, :cond_1

    .line 1344
    aget-wide v6, p0, p1

    .line 1345
    .local v6, "max":J
    aget-wide v2, p0, p2

    move-object v0, p0

    move v1, p1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Ljava9/util/DualPivotQuicksort;->pushDown([JIJII)V

    .line 1346
    aput-wide v6, p0, p2

    .line 1347
    .end local v6    # "max":J
    goto :goto_1

    .line 1348
    :cond_1
    return-void
.end method

.method private static insertionSort([BII)V
    .locals 5
    .param p0, "a"    # [B
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1673
    move v0, p1

    .local v0, "k":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    .line 1674
    move v1, v0

    .local v1, "i":I
    aget-byte v2, p0, v0

    .line 1676
    .local v2, "ai":B
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    if-ge v2, v3, :cond_1

    .line 1677
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_0

    aget-byte v3, p0, v1

    if-ge v2, v3, :cond_0

    .line 1678
    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v1

    aput-byte v4, p0, v3

    goto :goto_1

    .line 1680
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v3

    .line 1682
    .end local v1    # "i":I
    .end local v2    # "ai":B
    :cond_1
    goto :goto_0

    .line 1683
    .end local v0    # "k":I
    :cond_2
    return-void
.end method

.method private static insertionSort([CII)V
    .locals 5
    .param p0, "a"    # [C
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2001
    move v0, p1

    .local v0, "k":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    .line 2002
    move v1, v0

    .local v1, "i":I
    aget-char v2, p0, v0

    .line 2004
    .local v2, "ai":C
    add-int/lit8 v3, v1, -0x1

    aget-char v3, p0, v3

    if-ge v2, v3, :cond_1

    .line 2005
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_0

    aget-char v3, p0, v1

    if-ge v2, v3, :cond_0

    .line 2006
    add-int/lit8 v3, v1, 0x1

    aget-char v4, p0, v1

    aput-char v4, p0, v3

    goto :goto_1

    .line 2008
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aput-char v2, p0, v3

    .line 2010
    .end local v1    # "i":I
    .end local v2    # "ai":C
    :cond_1
    goto :goto_0

    .line 2011
    .end local v0    # "k":I
    :cond_2
    return-void
.end method

.method private static insertionSort([DII)V
    .locals 7
    .param p0, "a"    # [D
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 3667
    move v0, p1

    .local v0, "k":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    .line 3668
    move v1, v0

    .local v1, "i":I
    aget-wide v2, p0, v0

    .line 3670
    .local v2, "ai":D
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p0, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    .line 3671
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_0

    aget-wide v4, p0, v1

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 3672
    add-int/lit8 v4, v1, 0x1

    aget-wide v5, p0, v1

    aput-wide v5, p0, v4

    goto :goto_1

    .line 3674
    :cond_0
    add-int/lit8 v4, v1, 0x1

    aput-wide v2, p0, v4

    .line 3676
    .end local v1    # "i":I
    .end local v2    # "ai":D
    :cond_1
    goto :goto_0

    .line 3677
    .end local v0    # "k":I
    :cond_2
    return-void
.end method

.method private static insertionSort([FII)V
    .locals 5
    .param p0, "a"    # [F
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2861
    move v0, p1

    .local v0, "k":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    .line 2862
    move v1, v0

    .local v1, "i":I
    aget v2, p0, v0

    .line 2864
    .local v2, "ai":F
    add-int/lit8 v3, v1, -0x1

    aget v3, p0, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 2865
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_0

    aget v3, p0, v1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 2866
    add-int/lit8 v3, v1, 0x1

    aget v4, p0, v1

    aput v4, p0, v3

    goto :goto_1

    .line 2868
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aput v2, p0, v3

    .line 2870
    .end local v1    # "i":I
    .end local v2    # "ai":F
    :cond_1
    goto :goto_0

    .line 2871
    .end local v0    # "k":I
    :cond_2
    return-void
.end method

.method private static insertionSort([III)V
    .locals 5
    .param p0, "a"    # [I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 566
    move v0, p1

    .local v0, "k":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    .line 567
    move v1, v0

    .local v1, "i":I
    aget v2, p0, v0

    .line 569
    .local v2, "ai":I
    add-int/lit8 v3, v1, -0x1

    aget v3, p0, v3

    if-ge v2, v3, :cond_1

    .line 570
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_0

    aget v3, p0, v1

    if-ge v2, v3, :cond_0

    .line 571
    add-int/lit8 v3, v1, 0x1

    aget v4, p0, v1

    aput v4, p0, v3

    goto :goto_1

    .line 573
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aput v2, p0, v3

    .line 575
    .end local v1    # "i":I
    .end local v2    # "ai":I
    :cond_1
    goto :goto_0

    .line 576
    .end local v0    # "k":I
    :cond_2
    return-void
.end method

.method private static insertionSort([JII)V
    .locals 7
    .param p0, "a"    # [J
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1320
    move v0, p1

    .local v0, "k":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    .line 1321
    move v1, v0

    .local v1, "i":I
    aget-wide v2, p0, v0

    .line 1323
    .local v2, "ai":J
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p0, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 1324
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_0

    aget-wide v4, p0, v1

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 1325
    add-int/lit8 v4, v1, 0x1

    aget-wide v5, p0, v1

    aput-wide v5, p0, v4

    goto :goto_1

    .line 1327
    :cond_0
    add-int/lit8 v4, v1, 0x1

    aput-wide v2, p0, v4

    .line 1329
    .end local v1    # "i":I
    .end local v2    # "ai":J
    :cond_1
    goto :goto_0

    .line 1330
    .end local v0    # "k":I
    :cond_2
    return-void
.end method

.method private static insertionSort([SII)V
    .locals 5
    .param p0, "a"    # [S
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2320
    move v0, p1

    .local v0, "k":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    .line 2321
    move v1, v0

    .local v1, "i":I
    aget-short v2, p0, v0

    .line 2323
    .local v2, "ai":S
    add-int/lit8 v3, v1, -0x1

    aget-short v3, p0, v3

    if-ge v2, v3, :cond_1

    .line 2324
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_0

    aget-short v3, p0, v1

    if-ge v2, v3, :cond_0

    .line 2325
    add-int/lit8 v3, v1, 0x1

    aget-short v4, p0, v1

    aput-short v4, p0, v3

    goto :goto_1

    .line 2327
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aput-short v2, p0, v3

    .line 2329
    .end local v1    # "i":I
    .end local v2    # "ai":S
    :cond_1
    goto :goto_0

    .line 2330
    .end local v0    # "k":I
    :cond_2
    return-void
.end method

.method static mergeParts(Ljava9/util/DualPivotQuicksort$Merger;[DI[DII[DII)V
    .locals 21
    .param p0, "merger"    # Ljava9/util/DualPivotQuicksort$Merger;
    .param p1, "dst"    # [D
    .param p2, "k"    # I
    .param p3, "a1"    # [D
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # [D
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 3922
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    if-eqz p0, :cond_4

    if-ne v10, v11, :cond_4

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v3, p8

    .line 3929
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "lo1":I
    .local v1, "hi1":I
    .local v2, "lo2":I
    .local v3, "hi2":I
    :goto_0
    sub-int v4, v1, v0

    sub-int v5, v3, v2

    if-ge v4, v5, :cond_0

    .line 3930
    move v4, v0

    .local v4, "lo":I
    move v0, v2

    move v2, v4

    .line 3931
    move v5, v1

    .local v5, "hi":I
    move v1, v3

    move v3, v5

    move v14, v0

    move v12, v1

    move v15, v2

    move v13, v3

    goto :goto_1

    .line 3929
    .end local v4    # "lo":I
    .end local v5    # "hi":I
    :cond_0
    move v14, v0

    move v12, v1

    move v15, v2

    move v13, v3

    .line 3937
    .end local v0    # "lo1":I
    .end local v1    # "hi1":I
    .end local v2    # "lo2":I
    .end local v3    # "hi2":I
    .local v12, "hi1":I
    .local v13, "hi2":I
    .local v14, "lo1":I
    .local v15, "lo2":I
    :goto_1
    sub-int v0, v12, v14

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_1

    .line 3938
    move/from16 v0, p2

    goto :goto_4

    .line 3944
    :cond_1
    add-int v0, v14, v12

    ushr-int/lit8 v16, v0, 0x1

    .line 3945
    .local v16, "mi1":I
    aget-wide v17, v10, v16

    .line 3946
    .local v17, "key":D
    move v0, v13

    .line 3951
    .local v0, "mi2":I
    move v1, v15

    move v8, v0

    .end local v0    # "mi2":I
    .local v1, "loo":I
    .local v8, "mi2":I
    :goto_2
    if-ge v1, v8, :cond_3

    .line 3952
    add-int v0, v1, v8

    ushr-int/lit8 v0, v0, 0x1

    .line 3954
    .local v0, "t":I
    aget-wide v2, v11, v0

    cmpl-double v2, v17, v2

    if-lez v2, :cond_2

    .line 3955
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 3957
    :cond_2
    move v2, v0

    move v8, v2

    .line 3959
    .end local v0    # "t":I
    :goto_3
    goto :goto_2

    .line 3961
    .end local v1    # "loo":I
    :cond_3
    sub-int v0, v8, v15

    add-int v0, v0, v16

    sub-int v19, v0, v14

    .line 3966
    .local v19, "d":I
    add-int v2, p2, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move v5, v12

    move-object/from16 v6, p6

    move v7, v8

    move/from16 v20, v8

    .end local v8    # "mi2":I
    .local v20, "mi2":I
    move v8, v13

    invoke-virtual/range {v0 .. v8}, Ljava9/util/DualPivotQuicksort$Merger;->forkMerger(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 3971
    move/from16 v1, v16

    .line 3972
    .end local v12    # "hi1":I
    .local v1, "hi1":I
    move/from16 v3, v20

    .line 3973
    .end local v13    # "hi2":I
    .end local v16    # "mi1":I
    .end local v17    # "key":D
    .end local v19    # "d":I
    .end local v20    # "mi2":I
    .restart local v3    # "hi2":I
    move v0, v14

    move v2, v15

    goto :goto_0

    .line 3979
    .end local v1    # "hi1":I
    .end local v3    # "hi2":I
    .end local v14    # "lo1":I
    .end local v15    # "lo2":I
    .restart local p4    # "lo1":I
    .restart local p5    # "hi1":I
    .restart local p7    # "lo2":I
    .restart local p8    # "hi2":I
    :cond_4
    move/from16 v0, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move/from16 v15, p7

    move/from16 v13, p8

    .end local p2    # "k":I
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "k":I
    .restart local v12    # "hi1":I
    .restart local v13    # "hi2":I
    .restart local v14    # "lo1":I
    .restart local v15    # "lo2":I
    :goto_4
    if-ge v14, v12, :cond_6

    if-ge v15, v13, :cond_6

    .line 3980
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .local v1, "k":I
    aget-wide v2, v10, v14

    aget-wide v4, v11, v15

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    add-int/lit8 v2, v14, 0x1

    .end local v14    # "lo1":I
    .local v2, "lo1":I
    aget-wide v3, v10, v14

    move v14, v2

    goto :goto_5

    .end local v2    # "lo1":I
    .restart local v14    # "lo1":I
    :cond_5
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "lo2":I
    .local v2, "lo2":I
    aget-wide v3, v11, v15

    move v15, v2

    .end local v2    # "lo2":I
    .restart local v15    # "lo2":I
    :goto_5
    aput-wide v3, v9, v0

    move v0, v1

    goto :goto_4

    .line 3982
    .end local v1    # "k":I
    .restart local v0    # "k":I
    :cond_6
    if-ne v9, v10, :cond_7

    if-ge v0, v14, :cond_8

    .line 3983
    :cond_7
    :goto_6
    if-ge v14, v12, :cond_8

    .line 3984
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "lo1":I
    .local v2, "lo1":I
    aget-wide v3, v10, v14

    aput-wide v3, v9, v0

    move v0, v1

    move v14, v2

    goto :goto_6

    .line 3987
    .end local v1    # "k":I
    .end local v2    # "lo1":I
    .restart local v0    # "k":I
    .restart local v14    # "lo1":I
    :cond_8
    if-ne v9, v11, :cond_9

    if-ge v0, v15, :cond_a

    .line 3988
    :cond_9
    :goto_7
    if-ge v15, v13, :cond_a

    .line 3989
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "lo2":I
    .local v2, "lo2":I
    aget-wide v3, v11, v15

    aput-wide v3, v9, v0

    move v0, v1

    move v15, v2

    goto :goto_7

    .line 3992
    .end local v1    # "k":I
    .end local v2    # "lo2":I
    .restart local v0    # "k":I
    .restart local v15    # "lo2":I
    :cond_a
    return-void
.end method

.method static mergeParts(Ljava9/util/DualPivotQuicksort$Merger;[FI[FII[FII)V
    .locals 20
    .param p0, "merger"    # Ljava9/util/DualPivotQuicksort$Merger;
    .param p1, "dst"    # [F
    .param p2, "k"    # I
    .param p3, "a1"    # [F
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # [F
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 3116
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    if-eqz p0, :cond_4

    if-ne v10, v11, :cond_4

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v3, p8

    .line 3123
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "lo1":I
    .local v1, "hi1":I
    .local v2, "lo2":I
    .local v3, "hi2":I
    :goto_0
    sub-int v4, v1, v0

    sub-int v5, v3, v2

    if-ge v4, v5, :cond_0

    .line 3124
    move v4, v0

    .local v4, "lo":I
    move v0, v2

    move v2, v4

    .line 3125
    move v5, v1

    .local v5, "hi":I
    move v1, v3

    move v3, v5

    move v14, v0

    move v12, v1

    move v15, v2

    move v13, v3

    goto :goto_1

    .line 3123
    .end local v4    # "lo":I
    .end local v5    # "hi":I
    :cond_0
    move v14, v0

    move v12, v1

    move v15, v2

    move v13, v3

    .line 3131
    .end local v0    # "lo1":I
    .end local v1    # "hi1":I
    .end local v2    # "lo2":I
    .end local v3    # "hi2":I
    .local v12, "hi1":I
    .local v13, "hi2":I
    .local v14, "lo1":I
    .local v15, "lo2":I
    :goto_1
    sub-int v0, v12, v14

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_1

    .line 3132
    move/from16 v0, p2

    goto :goto_4

    .line 3138
    :cond_1
    add-int v0, v14, v12

    ushr-int/lit8 v16, v0, 0x1

    .line 3139
    .local v16, "mi1":I
    aget v17, v10, v16

    .line 3140
    .local v17, "key":F
    move v0, v13

    .line 3145
    .local v0, "mi2":I
    move v1, v15

    move v8, v0

    .end local v0    # "mi2":I
    .local v1, "loo":I
    .local v8, "mi2":I
    :goto_2
    if-ge v1, v8, :cond_3

    .line 3146
    add-int v0, v1, v8

    ushr-int/lit8 v0, v0, 0x1

    .line 3148
    .local v0, "t":I
    aget v2, v11, v0

    cmpl-float v2, v17, v2

    if-lez v2, :cond_2

    .line 3149
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 3151
    :cond_2
    move v2, v0

    move v8, v2

    .line 3153
    .end local v0    # "t":I
    :goto_3
    goto :goto_2

    .line 3155
    .end local v1    # "loo":I
    :cond_3
    sub-int v0, v8, v15

    add-int v0, v0, v16

    sub-int v18, v0, v14

    .line 3160
    .local v18, "d":I
    add-int v2, p2, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move v5, v12

    move-object/from16 v6, p6

    move v7, v8

    move/from16 v19, v8

    .end local v8    # "mi2":I
    .local v19, "mi2":I
    move v8, v13

    invoke-virtual/range {v0 .. v8}, Ljava9/util/DualPivotQuicksort$Merger;->forkMerger(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 3165
    move/from16 v1, v16

    .line 3166
    .end local v12    # "hi1":I
    .local v1, "hi1":I
    move/from16 v3, v19

    .line 3167
    .end local v13    # "hi2":I
    .end local v16    # "mi1":I
    .end local v17    # "key":F
    .end local v18    # "d":I
    .end local v19    # "mi2":I
    .restart local v3    # "hi2":I
    move v0, v14

    move v2, v15

    goto :goto_0

    .line 3173
    .end local v1    # "hi1":I
    .end local v3    # "hi2":I
    .end local v14    # "lo1":I
    .end local v15    # "lo2":I
    .restart local p4    # "lo1":I
    .restart local p5    # "hi1":I
    .restart local p7    # "lo2":I
    .restart local p8    # "hi2":I
    :cond_4
    move/from16 v0, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move/from16 v15, p7

    move/from16 v13, p8

    .end local p2    # "k":I
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "k":I
    .restart local v12    # "hi1":I
    .restart local v13    # "hi2":I
    .restart local v14    # "lo1":I
    .restart local v15    # "lo2":I
    :goto_4
    if-ge v14, v12, :cond_6

    if-ge v15, v13, :cond_6

    .line 3174
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .local v1, "k":I
    aget v2, v10, v14

    aget v3, v11, v15

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    add-int/lit8 v2, v14, 0x1

    .end local v14    # "lo1":I
    .local v2, "lo1":I
    aget v3, v10, v14

    move v14, v2

    goto :goto_5

    .end local v2    # "lo1":I
    .restart local v14    # "lo1":I
    :cond_5
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "lo2":I
    .local v2, "lo2":I
    aget v3, v11, v15

    move v15, v2

    .end local v2    # "lo2":I
    .restart local v15    # "lo2":I
    :goto_5
    aput v3, v9, v0

    move v0, v1

    goto :goto_4

    .line 3176
    .end local v1    # "k":I
    .restart local v0    # "k":I
    :cond_6
    if-ne v9, v10, :cond_7

    if-ge v0, v14, :cond_8

    .line 3177
    :cond_7
    :goto_6
    if-ge v14, v12, :cond_8

    .line 3178
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "lo1":I
    .local v2, "lo1":I
    aget v3, v10, v14

    aput v3, v9, v0

    move v0, v1

    move v14, v2

    goto :goto_6

    .line 3181
    .end local v1    # "k":I
    .end local v2    # "lo1":I
    .restart local v0    # "k":I
    .restart local v14    # "lo1":I
    :cond_8
    if-ne v9, v11, :cond_9

    if-ge v0, v15, :cond_a

    .line 3182
    :cond_9
    :goto_7
    if-ge v15, v13, :cond_a

    .line 3183
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "lo2":I
    .local v2, "lo2":I
    aget v3, v11, v15

    aput v3, v9, v0

    move v0, v1

    move v15, v2

    goto :goto_7

    .line 3186
    .end local v1    # "k":I
    .end local v2    # "lo2":I
    .restart local v0    # "k":I
    .restart local v15    # "lo2":I
    :cond_a
    return-void
.end method

.method static mergeParts(Ljava9/util/DualPivotQuicksort$Merger;[II[III[III)V
    .locals 20
    .param p0, "merger"    # Ljava9/util/DualPivotQuicksort$Merger;
    .param p1, "dst"    # [I
    .param p2, "k"    # I
    .param p3, "a1"    # [I
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # [I
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 821
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    if-eqz p0, :cond_4

    if-ne v10, v11, :cond_4

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v3, p8

    .line 828
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "lo1":I
    .local v1, "hi1":I
    .local v2, "lo2":I
    .local v3, "hi2":I
    :goto_0
    sub-int v4, v1, v0

    sub-int v5, v3, v2

    if-ge v4, v5, :cond_0

    .line 829
    move v4, v0

    .local v4, "lo":I
    move v0, v2

    move v2, v4

    .line 830
    move v5, v1

    .local v5, "hi":I
    move v1, v3

    move v3, v5

    move v14, v0

    move v12, v1

    move v15, v2

    move v13, v3

    goto :goto_1

    .line 828
    .end local v4    # "lo":I
    .end local v5    # "hi":I
    :cond_0
    move v14, v0

    move v12, v1

    move v15, v2

    move v13, v3

    .line 836
    .end local v0    # "lo1":I
    .end local v1    # "hi1":I
    .end local v2    # "lo2":I
    .end local v3    # "hi2":I
    .local v12, "hi1":I
    .local v13, "hi2":I
    .local v14, "lo1":I
    .local v15, "lo2":I
    :goto_1
    sub-int v0, v12, v14

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_1

    .line 837
    move/from16 v0, p2

    goto :goto_4

    .line 843
    :cond_1
    add-int v0, v14, v12

    ushr-int/lit8 v16, v0, 0x1

    .line 844
    .local v16, "mi1":I
    aget v8, v10, v16

    .line 845
    .local v8, "key":I
    move v0, v13

    .line 850
    .local v0, "mi2":I
    move v1, v15

    move v7, v0

    .end local v0    # "mi2":I
    .local v1, "loo":I
    .local v7, "mi2":I
    :goto_2
    if-ge v1, v7, :cond_3

    .line 851
    add-int v0, v1, v7

    ushr-int/lit8 v0, v0, 0x1

    .line 853
    .local v0, "t":I
    aget v2, v11, v0

    if-le v8, v2, :cond_2

    .line 854
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 856
    :cond_2
    move v2, v0

    move v7, v2

    .line 858
    .end local v0    # "t":I
    :goto_3
    goto :goto_2

    .line 860
    .end local v1    # "loo":I
    :cond_3
    sub-int v0, v7, v15

    add-int v0, v0, v16

    sub-int v17, v0, v14

    .line 865
    .local v17, "d":I
    add-int v2, p2, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move v5, v12

    move-object/from16 v6, p6

    move/from16 v18, v7

    .end local v7    # "mi2":I
    .local v18, "mi2":I
    move/from16 v19, v8

    .end local v8    # "key":I
    .local v19, "key":I
    move v8, v13

    invoke-virtual/range {v0 .. v8}, Ljava9/util/DualPivotQuicksort$Merger;->forkMerger(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 870
    move/from16 v1, v16

    .line 871
    .end local v12    # "hi1":I
    .local v1, "hi1":I
    move/from16 v3, v18

    .line 872
    .end local v13    # "hi2":I
    .end local v16    # "mi1":I
    .end local v17    # "d":I
    .end local v18    # "mi2":I
    .end local v19    # "key":I
    .restart local v3    # "hi2":I
    move v0, v14

    move v2, v15

    goto :goto_0

    .line 878
    .end local v1    # "hi1":I
    .end local v3    # "hi2":I
    .end local v14    # "lo1":I
    .end local v15    # "lo2":I
    .restart local p4    # "lo1":I
    .restart local p5    # "hi1":I
    .restart local p7    # "lo2":I
    .restart local p8    # "hi2":I
    :cond_4
    move/from16 v0, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move/from16 v15, p7

    move/from16 v13, p8

    .end local p2    # "k":I
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "k":I
    .restart local v12    # "hi1":I
    .restart local v13    # "hi2":I
    .restart local v14    # "lo1":I
    .restart local v15    # "lo2":I
    :goto_4
    if-ge v14, v12, :cond_6

    if-ge v15, v13, :cond_6

    .line 879
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .local v1, "k":I
    aget v2, v10, v14

    aget v3, v11, v15

    if-ge v2, v3, :cond_5

    add-int/lit8 v2, v14, 0x1

    .end local v14    # "lo1":I
    .local v2, "lo1":I
    aget v3, v10, v14

    move v14, v2

    goto :goto_5

    .end local v2    # "lo1":I
    .restart local v14    # "lo1":I
    :cond_5
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "lo2":I
    .local v2, "lo2":I
    aget v3, v11, v15

    move v15, v2

    .end local v2    # "lo2":I
    .restart local v15    # "lo2":I
    :goto_5
    aput v3, v9, v0

    move v0, v1

    goto :goto_4

    .line 881
    .end local v1    # "k":I
    .restart local v0    # "k":I
    :cond_6
    if-ne v9, v10, :cond_7

    if-ge v0, v14, :cond_8

    .line 882
    :cond_7
    :goto_6
    if-ge v14, v12, :cond_8

    .line 883
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "lo1":I
    .local v2, "lo1":I
    aget v3, v10, v14

    aput v3, v9, v0

    move v0, v1

    move v14, v2

    goto :goto_6

    .line 886
    .end local v1    # "k":I
    .end local v2    # "lo1":I
    .restart local v0    # "k":I
    .restart local v14    # "lo1":I
    :cond_8
    if-ne v9, v11, :cond_9

    if-ge v0, v15, :cond_a

    .line 887
    :cond_9
    :goto_7
    if-ge v15, v13, :cond_a

    .line 888
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "lo2":I
    .local v2, "lo2":I
    aget v3, v11, v15

    aput v3, v9, v0

    move v0, v1

    move v15, v2

    goto :goto_7

    .line 891
    .end local v1    # "k":I
    .end local v2    # "lo2":I
    .restart local v0    # "k":I
    .restart local v15    # "lo2":I
    :cond_a
    return-void
.end method

.method static mergeParts(Ljava9/util/DualPivotQuicksort$Merger;[JI[JII[JII)V
    .locals 21
    .param p0, "merger"    # Ljava9/util/DualPivotQuicksort$Merger;
    .param p1, "dst"    # [J
    .param p2, "k"    # I
    .param p3, "a1"    # [J
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # [J
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 1575
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    if-eqz p0, :cond_4

    if-ne v10, v11, :cond_4

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v3, p8

    .line 1582
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "lo1":I
    .local v1, "hi1":I
    .local v2, "lo2":I
    .local v3, "hi2":I
    :goto_0
    sub-int v4, v1, v0

    sub-int v5, v3, v2

    if-ge v4, v5, :cond_0

    .line 1583
    move v4, v0

    .local v4, "lo":I
    move v0, v2

    move v2, v4

    .line 1584
    move v5, v1

    .local v5, "hi":I
    move v1, v3

    move v3, v5

    move v14, v0

    move v12, v1

    move v15, v2

    move v13, v3

    goto :goto_1

    .line 1582
    .end local v4    # "lo":I
    .end local v5    # "hi":I
    :cond_0
    move v14, v0

    move v12, v1

    move v15, v2

    move v13, v3

    .line 1590
    .end local v0    # "lo1":I
    .end local v1    # "hi1":I
    .end local v2    # "lo2":I
    .end local v3    # "hi2":I
    .local v12, "hi1":I
    .local v13, "hi2":I
    .local v14, "lo1":I
    .local v15, "lo2":I
    :goto_1
    sub-int v0, v12, v14

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_1

    .line 1591
    move/from16 v0, p2

    goto :goto_4

    .line 1597
    :cond_1
    add-int v0, v14, v12

    ushr-int/lit8 v16, v0, 0x1

    .line 1598
    .local v16, "mi1":I
    aget-wide v17, v10, v16

    .line 1599
    .local v17, "key":J
    move v0, v13

    .line 1604
    .local v0, "mi2":I
    move v1, v15

    move v8, v0

    .end local v0    # "mi2":I
    .local v1, "loo":I
    .local v8, "mi2":I
    :goto_2
    if-ge v1, v8, :cond_3

    .line 1605
    add-int v0, v1, v8

    ushr-int/lit8 v0, v0, 0x1

    .line 1607
    .local v0, "t":I
    aget-wide v2, v11, v0

    cmp-long v2, v17, v2

    if-lez v2, :cond_2

    .line 1608
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 1610
    :cond_2
    move v2, v0

    move v8, v2

    .line 1612
    .end local v0    # "t":I
    :goto_3
    goto :goto_2

    .line 1614
    .end local v1    # "loo":I
    :cond_3
    sub-int v0, v8, v15

    add-int v0, v0, v16

    sub-int v19, v0, v14

    .line 1619
    .local v19, "d":I
    add-int v2, p2, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move v5, v12

    move-object/from16 v6, p6

    move v7, v8

    move/from16 v20, v8

    .end local v8    # "mi2":I
    .local v20, "mi2":I
    move v8, v13

    invoke-virtual/range {v0 .. v8}, Ljava9/util/DualPivotQuicksort$Merger;->forkMerger(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 1624
    move/from16 v1, v16

    .line 1625
    .end local v12    # "hi1":I
    .local v1, "hi1":I
    move/from16 v3, v20

    .line 1626
    .end local v13    # "hi2":I
    .end local v16    # "mi1":I
    .end local v17    # "key":J
    .end local v19    # "d":I
    .end local v20    # "mi2":I
    .restart local v3    # "hi2":I
    move v0, v14

    move v2, v15

    goto :goto_0

    .line 1632
    .end local v1    # "hi1":I
    .end local v3    # "hi2":I
    .end local v14    # "lo1":I
    .end local v15    # "lo2":I
    .restart local p4    # "lo1":I
    .restart local p5    # "hi1":I
    .restart local p7    # "lo2":I
    .restart local p8    # "hi2":I
    :cond_4
    move/from16 v0, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move/from16 v15, p7

    move/from16 v13, p8

    .end local p2    # "k":I
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "k":I
    .restart local v12    # "hi1":I
    .restart local v13    # "hi2":I
    .restart local v14    # "lo1":I
    .restart local v15    # "lo2":I
    :goto_4
    if-ge v14, v12, :cond_6

    if-ge v15, v13, :cond_6

    .line 1633
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .local v1, "k":I
    aget-wide v2, v10, v14

    aget-wide v4, v11, v15

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    add-int/lit8 v2, v14, 0x1

    .end local v14    # "lo1":I
    .local v2, "lo1":I
    aget-wide v3, v10, v14

    move v14, v2

    goto :goto_5

    .end local v2    # "lo1":I
    .restart local v14    # "lo1":I
    :cond_5
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "lo2":I
    .local v2, "lo2":I
    aget-wide v3, v11, v15

    move v15, v2

    .end local v2    # "lo2":I
    .restart local v15    # "lo2":I
    :goto_5
    aput-wide v3, v9, v0

    move v0, v1

    goto :goto_4

    .line 1635
    .end local v1    # "k":I
    .restart local v0    # "k":I
    :cond_6
    if-ne v9, v10, :cond_7

    if-ge v0, v14, :cond_8

    .line 1636
    :cond_7
    :goto_6
    if-ge v14, v12, :cond_8

    .line 1637
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "lo1":I
    .local v2, "lo1":I
    aget-wide v3, v10, v14

    aput-wide v3, v9, v0

    move v0, v1

    move v14, v2

    goto :goto_6

    .line 1640
    .end local v1    # "k":I
    .end local v2    # "lo1":I
    .restart local v0    # "k":I
    .restart local v14    # "lo1":I
    :cond_8
    if-ne v9, v11, :cond_9

    if-ge v0, v15, :cond_a

    .line 1641
    :cond_9
    :goto_7
    if-ge v15, v13, :cond_a

    .line 1642
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "lo2":I
    .local v2, "lo2":I
    aget-wide v3, v11, v15

    aput-wide v3, v9, v0

    move v0, v1

    move v15, v2

    goto :goto_7

    .line 1645
    .end local v1    # "k":I
    .end local v2    # "lo2":I
    .restart local v0    # "k":I
    .restart local v15    # "lo2":I
    :cond_a
    return-void
.end method

.method static mergeRuns([D[DIIZ[III)[D
    .locals 33
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "offset"    # I
    .param p3, "aim"    # I
    .param p4, "parallel"    # Z
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 3860
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    sub-int v0, p7, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3861
    if-ltz v10, :cond_0

    .line 3862
    return-object v8

    .line 3864
    :cond_0
    aget v0, p5, p7

    .local v0, "i":I
    sub-int v1, v0, p2

    .local v1, "j":I
    aget v2, p5, p6

    .local v2, "low":I
    :goto_0
    if-le v0, v2, :cond_1

    .line 3865
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v8, v0

    aput-wide v3, v9, v1

    goto :goto_0

    .line 3867
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "low":I
    :cond_1
    return-object v9

    .line 3873
    :cond_2
    move/from16 v0, p6

    .local v0, "mi":I
    aget v2, p5, p6

    aget v3, p5, p7

    add-int/2addr v2, v3

    ushr-int/lit8 v11, v2, 0x1

    .line 3874
    .local v11, "rmi":I
    :goto_1
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "mi":I
    .local v12, "mi":I
    add-int/lit8 v0, v12, 0x1

    aget v0, p5, v0

    if-gt v0, v11, :cond_3

    move v0, v12

    goto :goto_1

    .line 3881
    :cond_3
    if-eqz p4, :cond_4

    sub-int v0, p7, p6

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    .line 3882
    new-instance v13, Ljava9/util/DualPivotQuicksort$RunMerger;

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move v6, v12

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[III)V

    invoke-virtual {v13}, Ljava9/util/DualPivotQuicksort$RunMerger;->forkMe()Ljava9/util/DualPivotQuicksort$RunMerger;

    move-result-object v13

    .line 3883
    .local v13, "merger":Ljava9/util/DualPivotQuicksort$RunMerger;
    neg-int v3, v10

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p6

    move v7, v12

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object v0

    .line 3884
    .local v0, "a1":[D
    invoke-virtual {v13}, Ljava9/util/DualPivotQuicksort$RunMerger;->getDestination()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    check-cast v1, [D

    .line 3885
    .end local v13    # "merger":Ljava9/util/DualPivotQuicksort$RunMerger;
    .local v1, "a2":[D
    goto :goto_2

    .line 3886
    .end local v0    # "a1":[D
    .end local v1    # "a2":[D
    :cond_4
    neg-int v3, v10

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v12

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object v13

    .line 3887
    .local v13, "a1":[D
    const/4 v3, 0x0

    move v6, v12

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object v1

    move-object v0, v13

    .line 3890
    .end local v13    # "a1":[D
    .restart local v0    # "a1":[D
    .restart local v1    # "a2":[D
    :goto_2
    if-ne v0, v8, :cond_5

    move-object v2, v9

    goto :goto_3

    :cond_5
    move-object v2, v8

    .line 3892
    .local v2, "dst":[D
    :goto_3
    if-ne v0, v8, :cond_6

    aget v3, p5, p6

    sub-int v3, v3, p2

    goto :goto_4

    :cond_6
    aget v3, p5, p6

    :goto_4
    move/from16 v17, v3

    .line 3893
    .local v17, "k":I
    if-ne v0, v9, :cond_7

    aget v3, p5, p6

    sub-int v3, v3, p2

    goto :goto_5

    :cond_7
    aget v3, p5, p6

    :goto_5
    move/from16 v19, v3

    .line 3894
    .local v19, "lo1":I
    if-ne v0, v9, :cond_8

    aget v3, p5, v12

    sub-int v3, v3, p2

    goto :goto_6

    :cond_8
    aget v3, p5, v12

    :goto_6
    move/from16 v20, v3

    .line 3895
    .local v20, "hi1":I
    if-ne v1, v9, :cond_9

    aget v3, p5, v12

    sub-int v3, v3, p2

    goto :goto_7

    :cond_9
    aget v3, p5, v12

    :goto_7
    move/from16 v22, v3

    .line 3896
    .local v22, "lo2":I
    if-ne v1, v9, :cond_a

    aget v3, p5, p7

    sub-int v3, v3, p2

    goto :goto_8

    :cond_a
    aget v3, p5, p7

    :goto_8
    move/from16 v23, v3

    .line 3898
    .local v23, "hi2":I
    if-eqz p4, :cond_b

    .line 3899
    new-instance v3, Ljava9/util/DualPivotQuicksort$Merger;

    const/4 v15, 0x0

    move-object v14, v3

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    move-object/from16 v21, v1

    invoke-direct/range {v14 .. v23}, Ljava9/util/DualPivotQuicksort$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava9/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    goto :goto_9

    .line 3901
    :cond_b
    const/16 v24, 0x0

    move-object/from16 v25, v2

    move/from16 v26, v17

    move-object/from16 v27, v0

    move/from16 v28, v19

    move/from16 v29, v20

    move-object/from16 v30, v1

    move/from16 v31, v22

    move/from16 v32, v23

    invoke-static/range {v24 .. v32}, Ljava9/util/DualPivotQuicksort;->mergeParts(Ljava9/util/DualPivotQuicksort$Merger;[DI[DII[DII)V

    .line 3903
    :goto_9
    return-object v2
.end method

.method static mergeRuns([F[FIIZ[III)[F
    .locals 33
    .param p0, "a"    # [F
    .param p1, "b"    # [F
    .param p2, "offset"    # I
    .param p3, "aim"    # I
    .param p4, "parallel"    # Z
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 3054
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    sub-int v0, p7, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3055
    if-ltz v10, :cond_0

    .line 3056
    return-object v8

    .line 3058
    :cond_0
    aget v0, p5, p7

    .local v0, "i":I
    sub-int v1, v0, p2

    .local v1, "j":I
    aget v2, p5, p6

    .local v2, "low":I
    :goto_0
    if-le v0, v2, :cond_1

    .line 3059
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    aget v3, v8, v0

    aput v3, v9, v1

    goto :goto_0

    .line 3061
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "low":I
    :cond_1
    return-object v9

    .line 3067
    :cond_2
    move/from16 v0, p6

    .local v0, "mi":I
    aget v2, p5, p6

    aget v3, p5, p7

    add-int/2addr v2, v3

    ushr-int/lit8 v11, v2, 0x1

    .line 3068
    .local v11, "rmi":I
    :goto_1
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "mi":I
    .local v12, "mi":I
    add-int/lit8 v0, v12, 0x1

    aget v0, p5, v0

    if-gt v0, v11, :cond_3

    move v0, v12

    goto :goto_1

    .line 3075
    :cond_3
    if-eqz p4, :cond_4

    sub-int v0, p7, p6

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    .line 3076
    new-instance v13, Ljava9/util/DualPivotQuicksort$RunMerger;

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move v6, v12

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[III)V

    invoke-virtual {v13}, Ljava9/util/DualPivotQuicksort$RunMerger;->forkMe()Ljava9/util/DualPivotQuicksort$RunMerger;

    move-result-object v13

    .line 3077
    .local v13, "merger":Ljava9/util/DualPivotQuicksort$RunMerger;
    neg-int v3, v10

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p6

    move v7, v12

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object v0

    .line 3078
    .local v0, "a1":[F
    invoke-virtual {v13}, Ljava9/util/DualPivotQuicksort$RunMerger;->getDestination()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    check-cast v1, [F

    .line 3079
    .end local v13    # "merger":Ljava9/util/DualPivotQuicksort$RunMerger;
    .local v1, "a2":[F
    goto :goto_2

    .line 3080
    .end local v0    # "a1":[F
    .end local v1    # "a2":[F
    :cond_4
    neg-int v3, v10

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v12

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object v13

    .line 3081
    .local v13, "a1":[F
    const/4 v3, 0x0

    move v6, v12

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object v1

    move-object v0, v13

    .line 3084
    .end local v13    # "a1":[F
    .restart local v0    # "a1":[F
    .restart local v1    # "a2":[F
    :goto_2
    if-ne v0, v8, :cond_5

    move-object v2, v9

    goto :goto_3

    :cond_5
    move-object v2, v8

    .line 3086
    .local v2, "dst":[F
    :goto_3
    if-ne v0, v8, :cond_6

    aget v3, p5, p6

    sub-int v3, v3, p2

    goto :goto_4

    :cond_6
    aget v3, p5, p6

    :goto_4
    move/from16 v17, v3

    .line 3087
    .local v17, "k":I
    if-ne v0, v9, :cond_7

    aget v3, p5, p6

    sub-int v3, v3, p2

    goto :goto_5

    :cond_7
    aget v3, p5, p6

    :goto_5
    move/from16 v19, v3

    .line 3088
    .local v19, "lo1":I
    if-ne v0, v9, :cond_8

    aget v3, p5, v12

    sub-int v3, v3, p2

    goto :goto_6

    :cond_8
    aget v3, p5, v12

    :goto_6
    move/from16 v20, v3

    .line 3089
    .local v20, "hi1":I
    if-ne v1, v9, :cond_9

    aget v3, p5, v12

    sub-int v3, v3, p2

    goto :goto_7

    :cond_9
    aget v3, p5, v12

    :goto_7
    move/from16 v22, v3

    .line 3090
    .local v22, "lo2":I
    if-ne v1, v9, :cond_a

    aget v3, p5, p7

    sub-int v3, v3, p2

    goto :goto_8

    :cond_a
    aget v3, p5, p7

    :goto_8
    move/from16 v23, v3

    .line 3092
    .local v23, "hi2":I
    if-eqz p4, :cond_b

    .line 3093
    new-instance v3, Ljava9/util/DualPivotQuicksort$Merger;

    const/4 v15, 0x0

    move-object v14, v3

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    move-object/from16 v21, v1

    invoke-direct/range {v14 .. v23}, Ljava9/util/DualPivotQuicksort$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava9/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    goto :goto_9

    .line 3095
    :cond_b
    const/16 v24, 0x0

    move-object/from16 v25, v2

    move/from16 v26, v17

    move-object/from16 v27, v0

    move/from16 v28, v19

    move/from16 v29, v20

    move-object/from16 v30, v1

    move/from16 v31, v22

    move/from16 v32, v23

    invoke-static/range {v24 .. v32}, Ljava9/util/DualPivotQuicksort;->mergeParts(Ljava9/util/DualPivotQuicksort$Merger;[FI[FII[FII)V

    .line 3097
    :goto_9
    return-object v2
.end method

.method static mergeRuns([I[IIIZ[III)[I
    .locals 33
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "offset"    # I
    .param p3, "aim"    # I
    .param p4, "parallel"    # Z
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 759
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    sub-int v0, p7, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 760
    if-ltz v10, :cond_0

    .line 761
    return-object v8

    .line 763
    :cond_0
    aget v0, p5, p7

    .local v0, "i":I
    sub-int v1, v0, p2

    .local v1, "j":I
    aget v2, p5, p6

    .local v2, "low":I
    :goto_0
    if-le v0, v2, :cond_1

    .line 764
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    aget v3, v8, v0

    aput v3, v9, v1

    goto :goto_0

    .line 766
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "low":I
    :cond_1
    return-object v9

    .line 772
    :cond_2
    move/from16 v0, p6

    .local v0, "mi":I
    aget v2, p5, p6

    aget v3, p5, p7

    add-int/2addr v2, v3

    ushr-int/lit8 v11, v2, 0x1

    .line 773
    .local v11, "rmi":I
    :goto_1
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "mi":I
    .local v12, "mi":I
    add-int/lit8 v0, v12, 0x1

    aget v0, p5, v0

    if-gt v0, v11, :cond_3

    move v0, v12

    goto :goto_1

    .line 780
    :cond_3
    if-eqz p4, :cond_4

    sub-int v0, p7, p6

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    .line 781
    new-instance v13, Ljava9/util/DualPivotQuicksort$RunMerger;

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move v6, v12

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[III)V

    invoke-virtual {v13}, Ljava9/util/DualPivotQuicksort$RunMerger;->forkMe()Ljava9/util/DualPivotQuicksort$RunMerger;

    move-result-object v13

    .line 782
    .local v13, "merger":Ljava9/util/DualPivotQuicksort$RunMerger;
    neg-int v3, v10

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p6

    move v7, v12

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object v0

    .line 783
    .local v0, "a1":[I
    invoke-virtual {v13}, Ljava9/util/DualPivotQuicksort$RunMerger;->getDestination()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 784
    .end local v13    # "merger":Ljava9/util/DualPivotQuicksort$RunMerger;
    .local v1, "a2":[I
    goto :goto_2

    .line 785
    .end local v0    # "a1":[I
    .end local v1    # "a2":[I
    :cond_4
    neg-int v3, v10

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v12

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object v13

    .line 786
    .local v13, "a1":[I
    const/4 v3, 0x0

    move v6, v12

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object v1

    move-object v0, v13

    .line 789
    .end local v13    # "a1":[I
    .restart local v0    # "a1":[I
    .restart local v1    # "a2":[I
    :goto_2
    if-ne v0, v8, :cond_5

    move-object v2, v9

    goto :goto_3

    :cond_5
    move-object v2, v8

    .line 791
    .local v2, "dst":[I
    :goto_3
    if-ne v0, v8, :cond_6

    aget v3, p5, p6

    sub-int v3, v3, p2

    goto :goto_4

    :cond_6
    aget v3, p5, p6

    :goto_4
    move/from16 v17, v3

    .line 792
    .local v17, "k":I
    if-ne v0, v9, :cond_7

    aget v3, p5, p6

    sub-int v3, v3, p2

    goto :goto_5

    :cond_7
    aget v3, p5, p6

    :goto_5
    move/from16 v19, v3

    .line 793
    .local v19, "lo1":I
    if-ne v0, v9, :cond_8

    aget v3, p5, v12

    sub-int v3, v3, p2

    goto :goto_6

    :cond_8
    aget v3, p5, v12

    :goto_6
    move/from16 v20, v3

    .line 794
    .local v20, "hi1":I
    if-ne v1, v9, :cond_9

    aget v3, p5, v12

    sub-int v3, v3, p2

    goto :goto_7

    :cond_9
    aget v3, p5, v12

    :goto_7
    move/from16 v22, v3

    .line 795
    .local v22, "lo2":I
    if-ne v1, v9, :cond_a

    aget v3, p5, p7

    sub-int v3, v3, p2

    goto :goto_8

    :cond_a
    aget v3, p5, p7

    :goto_8
    move/from16 v23, v3

    .line 797
    .local v23, "hi2":I
    if-eqz p4, :cond_b

    .line 798
    new-instance v3, Ljava9/util/DualPivotQuicksort$Merger;

    const/4 v15, 0x0

    move-object v14, v3

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    move-object/from16 v21, v1

    invoke-direct/range {v14 .. v23}, Ljava9/util/DualPivotQuicksort$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava9/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    goto :goto_9

    .line 800
    :cond_b
    const/16 v24, 0x0

    move-object/from16 v25, v2

    move/from16 v26, v17

    move-object/from16 v27, v0

    move/from16 v28, v19

    move/from16 v29, v20

    move-object/from16 v30, v1

    move/from16 v31, v22

    move/from16 v32, v23

    invoke-static/range {v24 .. v32}, Ljava9/util/DualPivotQuicksort;->mergeParts(Ljava9/util/DualPivotQuicksort$Merger;[II[III[III)V

    .line 802
    :goto_9
    return-object v2
.end method

.method static mergeRuns([J[JIIZ[III)[J
    .locals 33
    .param p0, "a"    # [J
    .param p1, "b"    # [J
    .param p2, "offset"    # I
    .param p3, "aim"    # I
    .param p4, "parallel"    # Z
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 1513
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    sub-int v0, p7, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1514
    if-ltz v10, :cond_0

    .line 1515
    return-object v8

    .line 1517
    :cond_0
    aget v0, p5, p7

    .local v0, "i":I
    sub-int v1, v0, p2

    .local v1, "j":I
    aget v2, p5, p6

    .local v2, "low":I
    :goto_0
    if-le v0, v2, :cond_1

    .line 1518
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v8, v0

    aput-wide v3, v9, v1

    goto :goto_0

    .line 1520
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "low":I
    :cond_1
    return-object v9

    .line 1526
    :cond_2
    move/from16 v0, p6

    .local v0, "mi":I
    aget v2, p5, p6

    aget v3, p5, p7

    add-int/2addr v2, v3

    ushr-int/lit8 v11, v2, 0x1

    .line 1527
    .local v11, "rmi":I
    :goto_1
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "mi":I
    .local v12, "mi":I
    add-int/lit8 v0, v12, 0x1

    aget v0, p5, v0

    if-gt v0, v11, :cond_3

    move v0, v12

    goto :goto_1

    .line 1534
    :cond_3
    if-eqz p4, :cond_4

    sub-int v0, p7, p6

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    .line 1535
    new-instance v13, Ljava9/util/DualPivotQuicksort$RunMerger;

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move v6, v12

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[III)V

    invoke-virtual {v13}, Ljava9/util/DualPivotQuicksort$RunMerger;->forkMe()Ljava9/util/DualPivotQuicksort$RunMerger;

    move-result-object v13

    .line 1536
    .local v13, "merger":Ljava9/util/DualPivotQuicksort$RunMerger;
    neg-int v3, v10

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p6

    move v7, v12

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object v0

    .line 1537
    .local v0, "a1":[J
    invoke-virtual {v13}, Ljava9/util/DualPivotQuicksort$RunMerger;->getDestination()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    check-cast v1, [J

    .line 1538
    .end local v13    # "merger":Ljava9/util/DualPivotQuicksort$RunMerger;
    .local v1, "a2":[J
    goto :goto_2

    .line 1539
    .end local v0    # "a1":[J
    .end local v1    # "a2":[J
    :cond_4
    neg-int v3, v10

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v12

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object v13

    .line 1540
    .local v13, "a1":[J
    const/4 v3, 0x0

    move v6, v12

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object v1

    move-object v0, v13

    .line 1543
    .end local v13    # "a1":[J
    .restart local v0    # "a1":[J
    .restart local v1    # "a2":[J
    :goto_2
    if-ne v0, v8, :cond_5

    move-object v2, v9

    goto :goto_3

    :cond_5
    move-object v2, v8

    .line 1545
    .local v2, "dst":[J
    :goto_3
    if-ne v0, v8, :cond_6

    aget v3, p5, p6

    sub-int v3, v3, p2

    goto :goto_4

    :cond_6
    aget v3, p5, p6

    :goto_4
    move/from16 v17, v3

    .line 1546
    .local v17, "k":I
    if-ne v0, v9, :cond_7

    aget v3, p5, p6

    sub-int v3, v3, p2

    goto :goto_5

    :cond_7
    aget v3, p5, p6

    :goto_5
    move/from16 v19, v3

    .line 1547
    .local v19, "lo1":I
    if-ne v0, v9, :cond_8

    aget v3, p5, v12

    sub-int v3, v3, p2

    goto :goto_6

    :cond_8
    aget v3, p5, v12

    :goto_6
    move/from16 v20, v3

    .line 1548
    .local v20, "hi1":I
    if-ne v1, v9, :cond_9

    aget v3, p5, v12

    sub-int v3, v3, p2

    goto :goto_7

    :cond_9
    aget v3, p5, v12

    :goto_7
    move/from16 v22, v3

    .line 1549
    .local v22, "lo2":I
    if-ne v1, v9, :cond_a

    aget v3, p5, p7

    sub-int v3, v3, p2

    goto :goto_8

    :cond_a
    aget v3, p5, p7

    :goto_8
    move/from16 v23, v3

    .line 1551
    .local v23, "hi2":I
    if-eqz p4, :cond_b

    .line 1552
    new-instance v3, Ljava9/util/DualPivotQuicksort$Merger;

    const/4 v15, 0x0

    move-object v14, v3

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    move-object/from16 v21, v1

    invoke-direct/range {v14 .. v23}, Ljava9/util/DualPivotQuicksort$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava9/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    goto :goto_9

    .line 1554
    :cond_b
    const/16 v24, 0x0

    move-object/from16 v25, v2

    move/from16 v26, v17

    move-object/from16 v27, v0

    move/from16 v28, v19

    move/from16 v29, v20

    move-object/from16 v30, v1

    move/from16 v31, v22

    move/from16 v32, v23

    invoke-static/range {v24 .. v32}, Ljava9/util/DualPivotQuicksort;->mergeParts(Ljava9/util/DualPivotQuicksort$Merger;[JI[JII[JII)V

    .line 1556
    :goto_9
    return-object v2
.end method

.method private static mixedInsertionSort([DIII)V
    .locals 10
    .param p0, "a"    # [D
    .param p1, "low"    # I
    .param p2, "end"    # I
    .param p3, "high"    # I

    .line 3554
    if-ne p2, p3, :cond_2

    .line 3559
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 3560
    move v0, p1

    .local v0, "i":I
    aget-wide v1, p0, p1

    .line 3562
    .local v1, "ai":D
    :goto_1
    add-int/lit8 v0, v0, -0x1

    aget-wide v3, p0, v0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    .line 3563
    add-int/lit8 v3, v0, 0x1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    goto :goto_1

    .line 3565
    :cond_0
    add-int/lit8 v3, v0, 0x1

    aput-wide v1, p0, v3

    .line 3566
    .end local v0    # "i":I
    .end local v1    # "ai":D
    goto :goto_0

    :cond_1
    goto/16 :goto_d

    .line 3578
    :cond_2
    aget-wide v0, p0, p2

    .line 3580
    .local v0, "pin":D
    move v2, p3

    .local v2, "p":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_9

    .line 3581
    move v3, p1

    .local v3, "i":I
    aget-wide v4, p0, p1

    .line 3583
    .local v4, "ai":D
    add-int/lit8 v6, v3, -0x1

    aget-wide v6, p0, v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_4

    .line 3588
    add-int/lit8 v6, v3, -0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget-wide v7, p0, v6

    aput-wide v7, p0, v3

    .line 3590
    :goto_3
    add-int/lit8 v6, v6, -0x1

    aget-wide v7, p0, v6

    cmpg-double v3, v4, v7

    if-gez v3, :cond_3

    .line 3591
    add-int/lit8 v3, v6, 0x1

    aget-wide v7, p0, v6

    aput-wide v7, p0, v3

    goto :goto_3

    .line 3593
    :cond_3
    add-int/lit8 v3, v6, 0x1

    aput-wide v4, p0, v3

    goto :goto_6

    .line 3595
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_4
    if-le v2, v3, :cond_8

    cmpl-double v6, v4, v0

    if-lez v6, :cond_8

    .line 3600
    :goto_4
    add-int/lit8 v2, v2, -0x1

    aget-wide v6, p0, v2

    cmpl-double v6, v6, v0

    if-lez v6, :cond_5

    goto :goto_4

    .line 3605
    :cond_5
    if-le v2, v3, :cond_6

    .line 3606
    aget-wide v4, p0, v2

    .line 3607
    aget-wide v6, p0, v3

    aput-wide v6, p0, v2

    .line 3613
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, -0x1

    aget-wide v6, p0, v3

    cmpg-double v6, v4, v6

    if-gez v6, :cond_7

    .line 3614
    add-int/lit8 v6, v3, 0x1

    aget-wide v7, p0, v3

    aput-wide v7, p0, v6

    goto :goto_5

    .line 3616
    :cond_7
    add-int/lit8 v6, v3, 0x1

    aput-wide v4, p0, v6

    .line 3618
    .end local v3    # "i":I
    .end local v4    # "ai":D
    :cond_8
    :goto_6
    goto :goto_2

    .line 3623
    .end local v2    # "p":I
    :cond_9
    :goto_7
    if-ge p1, p3, :cond_10

    .line 3624
    move v2, p1

    .local v2, "i":I
    aget-wide v3, p0, p1

    .local v3, "a1":D
    add-int/lit8 p1, p1, 0x1

    aget-wide v5, p0, p1

    .line 3631
    .local v5, "a2":D
    cmpl-double v7, v3, v5

    if-lez v7, :cond_c

    .line 3633
    :goto_8
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmpg-double v7, v3, v7

    if-gez v7, :cond_a

    .line 3634
    add-int/lit8 v7, v2, 0x2

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_8

    .line 3636
    :cond_a
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aput-wide v3, p0, v7

    .line 3638
    :goto_9
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmpg-double v7, v5, v7

    if-gez v7, :cond_b

    .line 3639
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_9

    .line 3641
    :cond_b
    add-int/lit8 v7, v2, 0x1

    aput-wide v5, p0, v7

    goto :goto_c

    .line 3643
    :cond_c
    add-int/lit8 v7, v2, -0x1

    aget-wide v7, p0, v7

    cmpg-double v7, v3, v7

    if-gez v7, :cond_f

    .line 3645
    :goto_a
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmpg-double v7, v5, v7

    if-gez v7, :cond_d

    .line 3646
    add-int/lit8 v7, v2, 0x2

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_a

    .line 3648
    :cond_d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aput-wide v5, p0, v7

    .line 3650
    :goto_b
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmpg-double v7, v3, v7

    if-gez v7, :cond_e

    .line 3651
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_b

    .line 3653
    :cond_e
    add-int/lit8 v7, v2, 0x1

    aput-wide v3, p0, v7

    .line 3623
    .end local v3    # "a1":D
    .end local v5    # "a2":D
    :cond_f
    :goto_c
    nop

    .end local v2    # "i":I
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 3657
    .end local v0    # "pin":D
    :cond_10
    :goto_d
    return-void
.end method

.method private static mixedInsertionSort([FIII)V
    .locals 6
    .param p0, "a"    # [F
    .param p1, "low"    # I
    .param p2, "end"    # I
    .param p3, "high"    # I

    .line 2748
    if-ne p2, p3, :cond_2

    .line 2753
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 2754
    move v0, p1

    .local v0, "i":I
    aget v1, p0, p1

    .line 2756
    .local v1, "ai":F
    :goto_1
    add-int/lit8 v0, v0, -0x1

    aget v2, p0, v0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 2757
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v0

    aput v3, p0, v2

    goto :goto_1

    .line 2759
    :cond_0
    add-int/lit8 v2, v0, 0x1

    aput v1, p0, v2

    .line 2760
    .end local v0    # "i":I
    .end local v1    # "ai":F
    goto :goto_0

    :cond_1
    goto/16 :goto_d

    .line 2772
    :cond_2
    aget v0, p0, p2

    .line 2774
    .local v0, "pin":F
    move v1, p3

    .local v1, "p":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_9

    .line 2775
    move v2, p1

    .local v2, "i":I
    aget v3, p0, p1

    .line 2777
    .local v3, "ai":F
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    .line 2782
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget v5, p0, v4

    aput v5, p0, v2

    .line 2784
    :goto_3
    add-int/lit8 v4, v4, -0x1

    aget v2, p0, v4

    cmpg-float v2, v3, v2

    if-gez v2, :cond_3

    .line 2785
    add-int/lit8 v2, v4, 0x1

    aget v5, p0, v4

    aput v5, p0, v2

    goto :goto_3

    .line 2787
    :cond_3
    add-int/lit8 v2, v4, 0x1

    aput v3, p0, v2

    goto :goto_6

    .line 2789
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_4
    if-le v1, v2, :cond_8

    cmpl-float v4, v3, v0

    if-lez v4, :cond_8

    .line 2794
    :goto_4
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_5

    goto :goto_4

    .line 2799
    :cond_5
    if-le v1, v2, :cond_6

    .line 2800
    aget v3, p0, v1

    .line 2801
    aget v4, p0, v2

    aput v4, p0, v1

    .line 2807
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, -0x1

    aget v4, p0, v2

    cmpg-float v4, v3, v4

    if-gez v4, :cond_7

    .line 2808
    add-int/lit8 v4, v2, 0x1

    aget v5, p0, v2

    aput v5, p0, v4

    goto :goto_5

    .line 2810
    :cond_7
    add-int/lit8 v4, v2, 0x1

    aput v3, p0, v4

    .line 2812
    .end local v2    # "i":I
    .end local v3    # "ai":F
    :cond_8
    :goto_6
    goto :goto_2

    .line 2817
    .end local v1    # "p":I
    :cond_9
    :goto_7
    if-ge p1, p3, :cond_10

    .line 2818
    move v1, p1

    .local v1, "i":I
    aget v2, p0, p1

    .local v2, "a1":F
    add-int/lit8 p1, p1, 0x1

    aget v3, p0, p1

    .line 2825
    .local v3, "a2":F
    cmpl-float v4, v2, v3

    if-lez v4, :cond_c

    .line 2827
    :goto_8
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_a

    .line 2828
    add-int/lit8 v4, v1, 0x2

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_8

    .line 2830
    :cond_a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v2, p0, v4

    .line 2832
    :goto_9
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_b

    .line 2833
    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_9

    .line 2835
    :cond_b
    add-int/lit8 v4, v1, 0x1

    aput v3, p0, v4

    goto :goto_c

    .line 2837
    :cond_c
    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_f

    .line 2839
    :goto_a
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_d

    .line 2840
    add-int/lit8 v4, v1, 0x2

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_a

    .line 2842
    :cond_d
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v3, p0, v4

    .line 2844
    :goto_b
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_e

    .line 2845
    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_b

    .line 2847
    :cond_e
    add-int/lit8 v4, v1, 0x1

    aput v2, p0, v4

    .line 2817
    .end local v2    # "a1":F
    .end local v3    # "a2":F
    :cond_f
    :goto_c
    nop

    .end local v1    # "i":I
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 2851
    .end local v0    # "pin":F
    :cond_10
    :goto_d
    return-void
.end method

.method private static mixedInsertionSort([IIII)V
    .locals 6
    .param p0, "a"    # [I
    .param p1, "low"    # I
    .param p2, "end"    # I
    .param p3, "high"    # I

    .line 453
    if-ne p2, p3, :cond_2

    .line 458
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 459
    move v0, p1

    .local v0, "i":I
    aget v1, p0, p1

    .line 461
    .local v1, "ai":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    aget v2, p0, v0

    if-ge v1, v2, :cond_0

    .line 462
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v0

    aput v3, p0, v2

    goto :goto_1

    .line 464
    :cond_0
    add-int/lit8 v2, v0, 0x1

    aput v1, p0, v2

    .line 465
    .end local v0    # "i":I
    .end local v1    # "ai":I
    goto :goto_0

    :cond_1
    goto/16 :goto_d

    .line 477
    :cond_2
    aget v0, p0, p2

    .line 479
    .local v0, "pin":I
    move v1, p3

    .local v1, "p":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_9

    .line 480
    move v2, p1

    .local v2, "i":I
    aget v3, p0, p1

    .line 482
    .local v3, "ai":I
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    if-ge v3, v4, :cond_4

    .line 487
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget v5, p0, v4

    aput v5, p0, v2

    .line 489
    :goto_3
    add-int/lit8 v4, v4, -0x1

    aget v2, p0, v4

    if-ge v3, v2, :cond_3

    .line 490
    add-int/lit8 v2, v4, 0x1

    aget v5, p0, v4

    aput v5, p0, v2

    goto :goto_3

    .line 492
    :cond_3
    add-int/lit8 v2, v4, 0x1

    aput v3, p0, v2

    goto :goto_6

    .line 494
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_4
    if-le v1, v2, :cond_8

    if-le v3, v0, :cond_8

    .line 499
    :goto_4
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-le v4, v0, :cond_5

    goto :goto_4

    .line 504
    :cond_5
    if-le v1, v2, :cond_6

    .line 505
    aget v3, p0, v1

    .line 506
    aget v4, p0, v2

    aput v4, p0, v1

    .line 512
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, -0x1

    aget v4, p0, v2

    if-ge v3, v4, :cond_7

    .line 513
    add-int/lit8 v4, v2, 0x1

    aget v5, p0, v2

    aput v5, p0, v4

    goto :goto_5

    .line 515
    :cond_7
    add-int/lit8 v4, v2, 0x1

    aput v3, p0, v4

    .line 517
    .end local v2    # "i":I
    .end local v3    # "ai":I
    :cond_8
    :goto_6
    goto :goto_2

    .line 522
    .end local v1    # "p":I
    :cond_9
    :goto_7
    if-ge p1, p3, :cond_10

    .line 523
    move v1, p1

    .local v1, "i":I
    aget v2, p0, p1

    .local v2, "a1":I
    add-int/lit8 p1, p1, 0x1

    aget v3, p0, p1

    .line 530
    .local v3, "a2":I
    if-le v2, v3, :cond_c

    .line 532
    :goto_8
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-ge v2, v4, :cond_a

    .line 533
    add-int/lit8 v4, v1, 0x2

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_8

    .line 535
    :cond_a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v2, p0, v4

    .line 537
    :goto_9
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-ge v3, v4, :cond_b

    .line 538
    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_9

    .line 540
    :cond_b
    add-int/lit8 v4, v1, 0x1

    aput v3, p0, v4

    goto :goto_c

    .line 542
    :cond_c
    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    if-ge v2, v4, :cond_f

    .line 544
    :goto_a
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-ge v3, v4, :cond_d

    .line 545
    add-int/lit8 v4, v1, 0x2

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_a

    .line 547
    :cond_d
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v3, p0, v4

    .line 549
    :goto_b
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-ge v2, v4, :cond_e

    .line 550
    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_b

    .line 552
    :cond_e
    add-int/lit8 v4, v1, 0x1

    aput v2, p0, v4

    .line 522
    .end local v2    # "a1":I
    .end local v3    # "a2":I
    :cond_f
    :goto_c
    nop

    .end local v1    # "i":I
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 556
    .end local v0    # "pin":I
    :cond_10
    :goto_d
    return-void
.end method

.method private static mixedInsertionSort([JIII)V
    .locals 10
    .param p0, "a"    # [J
    .param p1, "low"    # I
    .param p2, "end"    # I
    .param p3, "high"    # I

    .line 1207
    if-ne p2, p3, :cond_2

    .line 1212
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 1213
    move v0, p1

    .local v0, "i":I
    aget-wide v1, p0, p1

    .line 1215
    .local v1, "ai":J
    :goto_1
    add-int/lit8 v0, v0, -0x1

    aget-wide v3, p0, v0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1216
    add-int/lit8 v3, v0, 0x1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    goto :goto_1

    .line 1218
    :cond_0
    add-int/lit8 v3, v0, 0x1

    aput-wide v1, p0, v3

    .line 1219
    .end local v0    # "i":I
    .end local v1    # "ai":J
    goto :goto_0

    :cond_1
    goto/16 :goto_d

    .line 1231
    :cond_2
    aget-wide v0, p0, p2

    .line 1233
    .local v0, "pin":J
    move v2, p3

    .local v2, "p":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_9

    .line 1234
    move v3, p1

    .local v3, "i":I
    aget-wide v4, p0, p1

    .line 1236
    .local v4, "ai":J
    add-int/lit8 v6, v3, -0x1

    aget-wide v6, p0, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 1241
    add-int/lit8 v6, v3, -0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget-wide v7, p0, v6

    aput-wide v7, p0, v3

    .line 1243
    :goto_3
    add-int/lit8 v6, v6, -0x1

    aget-wide v7, p0, v6

    cmp-long v3, v4, v7

    if-gez v3, :cond_3

    .line 1244
    add-int/lit8 v3, v6, 0x1

    aget-wide v7, p0, v6

    aput-wide v7, p0, v3

    goto :goto_3

    .line 1246
    :cond_3
    add-int/lit8 v3, v6, 0x1

    aput-wide v4, p0, v3

    goto :goto_6

    .line 1248
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_4
    if-le v2, v3, :cond_8

    cmp-long v6, v4, v0

    if-lez v6, :cond_8

    .line 1253
    :goto_4
    add-int/lit8 v2, v2, -0x1

    aget-wide v6, p0, v2

    cmp-long v6, v6, v0

    if-lez v6, :cond_5

    goto :goto_4

    .line 1258
    :cond_5
    if-le v2, v3, :cond_6

    .line 1259
    aget-wide v4, p0, v2

    .line 1260
    aget-wide v6, p0, v3

    aput-wide v6, p0, v2

    .line 1266
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, -0x1

    aget-wide v6, p0, v3

    cmp-long v6, v4, v6

    if-gez v6, :cond_7

    .line 1267
    add-int/lit8 v6, v3, 0x1

    aget-wide v7, p0, v3

    aput-wide v7, p0, v6

    goto :goto_5

    .line 1269
    :cond_7
    add-int/lit8 v6, v3, 0x1

    aput-wide v4, p0, v6

    .line 1271
    .end local v3    # "i":I
    .end local v4    # "ai":J
    :cond_8
    :goto_6
    goto :goto_2

    .line 1276
    .end local v2    # "p":I
    :cond_9
    :goto_7
    if-ge p1, p3, :cond_10

    .line 1277
    move v2, p1

    .local v2, "i":I
    aget-wide v3, p0, p1

    .local v3, "a1":J
    add-int/lit8 p1, p1, 0x1

    aget-wide v5, p0, p1

    .line 1284
    .local v5, "a2":J
    cmp-long v7, v3, v5

    if-lez v7, :cond_c

    .line 1286
    :goto_8
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmp-long v7, v3, v7

    if-gez v7, :cond_a

    .line 1287
    add-int/lit8 v7, v2, 0x2

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_8

    .line 1289
    :cond_a
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aput-wide v3, p0, v7

    .line 1291
    :goto_9
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmp-long v7, v5, v7

    if-gez v7, :cond_b

    .line 1292
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_9

    .line 1294
    :cond_b
    add-int/lit8 v7, v2, 0x1

    aput-wide v5, p0, v7

    goto :goto_c

    .line 1296
    :cond_c
    add-int/lit8 v7, v2, -0x1

    aget-wide v7, p0, v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_f

    .line 1298
    :goto_a
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmp-long v7, v5, v7

    if-gez v7, :cond_d

    .line 1299
    add-int/lit8 v7, v2, 0x2

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_a

    .line 1301
    :cond_d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aput-wide v5, p0, v7

    .line 1303
    :goto_b
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmp-long v7, v3, v7

    if-gez v7, :cond_e

    .line 1304
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_b

    .line 1306
    :cond_e
    add-int/lit8 v7, v2, 0x1

    aput-wide v3, p0, v7

    .line 1276
    .end local v3    # "a1":J
    .end local v5    # "a2":J
    :cond_f
    :goto_c
    nop

    .end local v2    # "i":I
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 1310
    .end local v0    # "pin":J
    :cond_10
    :goto_d
    return-void
.end method

.method private static pushDown([DIDII)V
    .locals 5
    .param p0, "a"    # [D
    .param p1, "p"    # I
    .param p2, "value"    # D
    .param p4, "low"    # I
    .param p5, "high"    # I

    .line 3708
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    sub-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    .line 3710
    .local v0, "k":I
    if-le v0, p5, :cond_0

    .line 3711
    goto :goto_1

    .line 3713
    :cond_0
    if-eq v0, p5, :cond_1

    aget-wide v1, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, p0, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 3714
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 3716
    :cond_2
    aget-wide v1, p0, v0

    cmpg-double v1, v1, p2

    if-gtz v1, :cond_3

    .line 3717
    nop

    .line 3720
    .end local v0    # "k":I
    :goto_1
    aput-wide p2, p0, p1

    .line 3721
    return-void

    .line 3707
    .restart local v0    # "k":I
    :cond_3
    move v1, v0

    .end local p1    # "p":I
    .local v1, "p":I
    aget-wide v2, p0, v0

    aput-wide v2, p0, p1

    move p1, v1

    goto :goto_0
.end method

.method private static pushDown([FIFII)V
    .locals 3
    .param p0, "a"    # [F
    .param p1, "p"    # I
    .param p2, "value"    # F
    .param p3, "low"    # I
    .param p4, "high"    # I

    .line 2902
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 2904
    .local v0, "k":I
    if-le v0, p4, :cond_0

    .line 2905
    goto :goto_1

    .line 2907
    :cond_0
    if-eq v0, p4, :cond_1

    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 2908
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 2910
    :cond_2
    aget v1, p0, v0

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_3

    .line 2911
    nop

    .line 2914
    .end local v0    # "k":I
    :goto_1
    aput p2, p0, p1

    .line 2915
    return-void

    .line 2901
    .restart local v0    # "k":I
    :cond_3
    move v1, v0

    .end local p1    # "p":I
    .local v1, "p":I
    aget v2, p0, v0

    aput v2, p0, p1

    move p1, v1

    goto :goto_0
.end method

.method private static pushDown([IIIII)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "p"    # I
    .param p2, "value"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    .line 607
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 609
    .local v0, "k":I
    if-le v0, p4, :cond_0

    .line 610
    goto :goto_1

    .line 612
    :cond_0
    if-eq v0, p4, :cond_1

    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-ge v1, v2, :cond_2

    .line 613
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 615
    :cond_2
    aget v1, p0, v0

    if-gt v1, p2, :cond_3

    .line 616
    nop

    .line 619
    .end local v0    # "k":I
    :goto_1
    aput p2, p0, p1

    .line 620
    return-void

    .line 606
    .restart local v0    # "k":I
    :cond_3
    move v1, v0

    .end local p1    # "p":I
    .local v1, "p":I
    aget v2, p0, v0

    aput v2, p0, p1

    move p1, v1

    goto :goto_0
.end method

.method private static pushDown([JIJII)V
    .locals 5
    .param p0, "a"    # [J
    .param p1, "p"    # I
    .param p2, "value"    # J
    .param p4, "low"    # I
    .param p5, "high"    # I

    .line 1361
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    sub-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    .line 1363
    .local v0, "k":I
    if-le v0, p5, :cond_0

    .line 1364
    goto :goto_1

    .line 1366
    :cond_0
    if-eq v0, p5, :cond_1

    aget-wide v1, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, p0, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1367
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 1369
    :cond_2
    aget-wide v1, p0, v0

    cmp-long v1, v1, p2

    if-gtz v1, :cond_3

    .line 1370
    nop

    .line 1373
    .end local v0    # "k":I
    :goto_1
    aput-wide p2, p0, p1

    .line 1374
    return-void

    .line 1360
    .restart local v0    # "k":I
    :cond_3
    move v1, v0

    .end local p1    # "p":I
    .local v1, "p":I
    aget-wide v2, p0, v0

    aput-wide v2, p0, p1

    move p1, v1

    goto :goto_0
.end method

.method static sort(Ljava9/util/DualPivotQuicksort$Sorter;[DIII)V
    .locals 28
    .param p0, "sorter"    # Ljava9/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [D
    .param p2, "bits"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    .line 3282
    .end local p2    # "bits":I
    .end local p4    # "high":I
    .local v3, "bits":I
    .local v4, "high":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .local v5, "end":I
    sub-int v6, v4, v2

    .line 3287
    .local v6, "size":I
    add-int/lit8 v7, v3, 0x41

    if-ge v6, v7, :cond_0

    and-int/lit8 v7, v3, 0x1

    if-lez v7, :cond_0

    .line 3288
    shr-int/lit8 v7, v6, 0x5

    shl-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    sub-int v7, v4, v7

    invoke-static {v1, v2, v7, v4}, Ljava9/util/DualPivotQuicksort;->mixedInsertionSort([DIII)V

    .line 3289
    return-void

    .line 3295
    :cond_0
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_1

    .line 3296
    invoke-static {v1, v2, v4}, Ljava9/util/DualPivotQuicksort;->insertionSort([DII)V

    .line 3297
    return-void

    .line 3304
    :cond_1
    const/16 v7, 0x1000

    if-eqz v3, :cond_2

    if-le v6, v7, :cond_3

    and-int/lit8 v8, v3, 0x1

    if-lez v8, :cond_3

    .line 3305
    :cond_2
    invoke-static {v0, v1, v2, v6}, Ljava9/util/DualPivotQuicksort;->tryMergeRuns(Ljava9/util/DualPivotQuicksort$Sorter;[DII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3306
    return-void

    .line 3313
    :cond_3
    add-int/lit8 v3, v3, 0x6

    const/16 v8, 0x180

    if-le v3, v8, :cond_4

    .line 3314
    invoke-static {v1, v2, v4}, Ljava9/util/DualPivotQuicksort;->heapSort([DII)V

    .line 3315
    return-void

    .line 3322
    :cond_4
    shr-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    .line 3330
    .local v8, "step":I
    add-int v9, v2, v8

    .line 3331
    .local v9, "e1":I
    sub-int v10, v5, v8

    .line 3332
    .local v10, "e5":I
    add-int v11, v9, v10

    ushr-int/lit8 v11, v11, 0x1

    .line 3333
    .local v11, "e3":I
    add-int v12, v9, v11

    ushr-int/lit8 v12, v12, 0x1

    .line 3334
    .local v12, "e2":I
    add-int v13, v11, v10

    ushr-int/lit8 v13, v13, 0x1

    .line 3335
    .local v13, "e4":I
    aget-wide v14, v1, v11

    .line 3349
    .local v14, "a3":D
    aget-wide v16, v1, v10

    aget-wide v18, v1, v12

    cmpg-double v16, v16, v18

    if-gez v16, :cond_5

    aget-wide v16, v1, v10

    .local v16, "t":D
    aget-wide v18, v1, v12

    aput-wide v18, v1, v10

    aput-wide v16, v1, v12

    .line 3350
    .end local v16    # "t":D
    :cond_5
    aget-wide v16, v1, v13

    aget-wide v18, v1, v9

    cmpg-double v16, v16, v18

    if-gez v16, :cond_6

    aget-wide v16, v1, v13

    .restart local v16    # "t":D
    aget-wide v18, v1, v9

    aput-wide v18, v1, v13

    aput-wide v16, v1, v9

    .line 3351
    .end local v16    # "t":D
    :cond_6
    aget-wide v16, v1, v10

    aget-wide v18, v1, v13

    cmpg-double v16, v16, v18

    if-gez v16, :cond_7

    aget-wide v16, v1, v10

    .restart local v16    # "t":D
    aget-wide v18, v1, v13

    aput-wide v18, v1, v10

    aput-wide v16, v1, v13

    .line 3352
    .end local v16    # "t":D
    :cond_7
    aget-wide v16, v1, v12

    aget-wide v18, v1, v9

    cmpg-double v16, v16, v18

    if-gez v16, :cond_8

    aget-wide v16, v1, v12

    .restart local v16    # "t":D
    aget-wide v18, v1, v9

    aput-wide v18, v1, v12

    aput-wide v16, v1, v9

    .line 3353
    .end local v16    # "t":D
    :cond_8
    aget-wide v16, v1, v13

    aget-wide v18, v1, v12

    cmpg-double v16, v16, v18

    if-gez v16, :cond_9

    aget-wide v16, v1, v13

    .restart local v16    # "t":D
    aget-wide v18, v1, v12

    aput-wide v18, v1, v13

    aput-wide v16, v1, v12

    .line 3355
    .end local v16    # "t":D
    :cond_9
    aget-wide v16, v1, v12

    cmpg-double v16, v14, v16

    if-gez v16, :cond_b

    .line 3356
    aget-wide v16, v1, v9

    cmpg-double v16, v14, v16

    if-gez v16, :cond_a

    .line 3357
    aget-wide v16, v1, v12

    aput-wide v16, v1, v11

    aget-wide v16, v1, v9

    aput-wide v16, v1, v12

    aput-wide v14, v1, v9

    goto :goto_1

    .line 3359
    :cond_a
    aget-wide v16, v1, v12

    aput-wide v16, v1, v11

    aput-wide v14, v1, v12

    goto :goto_1

    .line 3361
    :cond_b
    aget-wide v16, v1, v13

    cmpl-double v16, v14, v16

    if-lez v16, :cond_d

    .line 3362
    aget-wide v16, v1, v10

    cmpl-double v16, v14, v16

    if-lez v16, :cond_c

    .line 3363
    aget-wide v16, v1, v13

    aput-wide v16, v1, v11

    aget-wide v16, v1, v10

    aput-wide v16, v1, v13

    aput-wide v14, v1, v10

    goto :goto_1

    .line 3365
    :cond_c
    aget-wide v16, v1, v13

    aput-wide v16, v1, v11

    aput-wide v14, v1, v13

    .line 3370
    :cond_d
    :goto_1
    move/from16 v16, p3

    .line 3371
    .local v16, "lower":I
    move/from16 v17, v5

    .line 3376
    .local v17, "upper":I
    aget-wide v18, v1, v9

    aget-wide v20, v1, v12

    cmpg-double v18, v18, v20

    if-gez v18, :cond_16

    aget-wide v18, v1, v12

    aget-wide v20, v1, v11

    cmpg-double v18, v18, v20

    if-gez v18, :cond_16

    aget-wide v18, v1, v11

    aget-wide v20, v1, v13

    cmpg-double v18, v18, v20

    if-gez v18, :cond_16

    aget-wide v18, v1, v13

    aget-wide v20, v1, v10

    cmpg-double v18, v18, v20

    if-gez v18, :cond_16

    .line 3383
    aget-wide v18, v1, v9

    .line 3384
    .local v18, "pivot1":D
    aget-wide v20, v1, v10

    .line 3393
    .local v20, "pivot2":D
    aget-wide v22, v1, v16

    aput-wide v22, v1, v9

    .line 3394
    aget-wide v22, v1, v17

    aput-wide v22, v1, v10

    .line 3399
    :goto_2
    add-int/lit8 v16, v16, 0x1

    aget-wide v22, v1, v16

    cmpg-double v22, v22, v18

    if-gez v22, :cond_e

    goto :goto_2

    .line 3400
    :cond_e
    :goto_3
    add-int/lit8 v17, v17, -0x1

    aget-wide v22, v1, v17

    cmpl-double v22, v22, v20

    if-lez v22, :cond_f

    goto :goto_3

    .line 3421
    :cond_f
    add-int/lit8 v16, v16, -0x1

    move/from16 v22, v16

    .local v22, "unused":I
    add-int/lit8 v17, v17, 0x1

    move/from16 v23, v17

    move/from16 p4, v8

    move/from16 v7, v16

    move/from16 v8, v17

    .end local v16    # "lower":I
    .end local v17    # "upper":I
    .local v7, "lower":I
    .local v8, "upper":I
    .local v23, "k":I
    .local p4, "step":I
    :goto_4
    move/from16 v24, v9

    .end local v9    # "e1":I
    .local v24, "e1":I
    add-int/lit8 v9, v23, -0x1

    .end local v23    # "k":I
    .local v9, "k":I
    if-le v9, v7, :cond_14

    .line 3422
    aget-wide v16, v1, v9

    .line 3424
    .local v16, "ak":D
    cmpg-double v23, v16, v18

    if-gez v23, :cond_12

    .line 3425
    :cond_10
    if-ge v7, v9, :cond_13

    .line 3426
    add-int/lit8 v7, v7, 0x1

    aget-wide v25, v1, v7

    cmpl-double v23, v25, v18

    if-ltz v23, :cond_10

    .line 3427
    aget-wide v25, v1, v7

    cmpl-double v23, v25, v20

    if-lez v23, :cond_11

    .line 3428
    add-int/lit8 v8, v8, -0x1

    aget-wide v25, v1, v8

    aput-wide v25, v1, v9

    .line 3429
    aget-wide v25, v1, v7

    aput-wide v25, v1, v8

    goto :goto_5

    .line 3431
    :cond_11
    aget-wide v25, v1, v7

    aput-wide v25, v1, v9

    .line 3433
    :goto_5
    aput-wide v16, v1, v7

    .line 3434
    goto :goto_6

    .line 3437
    :cond_12
    cmpl-double v23, v16, v20

    if-lez v23, :cond_13

    .line 3438
    add-int/lit8 v8, v8, -0x1

    aget-wide v25, v1, v8

    aput-wide v25, v1, v9

    .line 3439
    aput-wide v16, v1, v8

    .line 3441
    .end local v16    # "ak":D
    :cond_13
    :goto_6
    move/from16 v23, v9

    move/from16 v9, v24

    goto :goto_4

    .line 3446
    .end local v9    # "k":I
    .end local v22    # "unused":I
    :cond_14
    aget-wide v16, v1, v7

    aput-wide v16, v1, v2

    aput-wide v18, v1, v7

    .line 3447
    aget-wide v16, v1, v8

    aput-wide v16, v1, v5

    aput-wide v20, v1, v8

    .line 3453
    const/16 v9, 0x1000

    if-le v6, v9, :cond_15

    if-eqz v0, :cond_15

    .line 3454
    or-int/lit8 v9, v3, 0x1

    move/from16 v22, v5

    .end local v5    # "end":I
    .local v22, "end":I
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v9, v5, v8}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    .line 3455
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v5, v9, v4}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    goto :goto_7

    .line 3453
    .end local v22    # "end":I
    .restart local v5    # "end":I
    :cond_15
    move/from16 v22, v5

    .line 3457
    .end local v5    # "end":I
    .restart local v22    # "end":I
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v9, v7, 0x1

    invoke-static {v0, v1, v5, v9, v8}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 3458
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v9, v8, 0x1

    invoke-static {v0, v1, v5, v9, v4}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 3461
    .end local v18    # "pivot1":D
    .end local v20    # "pivot2":D
    :goto_7
    move/from16 v16, v10

    goto :goto_c

    .line 3376
    .end local v7    # "lower":I
    .end local v22    # "end":I
    .end local v24    # "e1":I
    .end local p4    # "step":I
    .restart local v5    # "end":I
    .local v8, "step":I
    .local v9, "e1":I
    .local v16, "lower":I
    .restart local v17    # "upper":I
    :cond_16
    move/from16 v22, v5

    move/from16 p4, v8

    move/from16 v24, v9

    .line 3467
    .end local v5    # "end":I
    .end local v8    # "step":I
    .end local v9    # "e1":I
    .restart local v22    # "end":I
    .restart local v24    # "e1":I
    .restart local p4    # "step":I
    aget-wide v7, v1, v11

    .line 3476
    .local v7, "pivot":D
    aget-wide v18, v1, v16

    aput-wide v18, v1, v11

    .line 3497
    add-int/lit8 v17, v17, 0x1

    move/from16 v5, v17

    move/from16 v9, v17

    move/from16 v27, v16

    move/from16 v16, v10

    move/from16 v10, v27

    .end local v17    # "upper":I
    .local v5, "k":I
    .local v9, "upper":I
    .local v10, "lower":I
    .local v16, "e5":I
    :goto_8
    add-int/lit8 v5, v5, -0x1

    if-le v5, v10, :cond_1b

    .line 3498
    aget-wide v17, v1, v5

    .line 3500
    .local v17, "ak":D
    cmpl-double v19, v17, v7

    if-eqz v19, :cond_1a

    .line 3501
    aput-wide v7, v1, v5

    .line 3503
    cmpg-double v19, v17, v7

    if-gez v19, :cond_19

    .line 3504
    :goto_9
    add-int/lit8 v10, v10, 0x1

    aget-wide v19, v1, v10

    cmpg-double v19, v19, v7

    if-gez v19, :cond_17

    goto :goto_9

    .line 3506
    :cond_17
    aget-wide v19, v1, v10

    cmpl-double v19, v19, v7

    if-lez v19, :cond_18

    .line 3507
    add-int/lit8 v9, v9, -0x1

    aget-wide v19, v1, v10

    aput-wide v19, v1, v9

    .line 3509
    :cond_18
    aput-wide v17, v1, v10

    goto :goto_a

    .line 3511
    :cond_19
    add-int/lit8 v9, v9, -0x1

    aput-wide v17, v1, v9

    .line 3514
    .end local v17    # "ak":D
    :cond_1a
    :goto_a
    goto :goto_8

    .line 3519
    .end local v5    # "k":I
    :cond_1b
    aget-wide v17, v1, v10

    aput-wide v17, v1, v2

    aput-wide v7, v1, v10

    .line 3526
    const/16 v5, 0x1000

    if-le v6, v5, :cond_1c

    if-eqz v0, :cond_1c

    .line 3527
    or-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5, v9, v4}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    goto :goto_b

    .line 3529
    :cond_1c
    or-int/lit8 v5, v3, 0x1

    invoke-static {v0, v1, v5, v9, v4}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 3532
    .end local v7    # "pivot":D
    :goto_b
    move v8, v9

    move v7, v10

    .end local v9    # "upper":I
    .end local v10    # "lower":I
    .local v7, "lower":I
    .local v8, "upper":I
    :goto_c
    move v4, v7

    .line 3533
    .end local v6    # "size":I
    .end local v7    # "lower":I
    .end local v8    # "upper":I
    .end local v11    # "e3":I
    .end local v12    # "e2":I
    .end local v13    # "e4":I
    .end local v14    # "a3":D
    .end local v16    # "e5":I
    .end local v22    # "end":I
    .end local v24    # "e1":I
    .end local p4    # "step":I
    goto/16 :goto_0
.end method

.method static sort(Ljava9/util/DualPivotQuicksort$Sorter;[FIII)V
    .locals 21
    .param p0, "sorter"    # Ljava9/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [F
    .param p2, "bits"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    .line 2476
    .end local p2    # "bits":I
    .end local p4    # "high":I
    .local v3, "bits":I
    .local v4, "high":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .local v5, "end":I
    sub-int v6, v4, v2

    .line 2481
    .local v6, "size":I
    add-int/lit8 v7, v3, 0x41

    if-ge v6, v7, :cond_0

    and-int/lit8 v7, v3, 0x1

    if-lez v7, :cond_0

    .line 2482
    shr-int/lit8 v7, v6, 0x5

    shl-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    sub-int v7, v4, v7

    invoke-static {v1, v2, v7, v4}, Ljava9/util/DualPivotQuicksort;->mixedInsertionSort([FIII)V

    .line 2483
    return-void

    .line 2489
    :cond_0
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_1

    .line 2490
    invoke-static {v1, v2, v4}, Ljava9/util/DualPivotQuicksort;->insertionSort([FII)V

    .line 2491
    return-void

    .line 2498
    :cond_1
    const/16 v7, 0x1000

    if-eqz v3, :cond_2

    if-le v6, v7, :cond_3

    and-int/lit8 v8, v3, 0x1

    if-lez v8, :cond_3

    .line 2499
    :cond_2
    invoke-static {v0, v1, v2, v6}, Ljava9/util/DualPivotQuicksort;->tryMergeRuns(Ljava9/util/DualPivotQuicksort$Sorter;[FII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2500
    return-void

    .line 2507
    :cond_3
    add-int/lit8 v3, v3, 0x6

    const/16 v8, 0x180

    if-le v3, v8, :cond_4

    .line 2508
    invoke-static {v1, v2, v4}, Ljava9/util/DualPivotQuicksort;->heapSort([FII)V

    .line 2509
    return-void

    .line 2516
    :cond_4
    shr-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    .line 2524
    .local v8, "step":I
    add-int v9, v2, v8

    .line 2525
    .local v9, "e1":I
    sub-int v10, v5, v8

    .line 2526
    .local v10, "e5":I
    add-int v11, v9, v10

    ushr-int/lit8 v11, v11, 0x1

    .line 2527
    .local v11, "e3":I
    add-int v12, v9, v11

    ushr-int/lit8 v12, v12, 0x1

    .line 2528
    .local v12, "e2":I
    add-int v13, v11, v10

    ushr-int/lit8 v13, v13, 0x1

    .line 2529
    .local v13, "e4":I
    aget v14, v1, v11

    .line 2543
    .local v14, "a3":F
    aget v15, v1, v10

    aget v16, v1, v12

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    aget v15, v1, v10

    .local v15, "t":F
    aget v16, v1, v12

    aput v16, v1, v10

    aput v15, v1, v12

    .line 2544
    .end local v15    # "t":F
    :cond_5
    aget v15, v1, v13

    aget v16, v1, v9

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6

    aget v15, v1, v13

    .restart local v15    # "t":F
    aget v16, v1, v9

    aput v16, v1, v13

    aput v15, v1, v9

    .line 2545
    .end local v15    # "t":F
    :cond_6
    aget v15, v1, v10

    aget v16, v1, v13

    cmpg-float v15, v15, v16

    if-gez v15, :cond_7

    aget v15, v1, v10

    .restart local v15    # "t":F
    aget v16, v1, v13

    aput v16, v1, v10

    aput v15, v1, v13

    .line 2546
    .end local v15    # "t":F
    :cond_7
    aget v15, v1, v12

    aget v16, v1, v9

    cmpg-float v15, v15, v16

    if-gez v15, :cond_8

    aget v15, v1, v12

    .restart local v15    # "t":F
    aget v16, v1, v9

    aput v16, v1, v12

    aput v15, v1, v9

    .line 2547
    .end local v15    # "t":F
    :cond_8
    aget v15, v1, v13

    aget v16, v1, v12

    cmpg-float v15, v15, v16

    if-gez v15, :cond_9

    aget v15, v1, v13

    .restart local v15    # "t":F
    aget v16, v1, v12

    aput v16, v1, v13

    aput v15, v1, v12

    .line 2549
    .end local v15    # "t":F
    :cond_9
    aget v15, v1, v12

    cmpg-float v15, v14, v15

    if-gez v15, :cond_b

    .line 2550
    aget v15, v1, v9

    cmpg-float v15, v14, v15

    if-gez v15, :cond_a

    .line 2551
    aget v15, v1, v12

    aput v15, v1, v11

    aget v15, v1, v9

    aput v15, v1, v12

    aput v14, v1, v9

    goto :goto_1

    .line 2553
    :cond_a
    aget v15, v1, v12

    aput v15, v1, v11

    aput v14, v1, v12

    goto :goto_1

    .line 2555
    :cond_b
    aget v15, v1, v13

    cmpl-float v15, v14, v15

    if-lez v15, :cond_d

    .line 2556
    aget v15, v1, v10

    cmpl-float v15, v14, v15

    if-lez v15, :cond_c

    .line 2557
    aget v15, v1, v13

    aput v15, v1, v11

    aget v15, v1, v10

    aput v15, v1, v13

    aput v14, v1, v10

    goto :goto_1

    .line 2559
    :cond_c
    aget v15, v1, v13

    aput v15, v1, v11

    aput v14, v1, v13

    .line 2564
    :cond_d
    :goto_1
    move/from16 v15, p3

    .line 2565
    .local v15, "lower":I
    move/from16 v16, v5

    .line 2570
    .local v16, "upper":I
    aget v17, v1, v9

    aget v18, v1, v12

    cmpg-float v17, v17, v18

    if-gez v17, :cond_16

    aget v17, v1, v12

    aget v18, v1, v11

    cmpg-float v17, v17, v18

    if-gez v17, :cond_16

    aget v17, v1, v11

    aget v18, v1, v13

    cmpg-float v17, v17, v18

    if-gez v17, :cond_16

    aget v17, v1, v13

    aget v18, v1, v10

    cmpg-float v17, v17, v18

    if-gez v17, :cond_16

    .line 2577
    aget v17, v1, v9

    .line 2578
    .local v17, "pivot1":F
    aget v18, v1, v10

    .line 2587
    .local v18, "pivot2":F
    aget v19, v1, v15

    aput v19, v1, v9

    .line 2588
    aget v19, v1, v16

    aput v19, v1, v10

    .line 2593
    :goto_2
    add-int/lit8 v15, v15, 0x1

    aget v19, v1, v15

    cmpg-float v19, v19, v17

    if-gez v19, :cond_e

    goto :goto_2

    .line 2594
    :cond_e
    :goto_3
    add-int/lit8 v16, v16, -0x1

    aget v19, v1, v16

    cmpl-float v19, v19, v18

    if-lez v19, :cond_f

    goto :goto_3

    .line 2615
    :cond_f
    add-int/lit8 v15, v15, -0x1

    move/from16 v19, v15

    .local v19, "unused":I
    add-int/lit8 v16, v16, 0x1

    move/from16 v20, v16

    move/from16 v7, v16

    .end local v16    # "upper":I
    .local v7, "upper":I
    .local v20, "k":I
    :goto_4
    move/from16 p4, v8

    .end local v8    # "step":I
    .local p4, "step":I
    add-int/lit8 v8, v20, -0x1

    .end local v20    # "k":I
    .local v8, "k":I
    if-le v8, v15, :cond_14

    .line 2616
    aget v16, v1, v8

    .line 2618
    .local v16, "ak":F
    cmpg-float v20, v16, v17

    if-gez v20, :cond_12

    .line 2619
    :cond_10
    if-ge v15, v8, :cond_13

    .line 2620
    add-int/lit8 v15, v15, 0x1

    aget v20, v1, v15

    cmpl-float v20, v20, v17

    if-ltz v20, :cond_10

    .line 2621
    aget v20, v1, v15

    cmpl-float v20, v20, v18

    if-lez v20, :cond_11

    .line 2622
    add-int/lit8 v7, v7, -0x1

    aget v20, v1, v7

    aput v20, v1, v8

    .line 2623
    aget v20, v1, v15

    aput v20, v1, v7

    goto :goto_5

    .line 2625
    :cond_11
    aget v20, v1, v15

    aput v20, v1, v8

    .line 2627
    :goto_5
    aput v16, v1, v15

    .line 2628
    goto :goto_6

    .line 2631
    :cond_12
    cmpl-float v20, v16, v18

    if-lez v20, :cond_13

    .line 2632
    add-int/lit8 v7, v7, -0x1

    aget v20, v1, v7

    aput v20, v1, v8

    .line 2633
    aput v16, v1, v7

    .line 2635
    .end local v16    # "ak":F
    :cond_13
    :goto_6
    move/from16 v20, v8

    move/from16 v8, p4

    goto :goto_4

    .line 2640
    .end local v8    # "k":I
    .end local v19    # "unused":I
    :cond_14
    aget v8, v1, v15

    aput v8, v1, v2

    aput v17, v1, v15

    .line 2641
    aget v8, v1, v7

    aput v8, v1, v5

    aput v18, v1, v7

    .line 2647
    const/16 v8, 0x1000

    if-le v6, v8, :cond_15

    if-eqz v0, :cond_15

    .line 2648
    or-int/lit8 v8, v3, 0x1

    move/from16 v19, v5

    .end local v5    # "end":I
    .local v19, "end":I
    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v0, v8, v5, v7}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    .line 2649
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v5, v8, v4}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    goto :goto_7

    .line 2647
    .end local v19    # "end":I
    .restart local v5    # "end":I
    :cond_15
    move/from16 v19, v5

    .line 2651
    .end local v5    # "end":I
    .restart local v19    # "end":I
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v8, v15, 0x1

    invoke-static {v0, v1, v5, v8, v7}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[FIII)V

    .line 2652
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v8, v7, 0x1

    invoke-static {v0, v1, v5, v8, v4}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[FIII)V

    .line 2655
    .end local v17    # "pivot1":F
    .end local v18    # "pivot2":F
    :goto_7
    goto :goto_c

    .line 2570
    .end local v7    # "upper":I
    .end local v19    # "end":I
    .end local p4    # "step":I
    .restart local v5    # "end":I
    .local v8, "step":I
    .local v16, "upper":I
    :cond_16
    move/from16 v19, v5

    move/from16 p4, v8

    .line 2661
    .end local v5    # "end":I
    .end local v8    # "step":I
    .restart local v19    # "end":I
    .restart local p4    # "step":I
    aget v5, v1, v11

    .line 2670
    .local v5, "pivot":F
    aget v7, v1, v15

    aput v7, v1, v11

    .line 2691
    add-int/lit8 v16, v16, 0x1

    move/from16 v7, v16

    move/from16 v8, v16

    .end local v16    # "upper":I
    .local v7, "k":I
    .local v8, "upper":I
    :goto_8
    add-int/lit8 v7, v7, -0x1

    if-le v7, v15, :cond_1b

    .line 2692
    aget v16, v1, v7

    .line 2694
    .local v16, "ak":F
    cmpl-float v17, v16, v5

    if-eqz v17, :cond_1a

    .line 2695
    aput v5, v1, v7

    .line 2697
    cmpg-float v17, v16, v5

    if-gez v17, :cond_19

    .line 2698
    :goto_9
    add-int/lit8 v15, v15, 0x1

    aget v17, v1, v15

    cmpg-float v17, v17, v5

    if-gez v17, :cond_17

    goto :goto_9

    .line 2700
    :cond_17
    aget v17, v1, v15

    cmpl-float v17, v17, v5

    if-lez v17, :cond_18

    .line 2701
    add-int/lit8 v8, v8, -0x1

    aget v17, v1, v15

    aput v17, v1, v8

    .line 2703
    :cond_18
    aput v16, v1, v15

    goto :goto_a

    .line 2705
    :cond_19
    add-int/lit8 v8, v8, -0x1

    aput v16, v1, v8

    .line 2708
    .end local v16    # "ak":F
    :cond_1a
    :goto_a
    goto :goto_8

    .line 2713
    .end local v7    # "k":I
    :cond_1b
    aget v7, v1, v15

    aput v7, v1, v2

    aput v5, v1, v15

    .line 2720
    const/16 v7, 0x1000

    if-le v6, v7, :cond_1c

    if-eqz v0, :cond_1c

    .line 2721
    or-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v7, v8, v4}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    goto :goto_b

    .line 2723
    :cond_1c
    or-int/lit8 v7, v3, 0x1

    invoke-static {v0, v1, v7, v8, v4}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[FIII)V

    .line 2726
    .end local v5    # "pivot":F
    :goto_b
    move v7, v8

    .end local v8    # "upper":I
    .local v7, "upper":I
    :goto_c
    move v4, v15

    .line 2727
    .end local v6    # "size":I
    .end local v7    # "upper":I
    .end local v9    # "e1":I
    .end local v10    # "e5":I
    .end local v11    # "e3":I
    .end local v12    # "e2":I
    .end local v13    # "e4":I
    .end local v14    # "a3":F
    .end local v15    # "lower":I
    .end local v19    # "end":I
    .end local p4    # "step":I
    goto/16 :goto_0
.end method

.method static sort(Ljava9/util/DualPivotQuicksort$Sorter;[IIII)V
    .locals 21
    .param p0, "sorter"    # Ljava9/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [I
    .param p2, "bits"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    .line 181
    .end local p2    # "bits":I
    .end local p4    # "high":I
    .local v3, "bits":I
    .local v4, "high":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .local v5, "end":I
    sub-int v6, v4, v2

    .line 186
    .local v6, "size":I
    add-int/lit8 v7, v3, 0x41

    if-ge v6, v7, :cond_0

    and-int/lit8 v7, v3, 0x1

    if-lez v7, :cond_0

    .line 187
    shr-int/lit8 v7, v6, 0x5

    shl-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    sub-int v7, v4, v7

    invoke-static {v1, v2, v7, v4}, Ljava9/util/DualPivotQuicksort;->mixedInsertionSort([IIII)V

    .line 188
    return-void

    .line 194
    :cond_0
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_1

    .line 195
    invoke-static {v1, v2, v4}, Ljava9/util/DualPivotQuicksort;->insertionSort([III)V

    .line 196
    return-void

    .line 203
    :cond_1
    const/16 v7, 0x1000

    if-eqz v3, :cond_2

    if-le v6, v7, :cond_3

    and-int/lit8 v8, v3, 0x1

    if-lez v8, :cond_3

    .line 204
    :cond_2
    invoke-static {v0, v1, v2, v6}, Ljava9/util/DualPivotQuicksort;->tryMergeRuns(Ljava9/util/DualPivotQuicksort$Sorter;[III)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 205
    return-void

    .line 212
    :cond_3
    add-int/lit8 v3, v3, 0x6

    const/16 v8, 0x180

    if-le v3, v8, :cond_4

    .line 213
    invoke-static {v1, v2, v4}, Ljava9/util/DualPivotQuicksort;->heapSort([III)V

    .line 214
    return-void

    .line 221
    :cond_4
    shr-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    .line 229
    .local v8, "step":I
    add-int v9, v2, v8

    .line 230
    .local v9, "e1":I
    sub-int v10, v5, v8

    .line 231
    .local v10, "e5":I
    add-int v11, v9, v10

    ushr-int/lit8 v11, v11, 0x1

    .line 232
    .local v11, "e3":I
    add-int v12, v9, v11

    ushr-int/lit8 v12, v12, 0x1

    .line 233
    .local v12, "e2":I
    add-int v13, v11, v10

    ushr-int/lit8 v13, v13, 0x1

    .line 234
    .local v13, "e4":I
    aget v14, v1, v11

    .line 248
    .local v14, "a3":I
    aget v15, v1, v10

    aget v7, v1, v12

    if-ge v15, v7, :cond_5

    aget v7, v1, v10

    .local v7, "t":I
    aget v15, v1, v12

    aput v15, v1, v10

    aput v7, v1, v12

    .line 249
    .end local v7    # "t":I
    :cond_5
    aget v7, v1, v13

    aget v15, v1, v9

    if-ge v7, v15, :cond_6

    aget v7, v1, v13

    .restart local v7    # "t":I
    aget v15, v1, v9

    aput v15, v1, v13

    aput v7, v1, v9

    .line 250
    .end local v7    # "t":I
    :cond_6
    aget v7, v1, v10

    aget v15, v1, v13

    if-ge v7, v15, :cond_7

    aget v7, v1, v10

    .restart local v7    # "t":I
    aget v15, v1, v13

    aput v15, v1, v10

    aput v7, v1, v13

    .line 251
    .end local v7    # "t":I
    :cond_7
    aget v7, v1, v12

    aget v15, v1, v9

    if-ge v7, v15, :cond_8

    aget v7, v1, v12

    .restart local v7    # "t":I
    aget v15, v1, v9

    aput v15, v1, v12

    aput v7, v1, v9

    .line 252
    .end local v7    # "t":I
    :cond_8
    aget v7, v1, v13

    aget v15, v1, v12

    if-ge v7, v15, :cond_9

    aget v7, v1, v13

    .restart local v7    # "t":I
    aget v15, v1, v12

    aput v15, v1, v13

    aput v7, v1, v12

    .line 254
    .end local v7    # "t":I
    :cond_9
    aget v7, v1, v12

    if-ge v14, v7, :cond_b

    .line 255
    aget v7, v1, v9

    if-ge v14, v7, :cond_a

    .line 256
    aget v7, v1, v12

    aput v7, v1, v11

    aget v7, v1, v9

    aput v7, v1, v12

    aput v14, v1, v9

    goto :goto_1

    .line 258
    :cond_a
    aget v7, v1, v12

    aput v7, v1, v11

    aput v14, v1, v12

    goto :goto_1

    .line 260
    :cond_b
    aget v7, v1, v13

    if-le v14, v7, :cond_d

    .line 261
    aget v7, v1, v10

    if-le v14, v7, :cond_c

    .line 262
    aget v7, v1, v13

    aput v7, v1, v11

    aget v7, v1, v10

    aput v7, v1, v13

    aput v14, v1, v10

    goto :goto_1

    .line 264
    :cond_c
    aget v7, v1, v13

    aput v7, v1, v11

    aput v14, v1, v13

    .line 269
    :cond_d
    :goto_1
    move/from16 v7, p3

    .line 270
    .local v7, "lower":I
    move v15, v5

    .line 275
    .local v15, "upper":I
    move/from16 p4, v8

    .end local v8    # "step":I
    .local p4, "step":I
    aget v8, v1, v9

    move/from16 v16, v14

    .end local v14    # "a3":I
    .local v16, "a3":I
    aget v14, v1, v12

    if-ge v8, v14, :cond_17

    aget v8, v1, v12

    aget v14, v1, v11

    if-ge v8, v14, :cond_17

    aget v8, v1, v11

    aget v14, v1, v13

    if-ge v8, v14, :cond_17

    aget v8, v1, v13

    aget v14, v1, v10

    if-ge v8, v14, :cond_17

    .line 282
    aget v8, v1, v9

    .line 283
    .local v8, "pivot1":I
    aget v14, v1, v10

    .line 292
    .local v14, "pivot2":I
    aget v17, v1, v7

    aput v17, v1, v9

    .line 293
    aget v17, v1, v15

    aput v17, v1, v10

    .line 298
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v9

    .end local v9    # "e1":I
    .local v17, "e1":I
    aget v9, v1, v7

    if-ge v9, v8, :cond_e

    move/from16 v9, v17

    goto :goto_2

    .line 299
    :cond_e
    :goto_3
    add-int/lit8 v15, v15, -0x1

    aget v9, v1, v15

    if-le v9, v14, :cond_f

    goto :goto_3

    .line 320
    :cond_f
    add-int/lit8 v7, v7, -0x1

    move v9, v7

    .local v9, "unused":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v15

    .local v18, "k":I
    :goto_4
    move/from16 v19, v9

    .end local v9    # "unused":I
    .local v19, "unused":I
    add-int/lit8 v9, v18, -0x1

    .end local v18    # "k":I
    .local v9, "k":I
    if-le v9, v7, :cond_15

    .line 321
    move/from16 v18, v10

    .end local v10    # "e5":I
    .local v18, "e5":I
    aget v10, v1, v9

    .line 323
    .local v10, "ak":I
    if-ge v10, v8, :cond_13

    .line 324
    :goto_5
    if-ge v7, v9, :cond_12

    .line 325
    add-int/lit8 v7, v7, 0x1

    move/from16 v20, v12

    .end local v12    # "e2":I
    .local v20, "e2":I
    aget v12, v1, v7

    if-lt v12, v8, :cond_11

    .line 326
    aget v12, v1, v7

    if-le v12, v14, :cond_10

    .line 327
    add-int/lit8 v15, v15, -0x1

    aget v12, v1, v15

    aput v12, v1, v9

    .line 328
    aget v12, v1, v7

    aput v12, v1, v15

    goto :goto_6

    .line 330
    :cond_10
    aget v12, v1, v7

    aput v12, v1, v9

    .line 332
    :goto_6
    aput v10, v1, v7

    .line 333
    goto :goto_7

    .line 325
    :cond_11
    move/from16 v12, v20

    goto :goto_5

    .line 324
    .end local v20    # "e2":I
    .restart local v12    # "e2":I
    :cond_12
    move/from16 v20, v12

    .end local v12    # "e2":I
    .restart local v20    # "e2":I
    goto :goto_7

    .line 336
    .end local v20    # "e2":I
    .restart local v12    # "e2":I
    :cond_13
    move/from16 v20, v12

    .end local v12    # "e2":I
    .restart local v20    # "e2":I
    if-le v10, v14, :cond_14

    .line 337
    add-int/lit8 v15, v15, -0x1

    aget v12, v1, v15

    aput v12, v1, v9

    .line 338
    aput v10, v1, v15

    .line 340
    .end local v10    # "ak":I
    :cond_14
    :goto_7
    move/from16 v10, v18

    move/from16 v12, v20

    move/from16 v18, v9

    move/from16 v9, v19

    goto :goto_4

    .line 320
    .end local v18    # "e5":I
    .end local v20    # "e2":I
    .local v10, "e5":I
    .restart local v12    # "e2":I
    :cond_15
    move/from16 v18, v10

    move/from16 v20, v12

    .line 345
    .end local v9    # "k":I
    .end local v10    # "e5":I
    .end local v12    # "e2":I
    .end local v19    # "unused":I
    .restart local v18    # "e5":I
    .restart local v20    # "e2":I
    aget v9, v1, v7

    aput v9, v1, v2

    aput v8, v1, v7

    .line 346
    aget v9, v1, v15

    aput v9, v1, v5

    aput v14, v1, v15

    .line 352
    const/16 v9, 0x1000

    if-le v6, v9, :cond_16

    if-eqz v0, :cond_16

    .line 353
    or-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v0, v9, v10, v15}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    .line 354
    or-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v15, 0x1

    invoke-virtual {v0, v9, v10, v4}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    goto :goto_8

    .line 356
    :cond_16
    or-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v7, 0x1

    invoke-static {v0, v1, v9, v10, v15}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[IIII)V

    .line 357
    or-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v15, 0x1

    invoke-static {v0, v1, v9, v10, v4}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[IIII)V

    .line 360
    .end local v8    # "pivot1":I
    .end local v14    # "pivot2":I
    :goto_8
    goto :goto_c

    .line 275
    .end local v17    # "e1":I
    .end local v18    # "e5":I
    .end local v20    # "e2":I
    .local v9, "e1":I
    .restart local v10    # "e5":I
    .restart local v12    # "e2":I
    :cond_17
    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v20, v12

    .line 366
    .end local v9    # "e1":I
    .end local v10    # "e5":I
    .end local v12    # "e2":I
    .restart local v17    # "e1":I
    .restart local v18    # "e5":I
    .restart local v20    # "e2":I
    aget v8, v1, v11

    .line 375
    .local v8, "pivot":I
    aget v9, v1, v7

    aput v9, v1, v11

    .line 396
    add-int/lit8 v15, v15, 0x1

    move v9, v15

    .local v9, "k":I
    :goto_9
    add-int/lit8 v9, v9, -0x1

    if-le v9, v7, :cond_1c

    .line 397
    aget v10, v1, v9

    .line 399
    .local v10, "ak":I
    if-eq v10, v8, :cond_1b

    .line 400
    aput v8, v1, v9

    .line 402
    if-ge v10, v8, :cond_1a

    .line 403
    :goto_a
    add-int/lit8 v7, v7, 0x1

    aget v12, v1, v7

    if-ge v12, v8, :cond_18

    goto :goto_a

    .line 405
    :cond_18
    aget v12, v1, v7

    if-le v12, v8, :cond_19

    .line 406
    add-int/lit8 v15, v15, -0x1

    aget v12, v1, v7

    aput v12, v1, v15

    .line 408
    :cond_19
    aput v10, v1, v7

    goto :goto_b

    .line 410
    :cond_1a
    add-int/lit8 v15, v15, -0x1

    aput v10, v1, v15

    .line 413
    .end local v10    # "ak":I
    :cond_1b
    :goto_b
    goto :goto_9

    .line 418
    .end local v9    # "k":I
    :cond_1c
    aget v9, v1, v7

    aput v9, v1, v2

    aput v8, v1, v7

    .line 425
    const/16 v9, 0x1000

    if-le v6, v9, :cond_1d

    if-eqz v0, :cond_1d

    .line 426
    or-int/lit8 v9, v3, 0x1

    invoke-virtual {v0, v9, v15, v4}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    goto :goto_c

    .line 428
    :cond_1d
    or-int/lit8 v9, v3, 0x1

    invoke-static {v0, v1, v9, v15, v4}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[IIII)V

    .line 431
    .end local v8    # "pivot":I
    :goto_c
    move v4, v7

    .line 432
    .end local v5    # "end":I
    .end local v6    # "size":I
    .end local v7    # "lower":I
    .end local v11    # "e3":I
    .end local v13    # "e4":I
    .end local v15    # "upper":I
    .end local v16    # "a3":I
    .end local v17    # "e1":I
    .end local v18    # "e5":I
    .end local v20    # "e2":I
    .end local p4    # "step":I
    goto/16 :goto_0
.end method

.method static sort(Ljava9/util/DualPivotQuicksort$Sorter;[JIII)V
    .locals 28
    .param p0, "sorter"    # Ljava9/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [J
    .param p2, "bits"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    .line 935
    .end local p2    # "bits":I
    .end local p4    # "high":I
    .local v3, "bits":I
    .local v4, "high":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .local v5, "end":I
    sub-int v6, v4, v2

    .line 940
    .local v6, "size":I
    add-int/lit8 v7, v3, 0x41

    if-ge v6, v7, :cond_0

    and-int/lit8 v7, v3, 0x1

    if-lez v7, :cond_0

    .line 941
    shr-int/lit8 v7, v6, 0x5

    shl-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    sub-int v7, v4, v7

    invoke-static {v1, v2, v7, v4}, Ljava9/util/DualPivotQuicksort;->mixedInsertionSort([JIII)V

    .line 942
    return-void

    .line 948
    :cond_0
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_1

    .line 949
    invoke-static {v1, v2, v4}, Ljava9/util/DualPivotQuicksort;->insertionSort([JII)V

    .line 950
    return-void

    .line 957
    :cond_1
    const/16 v7, 0x1000

    if-eqz v3, :cond_2

    if-le v6, v7, :cond_3

    and-int/lit8 v8, v3, 0x1

    if-lez v8, :cond_3

    .line 958
    :cond_2
    invoke-static {v0, v1, v2, v6}, Ljava9/util/DualPivotQuicksort;->tryMergeRuns(Ljava9/util/DualPivotQuicksort$Sorter;[JII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 959
    return-void

    .line 966
    :cond_3
    add-int/lit8 v3, v3, 0x6

    const/16 v8, 0x180

    if-le v3, v8, :cond_4

    .line 967
    invoke-static {v1, v2, v4}, Ljava9/util/DualPivotQuicksort;->heapSort([JII)V

    .line 968
    return-void

    .line 975
    :cond_4
    shr-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    .line 983
    .local v8, "step":I
    add-int v9, v2, v8

    .line 984
    .local v9, "e1":I
    sub-int v10, v5, v8

    .line 985
    .local v10, "e5":I
    add-int v11, v9, v10

    ushr-int/lit8 v11, v11, 0x1

    .line 986
    .local v11, "e3":I
    add-int v12, v9, v11

    ushr-int/lit8 v12, v12, 0x1

    .line 987
    .local v12, "e2":I
    add-int v13, v11, v10

    ushr-int/lit8 v13, v13, 0x1

    .line 988
    .local v13, "e4":I
    aget-wide v14, v1, v11

    .line 1002
    .local v14, "a3":J
    aget-wide v16, v1, v10

    aget-wide v18, v1, v12

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    aget-wide v16, v1, v10

    .local v16, "t":J
    aget-wide v18, v1, v12

    aput-wide v18, v1, v10

    aput-wide v16, v1, v12

    .line 1003
    .end local v16    # "t":J
    :cond_5
    aget-wide v16, v1, v13

    aget-wide v18, v1, v9

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    aget-wide v16, v1, v13

    .restart local v16    # "t":J
    aget-wide v18, v1, v9

    aput-wide v18, v1, v13

    aput-wide v16, v1, v9

    .line 1004
    .end local v16    # "t":J
    :cond_6
    aget-wide v16, v1, v10

    aget-wide v18, v1, v13

    cmp-long v16, v16, v18

    if-gez v16, :cond_7

    aget-wide v16, v1, v10

    .restart local v16    # "t":J
    aget-wide v18, v1, v13

    aput-wide v18, v1, v10

    aput-wide v16, v1, v13

    .line 1005
    .end local v16    # "t":J
    :cond_7
    aget-wide v16, v1, v12

    aget-wide v18, v1, v9

    cmp-long v16, v16, v18

    if-gez v16, :cond_8

    aget-wide v16, v1, v12

    .restart local v16    # "t":J
    aget-wide v18, v1, v9

    aput-wide v18, v1, v12

    aput-wide v16, v1, v9

    .line 1006
    .end local v16    # "t":J
    :cond_8
    aget-wide v16, v1, v13

    aget-wide v18, v1, v12

    cmp-long v16, v16, v18

    if-gez v16, :cond_9

    aget-wide v16, v1, v13

    .restart local v16    # "t":J
    aget-wide v18, v1, v12

    aput-wide v18, v1, v13

    aput-wide v16, v1, v12

    .line 1008
    .end local v16    # "t":J
    :cond_9
    aget-wide v16, v1, v12

    cmp-long v16, v14, v16

    if-gez v16, :cond_b

    .line 1009
    aget-wide v16, v1, v9

    cmp-long v16, v14, v16

    if-gez v16, :cond_a

    .line 1010
    aget-wide v16, v1, v12

    aput-wide v16, v1, v11

    aget-wide v16, v1, v9

    aput-wide v16, v1, v12

    aput-wide v14, v1, v9

    goto :goto_1

    .line 1012
    :cond_a
    aget-wide v16, v1, v12

    aput-wide v16, v1, v11

    aput-wide v14, v1, v12

    goto :goto_1

    .line 1014
    :cond_b
    aget-wide v16, v1, v13

    cmp-long v16, v14, v16

    if-lez v16, :cond_d

    .line 1015
    aget-wide v16, v1, v10

    cmp-long v16, v14, v16

    if-lez v16, :cond_c

    .line 1016
    aget-wide v16, v1, v13

    aput-wide v16, v1, v11

    aget-wide v16, v1, v10

    aput-wide v16, v1, v13

    aput-wide v14, v1, v10

    goto :goto_1

    .line 1018
    :cond_c
    aget-wide v16, v1, v13

    aput-wide v16, v1, v11

    aput-wide v14, v1, v13

    .line 1023
    :cond_d
    :goto_1
    move/from16 v16, p3

    .line 1024
    .local v16, "lower":I
    move/from16 v17, v5

    .line 1029
    .local v17, "upper":I
    aget-wide v18, v1, v9

    aget-wide v20, v1, v12

    cmp-long v18, v18, v20

    if-gez v18, :cond_16

    aget-wide v18, v1, v12

    aget-wide v20, v1, v11

    cmp-long v18, v18, v20

    if-gez v18, :cond_16

    aget-wide v18, v1, v11

    aget-wide v20, v1, v13

    cmp-long v18, v18, v20

    if-gez v18, :cond_16

    aget-wide v18, v1, v13

    aget-wide v20, v1, v10

    cmp-long v18, v18, v20

    if-gez v18, :cond_16

    .line 1036
    aget-wide v18, v1, v9

    .line 1037
    .local v18, "pivot1":J
    aget-wide v20, v1, v10

    .line 1046
    .local v20, "pivot2":J
    aget-wide v22, v1, v16

    aput-wide v22, v1, v9

    .line 1047
    aget-wide v22, v1, v17

    aput-wide v22, v1, v10

    .line 1052
    :goto_2
    add-int/lit8 v16, v16, 0x1

    aget-wide v22, v1, v16

    cmp-long v22, v22, v18

    if-gez v22, :cond_e

    goto :goto_2

    .line 1053
    :cond_e
    :goto_3
    add-int/lit8 v17, v17, -0x1

    aget-wide v22, v1, v17

    cmp-long v22, v22, v20

    if-lez v22, :cond_f

    goto :goto_3

    .line 1074
    :cond_f
    add-int/lit8 v16, v16, -0x1

    move/from16 v22, v16

    .local v22, "unused":I
    add-int/lit8 v17, v17, 0x1

    move/from16 v23, v17

    move/from16 p4, v8

    move/from16 v7, v16

    move/from16 v8, v17

    .end local v16    # "lower":I
    .end local v17    # "upper":I
    .local v7, "lower":I
    .local v8, "upper":I
    .local v23, "k":I
    .local p4, "step":I
    :goto_4
    move/from16 v24, v9

    .end local v9    # "e1":I
    .local v24, "e1":I
    add-int/lit8 v9, v23, -0x1

    .end local v23    # "k":I
    .local v9, "k":I
    if-le v9, v7, :cond_14

    .line 1075
    aget-wide v16, v1, v9

    .line 1077
    .local v16, "ak":J
    cmp-long v23, v16, v18

    if-gez v23, :cond_12

    .line 1078
    :cond_10
    if-ge v7, v9, :cond_13

    .line 1079
    add-int/lit8 v7, v7, 0x1

    aget-wide v25, v1, v7

    cmp-long v23, v25, v18

    if-ltz v23, :cond_10

    .line 1080
    aget-wide v25, v1, v7

    cmp-long v23, v25, v20

    if-lez v23, :cond_11

    .line 1081
    add-int/lit8 v8, v8, -0x1

    aget-wide v25, v1, v8

    aput-wide v25, v1, v9

    .line 1082
    aget-wide v25, v1, v7

    aput-wide v25, v1, v8

    goto :goto_5

    .line 1084
    :cond_11
    aget-wide v25, v1, v7

    aput-wide v25, v1, v9

    .line 1086
    :goto_5
    aput-wide v16, v1, v7

    .line 1087
    goto :goto_6

    .line 1090
    :cond_12
    cmp-long v23, v16, v20

    if-lez v23, :cond_13

    .line 1091
    add-int/lit8 v8, v8, -0x1

    aget-wide v25, v1, v8

    aput-wide v25, v1, v9

    .line 1092
    aput-wide v16, v1, v8

    .line 1094
    .end local v16    # "ak":J
    :cond_13
    :goto_6
    move/from16 v23, v9

    move/from16 v9, v24

    goto :goto_4

    .line 1099
    .end local v9    # "k":I
    .end local v22    # "unused":I
    :cond_14
    aget-wide v16, v1, v7

    aput-wide v16, v1, v2

    aput-wide v18, v1, v7

    .line 1100
    aget-wide v16, v1, v8

    aput-wide v16, v1, v5

    aput-wide v20, v1, v8

    .line 1106
    const/16 v9, 0x1000

    if-le v6, v9, :cond_15

    if-eqz v0, :cond_15

    .line 1107
    or-int/lit8 v9, v3, 0x1

    move/from16 v22, v5

    .end local v5    # "end":I
    .local v22, "end":I
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v9, v5, v8}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    .line 1108
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v5, v9, v4}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    goto :goto_7

    .line 1106
    .end local v22    # "end":I
    .restart local v5    # "end":I
    :cond_15
    move/from16 v22, v5

    .line 1110
    .end local v5    # "end":I
    .restart local v22    # "end":I
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v9, v7, 0x1

    invoke-static {v0, v1, v5, v9, v8}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[JIII)V

    .line 1111
    or-int/lit8 v5, v3, 0x1

    add-int/lit8 v9, v8, 0x1

    invoke-static {v0, v1, v5, v9, v4}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[JIII)V

    .line 1114
    .end local v18    # "pivot1":J
    .end local v20    # "pivot2":J
    :goto_7
    move/from16 v16, v10

    goto :goto_c

    .line 1029
    .end local v7    # "lower":I
    .end local v22    # "end":I
    .end local v24    # "e1":I
    .end local p4    # "step":I
    .restart local v5    # "end":I
    .local v8, "step":I
    .local v9, "e1":I
    .local v16, "lower":I
    .restart local v17    # "upper":I
    :cond_16
    move/from16 v22, v5

    move/from16 p4, v8

    move/from16 v24, v9

    .line 1120
    .end local v5    # "end":I
    .end local v8    # "step":I
    .end local v9    # "e1":I
    .restart local v22    # "end":I
    .restart local v24    # "e1":I
    .restart local p4    # "step":I
    aget-wide v7, v1, v11

    .line 1129
    .local v7, "pivot":J
    aget-wide v18, v1, v16

    aput-wide v18, v1, v11

    .line 1150
    add-int/lit8 v17, v17, 0x1

    move/from16 v5, v17

    move/from16 v9, v17

    move/from16 v27, v16

    move/from16 v16, v10

    move/from16 v10, v27

    .end local v17    # "upper":I
    .local v5, "k":I
    .local v9, "upper":I
    .local v10, "lower":I
    .local v16, "e5":I
    :goto_8
    add-int/lit8 v5, v5, -0x1

    if-le v5, v10, :cond_1b

    .line 1151
    aget-wide v17, v1, v5

    .line 1153
    .local v17, "ak":J
    cmp-long v19, v17, v7

    if-eqz v19, :cond_1a

    .line 1154
    aput-wide v7, v1, v5

    .line 1156
    cmp-long v19, v17, v7

    if-gez v19, :cond_19

    .line 1157
    :goto_9
    add-int/lit8 v10, v10, 0x1

    aget-wide v19, v1, v10

    cmp-long v19, v19, v7

    if-gez v19, :cond_17

    goto :goto_9

    .line 1159
    :cond_17
    aget-wide v19, v1, v10

    cmp-long v19, v19, v7

    if-lez v19, :cond_18

    .line 1160
    add-int/lit8 v9, v9, -0x1

    aget-wide v19, v1, v10

    aput-wide v19, v1, v9

    .line 1162
    :cond_18
    aput-wide v17, v1, v10

    goto :goto_a

    .line 1164
    :cond_19
    add-int/lit8 v9, v9, -0x1

    aput-wide v17, v1, v9

    .line 1167
    .end local v17    # "ak":J
    :cond_1a
    :goto_a
    goto :goto_8

    .line 1172
    .end local v5    # "k":I
    :cond_1b
    aget-wide v17, v1, v10

    aput-wide v17, v1, v2

    aput-wide v7, v1, v10

    .line 1179
    const/16 v5, 0x1000

    if-le v6, v5, :cond_1c

    if-eqz v0, :cond_1c

    .line 1180
    or-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5, v9, v4}, Ljava9/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    goto :goto_b

    .line 1182
    :cond_1c
    or-int/lit8 v5, v3, 0x1

    invoke-static {v0, v1, v5, v9, v4}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[JIII)V

    .line 1185
    .end local v7    # "pivot":J
    :goto_b
    move v8, v9

    move v7, v10

    .end local v9    # "upper":I
    .end local v10    # "lower":I
    .local v7, "lower":I
    .local v8, "upper":I
    :goto_c
    move v4, v7

    .line 1186
    .end local v6    # "size":I
    .end local v7    # "lower":I
    .end local v8    # "upper":I
    .end local v11    # "e3":I
    .end local v12    # "e2":I
    .end local v13    # "e4":I
    .end local v14    # "a3":J
    .end local v16    # "e5":I
    .end local v22    # "end":I
    .end local v24    # "e1":I
    .end local p4    # "step":I
    goto/16 :goto_0
.end method

.method static sort([BII)V
    .locals 2
    .param p0, "a"    # [B
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1658
    sub-int v0, p2, p1

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 1659
    invoke-static {p0, p1, p2}, Ljava9/util/DualPivotQuicksort;->countingSort([BII)V

    goto :goto_0

    .line 1661
    :cond_0
    invoke-static {p0, p1, p2}, Ljava9/util/DualPivotQuicksort;->insertionSort([BII)V

    .line 1663
    :goto_0
    return-void
.end method

.method static sort([CII)V
    .locals 2
    .param p0, "a"    # [C
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1746
    sub-int v0, p2, p1

    const/16 v1, 0x6d6

    if-le v0, v1, :cond_0

    .line 1747
    invoke-static {p0, p1, p2}, Ljava9/util/DualPivotQuicksort;->countingSort([CII)V

    goto :goto_0

    .line 1749
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([CIII)V

    .line 1751
    :goto_0
    return-void
.end method

.method static sort([CIII)V
    .locals 19
    .param p0, "a"    # [C
    .param p1, "bits"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p3

    .line 1765
    .end local p1    # "bits":I
    .end local p3    # "high":I
    .local v2, "bits":I
    .local v3, "high":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .local v4, "end":I
    sub-int v5, v3, v1

    .line 1770
    .local v5, "size":I
    const/16 v6, 0x2c

    if-ge v5, v6, :cond_0

    .line 1771
    invoke-static {v0, v1, v3}, Ljava9/util/DualPivotQuicksort;->insertionSort([CII)V

    .line 1772
    return-void

    .line 1779
    :cond_0
    add-int/lit8 v2, v2, 0x6

    const/16 v6, 0x180

    if-le v2, v6, :cond_1

    .line 1780
    invoke-static {v0, v1, v3}, Ljava9/util/DualPivotQuicksort;->countingSort([CII)V

    .line 1781
    return-void

    .line 1788
    :cond_1
    shr-int/lit8 v6, v5, 0x3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x3

    .line 1796
    .local v6, "step":I
    add-int v7, v1, v6

    .line 1797
    .local v7, "e1":I
    sub-int v8, v4, v6

    .line 1798
    .local v8, "e5":I
    add-int v9, v7, v8

    ushr-int/lit8 v9, v9, 0x1

    .line 1799
    .local v9, "e3":I
    add-int v10, v7, v9

    ushr-int/lit8 v10, v10, 0x1

    .line 1800
    .local v10, "e2":I
    add-int v11, v9, v8

    ushr-int/lit8 v11, v11, 0x1

    .line 1801
    .local v11, "e4":I
    aget-char v12, v0, v9

    .line 1815
    .local v12, "a3":C
    aget-char v13, v0, v8

    aget-char v14, v0, v10

    if-ge v13, v14, :cond_2

    aget-char v13, v0, v8

    .local v13, "t":C
    aget-char v14, v0, v10

    aput-char v14, v0, v8

    aput-char v13, v0, v10

    .line 1816
    .end local v13    # "t":C
    :cond_2
    aget-char v13, v0, v11

    aget-char v14, v0, v7

    if-ge v13, v14, :cond_3

    aget-char v13, v0, v11

    .restart local v13    # "t":C
    aget-char v14, v0, v7

    aput-char v14, v0, v11

    aput-char v13, v0, v7

    .line 1817
    .end local v13    # "t":C
    :cond_3
    aget-char v13, v0, v8

    aget-char v14, v0, v11

    if-ge v13, v14, :cond_4

    aget-char v13, v0, v8

    .restart local v13    # "t":C
    aget-char v14, v0, v11

    aput-char v14, v0, v8

    aput-char v13, v0, v11

    .line 1818
    .end local v13    # "t":C
    :cond_4
    aget-char v13, v0, v10

    aget-char v14, v0, v7

    if-ge v13, v14, :cond_5

    aget-char v13, v0, v10

    .restart local v13    # "t":C
    aget-char v14, v0, v7

    aput-char v14, v0, v10

    aput-char v13, v0, v7

    .line 1819
    .end local v13    # "t":C
    :cond_5
    aget-char v13, v0, v11

    aget-char v14, v0, v10

    if-ge v13, v14, :cond_6

    aget-char v13, v0, v11

    .restart local v13    # "t":C
    aget-char v14, v0, v10

    aput-char v14, v0, v11

    aput-char v13, v0, v10

    .line 1821
    .end local v13    # "t":C
    :cond_6
    aget-char v13, v0, v10

    if-ge v12, v13, :cond_8

    .line 1822
    aget-char v13, v0, v7

    if-ge v12, v13, :cond_7

    .line 1823
    aget-char v13, v0, v10

    aput-char v13, v0, v9

    aget-char v13, v0, v7

    aput-char v13, v0, v10

    aput-char v12, v0, v7

    goto :goto_1

    .line 1825
    :cond_7
    aget-char v13, v0, v10

    aput-char v13, v0, v9

    aput-char v12, v0, v10

    goto :goto_1

    .line 1827
    :cond_8
    aget-char v13, v0, v11

    if-le v12, v13, :cond_a

    .line 1828
    aget-char v13, v0, v8

    if-le v12, v13, :cond_9

    .line 1829
    aget-char v13, v0, v11

    aput-char v13, v0, v9

    aget-char v13, v0, v8

    aput-char v13, v0, v11

    aput-char v12, v0, v8

    goto :goto_1

    .line 1831
    :cond_9
    aget-char v13, v0, v11

    aput-char v13, v0, v9

    aput-char v12, v0, v11

    .line 1836
    :cond_a
    :goto_1
    move/from16 v13, p2

    .line 1837
    .local v13, "lower":I
    move v14, v4

    .line 1842
    .local v14, "upper":I
    aget-char v15, v0, v7

    move/from16 p1, v5

    .end local v5    # "size":I
    .local p1, "size":I
    aget-char v5, v0, v10

    if-ge v15, v5, :cond_13

    aget-char v5, v0, v10

    aget-char v15, v0, v9

    if-ge v5, v15, :cond_13

    aget-char v5, v0, v9

    aget-char v15, v0, v11

    if-ge v5, v15, :cond_13

    aget-char v5, v0, v11

    aget-char v15, v0, v8

    if-ge v5, v15, :cond_13

    .line 1849
    aget-char v5, v0, v7

    .line 1850
    .local v5, "pivot1":C
    aget-char v15, v0, v8

    .line 1859
    .local v15, "pivot2":C
    aget-char v16, v0, v13

    aput-char v16, v0, v7

    .line 1860
    aget-char v16, v0, v14

    aput-char v16, v0, v8

    .line 1865
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 p3, v6

    .end local v6    # "step":I
    .local p3, "step":I
    aget-char v6, v0, v13

    if-ge v6, v5, :cond_b

    move/from16 v6, p3

    goto :goto_2

    .line 1866
    :cond_b
    :goto_3
    add-int/lit8 v14, v14, -0x1

    aget-char v6, v0, v14

    if-le v6, v15, :cond_c

    goto :goto_3

    .line 1887
    :cond_c
    add-int/lit8 v13, v13, -0x1

    move v6, v13

    .local v6, "unused":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v14

    .local v16, "k":I
    :goto_4
    move/from16 v17, v6

    .end local v6    # "unused":I
    .local v17, "unused":I
    add-int/lit8 v6, v16, -0x1

    .end local v16    # "k":I
    .local v6, "k":I
    if-le v6, v13, :cond_12

    .line 1888
    move/from16 v16, v7

    .end local v7    # "e1":I
    .local v16, "e1":I
    aget-char v7, v0, v6

    .line 1890
    .local v7, "ak":C
    if-ge v7, v5, :cond_10

    .line 1891
    :goto_5
    if-ge v13, v6, :cond_f

    .line 1892
    add-int/lit8 v13, v13, 0x1

    move/from16 v18, v8

    .end local v8    # "e5":I
    .local v18, "e5":I
    aget-char v8, v0, v13

    if-lt v8, v5, :cond_e

    .line 1893
    aget-char v8, v0, v13

    if-le v8, v15, :cond_d

    .line 1894
    add-int/lit8 v14, v14, -0x1

    aget-char v8, v0, v14

    aput-char v8, v0, v6

    .line 1895
    aget-char v8, v0, v13

    aput-char v8, v0, v14

    goto :goto_6

    .line 1897
    :cond_d
    aget-char v8, v0, v13

    aput-char v8, v0, v6

    .line 1899
    :goto_6
    aput-char v7, v0, v13

    .line 1900
    goto :goto_7

    .line 1892
    :cond_e
    move/from16 v8, v18

    goto :goto_5

    .line 1891
    .end local v18    # "e5":I
    .restart local v8    # "e5":I
    :cond_f
    move/from16 v18, v8

    .end local v8    # "e5":I
    .restart local v18    # "e5":I
    goto :goto_7

    .line 1903
    .end local v18    # "e5":I
    .restart local v8    # "e5":I
    :cond_10
    move/from16 v18, v8

    .end local v8    # "e5":I
    .restart local v18    # "e5":I
    if-le v7, v15, :cond_11

    .line 1904
    add-int/lit8 v14, v14, -0x1

    aget-char v8, v0, v14

    aput-char v8, v0, v6

    .line 1905
    aput-char v7, v0, v14

    .line 1907
    .end local v7    # "ak":C
    :cond_11
    :goto_7
    move/from16 v7, v16

    move/from16 v8, v18

    move/from16 v16, v6

    move/from16 v6, v17

    goto :goto_4

    .line 1887
    .end local v16    # "e1":I
    .end local v18    # "e5":I
    .local v7, "e1":I
    .restart local v8    # "e5":I
    :cond_12
    move/from16 v16, v7

    move/from16 v18, v8

    .line 1912
    .end local v6    # "k":I
    .end local v7    # "e1":I
    .end local v8    # "e5":I
    .end local v17    # "unused":I
    .restart local v16    # "e1":I
    .restart local v18    # "e5":I
    aget-char v6, v0, v13

    aput-char v6, v0, v1

    aput-char v5, v0, v13

    .line 1913
    aget-char v6, v0, v14

    aput-char v6, v0, v4

    aput-char v15, v0, v14

    .line 1919
    or-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v13, 0x1

    invoke-static {v0, v6, v7, v14}, Ljava9/util/DualPivotQuicksort;->sort([CIII)V

    .line 1920
    or-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v14, 0x1

    invoke-static {v0, v6, v7, v3}, Ljava9/util/DualPivotQuicksort;->sort([CIII)V

    .line 1922
    .end local v5    # "pivot1":C
    .end local v15    # "pivot2":C
    goto :goto_b

    .line 1842
    .end local v16    # "e1":I
    .end local v18    # "e5":I
    .end local p3    # "step":I
    .local v6, "step":I
    .restart local v7    # "e1":I
    .restart local v8    # "e5":I
    :cond_13
    move/from16 p3, v6

    move/from16 v16, v7

    move/from16 v18, v8

    .line 1928
    .end local v6    # "step":I
    .end local v7    # "e1":I
    .end local v8    # "e5":I
    .restart local v16    # "e1":I
    .restart local v18    # "e5":I
    .restart local p3    # "step":I
    aget-char v5, v0, v9

    .line 1937
    .local v5, "pivot":C
    aget-char v6, v0, v13

    aput-char v6, v0, v9

    .line 1958
    add-int/lit8 v14, v14, 0x1

    move v6, v14

    .local v6, "k":I
    :goto_8
    add-int/lit8 v6, v6, -0x1

    if-le v6, v13, :cond_18

    .line 1959
    aget-char v7, v0, v6

    .line 1961
    .local v7, "ak":C
    if-eq v7, v5, :cond_17

    .line 1962
    aput-char v5, v0, v6

    .line 1964
    if-ge v7, v5, :cond_16

    .line 1965
    :goto_9
    add-int/lit8 v13, v13, 0x1

    aget-char v8, v0, v13

    if-ge v8, v5, :cond_14

    goto :goto_9

    .line 1967
    :cond_14
    aget-char v8, v0, v13

    if-le v8, v5, :cond_15

    .line 1968
    add-int/lit8 v14, v14, -0x1

    aget-char v8, v0, v13

    aput-char v8, v0, v14

    .line 1970
    :cond_15
    aput-char v7, v0, v13

    goto :goto_a

    .line 1972
    :cond_16
    add-int/lit8 v14, v14, -0x1

    aput-char v7, v0, v14

    .line 1975
    .end local v7    # "ak":C
    :cond_17
    :goto_a
    goto :goto_8

    .line 1980
    .end local v6    # "k":I
    :cond_18
    aget-char v6, v0, v13

    aput-char v6, v0, v1

    aput-char v5, v0, v13

    .line 1987
    or-int/lit8 v6, v2, 0x1

    invoke-static {v0, v6, v14, v3}, Ljava9/util/DualPivotQuicksort;->sort([CIII)V

    .line 1989
    .end local v5    # "pivot":C
    :goto_b
    move v3, v13

    .line 1990
    .end local v4    # "end":I
    .end local v9    # "e3":I
    .end local v10    # "e2":I
    .end local v11    # "e4":I
    .end local v12    # "a3":C
    .end local v13    # "lower":I
    .end local v14    # "upper":I
    .end local v16    # "e1":I
    .end local v18    # "e5":I
    .end local p1    # "size":I
    .end local p3    # "step":I
    goto/16 :goto_0
.end method

.method static sort([DIII)V
    .locals 18
    .param p0, "a"    # [D
    .param p1, "parallelism"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 3211
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    const/4 v0, 0x0

    .line 3213
    .local v0, "numNegativeZero":I
    move/from16 v1, p3

    move/from16 v11, p3

    move v12, v0

    .end local v0    # "numNegativeZero":I
    .end local p3    # "high":I
    .local v1, "k":I
    .local v11, "high":I
    .local v12, "numNegativeZero":I
    :goto_0
    const-wide/16 v13, 0x0

    if-le v1, v10, :cond_2

    .line 3214
    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v8, v1

    .line 3216
    .local v2, "ak":D
    cmpl-double v0, v2, v13

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 3217
    add-int/lit8 v12, v12, 0x1

    .line 3218
    aput-wide v13, v8, v1

    goto :goto_1

    .line 3219
    :cond_0
    cmpl-double v0, v2, v2

    if-eqz v0, :cond_1

    .line 3220
    add-int/lit8 v11, v11, -0x1

    aget-wide v4, v8, v11

    aput-wide v4, v8, v1

    .line 3221
    aput-wide v2, v8, v11

    .line 3223
    .end local v2    # "ak":D
    :cond_1
    :goto_1
    goto :goto_0

    .line 3229
    .end local v1    # "k":I
    :cond_2
    sub-int v15, v11, v10

    .line 3231
    .local v15, "size":I
    const/4 v0, 0x0

    const/4 v7, 0x1

    if-le v9, v7, :cond_4

    const/16 v1, 0x1000

    if-le v15, v1, :cond_4

    .line 3232
    shr-int/lit8 v1, v15, 0xc

    invoke-static {v9, v1}, Ljava9/util/DualPivotQuicksort;->getDepth(II)I

    move-result v16

    .line 3233
    .local v16, "depth":I
    if-nez v16, :cond_3

    goto :goto_2

    :cond_3
    new-array v0, v15, [D

    :goto_2
    move-object v3, v0

    .line 3234
    .local v3, "b":[D
    new-instance v17, Ljava9/util/DualPivotQuicksort$Sorter;

    const/4 v1, 0x0

    move-object/from16 v0, v17

    move-object/from16 v2, p0

    move/from16 v4, p2

    move v5, v15

    move/from16 v6, p2

    move v13, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual/range {v17 .. v17}, Ljava9/util/DualPivotQuicksort$Sorter;->invoke()Ljava/lang/Object;

    .line 3235
    .end local v3    # "b":[D
    .end local v16    # "depth":I
    goto :goto_3

    .line 3231
    :cond_4
    move v13, v7

    .line 3236
    const/4 v1, 0x0

    invoke-static {v0, v8, v1, v10, v11}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 3243
    :goto_3
    add-int/2addr v12, v13

    if-ne v12, v13, :cond_5

    .line 3244
    return-void

    .line 3251
    .end local p2    # "low":I
    .local v10, "low":I
    :cond_5
    :goto_4
    if-gt v10, v11, :cond_7

    .line 3252
    add-int v0, v10, v11

    ushr-int/2addr v0, v13

    .line 3254
    .local v0, "middle":I
    aget-wide v1, v8, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    .line 3255
    add-int/lit8 v1, v0, 0x1

    move v10, v1

    .end local v10    # "low":I
    .local v1, "low":I
    goto :goto_5

    .line 3257
    .end local v1    # "low":I
    .restart local v10    # "low":I
    :cond_6
    add-int/lit8 v1, v0, -0x1

    move v11, v1

    .line 3259
    .end local v0    # "middle":I
    :goto_5
    goto :goto_4

    .line 3264
    :cond_7
    :goto_6
    add-int/lit8 v12, v12, -0x1

    if-lez v12, :cond_8

    .line 3265
    add-int/lit8 v11, v11, 0x1

    const-wide/high16 v0, -0x8000000000000000L

    aput-wide v0, v8, v11

    goto :goto_6

    .line 3267
    :cond_8
    return-void
.end method

.method static sort([FIII)V
    .locals 18
    .param p0, "a"    # [F
    .param p1, "parallelism"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 2405
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    const/4 v0, 0x0

    .line 2407
    .local v0, "numNegativeZero":I
    move/from16 v1, p3

    move/from16 v11, p3

    move v12, v0

    .end local v0    # "numNegativeZero":I
    .end local p3    # "high":I
    .local v1, "k":I
    .local v11, "high":I
    .local v12, "numNegativeZero":I
    :goto_0
    const/4 v13, 0x0

    if-le v1, v10, :cond_2

    .line 2408
    add-int/lit8 v1, v1, -0x1

    aget v0, v8, v1

    .line 2410
    .local v0, "ak":F
    cmpl-float v2, v0, v13

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    if-gez v2, :cond_0

    .line 2411
    add-int/lit8 v12, v12, 0x1

    .line 2412
    aput v13, v8, v1

    goto :goto_1

    .line 2413
    :cond_0
    cmpl-float v2, v0, v0

    if-eqz v2, :cond_1

    .line 2414
    add-int/lit8 v11, v11, -0x1

    aget v2, v8, v11

    aput v2, v8, v1

    .line 2415
    aput v0, v8, v11

    .line 2417
    .end local v0    # "ak":F
    :cond_1
    :goto_1
    goto :goto_0

    .line 2423
    .end local v1    # "k":I
    :cond_2
    sub-int v14, v11, v10

    .line 2425
    .local v14, "size":I
    const/4 v0, 0x0

    const/4 v15, 0x1

    if-le v9, v15, :cond_4

    const/16 v1, 0x1000

    if-le v14, v1, :cond_4

    .line 2426
    shr-int/lit8 v1, v14, 0xc

    invoke-static {v9, v1}, Ljava9/util/DualPivotQuicksort;->getDepth(II)I

    move-result v16

    .line 2427
    .local v16, "depth":I
    if-nez v16, :cond_3

    goto :goto_2

    :cond_3
    new-array v0, v14, [F

    :goto_2
    move-object v3, v0

    .line 2428
    .local v3, "b":[F
    new-instance v17, Ljava9/util/DualPivotQuicksort$Sorter;

    const/4 v1, 0x0

    move-object/from16 v0, v17

    move-object/from16 v2, p0

    move/from16 v4, p2

    move v5, v14

    move/from16 v6, p2

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual/range {v17 .. v17}, Ljava9/util/DualPivotQuicksort$Sorter;->invoke()Ljava/lang/Object;

    .line 2429
    .end local v3    # "b":[F
    .end local v16    # "depth":I
    goto :goto_3

    .line 2430
    :cond_4
    const/4 v1, 0x0

    invoke-static {v0, v8, v1, v10, v11}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[FIII)V

    .line 2437
    :goto_3
    add-int/2addr v12, v15

    if-ne v12, v15, :cond_5

    .line 2438
    return-void

    .line 2445
    .end local p2    # "low":I
    .local v10, "low":I
    :cond_5
    :goto_4
    if-gt v10, v11, :cond_7

    .line 2446
    add-int v0, v10, v11

    ushr-int/2addr v0, v15

    .line 2448
    .local v0, "middle":I
    aget v1, v8, v0

    cmpg-float v1, v1, v13

    if-gez v1, :cond_6

    .line 2449
    add-int/lit8 v1, v0, 0x1

    move v10, v1

    .end local v10    # "low":I
    .local v1, "low":I
    goto :goto_5

    .line 2451
    .end local v1    # "low":I
    .restart local v10    # "low":I
    :cond_6
    add-int/lit8 v1, v0, -0x1

    move v11, v1

    .line 2453
    .end local v0    # "middle":I
    :goto_5
    goto :goto_4

    .line 2458
    :cond_7
    :goto_6
    add-int/lit8 v12, v12, -0x1

    if-lez v12, :cond_8

    .line 2459
    add-int/lit8 v11, v11, 0x1

    const/high16 v0, -0x80000000

    aput v0, v8, v11

    goto :goto_6

    .line 2461
    :cond_8
    return-void
.end method

.method static sort([IIII)V
    .locals 11
    .param p0, "a"    # [I
    .param p1, "parallelism"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 157
    sub-int v8, p3, p2

    .line 159
    .local v8, "size":I
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    const/16 v1, 0x1000

    if-le v8, v1, :cond_1

    .line 160
    shr-int/lit8 v1, v8, 0xc

    invoke-static {p1, v1}, Ljava9/util/DualPivotQuicksort;->getDepth(II)I

    move-result v9

    .line 161
    .local v9, "depth":I
    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v8, [I

    :goto_0
    move-object v3, v0

    .line 162
    .local v3, "b":[I
    new-instance v10, Ljava9/util/DualPivotQuicksort$Sorter;

    const/4 v1, 0x0

    move-object v0, v10

    move-object v2, p0

    move v4, p2

    move v5, v8

    move v6, p2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v10}, Ljava9/util/DualPivotQuicksort$Sorter;->invoke()Ljava/lang/Object;

    .line 163
    .end local v3    # "b":[I
    .end local v9    # "depth":I
    goto :goto_1

    .line 164
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p2, p3}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[IIII)V

    .line 166
    :goto_1
    return-void
.end method

.method static sort([JIII)V
    .locals 11
    .param p0, "a"    # [J
    .param p1, "parallelism"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 911
    sub-int v8, p3, p2

    .line 913
    .local v8, "size":I
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    const/16 v1, 0x1000

    if-le v8, v1, :cond_1

    .line 914
    shr-int/lit8 v1, v8, 0xc

    invoke-static {p1, v1}, Ljava9/util/DualPivotQuicksort;->getDepth(II)I

    move-result v9

    .line 915
    .local v9, "depth":I
    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v8, [J

    :goto_0
    move-object v3, v0

    .line 916
    .local v3, "b":[J
    new-instance v10, Ljava9/util/DualPivotQuicksort$Sorter;

    const/4 v1, 0x0

    move-object v0, v10

    move-object v2, p0

    move v4, p2

    move v5, v8

    move v6, p2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v10}, Ljava9/util/DualPivotQuicksort$Sorter;->invoke()Ljava/lang/Object;

    .line 917
    .end local v3    # "b":[J
    .end local v9    # "depth":I
    goto :goto_1

    .line 918
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p2, p3}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[JIII)V

    .line 920
    :goto_1
    return-void
.end method

.method static sort([SII)V
    .locals 2
    .param p0, "a"    # [S
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2065
    sub-int v0, p2, p1

    const/16 v1, 0x6d6

    if-le v0, v1, :cond_0

    .line 2066
    invoke-static {p0, p1, p2}, Ljava9/util/DualPivotQuicksort;->countingSort([SII)V

    goto :goto_0

    .line 2068
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([SIII)V

    .line 2070
    :goto_0
    return-void
.end method

.method static sort([SIII)V
    .locals 19
    .param p0, "a"    # [S
    .param p1, "bits"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p3

    .line 2084
    .end local p1    # "bits":I
    .end local p3    # "high":I
    .local v2, "bits":I
    .local v3, "high":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .local v4, "end":I
    sub-int v5, v3, v1

    .line 2089
    .local v5, "size":I
    const/16 v6, 0x2c

    if-ge v5, v6, :cond_0

    .line 2090
    invoke-static {v0, v1, v3}, Ljava9/util/DualPivotQuicksort;->insertionSort([SII)V

    .line 2091
    return-void

    .line 2098
    :cond_0
    add-int/lit8 v2, v2, 0x6

    const/16 v6, 0x180

    if-le v2, v6, :cond_1

    .line 2099
    invoke-static {v0, v1, v3}, Ljava9/util/DualPivotQuicksort;->countingSort([SII)V

    .line 2100
    return-void

    .line 2107
    :cond_1
    shr-int/lit8 v6, v5, 0x3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x3

    .line 2115
    .local v6, "step":I
    add-int v7, v1, v6

    .line 2116
    .local v7, "e1":I
    sub-int v8, v4, v6

    .line 2117
    .local v8, "e5":I
    add-int v9, v7, v8

    ushr-int/lit8 v9, v9, 0x1

    .line 2118
    .local v9, "e3":I
    add-int v10, v7, v9

    ushr-int/lit8 v10, v10, 0x1

    .line 2119
    .local v10, "e2":I
    add-int v11, v9, v8

    ushr-int/lit8 v11, v11, 0x1

    .line 2120
    .local v11, "e4":I
    aget-short v12, v0, v9

    .line 2134
    .local v12, "a3":S
    aget-short v13, v0, v8

    aget-short v14, v0, v10

    if-ge v13, v14, :cond_2

    aget-short v13, v0, v8

    .local v13, "t":S
    aget-short v14, v0, v10

    aput-short v14, v0, v8

    aput-short v13, v0, v10

    .line 2135
    .end local v13    # "t":S
    :cond_2
    aget-short v13, v0, v11

    aget-short v14, v0, v7

    if-ge v13, v14, :cond_3

    aget-short v13, v0, v11

    .restart local v13    # "t":S
    aget-short v14, v0, v7

    aput-short v14, v0, v11

    aput-short v13, v0, v7

    .line 2136
    .end local v13    # "t":S
    :cond_3
    aget-short v13, v0, v8

    aget-short v14, v0, v11

    if-ge v13, v14, :cond_4

    aget-short v13, v0, v8

    .restart local v13    # "t":S
    aget-short v14, v0, v11

    aput-short v14, v0, v8

    aput-short v13, v0, v11

    .line 2137
    .end local v13    # "t":S
    :cond_4
    aget-short v13, v0, v10

    aget-short v14, v0, v7

    if-ge v13, v14, :cond_5

    aget-short v13, v0, v10

    .restart local v13    # "t":S
    aget-short v14, v0, v7

    aput-short v14, v0, v10

    aput-short v13, v0, v7

    .line 2138
    .end local v13    # "t":S
    :cond_5
    aget-short v13, v0, v11

    aget-short v14, v0, v10

    if-ge v13, v14, :cond_6

    aget-short v13, v0, v11

    .restart local v13    # "t":S
    aget-short v14, v0, v10

    aput-short v14, v0, v11

    aput-short v13, v0, v10

    .line 2140
    .end local v13    # "t":S
    :cond_6
    aget-short v13, v0, v10

    if-ge v12, v13, :cond_8

    .line 2141
    aget-short v13, v0, v7

    if-ge v12, v13, :cond_7

    .line 2142
    aget-short v13, v0, v10

    aput-short v13, v0, v9

    aget-short v13, v0, v7

    aput-short v13, v0, v10

    aput-short v12, v0, v7

    goto :goto_1

    .line 2144
    :cond_7
    aget-short v13, v0, v10

    aput-short v13, v0, v9

    aput-short v12, v0, v10

    goto :goto_1

    .line 2146
    :cond_8
    aget-short v13, v0, v11

    if-le v12, v13, :cond_a

    .line 2147
    aget-short v13, v0, v8

    if-le v12, v13, :cond_9

    .line 2148
    aget-short v13, v0, v11

    aput-short v13, v0, v9

    aget-short v13, v0, v8

    aput-short v13, v0, v11

    aput-short v12, v0, v8

    goto :goto_1

    .line 2150
    :cond_9
    aget-short v13, v0, v11

    aput-short v13, v0, v9

    aput-short v12, v0, v11

    .line 2155
    :cond_a
    :goto_1
    move/from16 v13, p2

    .line 2156
    .local v13, "lower":I
    move v14, v4

    .line 2161
    .local v14, "upper":I
    aget-short v15, v0, v7

    move/from16 p1, v5

    .end local v5    # "size":I
    .local p1, "size":I
    aget-short v5, v0, v10

    if-ge v15, v5, :cond_13

    aget-short v5, v0, v10

    aget-short v15, v0, v9

    if-ge v5, v15, :cond_13

    aget-short v5, v0, v9

    aget-short v15, v0, v11

    if-ge v5, v15, :cond_13

    aget-short v5, v0, v11

    aget-short v15, v0, v8

    if-ge v5, v15, :cond_13

    .line 2168
    aget-short v5, v0, v7

    .line 2169
    .local v5, "pivot1":S
    aget-short v15, v0, v8

    .line 2178
    .local v15, "pivot2":S
    aget-short v16, v0, v13

    aput-short v16, v0, v7

    .line 2179
    aget-short v16, v0, v14

    aput-short v16, v0, v8

    .line 2184
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 p3, v6

    .end local v6    # "step":I
    .local p3, "step":I
    aget-short v6, v0, v13

    if-ge v6, v5, :cond_b

    move/from16 v6, p3

    goto :goto_2

    .line 2185
    :cond_b
    :goto_3
    add-int/lit8 v14, v14, -0x1

    aget-short v6, v0, v14

    if-le v6, v15, :cond_c

    goto :goto_3

    .line 2206
    :cond_c
    add-int/lit8 v13, v13, -0x1

    move v6, v13

    .local v6, "unused":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v14

    .local v16, "k":I
    :goto_4
    move/from16 v17, v6

    .end local v6    # "unused":I
    .local v17, "unused":I
    add-int/lit8 v6, v16, -0x1

    .end local v16    # "k":I
    .local v6, "k":I
    if-le v6, v13, :cond_12

    .line 2207
    move/from16 v16, v7

    .end local v7    # "e1":I
    .local v16, "e1":I
    aget-short v7, v0, v6

    .line 2209
    .local v7, "ak":S
    if-ge v7, v5, :cond_10

    .line 2210
    :goto_5
    if-ge v13, v6, :cond_f

    .line 2211
    add-int/lit8 v13, v13, 0x1

    move/from16 v18, v8

    .end local v8    # "e5":I
    .local v18, "e5":I
    aget-short v8, v0, v13

    if-lt v8, v5, :cond_e

    .line 2212
    aget-short v8, v0, v13

    if-le v8, v15, :cond_d

    .line 2213
    add-int/lit8 v14, v14, -0x1

    aget-short v8, v0, v14

    aput-short v8, v0, v6

    .line 2214
    aget-short v8, v0, v13

    aput-short v8, v0, v14

    goto :goto_6

    .line 2216
    :cond_d
    aget-short v8, v0, v13

    aput-short v8, v0, v6

    .line 2218
    :goto_6
    aput-short v7, v0, v13

    .line 2219
    goto :goto_7

    .line 2211
    :cond_e
    move/from16 v8, v18

    goto :goto_5

    .line 2210
    .end local v18    # "e5":I
    .restart local v8    # "e5":I
    :cond_f
    move/from16 v18, v8

    .end local v8    # "e5":I
    .restart local v18    # "e5":I
    goto :goto_7

    .line 2222
    .end local v18    # "e5":I
    .restart local v8    # "e5":I
    :cond_10
    move/from16 v18, v8

    .end local v8    # "e5":I
    .restart local v18    # "e5":I
    if-le v7, v15, :cond_11

    .line 2223
    add-int/lit8 v14, v14, -0x1

    aget-short v8, v0, v14

    aput-short v8, v0, v6

    .line 2224
    aput-short v7, v0, v14

    .line 2226
    .end local v7    # "ak":S
    :cond_11
    :goto_7
    move/from16 v7, v16

    move/from16 v8, v18

    move/from16 v16, v6

    move/from16 v6, v17

    goto :goto_4

    .line 2206
    .end local v16    # "e1":I
    .end local v18    # "e5":I
    .local v7, "e1":I
    .restart local v8    # "e5":I
    :cond_12
    move/from16 v16, v7

    move/from16 v18, v8

    .line 2231
    .end local v6    # "k":I
    .end local v7    # "e1":I
    .end local v8    # "e5":I
    .end local v17    # "unused":I
    .restart local v16    # "e1":I
    .restart local v18    # "e5":I
    aget-short v6, v0, v13

    aput-short v6, v0, v1

    aput-short v5, v0, v13

    .line 2232
    aget-short v6, v0, v14

    aput-short v6, v0, v4

    aput-short v15, v0, v14

    .line 2238
    or-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v13, 0x1

    invoke-static {v0, v6, v7, v14}, Ljava9/util/DualPivotQuicksort;->sort([SIII)V

    .line 2239
    or-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v14, 0x1

    invoke-static {v0, v6, v7, v3}, Ljava9/util/DualPivotQuicksort;->sort([SIII)V

    .line 2241
    .end local v5    # "pivot1":S
    .end local v15    # "pivot2":S
    goto :goto_b

    .line 2161
    .end local v16    # "e1":I
    .end local v18    # "e5":I
    .end local p3    # "step":I
    .local v6, "step":I
    .restart local v7    # "e1":I
    .restart local v8    # "e5":I
    :cond_13
    move/from16 p3, v6

    move/from16 v16, v7

    move/from16 v18, v8

    .line 2247
    .end local v6    # "step":I
    .end local v7    # "e1":I
    .end local v8    # "e5":I
    .restart local v16    # "e1":I
    .restart local v18    # "e5":I
    .restart local p3    # "step":I
    aget-short v5, v0, v9

    .line 2256
    .local v5, "pivot":S
    aget-short v6, v0, v13

    aput-short v6, v0, v9

    .line 2277
    add-int/lit8 v14, v14, 0x1

    move v6, v14

    .local v6, "k":I
    :goto_8
    add-int/lit8 v6, v6, -0x1

    if-le v6, v13, :cond_18

    .line 2278
    aget-short v7, v0, v6

    .line 2280
    .local v7, "ak":S
    if-eq v7, v5, :cond_17

    .line 2281
    aput-short v5, v0, v6

    .line 2283
    if-ge v7, v5, :cond_16

    .line 2284
    :goto_9
    add-int/lit8 v13, v13, 0x1

    aget-short v8, v0, v13

    if-ge v8, v5, :cond_14

    goto :goto_9

    .line 2286
    :cond_14
    aget-short v8, v0, v13

    if-le v8, v5, :cond_15

    .line 2287
    add-int/lit8 v14, v14, -0x1

    aget-short v8, v0, v13

    aput-short v8, v0, v14

    .line 2289
    :cond_15
    aput-short v7, v0, v13

    goto :goto_a

    .line 2291
    :cond_16
    add-int/lit8 v14, v14, -0x1

    aput-short v7, v0, v14

    .line 2294
    .end local v7    # "ak":S
    :cond_17
    :goto_a
    goto :goto_8

    .line 2299
    .end local v6    # "k":I
    :cond_18
    aget-short v6, v0, v13

    aput-short v6, v0, v1

    aput-short v5, v0, v13

    .line 2306
    or-int/lit8 v6, v2, 0x1

    invoke-static {v0, v6, v14, v3}, Ljava9/util/DualPivotQuicksort;->sort([SIII)V

    .line 2308
    .end local v5    # "pivot":S
    :goto_b
    move v3, v13

    .line 2309
    .end local v4    # "end":I
    .end local v9    # "e3":I
    .end local v10    # "e2":I
    .end local v11    # "e4":I
    .end local v12    # "a3":S
    .end local v13    # "lower":I
    .end local v14    # "upper":I
    .end local v16    # "e1":I
    .end local v18    # "e5":I
    .end local p1    # "size":I
    .end local p3    # "step":I
    goto/16 :goto_0
.end method

.method private static tryMergeRuns(Ljava9/util/DualPivotQuicksort$Sorter;[DII)Z
    .locals 17
    .param p0, "sorter"    # Ljava9/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [D
    .param p2, "low"    # I
    .param p3, "size"    # I

    .line 3739
    move-object/from16 v0, p0

    move/from16 v9, p3

    const/4 v1, 0x0

    .line 3740
    .local v1, "run":[I
    add-int v10, p2, v9

    .line 3741
    .local v10, "high":I
    const/4 v2, 0x1

    .local v2, "count":I
    move/from16 v3, p2

    .line 3746
    .local v3, "last":I
    add-int/lit8 v4, p2, 0x1

    move-object v11, v1

    move v12, v2

    move v13, v3

    .end local v1    # "run":[I
    .end local v2    # "count":I
    .end local v3    # "last":I
    .local v4, "k":I
    .local v11, "run":[I
    .local v12, "count":I
    .local v13, "last":I
    :goto_0
    const/4 v1, 0x0

    const/4 v14, 0x1

    if-ge v4, v10, :cond_c

    .line 3751
    add-int/lit8 v2, v4, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v4

    cmpg-double v2, v2, v5

    if-gez v2, :cond_0

    .line 3754
    :goto_1
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_5

    add-int/lit8 v2, v4, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v4

    cmpg-double v2, v2, v5

    if-gtz v2, :cond_5

    goto :goto_1

    .line 3756
    :cond_0
    add-int/lit8 v2, v4, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v4

    cmpl-double v2, v2, v5

    if-lez v2, :cond_3

    .line 3759
    :goto_2
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_1

    add-int/lit8 v2, v4, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v4

    cmpl-double v2, v2, v5

    if-ltz v2, :cond_1

    goto :goto_2

    .line 3762
    :cond_1
    add-int/lit8 v2, v13, -0x1

    .local v2, "i":I
    move v3, v4

    .local v3, "j":I
    :goto_3
    add-int/2addr v2, v14

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    aget-wide v5, p1, v2

    aget-wide v7, p1, v3

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    .line 3763
    aget-wide v5, p1, v2

    .local v5, "ai":D
    aget-wide v7, p1, v3

    aput-wide v7, p1, v2

    aput-wide v5, p1, v3

    .line 3764
    .end local v5    # "ai":D
    goto :goto_3

    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    goto :goto_5

    .line 3766
    :cond_3
    aget-wide v2, p1, v4

    .local v2, "ak":D
    :goto_4
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_4

    aget-wide v5, p1, v4

    cmpl-double v5, v2, v5

    if-nez v5, :cond_4

    goto :goto_4

    .line 3768
    .end local v2    # "ak":D
    :cond_4
    if-ge v4, v10, :cond_5

    .line 3769
    goto :goto_0

    .line 3776
    :cond_5
    :goto_5
    if-nez v11, :cond_8

    .line 3777
    if-ne v4, v10, :cond_6

    .line 3783
    return v14

    .line 3786
    :cond_6
    sub-int v2, v4, p2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_7

    .line 3792
    return v1

    .line 3795
    :cond_7
    shr-int/lit8 v2, v9, 0xa

    or-int/lit8 v2, v2, 0x7f

    and-int/lit16 v2, v2, 0x3ff

    new-array v2, v2, [I

    .line 3796
    .end local v11    # "run":[I
    .local v2, "run":[I
    aput p2, v2, v1

    move-object v11, v2

    goto :goto_6

    .line 3798
    .end local v2    # "run":[I
    .restart local v11    # "run":[I
    :cond_8
    add-int/lit8 v2, v13, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v13

    cmpl-double v2, v2, v5

    if-lez v2, :cond_b

    .line 3800
    sub-int v2, v4, p2

    shr-int/lit8 v2, v2, 0x7

    if-le v12, v2, :cond_9

    .line 3806
    return v1

    .line 3809
    :cond_9
    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0x1400

    if-ne v12, v2, :cond_a

    .line 3814
    return v1

    .line 3817
    :cond_a
    array-length v1, v11

    if-ne v12, v1, :cond_b

    .line 3822
    shl-int/lit8 v1, v12, 0x1

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    .line 3825
    :cond_b
    :goto_6
    move v13, v4

    aput v4, v11, v12

    goto/16 :goto_0

    .line 3831
    .end local v4    # "k":I
    :cond_c
    if-le v12, v14, :cond_10

    .line 3832
    move/from16 v2, p2

    .line 3834
    .local v2, "offset":I
    if-eqz v0, :cond_e

    iget-object v3, v0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    check-cast v3, [D

    check-cast v3, [D

    move-object v4, v3

    .local v4, "b":[D
    if-nez v3, :cond_d

    goto :goto_7

    .line 3837
    :cond_d
    iget v2, v0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    move v15, v2

    move-object/from16 v16, v4

    goto :goto_8

    .line 3835
    .end local v4    # "b":[D
    :cond_e
    :goto_7
    new-array v4, v9, [D

    move v15, v2

    move-object/from16 v16, v4

    .line 3839
    .end local v2    # "offset":I
    .local v15, "offset":I
    .local v16, "b":[D
    :goto_8
    const/4 v4, 0x1

    if-eqz v0, :cond_f

    move v5, v14

    goto :goto_9

    :cond_f
    move v5, v1

    :goto_9
    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move v3, v15

    move-object v6, v11

    move v8, v12

    invoke-static/range {v1 .. v8}, Ljava9/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    .line 3841
    .end local v15    # "offset":I
    .end local v16    # "b":[D
    :cond_10
    return v14
.end method

.method private static tryMergeRuns(Ljava9/util/DualPivotQuicksort$Sorter;[FII)Z
    .locals 17
    .param p0, "sorter"    # Ljava9/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [F
    .param p2, "low"    # I
    .param p3, "size"    # I

    .line 2933
    move-object/from16 v0, p0

    move/from16 v9, p3

    const/4 v1, 0x0

    .line 2934
    .local v1, "run":[I
    add-int v10, p2, v9

    .line 2935
    .local v10, "high":I
    const/4 v2, 0x1

    .local v2, "count":I
    move/from16 v3, p2

    .line 2940
    .local v3, "last":I
    add-int/lit8 v4, p2, 0x1

    move-object v11, v1

    move v12, v2

    move v13, v3

    .end local v1    # "run":[I
    .end local v2    # "count":I
    .end local v3    # "last":I
    .local v4, "k":I
    .local v11, "run":[I
    .local v12, "count":I
    .local v13, "last":I
    :goto_0
    const/4 v1, 0x0

    const/4 v14, 0x1

    if-ge v4, v10, :cond_c

    .line 2945
    add-int/lit8 v2, v4, -0x1

    aget v2, p1, v2

    aget v3, p1, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2948
    :goto_1
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_5

    add-int/lit8 v2, v4, -0x1

    aget v2, p1, v2

    aget v3, p1, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    goto :goto_1

    .line 2950
    :cond_0
    add-int/lit8 v2, v4, -0x1

    aget v2, p1, v2

    aget v3, p1, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 2953
    :goto_2
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_1

    add-int/lit8 v2, v4, -0x1

    aget v2, p1, v2

    aget v3, p1, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    goto :goto_2

    .line 2956
    :cond_1
    add-int/lit8 v2, v13, -0x1

    .local v2, "i":I
    move v3, v4

    .local v3, "j":I
    :goto_3
    add-int/2addr v2, v14

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    aget v5, p1, v2

    aget v6, p1, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 2957
    aget v5, p1, v2

    .local v5, "ai":F
    aget v6, p1, v3

    aput v6, p1, v2

    aput v5, p1, v3

    .line 2958
    .end local v5    # "ai":F
    goto :goto_3

    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    goto :goto_5

    .line 2960
    :cond_3
    aget v2, p1, v4

    .local v2, "ak":F
    :goto_4
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_4

    aget v3, p1, v4

    cmpl-float v3, v2, v3

    if-nez v3, :cond_4

    goto :goto_4

    .line 2962
    .end local v2    # "ak":F
    :cond_4
    if-ge v4, v10, :cond_5

    .line 2963
    goto :goto_0

    .line 2970
    :cond_5
    :goto_5
    if-nez v11, :cond_8

    .line 2971
    if-ne v4, v10, :cond_6

    .line 2977
    return v14

    .line 2980
    :cond_6
    sub-int v2, v4, p2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_7

    .line 2986
    return v1

    .line 2989
    :cond_7
    shr-int/lit8 v2, v9, 0xa

    or-int/lit8 v2, v2, 0x7f

    and-int/lit16 v2, v2, 0x3ff

    new-array v2, v2, [I

    .line 2990
    .end local v11    # "run":[I
    .local v2, "run":[I
    aput p2, v2, v1

    move-object v11, v2

    goto :goto_6

    .line 2992
    .end local v2    # "run":[I
    .restart local v11    # "run":[I
    :cond_8
    add-int/lit8 v2, v13, -0x1

    aget v2, p1, v2

    aget v3, p1, v13

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 2994
    sub-int v2, v4, p2

    shr-int/lit8 v2, v2, 0x7

    if-le v12, v2, :cond_9

    .line 3000
    return v1

    .line 3003
    :cond_9
    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0x1400

    if-ne v12, v2, :cond_a

    .line 3008
    return v1

    .line 3011
    :cond_a
    array-length v1, v11

    if-ne v12, v1, :cond_b

    .line 3016
    shl-int/lit8 v1, v12, 0x1

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    .line 3019
    :cond_b
    :goto_6
    move v13, v4

    aput v4, v11, v12

    goto/16 :goto_0

    .line 3025
    .end local v4    # "k":I
    :cond_c
    if-le v12, v14, :cond_10

    .line 3026
    move/from16 v2, p2

    .line 3028
    .local v2, "offset":I
    if-eqz v0, :cond_e

    iget-object v3, v0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    check-cast v3, [F

    check-cast v3, [F

    move-object v4, v3

    .local v4, "b":[F
    if-nez v3, :cond_d

    goto :goto_7

    .line 3031
    :cond_d
    iget v2, v0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    move v15, v2

    move-object/from16 v16, v4

    goto :goto_8

    .line 3029
    .end local v4    # "b":[F
    :cond_e
    :goto_7
    new-array v4, v9, [F

    move v15, v2

    move-object/from16 v16, v4

    .line 3033
    .end local v2    # "offset":I
    .local v15, "offset":I
    .local v16, "b":[F
    :goto_8
    const/4 v4, 0x1

    if-eqz v0, :cond_f

    move v5, v14

    goto :goto_9

    :cond_f
    move v5, v1

    :goto_9
    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move v3, v15

    move-object v6, v11

    move v8, v12

    invoke-static/range {v1 .. v8}, Ljava9/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    .line 3035
    .end local v15    # "offset":I
    .end local v16    # "b":[F
    :cond_10
    return v14
.end method

.method private static tryMergeRuns(Ljava9/util/DualPivotQuicksort$Sorter;[III)Z
    .locals 17
    .param p0, "sorter"    # Ljava9/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [I
    .param p2, "low"    # I
    .param p3, "size"    # I

    .line 638
    move-object/from16 v0, p0

    move/from16 v9, p3

    const/4 v1, 0x0

    .line 639
    .local v1, "run":[I
    add-int v10, p2, v9

    .line 640
    .local v10, "high":I
    const/4 v2, 0x1

    .local v2, "count":I
    move/from16 v3, p2

    .line 645
    .local v3, "last":I
    add-int/lit8 v4, p2, 0x1

    move-object v11, v1

    move v12, v2

    move v13, v3

    .end local v1    # "run":[I
    .end local v2    # "count":I
    .end local v3    # "last":I
    .local v4, "k":I
    .local v11, "run":[I
    .local v12, "count":I
    .local v13, "last":I
    :goto_0
    const/4 v1, 0x0

    const/4 v14, 0x1

    if-ge v4, v10, :cond_c

    .line 650
    add-int/lit8 v2, v4, -0x1

    aget v2, p1, v2

    aget v3, p1, v4

    if-ge v2, v3, :cond_0

    .line 653
    :goto_1
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_5

    add-int/lit8 v2, v4, -0x1

    aget v2, p1, v2

    aget v3, p1, v4

    if-gt v2, v3, :cond_5

    goto :goto_1

    .line 655
    :cond_0
    add-int/lit8 v2, v4, -0x1

    aget v2, p1, v2

    aget v3, p1, v4

    if-le v2, v3, :cond_3

    .line 658
    :goto_2
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_1

    add-int/lit8 v2, v4, -0x1

    aget v2, p1, v2

    aget v3, p1, v4

    if-lt v2, v3, :cond_1

    goto :goto_2

    .line 661
    :cond_1
    add-int/lit8 v2, v13, -0x1

    .local v2, "i":I
    move v3, v4

    .local v3, "j":I
    :goto_3
    add-int/2addr v2, v14

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    aget v5, p1, v2

    aget v6, p1, v3

    if-le v5, v6, :cond_2

    .line 662
    aget v5, p1, v2

    .local v5, "ai":I
    aget v6, p1, v3

    aput v6, p1, v2

    aput v5, p1, v3

    .line 663
    .end local v5    # "ai":I
    goto :goto_3

    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    goto :goto_5

    .line 665
    :cond_3
    aget v2, p1, v4

    .local v2, "ak":I
    :goto_4
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_4

    aget v3, p1, v4

    if-ne v2, v3, :cond_4

    goto :goto_4

    .line 667
    .end local v2    # "ak":I
    :cond_4
    if-ge v4, v10, :cond_5

    .line 668
    goto :goto_0

    .line 675
    :cond_5
    :goto_5
    if-nez v11, :cond_8

    .line 676
    if-ne v4, v10, :cond_6

    .line 682
    return v14

    .line 685
    :cond_6
    sub-int v2, v4, p2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_7

    .line 691
    return v1

    .line 694
    :cond_7
    shr-int/lit8 v2, v9, 0xa

    or-int/lit8 v2, v2, 0x7f

    and-int/lit16 v2, v2, 0x3ff

    new-array v2, v2, [I

    .line 695
    .end local v11    # "run":[I
    .local v2, "run":[I
    aput p2, v2, v1

    move-object v11, v2

    goto :goto_6

    .line 697
    .end local v2    # "run":[I
    .restart local v11    # "run":[I
    :cond_8
    add-int/lit8 v2, v13, -0x1

    aget v2, p1, v2

    aget v3, p1, v13

    if-le v2, v3, :cond_b

    .line 699
    sub-int v2, v4, p2

    shr-int/lit8 v2, v2, 0x7

    if-le v12, v2, :cond_9

    .line 705
    return v1

    .line 708
    :cond_9
    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0x1400

    if-ne v12, v2, :cond_a

    .line 713
    return v1

    .line 716
    :cond_a
    array-length v1, v11

    if-ne v12, v1, :cond_b

    .line 721
    shl-int/lit8 v1, v12, 0x1

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    .line 724
    :cond_b
    :goto_6
    move v13, v4

    aput v4, v11, v12

    goto/16 :goto_0

    .line 730
    .end local v4    # "k":I
    :cond_c
    if-le v12, v14, :cond_10

    .line 731
    move/from16 v2, p2

    .line 733
    .local v2, "offset":I
    if-eqz v0, :cond_e

    iget-object v3, v0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    move-object v4, v3

    .local v4, "b":[I
    if-nez v3, :cond_d

    goto :goto_7

    .line 736
    :cond_d
    iget v2, v0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    move v15, v2

    move-object/from16 v16, v4

    goto :goto_8

    .line 734
    .end local v4    # "b":[I
    :cond_e
    :goto_7
    new-array v4, v9, [I

    move v15, v2

    move-object/from16 v16, v4

    .line 738
    .end local v2    # "offset":I
    .local v15, "offset":I
    .local v16, "b":[I
    :goto_8
    const/4 v4, 0x1

    if-eqz v0, :cond_f

    move v5, v14

    goto :goto_9

    :cond_f
    move v5, v1

    :goto_9
    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move v3, v15

    move-object v6, v11

    move v8, v12

    invoke-static/range {v1 .. v8}, Ljava9/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    .line 740
    .end local v15    # "offset":I
    .end local v16    # "b":[I
    :cond_10
    return v14
.end method

.method private static tryMergeRuns(Ljava9/util/DualPivotQuicksort$Sorter;[JII)Z
    .locals 17
    .param p0, "sorter"    # Ljava9/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [J
    .param p2, "low"    # I
    .param p3, "size"    # I

    .line 1392
    move-object/from16 v0, p0

    move/from16 v9, p3

    const/4 v1, 0x0

    .line 1393
    .local v1, "run":[I
    add-int v10, p2, v9

    .line 1394
    .local v10, "high":I
    const/4 v2, 0x1

    .local v2, "count":I
    move/from16 v3, p2

    .line 1399
    .local v3, "last":I
    add-int/lit8 v4, p2, 0x1

    move-object v11, v1

    move v12, v2

    move v13, v3

    .end local v1    # "run":[I
    .end local v2    # "count":I
    .end local v3    # "last":I
    .local v4, "k":I
    .local v11, "run":[I
    .local v12, "count":I
    .local v13, "last":I
    :goto_0
    const/4 v1, 0x0

    const/4 v14, 0x1

    if-ge v4, v10, :cond_c

    .line 1404
    add-int/lit8 v2, v4, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v4

    cmp-long v2, v2, v5

    if-gez v2, :cond_0

    .line 1407
    :goto_1
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_5

    add-int/lit8 v2, v4, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v4

    cmp-long v2, v2, v5

    if-gtz v2, :cond_5

    goto :goto_1

    .line 1409
    :cond_0
    add-int/lit8 v2, v4, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v4

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    .line 1412
    :goto_2
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_1

    add-int/lit8 v2, v4, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v4

    cmp-long v2, v2, v5

    if-ltz v2, :cond_1

    goto :goto_2

    .line 1415
    :cond_1
    add-int/lit8 v2, v13, -0x1

    .local v2, "i":I
    move v3, v4

    .local v3, "j":I
    :goto_3
    add-int/2addr v2, v14

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    aget-wide v5, p1, v2

    aget-wide v7, p1, v3

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 1416
    aget-wide v5, p1, v2

    .local v5, "ai":J
    aget-wide v7, p1, v3

    aput-wide v7, p1, v2

    aput-wide v5, p1, v3

    .line 1417
    .end local v5    # "ai":J
    goto :goto_3

    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    goto :goto_5

    .line 1419
    :cond_3
    aget-wide v2, p1, v4

    .local v2, "ak":J
    :goto_4
    add-int/2addr v4, v14

    if-ge v4, v10, :cond_4

    aget-wide v5, p1, v4

    cmp-long v5, v2, v5

    if-nez v5, :cond_4

    goto :goto_4

    .line 1421
    .end local v2    # "ak":J
    :cond_4
    if-ge v4, v10, :cond_5

    .line 1422
    goto :goto_0

    .line 1429
    :cond_5
    :goto_5
    if-nez v11, :cond_8

    .line 1430
    if-ne v4, v10, :cond_6

    .line 1436
    return v14

    .line 1439
    :cond_6
    sub-int v2, v4, p2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_7

    .line 1445
    return v1

    .line 1448
    :cond_7
    shr-int/lit8 v2, v9, 0xa

    or-int/lit8 v2, v2, 0x7f

    and-int/lit16 v2, v2, 0x3ff

    new-array v2, v2, [I

    .line 1449
    .end local v11    # "run":[I
    .local v2, "run":[I
    aput p2, v2, v1

    move-object v11, v2

    goto :goto_6

    .line 1451
    .end local v2    # "run":[I
    .restart local v11    # "run":[I
    :cond_8
    add-int/lit8 v2, v13, -0x1

    aget-wide v2, p1, v2

    aget-wide v5, p1, v13

    cmp-long v2, v2, v5

    if-lez v2, :cond_b

    .line 1453
    sub-int v2, v4, p2

    shr-int/lit8 v2, v2, 0x7

    if-le v12, v2, :cond_9

    .line 1459
    return v1

    .line 1462
    :cond_9
    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0x1400

    if-ne v12, v2, :cond_a

    .line 1467
    return v1

    .line 1470
    :cond_a
    array-length v1, v11

    if-ne v12, v1, :cond_b

    .line 1475
    shl-int/lit8 v1, v12, 0x1

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    .line 1478
    :cond_b
    :goto_6
    move v13, v4

    aput v4, v11, v12

    goto/16 :goto_0

    .line 1484
    .end local v4    # "k":I
    :cond_c
    if-le v12, v14, :cond_10

    .line 1485
    move/from16 v2, p2

    .line 1487
    .local v2, "offset":I
    if-eqz v0, :cond_e

    iget-object v3, v0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    check-cast v3, [J

    check-cast v3, [J

    move-object v4, v3

    .local v4, "b":[J
    if-nez v3, :cond_d

    goto :goto_7

    .line 1490
    :cond_d
    iget v2, v0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    move v15, v2

    move-object/from16 v16, v4

    goto :goto_8

    .line 1488
    .end local v4    # "b":[J
    :cond_e
    :goto_7
    new-array v4, v9, [J

    move v15, v2

    move-object/from16 v16, v4

    .line 1492
    .end local v2    # "offset":I
    .local v15, "offset":I
    .local v16, "b":[J
    :goto_8
    const/4 v4, 0x1

    if-eqz v0, :cond_f

    move v5, v14

    goto :goto_9

    :cond_f
    move v5, v1

    :goto_9
    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move v3, v15

    move-object v6, v11

    move v8, v12

    invoke-static/range {v1 .. v8}, Ljava9/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    .line 1494
    .end local v15    # "offset":I
    .end local v16    # "b":[J
    :cond_10
    return v14
.end method
