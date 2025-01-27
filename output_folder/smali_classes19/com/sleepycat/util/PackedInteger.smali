.class public Lcom/sleepycat/util/PackedInteger;
.super Ljava/lang/Object;
.source "PackedInteger.java"


# static fields
.field public static final MAX_LENGTH:I = 0x5

.field public static final MAX_LONG_LENGTH:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReadIntLength([BI)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 141
    aget-byte v0, p0, p1

    .line 142
    .local v0, "b1":I
    const/4 v1, 0x1

    const/16 v2, 0x77

    const/16 v3, -0x77

    if-ge v0, v3, :cond_0

    .line 143
    neg-int v3, v0

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    return v3

    .line 144
    :cond_0
    if-le v0, v2, :cond_1

    .line 145
    add-int/lit8 v2, v0, -0x77

    add-int/2addr v2, v1

    return v2

    .line 147
    :cond_1
    return v1
.end method

.method public static getReadLongLength([BI)I
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 167
    invoke-static {p0, p1}, Lcom/sleepycat/util/PackedInteger;->getReadIntLength([BI)I

    move-result v0

    return v0
.end method

.method public static getReadSortedIntLength([BI)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 522
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 523
    .local v0, "b1":I
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 524
    rsub-int/lit8 v1, v0, 0x9

    return v1

    .line 526
    :cond_0
    const/16 v1, 0xf7

    if-le v0, v1, :cond_1

    .line 527
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v2, v1

    return v2

    .line 529
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static getReadSortedLongLength([BI)I
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 549
    invoke-static {p0, p1}, Lcom/sleepycat/util/PackedInteger;->getReadSortedIntLength([BI)I

    move-result v0

    return v0
.end method

.method public static getWriteIntLength(I)I
    .locals 2
    .param p0, "value"    # I

    .line 308
    const/16 v0, 0x77

    const/16 v1, -0x77

    if-ge p0, v1, :cond_0

    .line 309
    neg-int v1, p0

    sub-int/2addr v1, v0

    .end local p0    # "value":I
    .local v1, "value":I
    goto :goto_0

    .line 310
    .end local v1    # "value":I
    .restart local p0    # "value":I
    :cond_0
    if-le p0, v0, :cond_4

    .line 311
    add-int/lit8 v1, p0, -0x77

    .line 316
    .end local p0    # "value":I
    .restart local v1    # "value":I
    :goto_0
    and-int/lit16 p0, v1, -0x100

    if-nez p0, :cond_1

    .line 317
    const/4 p0, 0x2

    return p0

    .line 319
    :cond_1
    const/high16 p0, -0x10000

    and-int/2addr p0, v1

    if-nez p0, :cond_2

    .line 320
    const/4 p0, 0x3

    return p0

    .line 322
    :cond_2
    const/high16 p0, -0x1000000

    and-int/2addr p0, v1

    if-nez p0, :cond_3

    .line 323
    const/4 p0, 0x4

    return p0

    .line 325
    :cond_3
    const/4 p0, 0x5

    return p0

    .line 313
    .end local v1    # "value":I
    .restart local p0    # "value":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static getWriteLongLength(J)I
    .locals 5
    .param p0, "value"    # J

    .line 338
    const-wide/16 v0, -0x77

    cmp-long v0, p0, v0

    const-wide/16 v1, 0x77

    if-gez v0, :cond_0

    .line 339
    neg-long v3, p0

    sub-long/2addr v3, v1

    .end local p0    # "value":J
    .local v3, "value":J
    goto :goto_0

    .line 340
    .end local v3    # "value":J
    .restart local p0    # "value":J
    :cond_0
    cmp-long v0, p0, v1

    if-lez v0, :cond_8

    .line 341
    sub-long v3, p0, v1

    .line 346
    .end local p0    # "value":J
    .restart local v3    # "value":J
    :goto_0
    const-wide/16 p0, -0x100

    and-long/2addr p0, v3

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    .line 347
    const/4 p0, 0x2

    return p0

    .line 349
    :cond_1
    const-wide/32 p0, -0x10000

    and-long/2addr p0, v3

    cmp-long p0, p0, v0

    if-nez p0, :cond_2

    .line 350
    const/4 p0, 0x3

    return p0

    .line 352
    :cond_2
    const-wide/32 p0, -0x1000000

    and-long/2addr p0, v3

    cmp-long p0, p0, v0

    if-nez p0, :cond_3

    .line 353
    const/4 p0, 0x4

    return p0

    .line 355
    :cond_3
    const-wide p0, -0x100000000L

    and-long/2addr p0, v3

    cmp-long p0, p0, v0

    if-nez p0, :cond_4

    .line 356
    const/4 p0, 0x5

    return p0

    .line 358
    :cond_4
    const-wide p0, -0x10000000000L

    and-long/2addr p0, v3

    cmp-long p0, p0, v0

    if-nez p0, :cond_5

    .line 359
    const/4 p0, 0x6

    return p0

    .line 361
    :cond_5
    const-wide/high16 p0, -0x1000000000000L

    and-long/2addr p0, v3

    cmp-long p0, p0, v0

    if-nez p0, :cond_6

    .line 362
    const/4 p0, 0x7

    return p0

    .line 364
    :cond_6
    const-wide/high16 p0, -0x100000000000000L

    and-long/2addr p0, v3

    cmp-long p0, p0, v0

    if-nez p0, :cond_7

    .line 365
    const/16 p0, 0x8

    return p0

    .line 367
    :cond_7
    const/16 p0, 0x9

    return p0

    .line 343
    .end local v3    # "value":J
    .restart local p0    # "value":J
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public static getWriteSortedIntLength(I)I
    .locals 5
    .param p0, "value"    # I

    .line 841
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, -0x77

    if-ge p0, v3, :cond_2

    .line 843
    add-int/lit8 p0, p0, 0x77

    .line 849
    or-int/lit16 v3, p0, 0xff

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 850
    return v2

    .line 852
    :cond_0
    const v2, 0xffff

    or-int/2addr v2, p0

    if-ne v2, v4, :cond_1

    .line 853
    return v1

    .line 855
    :cond_1
    const v1, 0xffffff

    or-int/2addr v1, p0

    if-ne v1, v4, :cond_5

    .line 856
    return v0

    .line 858
    :cond_2
    const/16 v3, 0x78

    if-le p0, v3, :cond_6

    .line 860
    add-int/lit8 p0, p0, -0x79

    .line 866
    and-int/lit16 v3, p0, -0x100

    if-nez v3, :cond_3

    .line 867
    return v2

    .line 869
    :cond_3
    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    if-nez v2, :cond_4

    .line 870
    return v1

    .line 872
    :cond_4
    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    if-nez v1, :cond_5

    .line 873
    return v0

    .line 883
    :cond_5
    const/4 v0, 0x5

    return v0

    .line 881
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static getWriteSortedLongLength(J)I
    .locals 12
    .param p0, "value"    # J

    .line 897
    const-wide/16 v0, -0x77

    cmp-long v0, p0, v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-gez v0, :cond_6

    .line 899
    const-wide/16 v8, 0x77

    add-long/2addr p0, v8

    .line 905
    const-wide/16 v8, 0xff

    or-long/2addr v8, p0

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-nez v0, :cond_0

    .line 906
    return v7

    .line 908
    :cond_0
    const-wide/32 v7, 0xffff

    or-long/2addr v7, p0

    cmp-long v0, v7, v10

    if-nez v0, :cond_1

    .line 909
    return v6

    .line 911
    :cond_1
    const-wide/32 v6, 0xffffff

    or-long/2addr v6, p0

    cmp-long v0, v6, v10

    if-nez v0, :cond_2

    .line 912
    return v5

    .line 914
    :cond_2
    const-wide v5, 0xffffffffL

    or-long/2addr v5, p0

    cmp-long v0, v5, v10

    if-nez v0, :cond_3

    .line 915
    return v4

    .line 917
    :cond_3
    const-wide v4, 0xffffffffffL

    or-long/2addr v4, p0

    cmp-long v0, v4, v10

    if-nez v0, :cond_4

    .line 918
    return v3

    .line 920
    :cond_4
    const-wide v3, 0xffffffffffffL

    or-long/2addr v3, p0

    cmp-long v0, v3, v10

    if-nez v0, :cond_5

    .line 921
    return v2

    .line 923
    :cond_5
    const-wide v2, 0xffffffffffffffL

    or-long/2addr v2, p0

    cmp-long v0, v2, v10

    if-nez v0, :cond_d

    .line 924
    return v1

    .line 926
    :cond_6
    const-wide/16 v8, 0x78

    cmp-long v0, p0, v8

    if-lez v0, :cond_e

    .line 928
    const-wide/16 v8, 0x79

    sub-long/2addr p0, v8

    .line 934
    const-wide/16 v8, -0x100

    and-long/2addr v8, p0

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    .line 935
    return v7

    .line 937
    :cond_7
    const-wide/32 v7, -0x10000

    and-long/2addr v7, p0

    cmp-long v0, v7, v10

    if-nez v0, :cond_8

    .line 938
    return v6

    .line 940
    :cond_8
    const-wide/32 v6, -0x1000000

    and-long/2addr v6, p0

    cmp-long v0, v6, v10

    if-nez v0, :cond_9

    .line 941
    return v5

    .line 943
    :cond_9
    const-wide v5, -0x100000000L

    and-long/2addr v5, p0

    cmp-long v0, v5, v10

    if-nez v0, :cond_a

    .line 944
    return v4

    .line 946
    :cond_a
    const-wide v4, -0x10000000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v10

    if-nez v0, :cond_b

    .line 947
    return v3

    .line 949
    :cond_b
    const-wide/high16 v3, -0x1000000000000L

    and-long/2addr v3, p0

    cmp-long v0, v3, v10

    if-nez v0, :cond_c

    .line 950
    return v2

    .line 952
    :cond_c
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    cmp-long v0, v2, v10

    if-nez v0, :cond_d

    .line 953
    return v1

    .line 963
    :cond_d
    const/16 v0, 0x9

    return v0

    .line 961
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public static readInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 50
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .local v0, "off":I
    aget-byte p1, p0, p1

    .line 51
    .local p1, "b1":I
    const/16 v1, 0x77

    const/16 v2, -0x77

    if-ge p1, v2, :cond_0

    .line 52
    const/4 v2, 0x1

    .line 53
    .local v2, "negative":Z
    neg-int v3, p1

    sub-int/2addr v3, v1

    .local v3, "byteLen":I
    goto :goto_0

    .line 54
    .end local v2    # "negative":Z
    .end local v3    # "byteLen":I
    :cond_0
    if-le p1, v1, :cond_4

    .line 55
    const/4 v2, 0x0

    .line 56
    .restart local v2    # "negative":Z
    add-int/lit8 v3, p1, -0x77

    .line 61
    .restart local v3    # "byteLen":I
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "off":I
    .local v4, "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 62
    .local v0, "value":I
    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 63
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "off":I
    .local v5, "off":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    .line 64
    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 65
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "off":I
    .restart local v4    # "off":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    .line 66
    const/4 v5, 0x3

    if-le v3, v5, :cond_2

    .line 67
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "off":I
    .restart local v5    # "off":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    move v4, v5

    goto :goto_1

    .line 64
    :cond_1
    move v4, v5

    .line 72
    .end local v5    # "off":I
    .restart local v4    # "off":I
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    neg-int v5, v0

    sub-int/2addr v5, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v0, 0x77

    :goto_2
    return v5

    .line 58
    .end local v2    # "negative":Z
    .end local v3    # "byteLen":I
    .end local v4    # "off":I
    .local v0, "off":I
    :cond_4
    return p1
.end method

.method public static readLong([BI)J
    .locals 10
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 89
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .local v0, "off":I
    aget-byte p1, p0, p1

    .line 90
    .local p1, "b1":I
    const/16 v1, 0x77

    const/16 v2, -0x77

    if-ge p1, v2, :cond_0

    .line 91
    const/4 v2, 0x1

    .line 92
    .local v2, "negative":Z
    neg-int v3, p1

    sub-int/2addr v3, v1

    .local v3, "byteLen":I
    goto :goto_0

    .line 93
    .end local v2    # "negative":Z
    .end local v3    # "byteLen":I
    :cond_0
    if-le p1, v1, :cond_6

    .line 94
    const/4 v2, 0x0

    .line 95
    .restart local v2    # "negative":Z
    add-int/lit8 v3, p1, -0x77

    .line 100
    .restart local v3    # "byteLen":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .local v1, "off":I
    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 101
    .local v4, "value":J
    const/4 v0, 0x1

    if-le v3, v0, :cond_4

    .line 102
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "off":I
    .restart local v0    # "off":I
    aget-byte v1, p0, v1

    int-to-long v8, v1

    and-long/2addr v8, v6

    const/16 v1, 0x8

    shl-long/2addr v8, v1

    or-long/2addr v4, v8

    .line 103
    const/4 v1, 0x2

    if-le v3, v1, :cond_3

    .line 104
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .restart local v1    # "off":I
    aget-byte v0, p0, v0

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x10

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 105
    const/4 v0, 0x3

    if-le v3, v0, :cond_4

    .line 106
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "off":I
    .restart local v0    # "off":I
    aget-byte v1, p0, v1

    int-to-long v8, v1

    and-long/2addr v8, v6

    const/16 v1, 0x18

    shl-long/2addr v8, v1

    or-long/2addr v4, v8

    .line 107
    const/4 v1, 0x4

    if-le v3, v1, :cond_2

    .line 108
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .restart local v1    # "off":I
    aget-byte v0, p0, v0

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 109
    const/4 v0, 0x5

    if-le v3, v0, :cond_4

    .line 110
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "off":I
    .restart local v0    # "off":I
    aget-byte v1, p0, v1

    int-to-long v8, v1

    and-long/2addr v8, v6

    const/16 v1, 0x28

    shl-long/2addr v8, v1

    or-long/2addr v4, v8

    .line 111
    const/4 v1, 0x6

    if-le v3, v1, :cond_1

    .line 112
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .restart local v1    # "off":I
    aget-byte v0, p0, v0

    int-to-long v8, v0

    and-long/2addr v8, v6

    const/16 v0, 0x30

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    .line 113
    const/4 v0, 0x7

    if-le v3, v0, :cond_4

    .line 114
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "off":I
    .restart local v0    # "off":I
    aget-byte v1, p0, v1

    int-to-long v8, v1

    and-long/2addr v6, v8

    const/16 v1, 0x38

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    move v1, v0

    goto :goto_1

    .line 111
    :cond_1
    move v1, v0

    goto :goto_1

    .line 107
    :cond_2
    move v1, v0

    goto :goto_1

    .line 103
    :cond_3
    move v1, v0

    .line 123
    .end local v0    # "off":I
    .restart local v1    # "off":I
    :cond_4
    :goto_1
    const-wide/16 v6, 0x77

    if-eqz v2, :cond_5

    neg-long v8, v4

    sub-long/2addr v8, v6

    goto :goto_2

    :cond_5
    add-long v8, v4, v6

    :goto_2
    return-wide v8

    .line 97
    .end local v1    # "off":I
    .end local v2    # "negative":Z
    .end local v3    # "byteLen":I
    .end local v4    # "value":J
    .restart local v0    # "off":I
    :cond_6
    int-to-long v1, p1

    return-wide v1
.end method

.method public static readReverseInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 988
    aget-byte v0, p0, p1

    .line 989
    .local v0, "b1":I
    const/16 v1, 0x77

    const/16 v2, -0x77

    if-ge v0, v2, :cond_0

    .line 990
    const/4 v2, 0x1

    .line 991
    .local v2, "negative":Z
    neg-int v3, v0

    sub-int/2addr v3, v1

    .local v3, "byteLen":I
    goto :goto_0

    .line 992
    .end local v2    # "negative":Z
    .end local v3    # "byteLen":I
    :cond_0
    if-le v0, v1, :cond_3

    .line 993
    const/4 v2, 0x0

    .line 994
    .restart local v2    # "negative":Z
    add-int/lit8 v3, v0, -0x77

    .line 999
    .restart local v3    # "byteLen":I
    :goto_0
    add-int/lit8 p1, p1, -0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    .line 1000
    .local v4, "value":I
    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    .line 1001
    add-int/lit8 p1, p1, -0x1

    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    .line 1002
    const/4 v5, 0x2

    if-le v3, v5, :cond_1

    .line 1003
    add-int/lit8 p1, p1, -0x1

    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    .line 1004
    const/4 v5, 0x3

    if-le v3, v5, :cond_1

    .line 1005
    add-int/lit8 p1, p1, -0x1

    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    .line 1010
    :cond_1
    if-eqz v2, :cond_2

    neg-int v5, v4

    sub-int/2addr v5, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, 0x77

    :goto_1
    return v5

    .line 996
    .end local v2    # "negative":Z
    .end local v3    # "byteLen":I
    .end local v4    # "value":I
    :cond_3
    return v0
.end method

.method public static readSortedInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 385
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .local v0, "off":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 387
    .local p1, "b1":I
    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 388
    rsub-int/lit8 v1, p1, 0x8

    .line 389
    .local v1, "byteLen":I
    const/4 v2, 0x1

    .local v2, "negative":Z
    goto :goto_0

    .line 390
    .end local v1    # "byteLen":I
    .end local v2    # "negative":Z
    :cond_0
    const/16 v1, 0xf7

    if-le p1, v1, :cond_6

    .line 391
    add-int/lit16 v1, p1, -0xf7

    .line 392
    .restart local v1    # "byteLen":I
    const/4 v2, 0x0

    .line 403
    .restart local v2    # "negative":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 404
    const/4 v3, -0x1

    .local v3, "value":I
    goto :goto_1

    .line 406
    .end local v3    # "value":I
    :cond_1
    const/4 v3, 0x0

    .line 408
    .restart local v3    # "value":I
    :goto_1
    const/4 v4, 0x3

    if-le v1, v4, :cond_2

    .line 409
    shl-int/lit8 v4, v3, 0x8

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "off":I
    .local v5, "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int v3, v4, v0

    move v0, v5

    .line 411
    .end local v5    # "off":I
    .restart local v0    # "off":I
    :cond_2
    const/4 v4, 0x2

    if-le v1, v4, :cond_3

    .line 412
    shl-int/lit8 v4, v3, 0x8

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "off":I
    .restart local v5    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int v3, v4, v0

    move v0, v5

    .line 414
    .end local v5    # "off":I
    .restart local v0    # "off":I
    :cond_3
    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    .line 415
    shl-int/lit8 v4, v3, 0x8

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "off":I
    .restart local v5    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int v3, v4, v0

    move v0, v5

    .line 417
    .end local v5    # "off":I
    .restart local v0    # "off":I
    :cond_4
    shl-int/lit8 v4, v3, 0x8

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "off":I
    .restart local v5    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v4

    .line 423
    .end local v3    # "value":I
    .local v0, "value":I
    if-eqz v2, :cond_5

    .line 424
    add-int/lit8 v0, v0, -0x77

    goto :goto_2

    .line 426
    :cond_5
    add-int/lit8 v0, v0, 0x79

    .line 428
    :goto_2
    return v0

    .line 394
    .end local v1    # "byteLen":I
    .end local v2    # "negative":Z
    .end local v5    # "off":I
    .local v0, "off":I
    :cond_6
    add-int/lit8 v1, p1, -0x7f

    return v1
.end method

.method public static readSortedLong([BI)J
    .locals 11
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 447
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .local v0, "off":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 449
    .local p1, "b1":I
    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 450
    rsub-int/lit8 v2, p1, 0x8

    .line 451
    .local v2, "byteLen":I
    const/4 v3, 0x1

    .local v3, "negative":Z
    goto :goto_0

    .line 452
    .end local v2    # "byteLen":I
    .end local v3    # "negative":Z
    :cond_0
    const/16 v2, 0xf7

    if-le p1, v2, :cond_a

    .line 453
    add-int/lit16 v2, p1, -0xf7

    .line 454
    .restart local v2    # "byteLen":I
    const/4 v3, 0x0

    .line 465
    .restart local v3    # "negative":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 466
    const-wide/16 v4, -0x1

    .local v4, "value":J
    goto :goto_1

    .line 468
    .end local v4    # "value":J
    :cond_1
    const-wide/16 v4, 0x0

    .line 470
    .restart local v4    # "value":J
    :goto_1
    const/4 v6, 0x7

    if-le v2, v6, :cond_2

    .line 471
    shl-long v6, v4, v1

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "off":I
    .local v8, "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    or-long v4, v6, v9

    move v0, v8

    .line 473
    .end local v8    # "off":I
    .restart local v0    # "off":I
    :cond_2
    const/4 v6, 0x6

    if-le v2, v6, :cond_3

    .line 474
    shl-long v6, v4, v1

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "off":I
    .restart local v8    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    or-long v4, v6, v9

    move v0, v8

    .line 476
    .end local v8    # "off":I
    .restart local v0    # "off":I
    :cond_3
    const/4 v6, 0x5

    if-le v2, v6, :cond_4

    .line 477
    shl-long v6, v4, v1

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "off":I
    .restart local v8    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    or-long v4, v6, v9

    move v0, v8

    .line 479
    .end local v8    # "off":I
    .restart local v0    # "off":I
    :cond_4
    const/4 v6, 0x4

    if-le v2, v6, :cond_5

    .line 480
    shl-long v6, v4, v1

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "off":I
    .restart local v8    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    or-long v4, v6, v9

    move v0, v8

    .line 482
    .end local v8    # "off":I
    .restart local v0    # "off":I
    :cond_5
    const/4 v6, 0x3

    if-le v2, v6, :cond_6

    .line 483
    shl-long v6, v4, v1

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "off":I
    .restart local v8    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    or-long v4, v6, v9

    move v0, v8

    .line 485
    .end local v8    # "off":I
    .restart local v0    # "off":I
    :cond_6
    const/4 v6, 0x2

    if-le v2, v6, :cond_7

    .line 486
    shl-long v6, v4, v1

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "off":I
    .restart local v8    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    or-long v4, v6, v9

    move v0, v8

    .line 488
    .end local v8    # "off":I
    .restart local v0    # "off":I
    :cond_7
    const/4 v6, 0x1

    if-le v2, v6, :cond_8

    .line 489
    shl-long v6, v4, v1

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "off":I
    .restart local v8    # "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    or-long v4, v6, v9

    move v0, v8

    .line 491
    .end local v8    # "off":I
    .restart local v0    # "off":I
    :cond_8
    shl-long v6, v4, v1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .local v1, "off":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    or-long v4, v6, v8

    .line 497
    if-eqz v3, :cond_9

    .line 498
    const-wide/16 v6, 0x77

    sub-long/2addr v4, v6

    goto :goto_2

    .line 500
    :cond_9
    const-wide/16 v6, 0x79

    add-long/2addr v4, v6

    .line 502
    :goto_2
    return-wide v4

    .line 456
    .end local v1    # "off":I
    .end local v2    # "byteLen":I
    .end local v3    # "negative":Z
    .end local v4    # "value":J
    .restart local v0    # "off":I
    :cond_a
    add-int/lit8 v1, p1, -0x7f

    int-to-long v1, v1

    return-wide v1
.end method

.method public static writeInt([BII)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 184
    move v0, p1

    .line 187
    .local v0, "byte1Off":I
    const/16 v1, 0x77

    const/16 v2, -0x77

    if-ge p2, v2, :cond_0

    .line 188
    const/4 v2, 0x1

    .line 189
    .local v2, "negative":Z
    neg-int v3, p2

    sub-int/2addr v3, v1

    .end local p2    # "value":I
    .local v3, "value":I
    goto :goto_0

    .line 190
    .end local v2    # "negative":Z
    .end local v3    # "value":I
    .restart local p2    # "value":I
    :cond_0
    if-le p2, v1, :cond_8

    .line 191
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "negative":Z
    add-int/lit8 v3, p2, -0x77

    .line 197
    .end local p2    # "value":I
    .restart local v3    # "value":I
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 199
    add-int/lit8 p2, p1, 0x1

    .end local p1    # "offset":I
    .local p2, "offset":I
    int-to-byte v1, v3

    aput-byte v1, p0, p1

    .line 200
    and-int/lit16 p1, v3, -0x100

    if-nez p1, :cond_2

    .line 201
    if-eqz v2, :cond_1

    const/16 p1, -0x78

    goto :goto_1

    :cond_1
    const/16 p1, 0x78

    :goto_1
    aput-byte p1, p0, v0

    .line 202
    return p2

    .line 205
    :cond_2
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "offset":I
    .restart local p1    # "offset":I
    ushr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    .line 206
    const/high16 p2, -0x10000

    and-int/2addr p2, v3

    if-nez p2, :cond_4

    .line 207
    if-eqz v2, :cond_3

    const/16 p2, -0x79

    goto :goto_2

    :cond_3
    const/16 p2, 0x79

    :goto_2
    aput-byte p2, p0, v0

    .line 208
    return p1

    .line 211
    :cond_4
    add-int/lit8 p2, p1, 0x1

    .end local p1    # "offset":I
    .restart local p2    # "offset":I
    ushr-int/lit8 v1, v3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 212
    const/high16 p1, -0x1000000

    and-int/2addr p1, v3

    if-nez p1, :cond_6

    .line 213
    if-eqz v2, :cond_5

    const/16 p1, -0x7a

    goto :goto_3

    :cond_5
    const/16 p1, 0x7a

    :goto_3
    aput-byte p1, p0, v0

    .line 214
    return p2

    .line 217
    :cond_6
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "offset":I
    .restart local p1    # "offset":I
    ushr-int/lit8 v1, v3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    .line 218
    if-eqz v2, :cond_7

    const/16 p2, -0x7b

    goto :goto_4

    :cond_7
    const/16 p2, 0x7b

    :goto_4
    aput-byte p2, p0, v0

    .line 219
    return p1

    .line 194
    .end local v2    # "negative":Z
    .end local v3    # "value":I
    .local p2, "value":I
    :cond_8
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    int-to-byte v2, p2

    aput-byte v2, p0, p1

    .line 195
    return v1
.end method

.method public static writeLong([BIJ)I
    .locals 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 236
    move v0, p1

    .line 239
    .local v0, "byte1Off":I
    const-wide/16 v1, -0x77

    cmp-long v1, p2, v1

    const-wide/16 v2, 0x77

    if-gez v1, :cond_0

    .line 240
    const/4 v1, 0x1

    .line 241
    .local v1, "negative":Z
    neg-long v4, p2

    sub-long/2addr v4, v2

    .end local p2    # "value":J
    .local v4, "value":J
    goto :goto_0

    .line 242
    .end local v1    # "negative":Z
    .end local v4    # "value":J
    .restart local p2    # "value":J
    :cond_0
    cmp-long v1, p2, v2

    if-lez v1, :cond_10

    .line 243
    const/4 v1, 0x0

    .line 244
    .restart local v1    # "negative":Z
    sub-long v4, p2, v2

    .line 249
    .end local p2    # "value":J
    .restart local v4    # "value":J
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 251
    add-int/lit8 p2, p1, 0x1

    .end local p1    # "offset":I
    .local p2, "offset":I
    long-to-int p3, v4

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    .line 252
    const-wide/16 v2, -0x100

    and-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-nez p1, :cond_2

    .line 253
    if-eqz v1, :cond_1

    const/16 p1, -0x78

    goto :goto_1

    :cond_1
    const/16 p1, 0x78

    :goto_1
    aput-byte p1, p0, v0

    .line 254
    return p2

    .line 257
    :cond_2
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "offset":I
    .restart local p1    # "offset":I
    const/16 p3, 0x8

    ushr-long v2, v4, p3

    long-to-int p3, v2

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    .line 258
    const-wide/32 p2, -0x10000

    and-long/2addr p2, v4

    cmp-long p2, p2, v6

    if-nez p2, :cond_4

    .line 259
    if-eqz v1, :cond_3

    const/16 p2, -0x79

    goto :goto_2

    :cond_3
    const/16 p2, 0x79

    :goto_2
    aput-byte p2, p0, v0

    .line 260
    return p1

    .line 263
    :cond_4
    add-int/lit8 p2, p1, 0x1

    .end local p1    # "offset":I
    .restart local p2    # "offset":I
    const/16 p3, 0x10

    ushr-long v2, v4, p3

    long-to-int p3, v2

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    .line 264
    const-wide/32 v2, -0x1000000

    and-long/2addr v2, v4

    cmp-long p1, v2, v6

    if-nez p1, :cond_6

    .line 265
    if-eqz v1, :cond_5

    const/16 p1, -0x7a

    goto :goto_3

    :cond_5
    const/16 p1, 0x7a

    :goto_3
    aput-byte p1, p0, v0

    .line 266
    return p2

    .line 269
    :cond_6
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "offset":I
    .restart local p1    # "offset":I
    const/16 p3, 0x18

    ushr-long v2, v4, p3

    long-to-int p3, v2

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    .line 270
    const-wide p2, -0x100000000L

    and-long/2addr p2, v4

    cmp-long p2, p2, v6

    if-nez p2, :cond_8

    .line 271
    if-eqz v1, :cond_7

    const/16 p2, -0x7b

    goto :goto_4

    :cond_7
    const/16 p2, 0x7b

    :goto_4
    aput-byte p2, p0, v0

    .line 272
    return p1

    .line 275
    :cond_8
    add-int/lit8 p2, p1, 0x1

    .end local p1    # "offset":I
    .restart local p2    # "offset":I
    const/16 p3, 0x20

    ushr-long v2, v4, p3

    long-to-int p3, v2

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    .line 276
    const-wide v2, -0x10000000000L

    and-long/2addr v2, v4

    cmp-long p1, v2, v6

    if-nez p1, :cond_a

    .line 277
    if-eqz v1, :cond_9

    const/16 p1, -0x7c

    goto :goto_5

    :cond_9
    const/16 p1, 0x7c

    :goto_5
    aput-byte p1, p0, v0

    .line 278
    return p2

    .line 281
    :cond_a
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "offset":I
    .restart local p1    # "offset":I
    const/16 p3, 0x28

    ushr-long v2, v4, p3

    long-to-int p3, v2

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    .line 282
    const-wide/high16 p2, -0x1000000000000L

    and-long/2addr p2, v4

    cmp-long p2, p2, v6

    if-nez p2, :cond_c

    .line 283
    if-eqz v1, :cond_b

    const/16 p2, -0x7d

    goto :goto_6

    :cond_b
    const/16 p2, 0x7d

    :goto_6
    aput-byte p2, p0, v0

    .line 284
    return p1

    .line 287
    :cond_c
    add-int/lit8 p2, p1, 0x1

    .end local p1    # "offset":I
    .restart local p2    # "offset":I
    const/16 p3, 0x30

    ushr-long v2, v4, p3

    long-to-int p3, v2

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    .line 288
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, v4

    cmp-long p1, v2, v6

    if-nez p1, :cond_e

    .line 289
    if-eqz v1, :cond_d

    const/16 p1, -0x7e

    goto :goto_7

    :cond_d
    const/16 p1, 0x7e

    :goto_7
    aput-byte p1, p0, v0

    .line 290
    return p2

    .line 293
    :cond_e
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "offset":I
    .restart local p1    # "offset":I
    const/16 p3, 0x38

    ushr-long v2, v4, p3

    long-to-int p3, v2

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    .line 294
    if-eqz v1, :cond_f

    const/16 p2, -0x7f

    goto :goto_8

    :cond_f
    const/16 p2, 0x7f

    :goto_8
    aput-byte p2, p0, v0

    .line 295
    return p1

    .line 246
    .end local v1    # "negative":Z
    .end local v4    # "value":J
    .local p2, "value":J
    :cond_10
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    long-to-int v2, p2

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 247
    return v1
.end method

.method public static writeReverseInt([BII)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "value"    # I

    .line 1034
    invoke-static {p2}, Lcom/sleepycat/util/PackedInteger;->getWriteIntLength(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 1035
    .local v0, "nextOff":I
    const/16 v1, 0x77

    const/16 v2, -0x77

    if-ge p2, v2, :cond_0

    .line 1036
    const/4 v2, 0x1

    .line 1037
    .local v2, "negative":Z
    neg-int v3, p2

    sub-int/2addr v3, v1

    .end local p2    # "value":I
    .local v3, "value":I
    goto :goto_0

    .line 1038
    .end local v2    # "negative":Z
    .end local v3    # "value":I
    .restart local p2    # "value":I
    :cond_0
    if-le p2, v1, :cond_8

    .line 1039
    const/4 v2, 0x0

    .line 1040
    .restart local v2    # "negative":Z
    add-int/lit8 v3, p2, -0x77

    .line 1045
    .end local p2    # "value":I
    .restart local v3    # "value":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .line 1046
    .local p2, "byte1Off":I
    move p1, p2

    .line 1048
    add-int/lit8 p1, p1, -0x1

    int-to-byte v1, v3

    aput-byte v1, p0, p1

    .line 1049
    and-int/lit16 v1, v3, -0x100

    if-nez v1, :cond_2

    .line 1050
    if-eqz v2, :cond_1

    const/16 v1, -0x78

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    :goto_1
    aput-byte v1, p0, p2

    .line 1051
    return v0

    .line 1054
    :cond_2
    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 1055
    const/high16 v1, -0x10000

    and-int/2addr v1, v3

    if-nez v1, :cond_4

    .line 1056
    if-eqz v2, :cond_3

    const/16 v1, -0x79

    goto :goto_2

    :cond_3
    const/16 v1, 0x79

    :goto_2
    aput-byte v1, p0, p2

    .line 1057
    return v0

    .line 1060
    :cond_4
    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v1, v3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 1061
    const/high16 v1, -0x1000000

    and-int/2addr v1, v3

    if-nez v1, :cond_6

    .line 1062
    if-eqz v2, :cond_5

    const/16 v1, -0x7a

    goto :goto_3

    :cond_5
    const/16 v1, 0x7a

    :goto_3
    aput-byte v1, p0, p2

    .line 1063
    return v0

    .line 1066
    :cond_6
    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v1, v3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 1067
    if-eqz v2, :cond_7

    const/16 v1, -0x7b

    goto :goto_4

    :cond_7
    const/16 v1, 0x7b

    :goto_4
    aput-byte v1, p0, p2

    .line 1068
    return v0

    .line 1042
    .end local v2    # "negative":Z
    .end local v3    # "value":I
    .local p2, "value":I
    :cond_8
    int-to-byte v1, p2

    aput-byte v1, p0, p1

    .line 1043
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method public static writeSortedInt([BII)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 573
    move v0, p1

    .line 574
    .local v0, "byte1Off":I
    add-int/lit8 p1, p1, 0x1

    .line 575
    const/16 v1, -0x77

    if-ge p2, v1, :cond_3

    .line 582
    add-int/lit8 p2, p2, 0x77

    .line 598
    const v1, 0xffffff

    or-int/2addr v1, p2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 599
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    shr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    move p1, v1

    .line 601
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_0
    const v1, 0xffff

    or-int/2addr v1, p2

    if-eq v1, v2, :cond_1

    .line 602
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    move p1, v1

    .line 604
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_1
    or-int/lit16 v1, p2, 0xff

    if-eq v1, v2, :cond_2

    .line 605
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v1

    .line 607
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    int-to-byte v2, p2

    aput-byte v2, p0, p1

    .line 614
    sub-int p1, v1, v0

    add-int/lit8 p1, p1, -0x1

    .line 622
    .local p1, "valueLen":I
    rsub-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 623
    .end local p1    # "valueLen":I
    move p1, v1

    goto :goto_0

    .end local v1    # "offset":I
    .local p1, "offset":I
    :cond_3
    const/16 v1, 0x78

    if-le p2, v1, :cond_7

    .line 630
    add-int/lit8 p2, p2, -0x79

    .line 643
    const/high16 v1, -0x1000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_4

    .line 644
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v1

    .line 646
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_4
    const/high16 v1, -0x10000

    and-int/2addr v1, p2

    if-eqz v1, :cond_5

    .line 647
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v1

    .line 649
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_5
    and-int/lit16 v1, p2, -0x100

    if-eqz v1, :cond_6

    .line 650
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v1

    .line 652
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_6
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    int-to-byte v2, p2

    aput-byte v2, p0, p1

    .line 659
    sub-int p1, v1, v0

    add-int/lit8 p1, p1, -0x1

    .line 667
    .local p1, "valueLen":I
    add-int/lit16 v2, p1, 0xf7

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 668
    .end local p1    # "valueLen":I
    move p1, v1

    goto :goto_0

    .line 674
    .end local v1    # "offset":I
    .local p1, "offset":I
    :cond_7
    add-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 676
    :goto_0
    return p1
.end method

.method public static writeSortedLong([BIJ)I
    .locals 16
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 700
    move/from16 v0, p1

    .line 701
    .local v0, "byte1Off":I
    add-int/lit8 v1, p1, 0x1

    .line 702
    .end local p1    # "offset":I
    .local v1, "offset":I
    const-wide/16 v2, -0x77

    cmp-long v2, p2, v2

    const/16 v3, 0x10

    const/16 v4, 0x18

    const/16 v5, 0x20

    const/16 v6, 0x28

    const/16 v7, 0x30

    const/16 v8, 0x38

    const/16 v9, 0x8

    if-gez v2, :cond_7

    .line 709
    const-wide/16 v10, 0x77

    add-long v10, p2, v10

    .line 725
    .end local p2    # "value":J
    .local v10, "value":J
    const-wide v12, 0xffffffffffffffL

    or-long/2addr v12, v10

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-eqz v2, :cond_0

    .line 726
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    shr-long v12, v10, v8

    long-to-int v8, v12

    int-to-byte v8, v8

    aput-byte v8, p0, v1

    move v1, v2

    .line 728
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_0
    const-wide v12, 0xffffffffffffL

    or-long/2addr v12, v10

    cmp-long v2, v12, v14

    if-eqz v2, :cond_1

    .line 729
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v7, v10, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p0, v1

    move v1, v2

    .line 731
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_1
    const-wide v7, 0xffffffffffL

    or-long/2addr v7, v10

    cmp-long v2, v7, v14

    if-eqz v2, :cond_2

    .line 732
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v6, v10, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p0, v1

    move v1, v2

    .line 734
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_2
    const-wide v6, 0xffffffffL

    or-long/2addr v6, v10

    cmp-long v2, v6, v14

    if-eqz v2, :cond_3

    .line 735
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v5, v10, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p0, v1

    move v1, v2

    .line 737
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_3
    const-wide/32 v5, 0xffffff

    or-long/2addr v5, v10

    cmp-long v2, v5, v14

    if-eqz v2, :cond_4

    .line 738
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v4, v10, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    move v1, v2

    .line 740
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_4
    const-wide/32 v4, 0xffff

    or-long/2addr v4, v10

    cmp-long v2, v4, v14

    if-eqz v2, :cond_5

    .line 741
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v3, v10, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    move v1, v2

    .line 743
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_5
    const-wide/16 v2, 0xff

    or-long/2addr v2, v10

    cmp-long v2, v2, v14

    if-eqz v2, :cond_6

    .line 744
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v3, v10, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    move v1, v2

    .line 746
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 753
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    .line 761
    .local v1, "valueLen":I
    rsub-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 762
    .end local v1    # "valueLen":I
    move v1, v2

    goto/16 :goto_0

    .end local v2    # "offset":I
    .end local v10    # "value":J
    .local v1, "offset":I
    .restart local p2    # "value":J
    :cond_7
    const-wide/16 v10, 0x78

    cmp-long v2, p2, v10

    if-lez v2, :cond_f

    .line 769
    const-wide/16 v10, 0x79

    sub-long v10, p2, v10

    .line 782
    .end local p2    # "value":J
    .restart local v10    # "value":J
    const-wide/high16 v12, -0x100000000000000L

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-eqz v2, :cond_8

    .line 783
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v12, v10, v8

    long-to-int v8, v12

    int-to-byte v8, v8

    aput-byte v8, p0, v1

    move v1, v2

    .line 785
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_8
    const-wide/high16 v12, -0x1000000000000L

    and-long/2addr v12, v10

    cmp-long v2, v12, v14

    if-eqz v2, :cond_9

    .line 786
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v7, v10, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p0, v1

    move v1, v2

    .line 788
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_9
    const-wide v7, -0x10000000000L

    and-long/2addr v7, v10

    cmp-long v2, v7, v14

    if-eqz v2, :cond_a

    .line 789
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v6, v10, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p0, v1

    move v1, v2

    .line 791
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_a
    const-wide v6, -0x100000000L

    and-long/2addr v6, v10

    cmp-long v2, v6, v14

    if-eqz v2, :cond_b

    .line 792
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v5, v10, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p0, v1

    move v1, v2

    .line 794
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_b
    const-wide/32 v5, -0x1000000

    and-long/2addr v5, v10

    cmp-long v2, v5, v14

    if-eqz v2, :cond_c

    .line 795
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v4, v10, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    move v1, v2

    .line 797
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_c
    const-wide/32 v4, -0x10000

    and-long/2addr v4, v10

    cmp-long v2, v4, v14

    if-eqz v2, :cond_d

    .line 798
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v3, v10, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    move v1, v2

    .line 800
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_d
    const-wide/16 v2, -0x100

    and-long/2addr v2, v10

    cmp-long v2, v2, v14

    if-eqz v2, :cond_e

    .line 801
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-long v3, v10, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    move v1, v2

    .line 803
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_e
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 810
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    .line 818
    .local v1, "valueLen":I
    add-int/lit16 v3, v1, 0xf7

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 819
    .end local v1    # "valueLen":I
    move v1, v2

    goto :goto_0

    .line 825
    .end local v2    # "offset":I
    .end local v10    # "value":J
    .local v1, "offset":I
    .restart local p2    # "value":J
    :cond_f
    const-wide/16 v2, 0x7f

    add-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    move-wide/from16 v10, p2

    .line 827
    .end local p2    # "value":J
    .restart local v10    # "value":J
    :goto_0
    return v1
.end method
