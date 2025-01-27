.class public final Ljava9/util/J8Arrays;
.super Ljava/lang/Object;
.source "J8Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/J8Arrays$NaturalOrder;
    }
.end annotation


# static fields
.field private static final MIN_ARRAY_SORT_GRAN:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3092
    return-void
.end method

.method public static compare([DII[DII)I
    .locals 19
    .param p0, "a"    # [D
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [D
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2633
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    array-length v6, v0

    invoke-static {v6, v1, v2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2634
    array-length v6, v3

    invoke-static {v6, v4, v5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2636
    sub-int v6, v2, v1

    .line 2637
    .local v6, "aLength":I
    sub-int v7, v5, v4

    .line 2638
    .local v7, "bLength":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2639
    .local v8, "length":I
    const/4 v9, 0x0

    .end local p1    # "aFromIndex":I
    .end local p4    # "bFromIndex":I
    .local v1, "aFromIndex":I
    .local v4, "bFromIndex":I
    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 2640
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "aFromIndex":I
    .local v10, "aFromIndex":I
    aget-wide v11, v0, v1

    .local v11, "va":D
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "bFromIndex":I
    .local v1, "bFromIndex":I
    aget-wide v13, v3, v4

    .line 2641
    .local v13, "vb":D
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v17

    cmp-long v4, v15, v17

    if-eqz v4, :cond_0

    .line 2642
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    .line 2643
    .local v4, "c":I
    if-eqz v4, :cond_0

    return v4

    .line 2639
    .end local v4    # "c":I
    .end local v11    # "va":D
    .end local v13    # "vb":D
    :cond_0
    add-int/lit8 v9, v9, 0x1

    move v4, v1

    move v1, v10

    goto :goto_0

    .line 2647
    .end local v9    # "i":I
    .end local v10    # "aFromIndex":I
    .local v1, "aFromIndex":I
    .local v4, "bFromIndex":I
    :cond_1
    sub-int v9, v6, v7

    return v9
.end method

.method public static compare([D[D)I
    .locals 10
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 2554
    if-ne p0, p1, :cond_0

    .line 2555
    const/4 v0, 0x0

    return v0

    .line 2556
    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 2559
    :cond_1
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2560
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2561
    aget-wide v2, p0, v1

    .local v2, "va":D
    aget-wide v4, p1, v1

    .line 2562
    .local v4, "vb":D
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 2563
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    .line 2564
    .local v6, "c":I
    if-eqz v6, :cond_2

    return v6

    .line 2560
    .end local v2    # "va":D
    .end local v4    # "vb":D
    .end local v6    # "c":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2568
    .end local v1    # "i":I
    :cond_3
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 2557
    .end local v0    # "length":I
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static compare([III[III)I
    .locals 7
    .param p0, "a"    # [I
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2361
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2362
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2364
    sub-int v0, p2, p1

    .line 2365
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2366
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2367
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2368
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget p1, p0, p1

    .line 2369
    .local p1, "va":I
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget p4, p3, p4

    .line 2370
    .local p4, "vb":I
    if-eq p1, p4, :cond_0

    invoke-static {p1, p4}, Ljava9/lang/Integers;->compare(II)I

    move-result v6

    return v6

    .line 2367
    .end local p1    # "va":I
    .end local p4    # "vb":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 2373
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .local p1, "aFromIndex":I
    .local p4, "bFromIndex":I
    :cond_1
    sub-int v3, v0, v1

    return v3
.end method

.method public static compare([I[I)I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 2286
    if-ne p0, p1, :cond_0

    .line 2287
    const/4 v0, 0x0

    return v0

    .line 2288
    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 2291
    :cond_1
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2292
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2293
    aget v2, p0, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_2

    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3}, Ljava9/lang/Integers;->compare(II)I

    move-result v2

    return v2

    .line 2292
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2296
    .end local v1    # "i":I
    :cond_3
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 2289
    .end local v0    # "length":I
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static compare([JII[JII)I
    .locals 9
    .param p0, "a"    # [J
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [J
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2495
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2496
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2498
    sub-int v0, p2, p1

    .line 2499
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2500
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2501
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2502
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-wide v5, p0, p1

    .line 2503
    .local v5, "va":J
    add-int/lit8 p1, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local p1, "bFromIndex":I
    aget-wide v7, p3, p4

    .line 2504
    .local v7, "vb":J
    cmp-long p4, v5, v7

    if-eqz p4, :cond_0

    invoke-static {v5, v6, v7, v8}, Ljava9/lang/Longs;->compare(JJ)I

    move-result p4

    return p4

    .line 2501
    .end local v5    # "va":J
    .end local v7    # "vb":J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move p4, p1

    move p1, v4

    goto :goto_0

    .line 2507
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .local p1, "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_1
    sub-int v3, v0, v1

    return v3
.end method

.method public static compare([J[J)I
    .locals 6
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 2420
    if-ne p0, p1, :cond_0

    .line 2421
    const/4 v0, 0x0

    return v0

    .line 2422
    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 2425
    :cond_1
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2426
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2427
    aget-wide v2, p0, v1

    aget-wide v4, p1, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    aget-wide v2, p0, v1

    aget-wide v4, p1, v1

    invoke-static {v2, v3, v4, v5}, Ljava9/lang/Longs;->compare(JJ)I

    move-result v2

    return v2

    .line 2426
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2430
    .end local v1    # "i":I
    :cond_3
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 2423
    .end local v0    # "length":I
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static compare([Ljava/lang/Comparable;II[Ljava/lang/Comparable;II)I
    .locals 7
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;II[TT;II)I"
        }
    .end annotation

    .line 1633
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    .local p3, "b":[Ljava/lang/Comparable;, "[TT;"
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1634
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1636
    sub-int v0, p2, p1

    .line 1637
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 1638
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1639
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1640
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    .line 1641
    .local p1, "oa":Ljava/lang/Comparable;, "TT;"
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    .line 1642
    .local p4, "ob":Ljava/lang/Comparable;, "TT;"
    if-eq p1, p4, :cond_3

    .line 1643
    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_1

    .line 1645
    :cond_0
    invoke-interface {p1, p4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 1646
    .local v6, "v":I
    if-eqz v6, :cond_3

    .line 1647
    return v6

    .line 1644
    .end local v6    # "v":I
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    const/4 v6, -0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 1639
    .end local p1    # "oa":Ljava/lang/Comparable;, "TT;"
    .end local p4    # "ob":Ljava/lang/Comparable;, "TT;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 1652
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .local p1, "aFromIndex":I
    .local p4, "bFromIndex":I
    :cond_4
    sub-int v3, v0, v1

    return v3
.end method

.method public static compare([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;[TT;)I"
        }
    .end annotation

    .line 1541
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    .local p1, "b":[Ljava/lang/Comparable;, "[TT;"
    if-ne p0, p1, :cond_0

    .line 1542
    const/4 v0, 0x0

    return v0

    .line 1544
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_7

    if-nez p1, :cond_1

    goto :goto_3

    .line 1547
    :cond_1
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1548
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 1549
    aget-object v4, p0, v3

    .line 1550
    .local v4, "oa":Ljava/lang/Comparable;, "TT;"
    aget-object v5, p1, v3

    .line 1551
    .local v5, "ob":Ljava/lang/Comparable;, "TT;"
    if-eq v4, v5, :cond_5

    .line 1553
    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    .line 1555
    :cond_2
    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 1556
    .local v6, "v":I
    if-eqz v6, :cond_5

    .line 1557
    return v6

    .line 1554
    .end local v6    # "v":I
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    .line 1548
    .end local v4    # "oa":Ljava/lang/Comparable;, "TT;"
    .end local v5    # "ob":Ljava/lang/Comparable;, "TT;"
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1562
    .end local v3    # "i":I
    :cond_6
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 1545
    .end local v2    # "length":I
    :cond_7
    :goto_3
    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    return v0
.end method

.method public static compare([Ljava/lang/Object;II[Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 7
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II[TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 1774
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "b":[Ljava/lang/Object;, "[TT;"
    .local p6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p6}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1776
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1778
    sub-int v0, p2, p1

    .line 1779
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 1780
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1781
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1782
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    .line 1783
    .local p1, "oa":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    .line 1784
    .local p4, "ob":Ljava/lang/Object;, "TT;"
    if-eq p1, p4, :cond_0

    .line 1786
    invoke-interface {p6, p1, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 1787
    .local v6, "v":I
    if-eqz v6, :cond_0

    .line 1788
    return v6

    .line 1781
    .end local v6    # "v":I
    .end local p1    # "oa":Ljava/lang/Object;, "TT;"
    .end local p4    # "ob":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 1793
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .local p1, "aFromIndex":I
    .local p4, "bFromIndex":I
    :cond_1
    sub-int v3, v0, v1

    return v3
.end method

.method public static compare([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 1696
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    if-ne p0, p1, :cond_0

    .line 1698
    const/4 v0, 0x0

    return v0

    .line 1699
    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 1702
    :cond_1
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1703
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1704
    aget-object v2, p0, v1

    .line 1705
    .local v2, "oa":Ljava/lang/Object;, "TT;"
    aget-object v3, p1, v1

    .line 1706
    .local v3, "ob":Ljava/lang/Object;, "TT;"
    if-eq v2, v3, :cond_2

    .line 1708
    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 1709
    .local v4, "v":I
    if-eqz v4, :cond_2

    .line 1710
    return v4

    .line 1703
    .end local v2    # "oa":Ljava/lang/Object;, "TT;"
    .end local v3    # "ob":Ljava/lang/Object;, "TT;"
    .end local v4    # "v":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1715
    .end local v1    # "i":I
    :cond_3
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 1700
    .end local v0    # "length":I
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static equals([DII[DII)Z
    .locals 10
    .param p0, "a"    # [D
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [D
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2224
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2225
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2227
    sub-int v0, p2, p1

    .line 2228
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2229
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2230
    return v2

    .line 2232
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2233
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-wide v5, p0, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .local p1, "va":Ljava/lang/Double;
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-wide v6, p3, p4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    .line 2234
    .local p4, "vb":Ljava/lang/Double;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 2235
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2236
    :cond_1
    return v2

    .line 2232
    .end local p1    # "va":Ljava/lang/Double;
    .end local p4    # "vb":Ljava/lang/Double;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 2239
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .local p1, "aFromIndex":I
    .local p4, "bFromIndex":I
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public static equals([III[III)Z
    .locals 6
    .param p0, "a"    # [I
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2169
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2170
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2172
    sub-int v0, p2, p1

    .line 2173
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2174
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2175
    return v2

    .line 2177
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2178
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget p4, p3, p4

    if-eq p1, p4, :cond_1

    .line 2179
    return v2

    .line 2177
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 2181
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static equals([JII[JII)Z
    .locals 9
    .param p0, "a"    # [J
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [J
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2120
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2121
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2123
    sub-int v0, p2, p1

    .line 2124
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2125
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2126
    return v2

    .line 2128
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2129
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-wide v5, p0, p1

    add-int/lit8 p1, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local p1, "bFromIndex":I
    aget-wide v7, p3, p4

    cmp-long p4, v5, v7

    if-eqz p4, :cond_1

    .line 2130
    return v2

    .line 2128
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move p4, p1

    move p1, v4

    goto :goto_0

    .line 2132
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .local p1, "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static equals([Ljava/lang/Object;II[Ljava/lang/Object;II)Z
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [Ljava/lang/Object;
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 1376
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1377
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1379
    sub-int v0, p2, p1

    .line 1380
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 1381
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1382
    return v2

    .line 1384
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1385
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    invoke-static {p1, p4}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1386
    return v2

    .line 1384
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 1389
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static equals([Ljava/lang/Object;II[Ljava/lang/Object;IILjava/util/Comparator;)Z
    .locals 6
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II[TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1472
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "b":[Ljava/lang/Object;, "[TT;"
    .local p6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p6}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1474
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1476
    sub-int v0, p2, p1

    .line 1477
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 1478
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1479
    return v2

    .line 1481
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1482
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    invoke-interface {p6, p1, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1483
    return v2

    .line 1481
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 1486
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1414
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "a2":[Ljava/lang/Object;, "[TT;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1416
    return v0

    .line 1417
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 1420
    :cond_1
    array-length v2, p0

    .line 1421
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_2

    .line 1422
    return v1

    .line 1424
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1425
    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-interface {p2, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1426
    return v1

    .line 1424
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1429
    .end local v3    # "i":I
    :cond_4
    return v0

    .line 1418
    .end local v2    # "length":I
    :cond_5
    :goto_1
    return v1
.end method

.method static synthetic lambda$parallelSetAll$163([Ljava/lang/Object;Ljava9/util/function/IntFunction;I)V
    .locals 0
    .param p2, "i"    # I

    .line 981
    invoke-interface {p1, p2}, Ljava9/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$164([ILjava9/util/function/IntUnaryOperator;I)V
    .locals 0
    .param p2, "i"    # I

    .line 1037
    invoke-interface {p1, p2}, Ljava9/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$165([JLjava9/util/function/IntToLongFunction;I)V
    .locals 2
    .param p2, "i"    # I

    .line 1093
    invoke-interface {p1, p2}, Ljava9/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$166([DLjava9/util/function/IntToDoubleFunction;I)V
    .locals 2
    .param p2, "i"    # I

    .line 1149
    invoke-interface {p1, p2}, Ljava9/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method public static mismatch([DII[DII)I
    .locals 19
    .param p0, "a"    # [D
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [D
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 3033
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    array-length v6, v0

    invoke-static {v6, v1, v2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 3034
    array-length v6, v3

    invoke-static {v6, v4, v5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 3036
    sub-int v6, v2, v1

    .line 3037
    .local v6, "aLength":I
    sub-int v7, v5, v4

    .line 3038
    .local v7, "bLength":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3039
    .local v8, "length":I
    const/4 v9, 0x0

    .end local p1    # "aFromIndex":I
    .end local p4    # "bFromIndex":I
    .local v1, "aFromIndex":I
    .local v4, "bFromIndex":I
    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 3040
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "aFromIndex":I
    .local v10, "aFromIndex":I
    aget-wide v11, v0, v1

    .local v11, "va":D
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "bFromIndex":I
    .local v1, "bFromIndex":I
    aget-wide v13, v3, v4

    .line 3041
    .local v13, "vb":D
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v17

    cmp-long v4, v15, v17

    if-eqz v4, :cond_1

    .line 3042
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3043
    :cond_0
    return v9

    .line 3039
    .end local v11    # "va":D
    .end local v13    # "vb":D
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v4, v1

    move v1, v10

    goto :goto_0

    .line 3046
    .end local v9    # "i":I
    .end local v10    # "aFromIndex":I
    .local v1, "aFromIndex":I
    .restart local v4    # "bFromIndex":I
    :cond_2
    if-eq v6, v7, :cond_3

    move v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    :goto_1
    return v9
.end method

.method public static mismatch([D[D)I
    .locals 11
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 2956
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2957
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne p0, p1, :cond_0

    .line 2958
    return v1

    .line 2960
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2961
    aget-wide v3, p0, v2

    .local v3, "va":D
    aget-wide v5, p1, v2

    .line 2962
    .local v5, "vb":D
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 2963
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2964
    :cond_1
    return v2

    .line 2960
    .end local v3    # "va":D
    .end local v5    # "vb":D
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2967
    .end local v2    # "i":I
    :cond_3
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_4

    move v1, v0

    :cond_4
    return v1
.end method

.method public static mismatch([III[III)I
    .locals 6
    .param p0, "a"    # [I
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2768
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2769
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2771
    sub-int v0, p2, p1

    .line 2772
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2773
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2774
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2775
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget p4, p3, p4

    if-eq p1, p4, :cond_0

    return v3

    .line 2774
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 2778
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_1
    if-eq v0, v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    return v3
.end method

.method public static mismatch([I[I)I
    .locals 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 2694
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2695
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne p0, p1, :cond_0

    .line 2696
    return v1

    .line 2698
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2699
    aget v3, p0, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_1

    return v2

    .line 2698
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2702
    .end local v2    # "i":I
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public static mismatch([JII[JII)I
    .locals 9
    .param p0, "a"    # [J
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [J
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2899
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2900
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2902
    sub-int v0, p2, p1

    .line 2903
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2904
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2905
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2906
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-wide v5, p0, p1

    add-int/lit8 p1, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local p1, "bFromIndex":I
    aget-wide v7, p3, p4

    cmp-long p4, v5, v7

    if-eqz p4, :cond_0

    return v3

    .line 2905
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move p4, p1

    move p1, v4

    goto :goto_0

    .line 2909
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .local p1, "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_1
    if-eq v0, v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    return v3
.end method

.method public static mismatch([J[J)I
    .locals 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 2825
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2826
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne p0, p1, :cond_0

    .line 2827
    return v1

    .line 2829
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2830
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    return v2

    .line 2829
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2833
    .end local v2    # "i":I
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public static mismatch([Ljava/lang/Object;II[Ljava/lang/Object;II)I
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [Ljava/lang/Object;
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 1914
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1915
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1917
    sub-int v0, p2, p1

    .line 1918
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 1919
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1920
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1921
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    invoke-static {p1, p4}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1922
    return v3

    .line 1920
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 1925
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_1
    if-eq v0, v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    return v3
.end method

.method public static mismatch([Ljava/lang/Object;II[Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 7
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II[TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 2064
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "b":[Ljava/lang/Object;, "[TT;"
    .local p6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p6}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2066
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 2068
    sub-int v0, p2, p1

    .line 2069
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2070
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2071
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2072
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    .line 2073
    .local p1, "oa":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    .line 2074
    .local p4, "ob":Ljava/lang/Object;, "TT;"
    if-eq p1, p4, :cond_0

    .line 2076
    invoke-interface {p6, p1, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 2077
    .local v6, "v":I
    if-eqz v6, :cond_0

    .line 2078
    return v3

    .line 2071
    .end local v6    # "v":I
    .end local p1    # "oa":Ljava/lang/Object;, "TT;"
    .end local p4    # "ob":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_0

    .line 2083
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .local p1, "aFromIndex":I
    .local p4, "bFromIndex":I
    :cond_1
    if-eq v0, v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    return v3
.end method

.method public static mismatch([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .line 1838
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1839
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne p0, p1, :cond_0

    .line 1840
    return v1

    .line 1842
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1843
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1844
    return v2

    .line 1842
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1847
    .end local v2    # "i":I
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public static mismatch([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 1976
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1978
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne p0, p1, :cond_0

    .line 1979
    return v1

    .line 1981
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1982
    aget-object v3, p0, v2

    .line 1983
    .local v3, "oa":Ljava/lang/Object;, "TT;"
    aget-object v4, p1, v2

    .line 1984
    .local v4, "ob":Ljava/lang/Object;, "TT;"
    if-eq v3, v4, :cond_1

    .line 1986
    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 1987
    .local v5, "v":I
    if-eqz v5, :cond_1

    .line 1988
    return v2

    .line 1981
    .end local v3    # "oa":Ljava/lang/Object;, "TT;"
    .end local v4    # "ob":Ljava/lang/Object;, "TT;"
    .end local v5    # "v":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1993
    .end local v2    # "i":I
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public static parallelPrefix([DIILjava9/util/function/DoubleBinaryOperator;)V
    .locals 7
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava9/util/function/DoubleBinaryOperator;

    .line 1287
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1289
    if-ge p1, p2, :cond_0

    .line 1290
    new-instance v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava9/util/function/DoubleBinaryOperator;[DII)V

    .line 1291
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    .line 1292
    :cond_0
    return-void
.end method

.method public static parallelPrefix([DLjava9/util/function/DoubleBinaryOperator;)V
    .locals 7
    .param p0, "array"    # [D
    .param p1, "op"    # Ljava9/util/function/DoubleBinaryOperator;

    .line 1264
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1266
    new-instance v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava9/util/function/DoubleBinaryOperator;[DII)V

    .line 1267
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    .line 1268
    :cond_0
    return-void
.end method

.method public static parallelPrefix([IIILjava9/util/function/IntBinaryOperator;)V
    .locals 7
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava9/util/function/IntBinaryOperator;

    .line 1332
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1334
    if-ge p1, p2, :cond_0

    .line 1335
    new-instance v0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;Ljava9/util/function/IntBinaryOperator;[III)V

    .line 1336
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    .line 1337
    :cond_0
    return-void
.end method

.method public static parallelPrefix([ILjava9/util/function/IntBinaryOperator;)V
    .locals 7
    .param p0, "array"    # [I
    .param p1, "op"    # Ljava9/util/function/IntBinaryOperator;

    .line 1309
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1311
    new-instance v0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;Ljava9/util/function/IntBinaryOperator;[III)V

    .line 1312
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    .line 1313
    :cond_0
    return-void
.end method

.method public static parallelPrefix([JIILjava9/util/function/LongBinaryOperator;)V
    .locals 7
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava9/util/function/LongBinaryOperator;

    .line 1239
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1241
    if-ge p1, p2, :cond_0

    .line 1242
    new-instance v0, Ljava9/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava9/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$LongCumulateTask;Ljava9/util/function/LongBinaryOperator;[JII)V

    .line 1243
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    .line 1244
    :cond_0
    return-void
.end method

.method public static parallelPrefix([JLjava9/util/function/LongBinaryOperator;)V
    .locals 7
    .param p0, "array"    # [J
    .param p1, "op"    # Ljava9/util/function/LongBinaryOperator;

    .line 1216
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1218
    new-instance v0, Ljava9/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava9/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$LongCumulateTask;Ljava9/util/function/LongBinaryOperator;[JII)V

    .line 1219
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    .line 1220
    :cond_0
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;IILjava9/util/function/BinaryOperator;)V
    .locals 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1194
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "op":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TT;>;"
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 1196
    if-ge p1, p2, :cond_0

    .line 1197
    new-instance v0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$CumulateTask;Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    .line 1198
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    .line 1199
    :cond_0
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;Ljava9/util/function/BinaryOperator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1170
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "op":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1172
    new-instance v0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$CumulateTask;Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    .line 1173
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    .line 1174
    :cond_0
    return-void
.end method

.method public static parallelSetAll([DLjava9/util/function/IntToDoubleFunction;)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava9/util/function/IntToDoubleFunction;

    .line 1148
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava9/util/stream/IntStream;->range(II)Ljava9/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/IntStream;->parallel()Ljava9/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava9/util/J8Arrays$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljava9/util/J8Arrays$$ExternalSyntheticLambda0;-><init>([DLjava9/util/function/IntToDoubleFunction;)V

    invoke-interface {v0, v1}, Ljava9/util/stream/IntStream;->forEach(Ljava9/util/function/IntConsumer;)V

    .line 1150
    return-void
.end method

.method public static parallelSetAll([ILjava9/util/function/IntUnaryOperator;)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava9/util/function/IntUnaryOperator;

    .line 1036
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava9/util/stream/IntStream;->range(II)Ljava9/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/IntStream;->parallel()Ljava9/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava9/util/J8Arrays$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ljava9/util/J8Arrays$$ExternalSyntheticLambda1;-><init>([ILjava9/util/function/IntUnaryOperator;)V

    invoke-interface {v0, v1}, Ljava9/util/stream/IntStream;->forEach(Ljava9/util/function/IntConsumer;)V

    .line 1038
    return-void
.end method

.method public static parallelSetAll([JLjava9/util/function/IntToLongFunction;)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava9/util/function/IntToLongFunction;

    .line 1092
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava9/util/stream/IntStream;->range(II)Ljava9/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/IntStream;->parallel()Ljava9/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava9/util/J8Arrays$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Ljava9/util/J8Arrays$$ExternalSyntheticLambda3;-><init>([JLjava9/util/function/IntToLongFunction;)V

    invoke-interface {v0, v1}, Ljava9/util/stream/IntStream;->forEach(Ljava9/util/function/IntConsumer;)V

    .line 1094
    return-void
.end method

.method public static parallelSetAll([Ljava/lang/Object;Ljava9/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava9/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 980
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava9/util/stream/IntStream;->range(II)Ljava9/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/IntStream;->parallel()Ljava9/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava9/util/J8Arrays$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Ljava9/util/J8Arrays$$ExternalSyntheticLambda2;-><init>([Ljava/lang/Object;Ljava9/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Ljava9/util/stream/IntStream;->forEach(Ljava9/util/function/IntConsumer;)V

    .line 982
    return-void
.end method

.method public static parallelSort([B)V
    .locals 2
    .param p0, "a"    # [B

    .line 348
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava9/util/DualPivotQuicksort;->sort([BII)V

    .line 349
    return-void
.end method

.method public static parallelSort([BII)V
    .locals 1
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 373
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 374
    invoke-static {p0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([BII)V

    .line 375
    return-void
.end method

.method public static parallelSort([C)V
    .locals 2
    .param p0, "a"    # [C

    .line 390
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava9/util/DualPivotQuicksort;->sort([CII)V

    .line 391
    return-void
.end method

.method public static parallelSort([CII)V
    .locals 1
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 415
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 416
    invoke-static {p0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([CII)V

    .line 417
    return-void
.end method

.method public static parallelSort([D)V
    .locals 3
    .param p0, "a"    # [D

    .line 624
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Ljava9/util/DualPivotQuicksort;->sort([DIII)V

    .line 625
    return-void
.end method

.method public static parallelSort([DII)V
    .locals 1
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 657
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 658
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([DIII)V

    .line 659
    return-void
.end method

.method public static parallelSort([F)V
    .locals 3
    .param p0, "a"    # [F

    .line 566
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Ljava9/util/DualPivotQuicksort;->sort([FIII)V

    .line 567
    return-void
.end method

.method public static parallelSort([FII)V
    .locals 1
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 599
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 600
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([FIII)V

    .line 601
    return-void
.end method

.method public static parallelSort([I)V
    .locals 3
    .param p0, "a"    # [I

    .line 474
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Ljava9/util/DualPivotQuicksort;->sort([IIII)V

    .line 475
    return-void
.end method

.method public static parallelSort([III)V
    .locals 1
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 499
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 500
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([IIII)V

    .line 501
    return-void
.end method

.method public static parallelSort([J)V
    .locals 3
    .param p0, "a"    # [J

    .line 516
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Ljava9/util/DualPivotQuicksort;->sort([JIII)V

    .line 517
    return-void
.end method

.method public static parallelSort([JII)V
    .locals 1
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 541
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 542
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([JIII)V

    .line 543
    return-void
.end method

.method public static parallelSort([Ljava/lang/Comparable;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)V"
        }
    .end annotation

    .line 745
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    array-length v9, p0

    .line 746
    .local v9, "n":I
    const/16 v0, 0x2000

    if-le v9, v0, :cond_2

    .line 747
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v10, v1

    .local v10, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 750
    :cond_0
    new-instance v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v1, 0x0

    .line 752
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Comparable;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Comparable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    shl-int/lit8 v2, v10, 0x2

    div-int v2, v9, v2

    move v12, v2

    .local v12, "g":I
    if-gt v2, v0, :cond_1

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v12

    :goto_0
    sget-object v8, Ljava9/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava9/util/J8Arrays$NaturalOrder;

    move-object v0, v11

    move-object v2, p0

    move v5, v9

    invoke-direct/range {v0 .. v8}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .line 754
    invoke-virtual {v11}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 748
    .end local v10    # "p":I
    .end local v12    # "g":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    sget-object v3, Ljava9/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava9/util/J8Arrays$NaturalOrder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v9

    invoke-static/range {v0 .. v6}, Ljava9/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 755
    :goto_2
    return-void
.end method

.method public static parallelSort([Ljava/lang/Comparable;II)V
    .locals 16
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;II)V"
        }
    .end annotation

    .line 803
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p0

    array-length v0, v11

    invoke-static {v0, v9, v10}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 804
    sub-int v12, v10, v9

    .line 805
    .local v12, "n":I
    const/16 v0, 0x2000

    if-le v12, v0, :cond_2

    .line 806
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v13, v1

    .local v13, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 809
    :cond_0
    new-instance v14, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v1, 0x0

    .line 811
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Comparable;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Comparable;

    const/4 v6, 0x0

    shl-int/lit8 v2, v13, 0x2

    div-int v2, v12, v2

    move v15, v2

    .local v15, "g":I
    if-gt v2, v0, :cond_1

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v15

    :goto_0
    sget-object v8, Ljava9/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava9/util/J8Arrays$NaturalOrder;

    move-object v0, v14

    move-object/from16 v2, p0

    move/from16 v4, p1

    move v5, v12

    invoke-direct/range {v0 .. v8}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .line 813
    invoke-virtual {v14}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 807
    .end local v13    # "p":I
    .end local v15    # "g":I
    :cond_2
    :goto_1
    sget-object v3, Ljava9/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava9/util/J8Arrays$NaturalOrder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v6}, Ljava9/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 814
    :goto_2
    return-void
.end method

.method public static parallelSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 911
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p0

    array-length v0, v11

    invoke-static {v0, v9, v10}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 912
    if-nez p3, :cond_0

    .line 913
    sget-object v0, Ljava9/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava9/util/J8Arrays$NaturalOrder;

    move-object v12, v0

    .end local p3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    goto :goto_0

    .line 912
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local p3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :cond_0
    move-object/from16 v12, p3

    .line 914
    .end local p3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v12, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_0
    sub-int v13, v10, v9

    .line 915
    .local v13, "n":I
    const/16 v0, 0x2000

    if-le v13, v0, :cond_3

    .line 916
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v14, v1

    .local v14, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 919
    :cond_1
    new-instance v15, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v1, 0x0

    .line 921
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    shl-int/lit8 v2, v14, 0x2

    div-int v2, v13, v2

    move/from16 v16, v2

    .local v16, "g":I
    if-gt v2, v0, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    move/from16 v7, v16

    :goto_1
    move-object v0, v15

    move-object/from16 v2, p0

    move/from16 v4, p1

    move v5, v13

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .line 923
    invoke-virtual {v15}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_3

    .line 917
    .end local v14    # "p":I
    .end local v16    # "g":I
    :cond_3
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v12

    invoke-static/range {v0 .. v6}, Ljava9/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 924
    :goto_3
    return-void
.end method

.method public static parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 851
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_0

    .line 852
    sget-object p1, Ljava9/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava9/util/J8Arrays$NaturalOrder;

    .line 853
    :cond_0
    array-length v9, p0

    .line 854
    .local v9, "n":I
    const/16 v0, 0x2000

    if-le v9, v0, :cond_3

    .line 855
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v10, v1

    .local v10, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 858
    :cond_1
    new-instance v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v1, 0x0

    .line 860
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    shl-int/lit8 v2, v10, 0x2

    div-int v2, v9, v2

    move v12, v2

    .local v12, "g":I
    if-gt v2, v0, :cond_2

    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v12

    :goto_0
    move-object v0, v11

    move-object v2, p0

    move v5, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .line 862
    invoke-virtual {v11}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 856
    .end local v10    # "p":I
    .end local v12    # "g":I
    :cond_3
    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v9

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Ljava9/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 863
    :goto_2
    return-void
.end method

.method public static parallelSort([S)V
    .locals 2
    .param p0, "a"    # [S

    .line 432
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava9/util/DualPivotQuicksort;->sort([SII)V

    .line 433
    return-void
.end method

.method public static parallelSort([SII)V
    .locals 1
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 457
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava9/util/J8Arrays;->rangeCheck(III)V

    .line 458
    invoke-static {p0, p1, p2}, Ljava9/util/DualPivotQuicksort;->sort([SII)V

    .line 459
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3
    .param p0, "arrayLength"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 666
    if-gt p1, p2, :cond_2

    .line 670
    if-ltz p1, :cond_1

    .line 673
    if-gt p2, p0, :cond_0

    .line 676
    return-void

    .line 674
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 671
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 667
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAll([DLjava9/util/function/IntToDoubleFunction;)V
    .locals 3
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava9/util/function/IntToDoubleFunction;

    .line 1118
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1120
    invoke-interface {p1, v0}, Ljava9/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 1119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1122
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([ILjava9/util/function/IntUnaryOperator;)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava9/util/function/IntUnaryOperator;

    .line 1006
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1008
    invoke-interface {p1, v0}, Ljava9/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([JLjava9/util/function/IntToLongFunction;)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava9/util/function/IntToLongFunction;

    .line 1062
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1064
    invoke-interface {p1, v0}, Ljava9/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Ljava9/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava9/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 949
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 951
    invoke-interface {p1, v0}, Ljava9/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 953
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static spliterator([D)Ljava9/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D

    .line 187
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator([DI)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([DII)Ljava9/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 210
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava9/util/Spliterators;->spliterator([DIII)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([I)Ljava9/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I

    .line 108
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator([II)Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([III)Ljava9/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 131
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava9/util/Spliterators;->spliterator([IIII)Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([J)Ljava9/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J

    .line 147
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator([JI)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([JII)Ljava9/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 170
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava9/util/Spliterators;->spliterator([JIII)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;)Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;II)Ljava9/util/Spliterator;
    .locals 1
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava9/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static stream([D)Ljava9/util/stream/DoubleStream;
    .locals 2
    .param p0, "array"    # [D

    .line 314
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava9/util/J8Arrays;->stream([DII)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([DII)Ljava9/util/stream/DoubleStream;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 332
    invoke-static {p0, p1, p2}, Ljava9/util/J8Arrays;->spliterator([DII)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([I)Ljava9/util/stream/IntStream;
    .locals 2
    .param p0, "array"    # [I

    .line 254
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava9/util/J8Arrays;->stream([III)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([III)Ljava9/util/stream/IntStream;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 272
    invoke-static {p0, p1, p2}, Ljava9/util/J8Arrays;->spliterator([III)Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([J)Ljava9/util/stream/LongStream;
    .locals 2
    .param p0, "array"    # [J

    .line 284
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava9/util/J8Arrays;->stream([JII)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([JII)Ljava9/util/stream/LongStream;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 302
    invoke-static {p0, p1, p2}, Ljava9/util/J8Arrays;->spliterator([JII)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;)Ljava9/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 223
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava9/util/J8Arrays;->stream([Ljava/lang/Object;II)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;II)Ljava9/util/stream/Stream;
    .locals 2
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 242
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, p2}, Ljava9/util/J8Arrays;->spliterator([Ljava/lang/Object;II)Ljava9/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;Ljava9/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 3088
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava9/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
