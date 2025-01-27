.class final Lio/netty/handler/codec/compression/Bzip2DivSufSort;
.super Ljava/lang/Object;
.source "Bzip2DivSufSort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;,
        Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;,
        Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    }
.end annotation


# static fields
.field private static final BUCKET_A_SIZE:I = 0x100

.field private static final BUCKET_B_SIZE:I = 0x10000

.field private static final INSERTIONSORT_THRESHOLD:I = 0x8

.field private static final LOG_2_TABLE:[I

.field private static final SS_BLOCKSIZE:I = 0x400

.field private static final STACK_SIZE:I = 0x40


# instance fields
.field private final SA:[I

.field private final T:[B

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
    .end array-data
.end method

.method constructor <init>([B[II)V
    .locals 0
    .param p1, "block"    # [B
    .param p2, "bwtBlock"    # [I
    .param p3, "blockLength"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 55
    iput-object p2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 56
    iput p3, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->n:I

    .line 57
    return-void
.end method

.method private static BUCKET_B(II)I
    .locals 1
    .param p0, "c0"    # I
    .param p1, "c1"    # I

    .line 1856
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    return v0
.end method

.method private static BUCKET_BSTAR(II)I
    .locals 1
    .param p0, "c0"    # I
    .param p1, "c1"    # I

    .line 1860
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    return v0
.end method

.method private constructBWT([I[I)I
    .locals 13
    .param p1, "bucketA"    # [I
    .param p2, "bucketB"    # [I

    .line 2022
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 2023
    .local v0, "T":[B
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2024
    .local v1, "SA":[I
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->n:I

    .line 2026
    .local v2, "n":I
    const/4 v3, 0x0

    .line 2028
    .local v3, "t":I
    const/4 v4, 0x0

    .line 2029
    .local v4, "c2":I
    const/4 v5, -0x1

    .line 2031
    .local v5, "orig":I
    const/16 v6, 0xfe

    .local v6, "c1":I
    :goto_0
    if-ltz v6, :cond_7

    .line 2032
    add-int/lit8 v7, v6, 0x1

    invoke-static {v6, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v7

    aget v7, p2, v7

    .local v7, "i":I
    add-int/lit8 v8, v6, 0x1

    aget v8, p1, v8

    .local v8, "j":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 2033
    :goto_1
    if-gt v7, v8, :cond_6

    .line 2035
    aget v9, v1, v8

    move v10, v9

    .local v10, "s":I
    move v11, v9

    .local v11, "s1":I
    if-ltz v9, :cond_4

    .line 2036
    add-int/lit8 v10, v10, -0x1

    if-gez v10, :cond_0

    .line 2037
    add-int/lit8 v9, v2, -0x1

    move v10, v9

    .line 2039
    :cond_0
    aget-byte v9, v0, v10

    and-int/lit16 v9, v9, 0xff

    move v12, v9

    .local v12, "c0":I
    if-gt v9, v6, :cond_5

    .line 2040
    not-int v9, v11

    aput v9, v1, v8

    .line 2041
    if-lez v10, :cond_1

    add-int/lit8 v9, v10, -0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    if-le v9, v12, :cond_1

    .line 2042
    not-int v9, v10

    move v10, v9

    .line 2044
    :cond_1
    if-ne v4, v12, :cond_2

    .line 2045
    add-int/lit8 v3, v3, -0x1

    aput v10, v1, v3

    goto :goto_2

    .line 2047
    :cond_2
    if-ltz v4, :cond_3

    .line 2048
    invoke-static {v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v9

    aput v3, p2, v9

    .line 2050
    :cond_3
    move v4, v12

    invoke-static {v12, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v9

    aget v9, p2, v9

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    aput v10, v1, v9

    goto :goto_2

    .line 2054
    .end local v12    # "c0":I
    :cond_4
    not-int v9, v10

    aput v9, v1, v8

    .line 2034
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2031
    .end local v10    # "s":I
    .end local v11    # "s1":I
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2059
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v2, :cond_f

    .line 2060
    aget v8, v1, v7

    move v9, v8

    .local v9, "s":I
    move v10, v8

    .local v10, "s1":I
    if-ltz v8, :cond_c

    .line 2061
    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_8

    .line 2062
    add-int/lit8 v8, v2, -0x1

    move v9, v8

    .line 2064
    :cond_8
    aget-byte v8, v0, v9

    and-int/lit16 v8, v8, 0xff

    move v11, v8

    .local v11, "c0":I
    add-int/lit8 v12, v9, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    if-lt v8, v12, :cond_d

    .line 2065
    if-lez v9, :cond_9

    add-int/lit8 v8, v9, -0x1

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    if-ge v8, v11, :cond_9

    .line 2066
    not-int v8, v9

    move v9, v8

    .line 2068
    :cond_9
    if-ne v11, v4, :cond_a

    .line 2069
    add-int/lit8 v3, v3, 0x1

    aput v9, v1, v3

    goto :goto_4

    .line 2071
    :cond_a
    const/4 v8, -0x1

    if-eq v4, v8, :cond_b

    .line 2072
    aput v3, p1, v4

    .line 2074
    :cond_b
    move v4, v11

    aget v8, p1, v11

    add-int/lit8 v8, v8, 0x1

    move v3, v8

    aput v9, v1, v8

    goto :goto_4

    .line 2078
    .end local v11    # "c0":I
    :cond_c
    not-int v10, v10

    .line 2081
    :cond_d
    :goto_4
    if-nez v10, :cond_e

    .line 2082
    add-int/lit8 v8, v2, -0x1

    aget-byte v8, v0, v8

    aput v8, v1, v7

    .line 2083
    move v5, v7

    goto :goto_5

    .line 2085
    :cond_e
    add-int/lit8 v8, v10, -0x1

    aget-byte v8, v0, v8

    aput v8, v1, v7

    .line 2059
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2088
    .end local v9    # "s":I
    .end local v10    # "s1":I
    :cond_f
    return v5
.end method

.method private static getIDX(I)I
    .locals 1
    .param p0, "a"    # I

    .line 733
    if-ltz p0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    not-int v0, p0

    :goto_0
    return v0
.end method

.method private lsIntroSort(IIIII)V
    .locals 24
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "first"    # I
    .param p5, "last"    # I

    .line 1146
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    iget-object v10, v6, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1148
    .local v10, "SA":[I
    const/16 v0, 0x40

    new-array v11, v0, [Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1153
    .local v11, "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    const/4 v0, 0x0

    .line 1156
    .local v0, "x":I
    const/4 v1, 0x0

    .local v1, "ssize":I
    sub-int v2, p5, p4

    invoke-static {v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v2

    move/from16 v12, p4

    move/from16 v13, p5

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    .line 1157
    .end local v0    # "x":I
    .end local v1    # "ssize":I
    .end local p4    # "first":I
    .end local p5    # "last":I
    .local v12, "first":I
    .local v13, "last":I
    .local v14, "x":I
    .local v15, "ssize":I
    .local v16, "limit":I
    :goto_0
    sub-int v0, v13, v12

    const/16 v1, 0x8

    const/16 v17, -0x1

    const/4 v5, 0x1

    if-gt v0, v1, :cond_3

    .line 1158
    sub-int v0, v13, v12

    if-ge v5, v0, :cond_0

    .line 1159
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v12

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trInsertionSort(IIIII)V

    .line 1160
    invoke-direct {v6, v7, v12, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsUpdateGroup(III)V

    goto :goto_1

    .line 1161
    :cond_0
    sub-int v0, v13, v12

    if-ne v0, v5, :cond_1

    .line 1162
    aput v17, v10, v12

    .line 1164
    :cond_1
    :goto_1
    if-nez v15, :cond_2

    .line 1165
    return-void

    .line 1167
    :cond_2
    add-int/lit8 v15, v15, -0x1

    aget-object v0, v11, v15

    .line 1168
    .local v0, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v12, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1169
    iget v13, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1170
    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1171
    .end local v16    # "limit":I
    .local v1, "limit":I
    move/from16 v16, v1

    goto :goto_0

    .line 1174
    .end local v0    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v1    # "limit":I
    .restart local v16    # "limit":I
    :cond_3
    add-int/lit8 v4, v16, -0x1

    .end local v16    # "limit":I
    .local v4, "limit":I
    if-nez v16, :cond_7

    .line 1175
    sub-int v5, v13, v12

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 p4, v14

    move v14, v4

    .end local v4    # "limit":I
    .local v14, "limit":I
    .local p4, "x":I
    move v4, v12

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trHeapSort(IIIII)V

    .line 1176
    add-int/lit8 v0, v13, -0x1

    move/from16 v1, p4

    .end local p4    # "x":I
    .local v0, "a":I
    .local v1, "x":I
    :goto_2
    if-ge v12, v0, :cond_5

    .line 1177
    aget v2, v10, v0

    invoke-direct {v6, v7, v8, v9, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    .line 1178
    .local v2, "b":I
    :goto_3
    if-gt v12, v2, :cond_4

    aget v3, v10, v2

    invoke-direct {v6, v7, v8, v9, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 1180
    aget v3, v10, v2

    not-int v3, v3

    aput v3, v10, v2

    .line 1179
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1176
    :cond_4
    move v0, v2

    goto :goto_2

    .line 1183
    .end local v2    # "b":I
    :cond_5
    invoke-direct {v6, v7, v12, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsUpdateGroup(III)V

    .line 1184
    if-nez v15, :cond_6

    .line 1185
    return-void

    .line 1187
    :cond_6
    add-int/lit8 v15, v15, -0x1

    aget-object v2, v11, v15

    .line 1188
    .local v2, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v12, v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1189
    iget v13, v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1190
    iget v3, v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1191
    .end local v14    # "limit":I
    .local v3, "limit":I
    move v14, v1

    move/from16 v16, v3

    goto :goto_0

    .line 1194
    .end local v0    # "a":I
    .end local v1    # "x":I
    .end local v2    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    .local v14, "x":I
    :cond_7
    move/from16 p4, v14

    move v14, v4

    .end local v4    # "limit":I
    .local v14, "limit":I
    .restart local p4    # "x":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v12

    move-object/from16 v16, v11

    move v11, v5

    .end local v11    # "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .local v16, "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    move v5, v13

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trPivot(IIIII)I

    move-result v0

    .line 1195
    .restart local v0    # "a":I
    invoke-static {v10, v12, v10, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1196
    aget v1, v10, v12

    invoke-direct {v6, v7, v8, v9, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v1

    .line 1198
    .local v1, "v":I
    add-int/lit8 v2, v12, 0x1

    move/from16 v3, p4

    .line 1199
    .end local p4    # "x":I
    .local v2, "b":I
    .local v3, "x":I
    :goto_4
    if-ge v2, v13, :cond_8

    aget v4, v10, v2

    invoke-direct {v6, v7, v8, v9, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v4

    move v3, v4

    if-ne v4, v1, :cond_8

    .line 1200
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1202
    :cond_8
    move v0, v2

    if-ge v2, v13, :cond_a

    if-ge v3, v1, :cond_a

    .line 1203
    :cond_9
    :goto_5
    add-int/2addr v2, v11

    if-ge v2, v13, :cond_a

    aget v4, v10, v2

    invoke-direct {v6, v7, v8, v9, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v4

    move v3, v4

    if-gt v4, v1, :cond_a

    .line 1204
    if-ne v3, v1, :cond_9

    .line 1205
    invoke-static {v10, v2, v10, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1211
    :cond_a
    add-int/lit8 v4, v13, -0x1

    .line 1212
    .local v4, "c":I
    :goto_6
    if-ge v2, v4, :cond_b

    aget v5, v10, v4

    invoke-direct {v6, v7, v8, v9, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v5

    move v3, v5

    if-ne v5, v1, :cond_b

    .line 1213
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 1215
    :cond_b
    move v5, v4

    .local v5, "d":I
    if-ge v2, v4, :cond_d

    if-le v3, v1, :cond_d

    .line 1216
    :goto_7
    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_d

    aget v11, v10, v4

    invoke-direct {v6, v7, v8, v9, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v11

    move v3, v11

    if-lt v11, v1, :cond_d

    .line 1217
    if-ne v3, v1, :cond_c

    .line 1218
    invoke-static {v10, v4, v10, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1219
    add-int/lit8 v5, v5, -0x1

    const/4 v11, 0x1

    goto :goto_7

    .line 1217
    :cond_c
    const/4 v11, 0x1

    goto :goto_7

    .line 1223
    :cond_d
    if-ge v2, v4, :cond_10

    .line 1224
    invoke-static {v10, v2, v10, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1225
    :cond_e
    :goto_8
    const/4 v11, 0x1

    add-int/2addr v2, v11

    if-ge v2, v4, :cond_f

    aget v11, v10, v2

    invoke-direct {v6, v7, v8, v9, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v11

    move v3, v11

    if-gt v11, v1, :cond_f

    .line 1226
    if-ne v3, v1, :cond_e

    .line 1227
    invoke-static {v10, v2, v10, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1231
    :cond_f
    :goto_9
    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_d

    aget v11, v10, v4

    invoke-direct {v6, v7, v8, v9, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v11

    move v3, v11

    if-lt v11, v1, :cond_d

    .line 1232
    if-ne v3, v1, :cond_f

    .line 1233
    invoke-static {v10, v4, v10, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1234
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 1239
    :cond_10
    if-gt v0, v5, :cond_1b

    .line 1240
    add-int/lit8 v4, v2, -0x1

    .line 1242
    sub-int v11, v0, v12

    move/from16 v18, v11

    move/from16 p5, v1

    .end local v1    # "v":I
    .local v18, "s":I
    .local p5, "v":I
    sub-int v1, v2, v0

    move/from16 v19, v1

    .local v19, "t":I
    if-le v11, v1, :cond_11

    .line 1243
    move/from16 v18, v19

    .line 1245
    :cond_11
    move v1, v12

    .local v1, "e":I
    sub-int v11, v2, v18

    .local v11, "f":I
    :goto_a
    if-lez v18, :cond_12

    .line 1246
    invoke-static {v10, v1, v10, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1245
    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 1248
    :cond_12
    move/from16 v20, v1

    .end local v1    # "e":I
    .local v20, "e":I
    sub-int v1, v5, v4

    move/from16 v18, v1

    sub-int v21, v13, v5

    move/from16 v23, v3

    const/16 v22, 0x1

    .end local v3    # "x":I
    .local v23, "x":I
    add-int/lit8 v3, v21, -0x1

    move/from16 v19, v3

    if-le v1, v3, :cond_13

    .line 1249
    move/from16 v18, v19

    .line 1251
    :cond_13
    move v1, v2

    .end local v20    # "e":I
    .restart local v1    # "e":I
    sub-int v3, v13, v18

    .end local v11    # "f":I
    .local v3, "f":I
    :goto_b
    if-lez v18, :cond_14

    .line 1252
    invoke-static {v10, v1, v10, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1251
    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1255
    :cond_14
    sub-int v11, v2, v0

    add-int/2addr v11, v12

    .line 1256
    .end local v0    # "a":I
    .local v11, "a":I
    sub-int v0, v5, v4

    sub-int v0, v13, v0

    .line 1258
    .end local v2    # "b":I
    .local v0, "b":I
    move v2, v12

    .end local v4    # "c":I
    .local v2, "c":I
    add-int/lit8 v4, v11, -0x1

    .end local p5    # "v":I
    .local v4, "v":I
    :goto_c
    if-ge v2, v11, :cond_15

    .line 1259
    aget v20, v10, v2

    add-int v20, v7, v20

    aput v4, v10, v20

    .line 1258
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1261
    :cond_15
    if-ge v0, v13, :cond_16

    .line 1262
    move v2, v11

    add-int/lit8 v4, v0, -0x1

    :goto_d
    if-ge v2, v0, :cond_16

    .line 1263
    aget v20, v10, v2

    add-int v20, v7, v20

    aput v4, v10, v20

    .line 1262
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1266
    :cond_16
    move/from16 v20, v1

    .end local v1    # "e":I
    .restart local v20    # "e":I
    sub-int v1, v0, v11

    move/from16 p5, v2

    const/4 v2, 0x1

    .end local v2    # "c":I
    .local p5, "c":I
    if-ne v1, v2, :cond_17

    .line 1267
    aput v17, v10, v11

    .line 1270
    :cond_17
    sub-int v1, v11, v12

    sub-int v2, v13, v0

    move/from16 v17, v3

    .end local v3    # "f":I
    .local v17, "f":I
    const/4 v3, 0x0

    if-gt v1, v2, :cond_19

    .line 1271
    if-ge v12, v11, :cond_18

    .line 1272
    add-int/lit8 v1, v15, 0x1

    .end local v15    # "ssize":I
    .local v1, "ssize":I
    new-instance v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v2, v0, v13, v14, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v2, v16, v15

    .line 1273
    move v13, v11

    move v15, v1

    move-object/from16 v11, v16

    move/from16 v16, v14

    move/from16 v14, v23

    goto/16 :goto_0

    .line 1275
    .end local v1    # "ssize":I
    .restart local v15    # "ssize":I
    :cond_18
    move v12, v0

    move-object/from16 v11, v16

    move/from16 v16, v14

    move/from16 v14, v23

    goto/16 :goto_0

    .line 1278
    :cond_19
    if-ge v0, v13, :cond_1a

    .line 1279
    add-int/lit8 v1, v15, 0x1

    .end local v15    # "ssize":I
    .restart local v1    # "ssize":I
    new-instance v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v2, v12, v11, v14, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v2, v16, v15

    .line 1280
    move v12, v0

    move v15, v1

    move-object/from16 v11, v16

    move/from16 v16, v14

    move/from16 v14, v23

    goto/16 :goto_0

    .line 1282
    .end local v1    # "ssize":I
    .restart local v15    # "ssize":I
    :cond_1a
    move v13, v11

    move-object/from16 v11, v16

    move/from16 v16, v14

    move/from16 v14, v23

    goto/16 :goto_0

    .line 1286
    .end local v11    # "a":I
    .end local v17    # "f":I
    .end local v18    # "s":I
    .end local v19    # "t":I
    .end local v20    # "e":I
    .end local v23    # "x":I
    .end local p5    # "c":I
    .local v0, "a":I
    .local v1, "v":I
    .local v2, "b":I
    .local v3, "x":I
    .local v4, "c":I
    :cond_1b
    move/from16 p5, v1

    move/from16 v23, v3

    .end local v1    # "v":I
    .end local v3    # "x":I
    .restart local v23    # "x":I
    .local p5, "v":I
    if-nez v15, :cond_1c

    .line 1287
    return-void

    .line 1289
    :cond_1c
    add-int/lit8 v15, v15, -0x1

    aget-object v1, v16, v15

    .line 1290
    .local v1, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v12, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1291
    iget v13, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1292
    iget v1, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1293
    .end local v14    # "limit":I
    .local v1, "limit":I
    move-object/from16 v11, v16

    move/from16 v14, v23

    move/from16 v16, v1

    goto/16 :goto_0
.end method

.method private lsSort(III)V
    .locals 12
    .param p1, "isa"    # I
    .param p2, "n"    # I
    .param p3, "depth"    # I

    .line 1298
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1304
    .local v0, "SA":[I
    add-int v1, p1, p3

    .local v1, "isaD":I
    :goto_0
    neg-int v2, p2

    const/4 v3, 0x0

    aget v3, v0, v3

    if-ge v2, v3, :cond_8

    .line 1305
    const/4 v2, 0x0

    .line 1306
    .local v2, "first":I
    const/4 v3, 0x0

    move v8, v2

    .line 1308
    .end local v2    # "first":I
    .local v3, "skip":I
    .local v8, "first":I
    :cond_0
    aget v2, v0, v8

    move v9, v2

    .local v9, "t":I
    if-gez v2, :cond_1

    .line 1309
    sub-int/2addr v8, v9

    .line 1310
    add-int/2addr v3, v9

    goto :goto_2

    .line 1312
    :cond_1
    if-eqz v3, :cond_2

    .line 1313
    add-int v2, v8, v3

    aput v3, v0, v2

    .line 1314
    const/4 v3, 0x0

    move v10, v3

    goto :goto_1

    .line 1312
    :cond_2
    move v10, v3

    .line 1316
    .end local v3    # "skip":I
    .local v10, "skip":I
    :goto_1
    add-int v2, p1, v9

    aget v2, v0, v2

    add-int/lit8 v11, v2, 0x1

    .line 1317
    .local v11, "last":I
    add-int v5, p1, p2

    move-object v2, p0

    move v3, p1

    move v4, v1

    move v6, v8

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsIntroSort(IIIII)V

    .line 1318
    move v2, v11

    move v8, v2

    move v3, v10

    .line 1320
    .end local v10    # "skip":I
    .end local v11    # "last":I
    .restart local v3    # "skip":I
    :goto_2
    if-lt v8, p2, :cond_0

    .line 1321
    if-eqz v3, :cond_3

    .line 1322
    add-int v2, v8, v3

    aput v3, v0, v2

    .line 1324
    :cond_3
    sub-int v2, v1, p1

    if-ge p2, v2, :cond_7

    .line 1325
    const/4 v2, 0x0

    .line 1327
    .end local v8    # "first":I
    .restart local v2    # "first":I
    :cond_4
    aget v4, v0, v2

    move v9, v4

    if-gez v4, :cond_5

    .line 1328
    sub-int/2addr v2, v9

    goto :goto_4

    .line 1330
    :cond_5
    add-int v4, p1, v9

    aget v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 1331
    .local v4, "last":I
    move v5, v2

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_6

    .line 1332
    aget v6, v0, v5

    add-int/2addr v6, p1

    aput v5, v0, v6

    .line 1331
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1334
    :cond_6
    move v2, v4

    .line 1336
    .end local v4    # "last":I
    .end local v5    # "i":I
    :goto_4
    if-lt v2, p2, :cond_4

    .line 1337
    goto :goto_5

    .line 1304
    .end local v2    # "first":I
    .restart local v8    # "first":I
    :cond_7
    sub-int v2, v1, p1

    add-int/2addr v1, v2

    goto :goto_0

    .line 1340
    .end local v3    # "skip":I
    .end local v8    # "first":I
    .end local v9    # "t":I
    :cond_8
    :goto_5
    return-void
.end method

.method private lsUpdateGroup(III)V
    .locals 5
    .param p1, "isa"    # I
    .param p2, "first"    # I
    .param p3, "last"    # I

    .line 1118
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1123
    .local v0, "SA":[I
    move v1, p2

    .local v1, "a":I
    :goto_0
    if-ge v1, p3, :cond_5

    .line 1124
    aget v2, v0, v1

    if-ltz v2, :cond_2

    .line 1125
    move v2, v1

    .line 1127
    .local v2, "b":I
    :cond_0
    aget v3, v0, v1

    add-int/2addr v3, p1

    aput v1, v0, v3

    .line 1128
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p3, :cond_1

    aget v3, v0, v1

    if-gez v3, :cond_0

    .line 1129
    :cond_1
    sub-int v3, v2, v1

    aput v3, v0, v2

    .line 1130
    if-gt p3, v1, :cond_2

    .line 1131
    goto :goto_1

    .line 1134
    .end local v2    # "b":I
    :cond_2
    move v2, v1

    .line 1136
    .restart local v2    # "b":I
    :cond_3
    aget v3, v0, v1

    not-int v3, v3

    aput v3, v0, v1

    .line 1137
    add-int/lit8 v1, v1, 0x1

    aget v3, v0, v1

    if-ltz v3, :cond_3

    .line 1138
    move v3, v1

    .line 1140
    .local v3, "t":I
    :cond_4
    aget v4, v0, v2

    add-int/2addr v4, p1

    aput v3, v0, v4

    .line 1141
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_4

    .line 1123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1143
    .end local v2    # "b":I
    .end local v3    # "t":I
    :cond_5
    :goto_1
    return-void
.end method

.method private sortTypeBstar([I[I)I
    .locals 31
    .param p1, "bucketA"    # [I
    .param p2, "bucketB"    # [I

    .line 1864
    move-object/from16 v10, p0

    iget-object v11, v10, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 1865
    .local v11, "T":[B
    iget-object v12, v10, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1866
    .local v12, "SA":[I
    iget v13, v10, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->n:I

    .line 1867
    .local v13, "n":I
    const/16 v0, 0x100

    new-array v14, v0, [I

    .line 1875
    .local v14, "tempbuf":[I
    const/4 v1, 0x1

    .local v1, "i":I
    const/4 v2, 0x1

    .local v2, "flag":I
    :goto_0
    const/16 v15, 0xff

    if-ge v1, v13, :cond_1

    .line 1876
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v11, v3

    aget-byte v4, v11, v1

    if-eq v3, v4, :cond_0

    .line 1877
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v11, v3

    and-int/2addr v3, v15

    aget-byte v4, v11, v1

    and-int/2addr v4, v15

    if-le v3, v4, :cond_1

    .line 1878
    const/4 v2, 0x0

    move/from16 v16, v2

    goto :goto_1

    .line 1875
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1883
    :cond_1
    move/from16 v16, v2

    .end local v2    # "flag":I
    .local v16, "flag":I
    :goto_1
    add-int/lit8 v1, v13, -0x1

    .line 1884
    move v2, v13

    .line 1887
    .local v2, "m":I
    aget-byte v3, v11, v1

    and-int/2addr v3, v15

    move v4, v3

    .local v4, "ti":I
    const/16 v17, 0x0

    aget-byte v5, v11, v17

    and-int/2addr v5, v15

    move v9, v5

    .local v9, "t0":I
    const/4 v8, 0x1

    if-lt v3, v5, :cond_3

    aget-byte v3, v11, v1

    aget-byte v5, v11, v17

    if-ne v3, v5, :cond_2

    if-eqz v16, :cond_2

    goto :goto_2

    .line 1899
    :cond_2
    move/from16 v18, v4

    goto :goto_5

    .line 1888
    :cond_3
    :goto_2
    if-nez v16, :cond_4

    .line 1889
    invoke-static {v4, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v3

    aget v5, p2, v3

    add-int/2addr v5, v8

    aput v5, p2, v3

    .line 1890
    add-int/lit8 v2, v2, -0x1

    aput v1, v12, v2

    goto :goto_3

    .line 1892
    :cond_4
    invoke-static {v4, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v3

    aget v5, p2, v3

    add-int/2addr v5, v8

    aput v5, p2, v3

    .line 1894
    :goto_3
    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_6

    aget-byte v3, v11, v1

    and-int/2addr v3, v15

    move v4, v3

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v11, v5

    and-int/2addr v5, v15

    move v6, v5

    .local v6, "ti1":I
    if-gt v3, v5, :cond_5

    .line 1895
    invoke-static {v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v3

    aget v5, p2, v3

    add-int/2addr v5, v8

    aput v5, p2, v3

    .line 1894
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    move/from16 v18, v4

    goto :goto_5

    .end local v6    # "ti1":I
    :cond_6
    move/from16 v18, v4

    .line 1899
    .end local v4    # "ti":I
    .local v18, "ti":I
    :cond_7
    :goto_5
    if-ltz v1, :cond_b

    .line 1901
    :cond_8
    aget-byte v3, v11, v1

    and-int/2addr v3, v15

    aget v4, p1, v3

    add-int/2addr v4, v8

    aput v4, p1, v3

    .line 1902
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    aget-byte v3, v11, v1

    and-int/2addr v3, v15

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v11, v4

    and-int/2addr v4, v15

    if-ge v3, v4, :cond_8

    .line 1903
    :cond_9
    if-ltz v1, :cond_7

    .line 1904
    aget-byte v3, v11, v1

    and-int/2addr v3, v15

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v11, v4

    and-int/2addr v4, v15

    invoke-static {v3, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v3

    aget v4, p2, v3

    add-int/2addr v4, v8

    aput v4, p2, v3

    .line 1905
    add-int/lit8 v2, v2, -0x1

    aput v1, v12, v2

    .line 1906
    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_7

    aget-byte v3, v11, v1

    and-int/2addr v3, v15

    move v4, v3

    .end local v18    # "ti":I
    .restart local v4    # "ti":I
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v11, v5

    and-int/2addr v5, v15

    move v6, v5

    .restart local v6    # "ti1":I
    if-gt v3, v5, :cond_a

    .line 1907
    invoke-static {v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v3

    aget v5, p2, v3

    add-int/2addr v5, v8

    aput v5, p2, v3

    .line 1906
    add-int/lit8 v1, v1, -0x1

    move/from16 v18, v4

    goto :goto_6

    :cond_a
    move/from16 v18, v4

    goto :goto_5

    .line 1911
    .end local v4    # "ti":I
    .end local v6    # "ti1":I
    .restart local v18    # "ti":I
    :cond_b
    sub-int v7, v13, v2

    .line 1912
    .end local v2    # "m":I
    .local v7, "m":I
    if-nez v7, :cond_d

    .line 1913
    const/4 v0, 0x0

    .end local v1    # "i":I
    .local v0, "i":I
    :goto_7
    if-ge v0, v13, :cond_c

    .line 1914
    aput v0, v12, v0

    .line 1913
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1916
    :cond_c
    return v17

    .line 1919
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_d
    const/4 v2, 0x0

    .local v2, "c0":I
    const/4 v1, -0x1

    const/4 v3, 0x0

    .local v3, "j":I
    :goto_8
    if-ge v2, v0, :cond_f

    .line 1920
    aget v4, p1, v2

    add-int/2addr v4, v1

    .line 1921
    .local v4, "t":I
    add-int v5, v1, v3

    aput v5, p1, v2

    .line 1922
    invoke-static {v2, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v5

    aget v5, p2, v5

    add-int/2addr v5, v4

    .line 1923
    .end local v1    # "i":I
    .local v5, "i":I
    add-int/lit8 v1, v2, 0x1

    .local v1, "c1":I
    :goto_9
    if-ge v1, v0, :cond_e

    .line 1924
    invoke-static {v2, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v6

    aget v6, p2, v6

    add-int/2addr v3, v6

    .line 1925
    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v6, v1

    aput v3, p2, v6

    .line 1926
    invoke-static {v2, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v6

    aget v6, p2, v6

    add-int/2addr v5, v6

    .line 1923
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1919
    :cond_e
    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_8

    .line 1930
    .end local v4    # "t":I
    .end local v5    # "i":I
    .local v1, "i":I
    :cond_f
    sub-int v19, v13, v7

    .line 1931
    .local v19, "PAb":I
    move v6, v7

    .line 1932
    .local v6, "ISAb":I
    add-int/lit8 v1, v7, -0x2

    :goto_a
    if-ltz v1, :cond_10

    .line 1933
    add-int v4, v19, v1

    aget v4, v12, v4

    .line 1934
    .restart local v4    # "t":I
    aget-byte v5, v11, v4

    and-int/lit16 v2, v5, 0xff

    .line 1935
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v11, v5

    and-int/2addr v5, v15

    .line 1936
    .local v5, "c1":I
    invoke-static {v2, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v20

    aget v21, p2, v20

    add-int/lit8 v21, v21, -0x1

    aput v21, p2, v20

    aput v1, v12, v21

    .line 1932
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1938
    .end local v4    # "t":I
    .end local v5    # "c1":I
    :cond_10
    add-int v4, v19, v7

    sub-int/2addr v4, v8

    aget v20, v12, v4

    .line 1939
    .local v20, "t":I
    aget-byte v4, v11, v20

    and-int/lit16 v2, v4, 0xff

    .line 1940
    add-int/lit8 v4, v20, 0x1

    aget-byte v4, v11, v4

    and-int/2addr v4, v15

    .line 1941
    .local v4, "c1":I
    invoke-static {v2, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v5

    aget v21, p2, v5

    add-int/lit8 v21, v21, -0x1

    aput v21, p2, v5

    add-int/lit8 v5, v7, -0x1

    aput v5, v12, v21

    .line 1943
    move-object v5, v12

    .line 1944
    .local v5, "buf":[I
    move/from16 v21, v7

    .line 1945
    .local v21, "bufoffset":I
    mul-int/lit8 v22, v7, 0x2

    sub-int v15, v13, v22

    .line 1946
    .local v15, "bufsize":I
    if-gt v15, v0, :cond_11

    .line 1947
    move-object v5, v14

    .line 1948
    const/16 v21, 0x0

    .line 1949
    const/16 v15, 0x100

    move/from16 v22, v21

    move/from16 v21, v15

    move-object v15, v5

    goto :goto_b

    .line 1946
    :cond_11
    move/from16 v22, v21

    move/from16 v21, v15

    move-object v15, v5

    .line 1952
    .end local v5    # "buf":[I
    .local v15, "buf":[I
    .local v21, "bufsize":I
    .local v22, "bufoffset":I
    :goto_b
    const/16 v0, 0xff

    .end local v2    # "c0":I
    .local v0, "c0":I
    move v2, v7

    move v5, v0

    .end local v0    # "c0":I
    .end local v3    # "j":I
    .local v2, "j":I
    .local v5, "c0":I
    :goto_c
    if-lez v2, :cond_15

    .line 1953
    const/16 v0, 0xff

    move v4, v0

    move/from16 v23, v2

    .end local v2    # "j":I
    .local v23, "j":I
    :goto_d
    if-ge v5, v4, :cond_14

    .line 1954
    invoke-static {v5, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v0

    aget v24, p2, v0

    .line 1955
    .end local v1    # "i":I
    .local v24, "i":I
    sub-int v0, v23, v24

    if-ge v8, v0, :cond_13

    .line 1956
    const/16 v25, 0x2

    aget v0, v12, v24

    add-int/lit8 v1, v7, -0x1

    if-ne v0, v1, :cond_12

    move/from16 v26, v8

    goto :goto_e

    :cond_12
    move/from16 v26, v17

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v23

    move/from16 v27, v4

    .end local v4    # "c1":I
    .local v27, "c1":I
    move-object v4, v15

    move/from16 v28, v5

    .end local v5    # "c0":I
    .local v28, "c0":I
    move/from16 v5, v22

    move-object/from16 v29, v14

    move v14, v6

    .end local v6    # "ISAb":I
    .local v14, "ISAb":I
    .local v29, "tempbuf":[I
    move/from16 v6, v21

    move-object/from16 v30, v15

    move v15, v7

    .end local v7    # "m":I
    .local v15, "m":I
    .local v30, "buf":[I
    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v25, v9

    .end local v9    # "t0":I
    .local v25, "t0":I
    move v9, v13

    invoke-direct/range {v0 .. v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->subStringSort(III[IIIIZI)V

    goto :goto_f

    .line 1955
    .end local v25    # "t0":I
    .end local v27    # "c1":I
    .end local v28    # "c0":I
    .end local v29    # "tempbuf":[I
    .end local v30    # "buf":[I
    .restart local v4    # "c1":I
    .restart local v5    # "c0":I
    .restart local v6    # "ISAb":I
    .restart local v7    # "m":I
    .restart local v9    # "t0":I
    .local v14, "tempbuf":[I
    .local v15, "buf":[I
    :cond_13
    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v25, v9

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    move v14, v6

    move v15, v7

    .line 1953
    .end local v4    # "c1":I
    .end local v5    # "c0":I
    .end local v6    # "ISAb":I
    .end local v7    # "m":I
    .end local v9    # "t0":I
    .local v14, "ISAb":I
    .local v15, "m":I
    .restart local v25    # "t0":I
    .restart local v27    # "c1":I
    .restart local v28    # "c0":I
    .restart local v29    # "tempbuf":[I
    .restart local v30    # "buf":[I
    :goto_f
    move/from16 v23, v24

    add-int/lit8 v4, v27, -0x1

    move v6, v14

    move v7, v15

    move/from16 v1, v24

    move/from16 v9, v25

    move/from16 v5, v28

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    const/4 v8, 0x1

    .end local v27    # "c1":I
    .restart local v4    # "c1":I
    goto :goto_d

    .line 1952
    .end local v24    # "i":I
    .end local v25    # "t0":I
    .end local v28    # "c0":I
    .end local v29    # "tempbuf":[I
    .end local v30    # "buf":[I
    .restart local v1    # "i":I
    .restart local v5    # "c0":I
    .restart local v6    # "ISAb":I
    .restart local v7    # "m":I
    .restart local v9    # "t0":I
    .local v14, "tempbuf":[I
    .local v15, "buf":[I
    :cond_14
    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v25, v9

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    move v14, v6

    move v15, v7

    .end local v4    # "c1":I
    .end local v5    # "c0":I
    .end local v6    # "ISAb":I
    .end local v7    # "m":I
    .end local v9    # "t0":I
    .local v14, "ISAb":I
    .local v15, "m":I
    .restart local v25    # "t0":I
    .restart local v27    # "c1":I
    .restart local v28    # "c0":I
    .restart local v29    # "tempbuf":[I
    .restart local v30    # "buf":[I
    add-int/lit8 v5, v28, -0x1

    move/from16 v2, v23

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    const/4 v8, 0x1

    .end local v28    # "c0":I
    .restart local v5    # "c0":I
    goto :goto_c

    .line 1961
    .end local v23    # "j":I
    .end local v25    # "t0":I
    .end local v27    # "c1":I
    .end local v29    # "tempbuf":[I
    .end local v30    # "buf":[I
    .restart local v2    # "j":I
    .restart local v4    # "c1":I
    .restart local v6    # "ISAb":I
    .restart local v7    # "m":I
    .restart local v9    # "t0":I
    .local v14, "tempbuf":[I
    .local v15, "buf":[I
    :cond_15
    move/from16 v28, v5

    move/from16 v25, v9

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    move v14, v6

    move v15, v7

    .end local v5    # "c0":I
    .end local v6    # "ISAb":I
    .end local v7    # "m":I
    .end local v9    # "t0":I
    .local v14, "ISAb":I
    .local v15, "m":I
    .restart local v25    # "t0":I
    .restart local v28    # "c0":I
    .restart local v29    # "tempbuf":[I
    .restart local v30    # "buf":[I
    add-int/lit8 v7, v15, -0x1

    .end local v1    # "i":I
    .local v7, "i":I
    :goto_10
    if-ltz v7, :cond_1a

    .line 1962
    aget v0, v12, v7

    if-ltz v0, :cond_18

    .line 1963
    move v2, v7

    .line 1965
    :cond_16
    aget v0, v12, v7

    add-int v6, v14, v0

    aput v7, v12, v6

    .line 1966
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_17

    aget v0, v12, v7

    if-gez v0, :cond_16

    .line 1967
    :cond_17
    add-int/lit8 v0, v7, 0x1

    sub-int v1, v7, v2

    aput v1, v12, v0

    .line 1968
    if-gtz v7, :cond_18

    .line 1969
    goto :goto_11

    .line 1972
    :cond_18
    move v0, v7

    .line 1974
    .end local v2    # "j":I
    .local v0, "j":I
    :cond_19
    aget v1, v12, v7

    not-int v1, v1

    aput v1, v12, v7

    add-int v6, v14, v1

    aput v0, v12, v6

    .line 1975
    add-int/lit8 v7, v7, -0x1

    aget v1, v12, v7

    if-ltz v1, :cond_19

    .line 1976
    aget v1, v12, v7

    add-int v6, v14, v1

    aput v0, v12, v6

    .line 1961
    add-int/lit8 v7, v7, -0x1

    move v2, v0

    goto :goto_10

    .line 1979
    .end local v0    # "j":I
    .restart local v2    # "j":I
    :cond_1a
    :goto_11
    const/4 v0, 0x1

    invoke-direct {v10, v14, v15, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trSort(III)V

    .line 1981
    add-int/lit8 v0, v13, -0x1

    .end local v7    # "i":I
    .local v0, "i":I
    move v1, v15

    .line 1982
    .end local v2    # "j":I
    .local v1, "j":I
    aget-byte v2, v11, v0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    aget-byte v5, v11, v17

    and-int/2addr v5, v3

    if-lt v2, v5, :cond_1b

    aget-byte v2, v11, v0

    aget-byte v3, v11, v17

    if-ne v2, v3, :cond_1d

    if-eqz v16, :cond_1d

    .line 1983
    :cond_1b
    if-nez v16, :cond_1c

    .line 1984
    add-int/lit8 v1, v1, -0x1

    add-int v6, v14, v1

    aget v2, v12, v6

    aput v0, v12, v2

    .line 1986
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_1d

    aget-byte v2, v11, v0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v11, v5

    and-int/2addr v5, v3

    if-gt v2, v5, :cond_1d

    .line 1987
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1990
    :cond_1d
    if-ltz v0, :cond_1f

    .line 1991
    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_1e

    aget-byte v2, v11, v0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v11, v5

    and-int/2addr v5, v3

    if-lt v2, v5, :cond_1e

    .line 1992
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1994
    :cond_1e
    if-ltz v0, :cond_1d

    .line 1995
    add-int/lit8 v1, v1, -0x1

    add-int v6, v14, v1

    aget v2, v12, v6

    aput v0, v12, v2

    .line 1996
    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_1d

    aget-byte v2, v11, v0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v11, v5

    and-int/2addr v5, v3

    if-gt v2, v5, :cond_1d

    .line 1997
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 2002
    :cond_1f
    const/16 v2, 0xff

    .end local v28    # "c0":I
    .local v2, "c0":I
    add-int/lit8 v0, v13, -0x1

    add-int/lit8 v7, v15, -0x1

    .local v7, "k":I
    :goto_15
    if-ltz v2, :cond_23

    .line 2003
    const/16 v3, 0xff

    move v4, v3

    :goto_16
    if-ge v2, v4, :cond_21

    .line 2004
    invoke-static {v2, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v3

    aget v3, p2, v3

    sub-int v20, v0, v3

    .line 2005
    invoke-static {v2, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    aput v5, p2, v3

    .line 2007
    move/from16 v0, v20

    invoke-static {v2, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v3

    aget v1, p2, v3

    :goto_17
    if-gt v1, v7, :cond_20

    .line 2008
    aget v3, v12, v7

    aput v3, v12, v0

    .line 2007
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_17

    .line 2003
    :cond_20
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 2011
    :cond_21
    invoke-static {v2, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v3

    aget v3, p2, v3

    sub-int v20, v0, v3

    .line 2012
    invoke-static {v2, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    aput v5, p2, v3

    .line 2013
    const/16 v3, 0xff

    if-ge v2, v3, :cond_22

    .line 2014
    add-int/lit8 v5, v2, 0x1

    invoke-static {v2, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    move-result v5

    add-int/lit8 v6, v20, 0x1

    aput v6, p2, v5

    .line 2016
    :cond_22
    aget v0, p1, v2

    .line 2002
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 2018
    :cond_23
    return v15
.end method

.method private static ssBlockSwap([II[III)V
    .locals 3
    .param p0, "array1"    # [I
    .param p1, "first1"    # I
    .param p2, "array2"    # [I
    .param p3, "first2"    # I
    .param p4, "size"    # I

    .line 538
    move v0, p4

    .local v0, "i":I
    move v1, p1

    .local v1, "a":I
    move v2, p3

    .local v2, "b":I
    :goto_0
    if-lez v0, :cond_0

    .line 539
    invoke-static {p0, v1, p2, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 538
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    :cond_0
    return-void
.end method

.method private ssCompare(III)I
    .locals 8
    .param p1, "p1"    # I
    .param p2, "p2"    # I
    .param p3, "depth"    # I

    .line 66
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 67
    .local v0, "SA":[I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 70
    .local v1, "T":[B
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    add-int/lit8 v2, v2, 0x2

    .line 71
    .local v2, "U1n":I
    add-int/lit8 v3, p2, 0x1

    aget v3, v0, v3

    add-int/lit8 v3, v3, 0x2

    .line 73
    .local v3, "U2n":I
    aget v4, v0, p1

    add-int/2addr v4, p3

    .line 74
    .local v4, "U1":I
    aget v5, v0, p2

    add-int/2addr v5, p3

    .line 76
    .local v5, "U2":I
    :goto_0
    if-ge v4, v2, :cond_0

    if-ge v5, v3, :cond_0

    aget-byte v6, v1, v4

    aget-byte v7, v1, v5

    if-ne v6, v7, :cond_0

    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_0
    if-ge v4, v2, :cond_2

    if-ge v5, v3, :cond_1

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    if-ge v5, v3, :cond_3

    const/4 v6, -0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    return v6
.end method

.method private ssCompareLast(IIIII)I
    .locals 9
    .param p1, "pa"    # I
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "depth"    # I
    .param p5, "size"    # I

    .line 87
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 88
    .local v0, "SA":[I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 90
    .local v1, "T":[B
    aget v2, v0, p2

    add-int/2addr v2, p4

    .line 91
    .local v2, "U1":I
    aget v3, v0, p3

    add-int/2addr v3, p4

    .line 92
    .local v3, "U2":I
    move v4, p5

    .line 93
    .local v4, "U1n":I
    add-int/lit8 v5, p3, 0x1

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x2

    .line 95
    .local v5, "U2n":I
    :goto_0
    if-ge v2, v4, :cond_0

    if-ge v3, v5, :cond_0

    aget-byte v6, v1, v2

    aget-byte v7, v1, v3

    if-ne v6, v7, :cond_0

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const/4 v6, 0x1

    if-ge v2, v4, :cond_2

    .line 101
    if-ge v3, v5, :cond_1

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v6, v7

    :cond_1
    return v6

    .line 103
    :cond_2
    if-ne v3, v5, :cond_3

    .line 104
    return v6

    .line 107
    :cond_3
    rem-int/2addr v2, p5

    .line 108
    aget v7, v0, p1

    add-int/lit8 v7, v7, 0x2

    .line 109
    .end local v4    # "U1n":I
    .local v7, "U1n":I
    :goto_1
    if-ge v2, v7, :cond_4

    if-ge v3, v5, :cond_4

    aget-byte v4, v1, v2

    aget-byte v8, v1, v3

    if-ne v4, v8, :cond_4

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_4
    if-ge v2, v7, :cond_5

    if-ge v3, v5, :cond_7

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    sub-int v6, v4, v6

    goto :goto_2

    :cond_5
    if-ge v3, v5, :cond_6

    const/4 v6, -0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_2
    return v6
.end method

.method private ssFixdown(IIIII)V
    .locals 10
    .param p1, "td"    # I
    .param p2, "pa"    # I
    .param p3, "sa"    # I
    .param p4, "i"    # I
    .param p5, "size"    # I

    .line 143
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 144
    .local v0, "SA":[I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 150
    .local v1, "T":[B
    add-int v2, p3, p4

    aget v2, v0, v2

    .local v2, "v":I
    add-int v3, p2, v2

    aget v3, v0, v3

    add-int/2addr v3, p1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .local v3, "c":I
    :goto_0
    mul-int/lit8 v4, p4, 0x2

    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .local v5, "j":I
    if-ge v4, p5, :cond_2

    .line 151
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .local v4, "j":I
    move v6, v5

    .local v6, "k":I
    add-int/2addr v5, p3

    aget v5, v0, v5

    add-int/2addr v5, p2

    aget v5, v0, v5

    add-int/2addr v5, p1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    .line 152
    .local v5, "d":I
    add-int v7, p3, v4

    aget v7, v0, v7

    add-int/2addr v7, p2

    aget v7, v0, v7

    add-int/2addr v7, p1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    move v8, v7

    .local v8, "e":I
    if-ge v5, v7, :cond_0

    .line 153
    move v6, v4

    .line 154
    move v5, v8

    .line 156
    :cond_0
    if-gt v5, v3, :cond_1

    .line 157
    move v5, v4

    goto :goto_1

    .line 150
    :cond_1
    add-int v7, p3, p4

    add-int v9, p3, v6

    aget v9, v0, v9

    aput v9, v0, v7

    move p4, v6

    goto :goto_0

    .line 160
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v8    # "e":I
    .local v5, "j":I
    :cond_2
    :goto_1
    add-int v4, p3, p4

    aput v2, v0, v4

    .line 161
    return-void
.end method

.method private ssHeapSort(IIII)V
    .locals 11
    .param p1, "td"    # I
    .param p2, "pa"    # I
    .param p3, "sa"    # I
    .param p4, "size"    # I

    .line 164
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 165
    .local v0, "SA":[I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 170
    .local v1, "T":[B
    move v2, p4

    .line 171
    .local v2, "m":I
    rem-int/lit8 v3, p4, 0x2

    if-nez v3, :cond_0

    .line 172
    add-int/lit8 v2, v2, -0x1

    .line 173
    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p3

    aget v3, v0, v3

    add-int/2addr v3, p2

    aget v3, v0, v3

    add-int/2addr v3, p1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v4, p3, v2

    aget v4, v0, v4

    add-int/2addr v4, p2

    aget v4, v0, v4

    add-int/2addr v4, p1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v3, v4, :cond_0

    .line 174
    add-int v3, p3, v2

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p3

    invoke-static {v0, v3, v0, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 178
    :cond_0
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 179
    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, v3

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssFixdown(IIIII)V

    .line 178
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 182
    :cond_1
    rem-int/lit8 v4, p4, 0x2

    if-nez v4, :cond_2

    .line 183
    add-int v4, p3, v2

    invoke-static {v0, p3, v0, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 184
    const/4 v9, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssFixdown(IIIII)V

    .line 187
    :cond_2
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-lez v3, :cond_3

    .line 188
    aget v10, v0, p3

    .line 189
    .local v10, "t":I
    add-int v4, p3, v3

    aget v4, v0, v4

    aput v4, v0, p3

    .line 190
    const/4 v8, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssFixdown(IIIII)V

    .line 191
    add-int v4, p3, v3

    aput v10, v0, v4

    .line 187
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 193
    .end local v10    # "t":I
    :cond_3
    return-void
.end method

.method private ssInsertionSort(IIII)V
    .locals 7
    .param p1, "pa"    # I
    .param p2, "first"    # I
    .param p3, "last"    # I
    .param p4, "depth"    # I

    .line 120
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 126
    .local v0, "SA":[I
    add-int/lit8 v1, p3, -0x2

    .local v1, "i":I
    :goto_0
    if-gt p2, v1, :cond_5

    .line 127
    aget v2, v0, v1

    .local v2, "t":I
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :cond_0
    add-int v4, p1, v2

    aget v5, v0, v3

    add-int/2addr v5, p1

    invoke-direct {p0, v4, v5, p4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    move-result v4

    move v5, v4

    .local v5, "r":I
    if-lez v4, :cond_3

    .line 129
    :cond_1
    add-int/lit8 v4, v3, -0x1

    aget v6, v0, v3

    aput v6, v0, v4

    .line 130
    add-int/lit8 v3, v3, 0x1

    if-ge v3, p3, :cond_2

    aget v4, v0, v3

    if-ltz v4, :cond_1

    .line 131
    :cond_2
    if-gt p3, v3, :cond_0

    .line 135
    :cond_3
    if-nez v5, :cond_4

    .line 136
    aget v4, v0, v3

    not-int v4, v4

    aput v4, v0, v3

    .line 138
    :cond_4
    add-int/lit8 v4, v3, -0x1

    aput v2, v0, v4

    .line 126
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 140
    .end local v2    # "t":I
    .end local v3    # "j":I
    .end local v5    # "r":I
    :cond_5
    return-void
.end method

.method private static ssLog(I)I
    .locals 2
    .param p0, "n"    # I

    .line 306
    const v0, 0xff00

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method private ssMedian3(IIIII)I
    .locals 7
    .param p1, "td"    # I
    .param p2, "pa"    # I
    .param p3, "v1"    # I
    .param p4, "v2"    # I
    .param p5, "v3"    # I

    .line 196
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 197
    .local v0, "SA":[I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 199
    .local v1, "T":[B
    aget v2, v0, p3

    add-int/2addr v2, p2

    aget v2, v0, v2

    add-int/2addr v2, p1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 200
    .local v2, "T_v1":I
    aget v3, v0, p4

    add-int/2addr v3, p2

    aget v3, v0, v3

    add-int/2addr v3, p1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 201
    .local v3, "T_v2":I
    aget v4, v0, p5

    add-int/2addr v4, p2

    aget v4, v0, v4

    add-int/2addr v4, p1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 203
    .local v4, "T_v3":I
    if-le v2, v3, :cond_0

    .line 204
    move v5, p3

    .line 205
    .local v5, "temp":I
    move p3, p4

    .line 206
    move p4, v5

    .line 207
    move v6, v2

    .line 208
    .local v6, "T_vtemp":I
    move v2, v3

    .line 209
    move v3, v6

    .line 211
    .end local v5    # "temp":I
    .end local v6    # "T_vtemp":I
    :cond_0
    if-le v3, v4, :cond_2

    .line 212
    if-le v2, v4, :cond_1

    .line 213
    return p3

    .line 215
    :cond_1
    return p5

    .line 217
    :cond_2
    return p4
.end method

.method private ssMedian5(IIIIIII)I
    .locals 15
    .param p1, "td"    # I
    .param p2, "pa"    # I
    .param p3, "v1"    # I
    .param p4, "v2"    # I
    .param p5, "v3"    # I
    .param p6, "v4"    # I
    .param p7, "v5"    # I

    .line 221
    move-object v0, p0

    iget-object v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 222
    .local v1, "SA":[I
    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 224
    .local v2, "T":[B
    aget v3, v1, p3

    add-int v3, p2, v3

    aget v3, v1, v3

    add-int v3, p1, v3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    .line 225
    .local v3, "T_v1":I
    aget v4, v1, p4

    add-int v4, p2, v4

    aget v4, v1, v4

    add-int v4, p1, v4

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 226
    .local v4, "T_v2":I
    aget v5, v1, p5

    add-int v5, p2, v5

    aget v5, v1, v5

    add-int v5, p1, v5

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 227
    .local v5, "T_v3":I
    aget v6, v1, p6

    add-int v6, p2, v6

    aget v6, v1, v6

    add-int v6, p1, v6

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 228
    .local v6, "T_v4":I
    aget v7, v1, p7

    add-int v7, p2, v7

    aget v7, v1, v7

    add-int v7, p1, v7

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    .line 232
    .local v7, "T_v5":I
    if-le v4, v5, :cond_0

    .line 233
    move/from16 v8, p4

    .line 234
    .local v8, "temp":I
    move/from16 v9, p5

    .line 235
    .end local p4    # "v2":I
    .local v9, "v2":I
    move v10, v8

    .line 236
    .end local p5    # "v3":I
    .local v10, "v3":I
    move v11, v4

    .line 237
    .local v11, "T_vtemp":I
    move v4, v5

    .line 238
    move v5, v11

    goto :goto_0

    .line 232
    .end local v8    # "temp":I
    .end local v9    # "v2":I
    .end local v10    # "v3":I
    .end local v11    # "T_vtemp":I
    .restart local p4    # "v2":I
    .restart local p5    # "v3":I
    :cond_0
    move/from16 v9, p4

    move/from16 v10, p5

    .line 240
    .end local p4    # "v2":I
    .end local p5    # "v3":I
    .restart local v9    # "v2":I
    .restart local v10    # "v3":I
    :goto_0
    if-le v6, v7, :cond_1

    .line 241
    move/from16 v8, p6

    .line 242
    .restart local v8    # "temp":I
    move/from16 v11, p7

    .line 243
    .end local p6    # "v4":I
    .local v11, "v4":I
    move v12, v8

    .line 244
    .end local p7    # "v5":I
    .local v12, "v5":I
    move v13, v6

    .line 245
    .local v13, "T_vtemp":I
    move v6, v7

    .line 246
    move v7, v13

    goto :goto_1

    .line 240
    .end local v8    # "temp":I
    .end local v11    # "v4":I
    .end local v12    # "v5":I
    .end local v13    # "T_vtemp":I
    .restart local p6    # "v4":I
    .restart local p7    # "v5":I
    :cond_1
    move/from16 v11, p6

    move/from16 v12, p7

    .line 248
    .end local p6    # "v4":I
    .end local p7    # "v5":I
    .restart local v11    # "v4":I
    .restart local v12    # "v5":I
    :goto_1
    if-le v4, v6, :cond_2

    .line 249
    move v8, v9

    .line 250
    .restart local v8    # "temp":I
    move v11, v8

    .line 251
    move v13, v4

    .line 252
    .restart local v13    # "T_vtemp":I
    move v6, v13

    .line 253
    move v8, v10

    .line 254
    move v10, v12

    .line 255
    move v12, v8

    .line 256
    move v13, v5

    .line 257
    move v5, v7

    .line 258
    move v7, v13

    .line 260
    .end local v8    # "temp":I
    .end local v13    # "T_vtemp":I
    :cond_2
    if-le v3, v5, :cond_3

    .line 261
    move/from16 v8, p3

    .line 262
    .restart local v8    # "temp":I
    move v13, v10

    .line 263
    .end local p3    # "v1":I
    .local v13, "v1":I
    move v10, v8

    .line 264
    move v14, v3

    .line 265
    .local v14, "T_vtemp":I
    move v3, v5

    .line 266
    move v5, v14

    goto :goto_2

    .line 260
    .end local v8    # "temp":I
    .end local v13    # "v1":I
    .end local v14    # "T_vtemp":I
    .restart local p3    # "v1":I
    :cond_3
    move/from16 v13, p3

    .line 268
    .end local p3    # "v1":I
    .restart local v13    # "v1":I
    :goto_2
    if-le v3, v6, :cond_4

    .line 269
    move v8, v13

    .line 270
    .restart local v8    # "temp":I
    move v11, v8

    .line 271
    move v14, v3

    .line 272
    .restart local v14    # "T_vtemp":I
    move v6, v14

    .line 273
    move v10, v12

    .line 274
    move v5, v7

    .line 276
    .end local v8    # "temp":I
    .end local v14    # "T_vtemp":I
    :cond_4
    if-le v5, v6, :cond_5

    .line 277
    return v11

    .line 279
    :cond_5
    return v10
.end method

.method private ssMerge(IIII[IIII)V
    .locals 20
    .param p1, "pa"    # I
    .param p2, "first"    # I
    .param p3, "middle"    # I
    .param p4, "last"    # I
    .param p5, "buf"    # [I
    .param p6, "bufoffset"    # I
    .param p7, "bufsize"    # I
    .param p8, "depth"    # I

    .line 746
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p7

    move/from16 v11, p8

    iget-object v12, v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 748
    .local v12, "SA":[I
    const/16 v0, 0x40

    new-array v13, v0, [Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 755
    .local v13, "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    const/4 v0, 0x0

    .local v0, "check":I
    const/4 v1, 0x0

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v7, p4

    move/from16 v16, v0

    move/from16 v17, v1

    .line 757
    .end local v0    # "check":I
    .end local p2    # "first":I
    .end local p3    # "middle":I
    .end local p4    # "last":I
    .local v7, "last":I
    .local v14, "first":I
    .local v15, "middle":I
    .local v16, "check":I
    .local v17, "ssize":I
    :goto_0
    sub-int v0, v7, v15

    if-gt v0, v10, :cond_4

    .line 758
    if-ge v14, v15, :cond_0

    if-ge v15, v7, :cond_0

    .line 759
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p6

    move v4, v14

    move v5, v15

    move v6, v7

    move-object/from16 v18, v12

    move v12, v7

    .end local v7    # "last":I
    .local v12, "last":I
    .local v18, "SA":[I
    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeBackward(I[IIIIII)V

    goto :goto_1

    .line 758
    .end local v18    # "SA":[I
    .restart local v7    # "last":I
    .local v12, "SA":[I
    :cond_0
    move-object/from16 v18, v12

    move v12, v7

    .line 762
    .end local v7    # "last":I
    .local v12, "last":I
    .restart local v18    # "SA":[I
    :goto_1
    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_1

    .line 763
    invoke-direct {v8, v9, v11, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 765
    :cond_1
    and-int/lit8 v0, v16, 0x2

    if-eqz v0, :cond_2

    .line 766
    invoke-direct {v8, v9, v11, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 768
    :cond_2
    if-nez v17, :cond_3

    .line 769
    return-void

    .line 771
    :cond_3
    add-int/lit8 v17, v17, -0x1

    aget-object v0, v13, v17

    .line 772
    .local v0, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v14, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 773
    iget v15, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 774
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 775
    .end local v12    # "last":I
    .restart local v7    # "last":I
    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 776
    .end local v16    # "check":I
    .local v1, "check":I
    move/from16 v16, v1

    move-object/from16 v12, v18

    goto :goto_0

    .line 779
    .end local v0    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v1    # "check":I
    .end local v18    # "SA":[I
    .local v12, "SA":[I
    .restart local v16    # "check":I
    :cond_4
    move-object/from16 v18, v12

    move v12, v7

    .end local v7    # "last":I
    .local v12, "last":I
    .restart local v18    # "SA":[I
    sub-int v0, v15, v14

    if-gt v0, v10, :cond_9

    .line 780
    if-ge v14, v15, :cond_5

    .line 781
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p6

    move v4, v14

    move v5, v15

    move v6, v12

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeForward(I[IIIIII)V

    .line 783
    :cond_5
    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_6

    .line 784
    invoke-direct {v8, v9, v11, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 786
    :cond_6
    and-int/lit8 v0, v16, 0x2

    if-eqz v0, :cond_7

    .line 787
    invoke-direct {v8, v9, v11, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 789
    :cond_7
    if-nez v17, :cond_8

    .line 790
    return-void

    .line 792
    :cond_8
    add-int/lit8 v17, v17, -0x1

    aget-object v0, v13, v17

    .line 793
    .restart local v0    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v14, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 794
    iget v15, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 795
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 796
    .end local v12    # "last":I
    .restart local v7    # "last":I
    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 797
    .end local v16    # "check":I
    .restart local v1    # "check":I
    move/from16 v16, v1

    move-object/from16 v12, v18

    goto :goto_0

    .line 800
    .end local v0    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v1    # "check":I
    .end local v7    # "last":I
    .restart local v12    # "last":I
    .restart local v16    # "check":I
    :cond_9
    const/4 v0, 0x0

    .local v0, "m":I
    sub-int v1, v15, v14

    sub-int v7, v12, v15

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "len":I
    shr-int/lit8 v2, v1, 0x1

    .line 801
    .local v2, "half":I
    :goto_2
    if-lez v1, :cond_b

    .line 804
    add-int v3, v15, v0

    add-int/2addr v3, v2

    aget v3, v18, v3

    invoke-static {v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->getIDX(I)I

    move-result v3

    add-int/2addr v3, v9

    sub-int v4, v15, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    aget v4, v18, v4

    .line 805
    invoke-static {v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->getIDX(I)I

    move-result v4

    add-int/2addr v4, v9

    .line 804
    invoke-direct {v8, v3, v4, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    move-result v3

    if-gez v3, :cond_a

    .line 806
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v3

    .line 807
    and-int/lit8 v3, v1, 0x1

    xor-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    .line 802
    :cond_a
    move v1, v2

    shr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 811
    :cond_b
    if-lez v0, :cond_12

    .line 812
    sub-int v3, v15, v0

    move-object/from16 v4, v18

    .end local v18    # "SA":[I
    .local v4, "SA":[I
    invoke-static {v4, v3, v4, v15, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssBlockSwap([II[III)V

    .line 813
    move v3, v15

    .local v3, "j":I
    move v5, v15

    .line 814
    .local v5, "i":I
    const/4 v6, 0x0

    .line 815
    .local v6, "next":I
    add-int v7, v15, v0

    if-ge v7, v12, :cond_f

    .line 816
    add-int v7, v15, v0

    aget v7, v4, v7

    if-gez v7, :cond_d

    .line 817
    :goto_3
    add-int/lit8 v7, v5, -0x1

    aget v7, v4, v7

    if-gez v7, :cond_c

    .line 818
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 820
    :cond_c
    add-int v7, v15, v0

    add-int v18, v15, v0

    move/from16 p2, v1

    .end local v1    # "len":I
    .local p2, "len":I
    aget v1, v4, v18

    not-int v1, v1

    aput v1, v4, v7

    goto :goto_4

    .line 816
    .end local p2    # "len":I
    .restart local v1    # "len":I
    :cond_d
    move/from16 p2, v1

    .line 822
    .end local v1    # "len":I
    .restart local p2    # "len":I
    :goto_4
    move v1, v15

    move v3, v1

    :goto_5
    aget v1, v4, v3

    if-gez v1, :cond_e

    .line 823
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 825
    :cond_e
    const/4 v6, 0x1

    goto :goto_6

    .line 815
    .end local p2    # "len":I
    .restart local v1    # "len":I
    :cond_f
    move/from16 p2, v1

    .line 827
    .end local v1    # "len":I
    .restart local p2    # "len":I
    :goto_6
    sub-int v1, v5, v14

    sub-int v7, v12, v3

    if-gt v1, v7, :cond_10

    .line 828
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "ssize":I
    .local v1, "ssize":I
    new-instance v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    move/from16 p3, v1

    .end local v1    # "ssize":I
    .local p3, "ssize":I
    add-int v1, v15, v0

    and-int/lit8 v18, v16, 0x2

    and-int/lit8 v19, v6, 0x1

    move/from16 p4, v2

    .end local v2    # "half":I
    .local p4, "half":I
    or-int v2, v18, v19

    invoke-direct {v7, v3, v1, v12, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v7, v13, v17

    .line 829
    sub-int/2addr v15, v0

    .line 830
    move v7, v5

    .line 831
    .end local v12    # "last":I
    .restart local v7    # "last":I
    and-int/lit8 v16, v16, 0x1

    move/from16 v17, p3

    move-object v12, v4

    goto/16 :goto_0

    .line 833
    .end local v7    # "last":I
    .end local p3    # "ssize":I
    .end local p4    # "half":I
    .restart local v2    # "half":I
    .restart local v12    # "last":I
    .restart local v17    # "ssize":I
    :cond_10
    move/from16 p4, v2

    .end local v2    # "half":I
    .restart local p4    # "half":I
    if-ne v5, v15, :cond_11

    if-ne v15, v3, :cond_11

    .line 834
    shl-int/lit8 v6, v6, 0x1

    .line 836
    :cond_11
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "ssize":I
    .restart local v1    # "ssize":I
    new-instance v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    sub-int v7, v15, v0

    and-int/lit8 v18, v16, 0x1

    and-int/lit8 v19, v6, 0x2

    move/from16 p3, v1

    .end local v1    # "ssize":I
    .restart local p3    # "ssize":I
    or-int v1, v18, v19

    invoke-direct {v2, v14, v7, v5, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v2, v13, v17

    .line 837
    move v14, v3

    .line 838
    add-int/2addr v15, v0

    .line 839
    and-int/lit8 v1, v16, 0x2

    and-int/lit8 v2, v6, 0x1

    or-int v16, v1, v2

    move/from16 v17, p3

    move v7, v12

    move-object v12, v4

    goto/16 :goto_0

    .line 842
    .end local v3    # "j":I
    .end local v4    # "SA":[I
    .end local v5    # "i":I
    .end local v6    # "next":I
    .end local p2    # "len":I
    .end local p3    # "ssize":I
    .end local p4    # "half":I
    .local v1, "len":I
    .restart local v2    # "half":I
    .restart local v17    # "ssize":I
    .restart local v18    # "SA":[I
    :cond_12
    move/from16 p2, v1

    move/from16 p4, v2

    move-object/from16 v4, v18

    .end local v1    # "len":I
    .end local v2    # "half":I
    .end local v18    # "SA":[I
    .restart local v4    # "SA":[I
    .restart local p2    # "len":I
    .restart local p4    # "half":I
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_13

    .line 843
    invoke-direct {v8, v9, v11, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 845
    :cond_13
    invoke-direct {v8, v9, v11, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 846
    and-int/lit8 v1, v16, 0x2

    if-eqz v1, :cond_14

    .line 847
    invoke-direct {v8, v9, v11, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 849
    :cond_14
    if-nez v17, :cond_15

    .line 850
    return-void

    .line 852
    :cond_15
    add-int/lit8 v17, v17, -0x1

    aget-object v1, v13, v17

    .line 853
    .local v1, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v14, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 854
    iget v15, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 855
    iget v7, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 856
    .end local v12    # "last":I
    .restart local v7    # "last":I
    iget v1, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 857
    .end local v16    # "check":I
    .local v1, "check":I
    move/from16 v16, v1

    move-object v12, v4

    goto/16 :goto_0
.end method

.method private ssMergeBackward(I[IIIIII)V
    .locals 18
    .param p1, "pa"    # I
    .param p2, "buf"    # [I
    .param p3, "bufoffset"    # I
    .param p4, "first"    # I
    .param p5, "middle"    # I
    .param p6, "last"    # I
    .param p7, "depth"    # I

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 616
    .local v5, "SA":[I
    sub-int v6, p6, v4

    add-int/2addr v6, v2

    .line 617
    .local v6, "bufend":I
    sub-int v7, p6, v4

    invoke-static {v1, v2, v5, v4, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssBlockSwap([II[III)V

    .line 619
    const/4 v7, 0x0

    .line 620
    .local v7, "x":I
    add-int/lit8 v8, v6, -0x1

    aget v8, v1, v8

    if-gez v8, :cond_0

    .line 621
    or-int/lit8 v7, v7, 0x1

    .line 622
    add-int/lit8 v8, v6, -0x1

    aget v8, v1, v8

    not-int v8, v8

    add-int v8, p1, v8

    .local v8, "p1":I
    goto :goto_0

    .line 624
    .end local v8    # "p1":I
    :cond_0
    add-int/lit8 v8, v6, -0x1

    aget v8, v1, v8

    add-int v8, p1, v8

    .line 626
    .restart local v8    # "p1":I
    :goto_0
    add-int/lit8 v9, v4, -0x1

    aget v9, v5, v9

    if-gez v9, :cond_1

    .line 627
    or-int/lit8 v7, v7, 0x2

    .line 628
    add-int/lit8 v9, v4, -0x1

    aget v9, v5, v9

    not-int v9, v9

    add-int v9, p1, v9

    .local v9, "p2":I
    goto :goto_1

    .line 630
    .end local v9    # "p2":I
    :cond_1
    add-int/lit8 v9, v4, -0x1

    aget v9, v5, v9

    add-int v9, p1, v9

    .line 632
    .restart local v9    # "p2":I
    :goto_1
    add-int/lit8 v10, p6, -0x1

    aget v10, v5, v10

    .local v10, "t":I
    add-int/lit8 v11, p6, -0x1

    .local v11, "i":I
    add-int/lit8 v12, v6, -0x1

    .local v12, "j":I
    add-int/lit8 v13, v4, -0x1

    .line 634
    .local v13, "k":I
    :goto_2
    move/from16 v14, p7

    invoke-direct {v0, v8, v9, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    move-result v15

    .line 635
    .local v15, "r":I
    if-lez v15, :cond_6

    .line 636
    and-int/lit8 v16, v7, 0x1

    if-eqz v16, :cond_3

    .line 638
    :goto_3
    add-int/lit8 v16, v11, -0x1

    .end local v11    # "i":I
    .local v16, "i":I
    aget v17, v1, v12

    aput v17, v5, v11

    .line 639
    add-int/lit8 v11, v12, -0x1

    .end local v12    # "j":I
    .local v11, "j":I
    aget v17, v5, v16

    aput v17, v1, v12

    .line 640
    aget v12, v1, v11

    if-ltz v12, :cond_2

    .line 641
    xor-int/lit8 v7, v7, 0x1

    move v12, v11

    move/from16 v11, v16

    goto :goto_4

    .line 640
    :cond_2
    move v12, v11

    move/from16 v11, v16

    goto :goto_3

    .line 643
    .end local v16    # "i":I
    .local v11, "i":I
    .restart local v12    # "j":I
    :cond_3
    :goto_4
    add-int/lit8 v16, v11, -0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    aget v17, v1, v12

    aput v17, v5, v11

    .line 644
    if-gt v12, v2, :cond_4

    .line 645
    aput v10, v1, v12

    .line 646
    return-void

    .line 648
    :cond_4
    add-int/lit8 v11, v12, -0x1

    .end local v12    # "j":I
    .local v11, "j":I
    aget v17, v5, v16

    aput v17, v1, v12

    .line 650
    aget v12, v1, v11

    if-gez v12, :cond_5

    .line 651
    or-int/lit8 v7, v7, 0x1

    .line 652
    aget v12, v1, v11

    not-int v12, v12

    add-int v8, p1, v12

    move v12, v11

    move/from16 v11, v16

    goto :goto_2

    .line 654
    :cond_5
    aget v12, v1, v11

    add-int v8, p1, v12

    move v12, v11

    move/from16 v11, v16

    goto :goto_2

    .line 656
    .end local v16    # "i":I
    .local v11, "i":I
    .restart local v12    # "j":I
    :cond_6
    if-gez v15, :cond_c

    .line 657
    and-int/lit8 v16, v7, 0x2

    if-eqz v16, :cond_8

    .line 659
    :goto_5
    add-int/lit8 v16, v11, -0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    aget v17, v5, v13

    aput v17, v5, v11

    .line 660
    add-int/lit8 v11, v13, -0x1

    .end local v13    # "k":I
    .local v11, "k":I
    aget v17, v5, v16

    aput v17, v5, v13

    .line 661
    aget v13, v5, v11

    if-ltz v13, :cond_7

    .line 662
    xor-int/lit8 v7, v7, 0x2

    move v13, v11

    move/from16 v11, v16

    goto :goto_6

    .line 661
    :cond_7
    move v13, v11

    move/from16 v11, v16

    goto :goto_5

    .line 664
    .end local v16    # "i":I
    .local v11, "i":I
    .restart local v13    # "k":I
    :cond_8
    :goto_6
    add-int/lit8 v16, v11, -0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    aget v17, v5, v13

    aput v17, v5, v11

    .line 665
    add-int/lit8 v11, v13, -0x1

    .end local v13    # "k":I
    .local v11, "k":I
    aget v17, v5, v16

    aput v17, v5, v13

    .line 666
    if-ge v11, v3, :cond_a

    .line 667
    :goto_7
    if-ge v2, v12, :cond_9

    .line 668
    add-int/lit8 v13, v16, -0x1

    .end local v16    # "i":I
    .local v13, "i":I
    aget v17, v1, v12

    aput v17, v5, v16

    .line 669
    add-int/lit8 v16, v12, -0x1

    .end local v12    # "j":I
    .local v16, "j":I
    aget v17, v5, v13

    aput v17, v1, v12

    move/from16 v12, v16

    move/from16 v16, v13

    goto :goto_7

    .line 671
    .end local v13    # "i":I
    .restart local v12    # "j":I
    .local v16, "i":I
    :cond_9
    aget v13, v1, v12

    aput v13, v5, v16

    .line 672
    aput v10, v1, v12

    .line 673
    return-void

    .line 676
    :cond_a
    aget v13, v5, v11

    if-gez v13, :cond_b

    .line 677
    or-int/lit8 v7, v7, 0x2

    .line 678
    aget v13, v5, v11

    not-int v13, v13

    add-int v9, p1, v13

    move v13, v11

    move/from16 v11, v16

    goto/16 :goto_2

    .line 680
    :cond_b
    aget v13, v5, v11

    add-int v9, p1, v13

    move v13, v11

    move/from16 v11, v16

    goto/16 :goto_2

    .line 683
    .end local v16    # "i":I
    .local v11, "i":I
    .local v13, "k":I
    :cond_c
    and-int/lit8 v16, v7, 0x1

    if-eqz v16, :cond_e

    .line 685
    :goto_8
    add-int/lit8 v16, v11, -0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    aget v17, v1, v12

    aput v17, v5, v11

    .line 686
    add-int/lit8 v11, v12, -0x1

    .end local v12    # "j":I
    .local v11, "j":I
    aget v17, v5, v16

    aput v17, v1, v12

    .line 687
    aget v12, v1, v11

    if-ltz v12, :cond_d

    .line 688
    xor-int/lit8 v7, v7, 0x1

    move v12, v11

    move/from16 v11, v16

    goto :goto_9

    .line 687
    :cond_d
    move v12, v11

    move/from16 v11, v16

    goto :goto_8

    .line 690
    .end local v16    # "i":I
    .local v11, "i":I
    .restart local v12    # "j":I
    :cond_e
    :goto_9
    add-int/lit8 v16, v11, -0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    aget v0, v1, v12

    not-int v0, v0

    aput v0, v5, v11

    .line 691
    if-gt v12, v2, :cond_f

    .line 692
    aput v10, v1, v12

    .line 693
    return-void

    .line 695
    :cond_f
    add-int/lit8 v0, v12, -0x1

    .end local v12    # "j":I
    .local v0, "j":I
    aget v11, v5, v16

    aput v11, v1, v12

    .line 697
    and-int/lit8 v11, v7, 0x2

    if-eqz v11, :cond_11

    .line 699
    :goto_a
    add-int/lit8 v11, v16, -0x1

    .end local v16    # "i":I
    .restart local v11    # "i":I
    aget v12, v5, v13

    aput v12, v5, v16

    .line 700
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "k":I
    .local v12, "k":I
    aget v16, v5, v11

    aput v16, v5, v13

    .line 701
    aget v13, v5, v12

    if-ltz v13, :cond_10

    .line 702
    xor-int/lit8 v7, v7, 0x2

    move/from16 v16, v11

    move v13, v12

    goto :goto_b

    .line 701
    :cond_10
    move/from16 v16, v11

    move v13, v12

    goto :goto_a

    .line 704
    .end local v11    # "i":I
    .end local v12    # "k":I
    .restart local v13    # "k":I
    .restart local v16    # "i":I
    :cond_11
    :goto_b
    add-int/lit8 v11, v16, -0x1

    .end local v16    # "i":I
    .restart local v11    # "i":I
    aget v12, v5, v13

    aput v12, v5, v16

    .line 705
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "k":I
    .restart local v12    # "k":I
    aget v16, v5, v11

    aput v16, v5, v13

    .line 706
    if-ge v12, v3, :cond_13

    .line 707
    :goto_c
    if-ge v2, v0, :cond_12

    .line 708
    add-int/lit8 v13, v11, -0x1

    .end local v11    # "i":I
    .local v13, "i":I
    aget v16, v1, v0

    aput v16, v5, v11

    .line 709
    add-int/lit8 v11, v0, -0x1

    .end local v0    # "j":I
    .local v11, "j":I
    aget v16, v5, v13

    aput v16, v1, v0

    move v0, v11

    move v11, v13

    goto :goto_c

    .line 711
    .end local v13    # "i":I
    .restart local v0    # "j":I
    .local v11, "i":I
    :cond_12
    aget v13, v1, v0

    aput v13, v5, v11

    .line 712
    aput v10, v1, v0

    .line 713
    return-void

    .line 716
    :cond_13
    aget v13, v1, v0

    if-gez v13, :cond_14

    .line 717
    or-int/lit8 v7, v7, 0x1

    .line 718
    aget v13, v1, v0

    not-int v13, v13

    add-int v8, p1, v13

    goto :goto_d

    .line 720
    :cond_14
    aget v13, v1, v0

    add-int v8, p1, v13

    .line 722
    :goto_d
    aget v13, v5, v12

    if-gez v13, :cond_15

    .line 723
    or-int/lit8 v7, v7, 0x2

    .line 724
    aget v13, v5, v12

    not-int v13, v13

    add-int v9, p1, v13

    move v13, v12

    move v12, v0

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 726
    :cond_15
    aget v13, v5, v12

    add-int v9, p1, v13

    move v13, v12

    move v12, v0

    move-object/from16 v0, p0

    goto/16 :goto_2
.end method

.method private ssMergeCheckEqual(III)V
    .locals 3
    .param p1, "pa"    # I
    .param p2, "depth"    # I
    .param p3, "a"    # I

    .line 737
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 739
    .local v0, "SA":[I
    aget v1, v0, p3

    if-ltz v1, :cond_0

    add-int/lit8 v1, p3, -0x1

    aget v1, v0, v1

    invoke-static {v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->getIDX(I)I

    move-result v1

    add-int/2addr v1, p1

    aget v2, v0, p3

    add-int/2addr v2, p1

    invoke-direct {p0, v1, v2, p2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    move-result v1

    if-nez v1, :cond_0

    .line 740
    aget v1, v0, p3

    not-int v1, v1

    aput v1, v0, p3

    .line 742
    :cond_0
    return-void
.end method

.method private ssMergeForward(I[IIIIII)V
    .locals 16
    .param p1, "pa"    # I
    .param p2, "buf"    # [I
    .param p3, "bufoffset"    # I
    .param p4, "first"    # I
    .param p5, "middle"    # I
    .param p6, "last"    # I
    .param p7, "depth"    # I

    .line 545
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 552
    .local v5, "SA":[I
    sub-int v6, p5, v3

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    .line 553
    .local v6, "bufend":I
    sub-int v7, p5, v3

    invoke-static {v1, v2, v5, v3, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssBlockSwap([II[III)V

    .line 555
    aget v7, v5, v3

    .local v7, "t":I
    move/from16 v8, p4

    .local v8, "i":I
    move/from16 v9, p3

    .local v9, "j":I
    move/from16 v10, p5

    .line 556
    .local v10, "k":I
    :goto_0
    aget v11, v1, v9

    add-int v11, p1, v11

    aget v12, v5, v10

    add-int v12, p1, v12

    move/from16 v13, p7

    invoke-direct {v0, v11, v12, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    move-result v11

    .line 557
    .local v11, "r":I
    if-gez v11, :cond_2

    .line 559
    :goto_1
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "i":I
    .local v12, "i":I
    aget v14, v1, v9

    aput v14, v5, v8

    .line 560
    if-gt v6, v9, :cond_0

    .line 561
    aput v7, v1, v9

    .line 562
    return-void

    .line 564
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "j":I
    .local v8, "j":I
    aget v14, v5, v12

    aput v14, v1, v9

    .line 565
    aget v9, v1, v8

    if-ltz v9, :cond_1

    move v9, v8

    move v8, v12

    goto :goto_0

    :cond_1
    move v9, v8

    move v8, v12

    goto :goto_1

    .line 566
    .end local v12    # "i":I
    .local v8, "i":I
    .restart local v9    # "j":I
    :cond_2
    if-lez v11, :cond_6

    .line 568
    :goto_2
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "i":I
    .restart local v12    # "i":I
    aget v14, v5, v10

    aput v14, v5, v8

    .line 569
    add-int/lit8 v8, v10, 0x1

    .end local v10    # "k":I
    .local v8, "k":I
    aget v14, v5, v12

    aput v14, v5, v10

    .line 570
    if-gt v4, v8, :cond_4

    .line 571
    :goto_3
    if-ge v9, v6, :cond_3

    .line 572
    add-int/lit8 v10, v12, 0x1

    .end local v12    # "i":I
    .local v10, "i":I
    aget v14, v1, v9

    aput v14, v5, v12

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "j":I
    .local v12, "j":I
    aget v14, v5, v10

    aput v14, v1, v9

    move v9, v12

    move v12, v10

    goto :goto_3

    .line 574
    .end local v10    # "i":I
    .restart local v9    # "j":I
    .local v12, "i":I
    :cond_3
    aget v10, v1, v9

    aput v10, v5, v12

    aput v7, v1, v9

    .line 575
    return-void

    .line 577
    :cond_4
    aget v10, v5, v8

    if-ltz v10, :cond_5

    move v10, v8

    move v8, v12

    goto :goto_0

    :cond_5
    move v10, v8

    move v8, v12

    goto :goto_2

    .line 579
    .end local v12    # "i":I
    .local v8, "i":I
    .local v10, "k":I
    :cond_6
    aget v12, v5, v10

    not-int v12, v12

    aput v12, v5, v10

    .line 581
    :goto_4
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "i":I
    .restart local v12    # "i":I
    aget v14, v1, v9

    aput v14, v5, v8

    .line 582
    if-gt v6, v9, :cond_7

    .line 583
    aput v7, v1, v9

    .line 584
    return-void

    .line 586
    :cond_7
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "j":I
    .local v8, "j":I
    aget v14, v5, v12

    aput v14, v1, v9

    .line 587
    aget v9, v1, v8

    if-ltz v9, :cond_b

    .line 590
    :goto_5
    add-int/lit8 v9, v12, 0x1

    .end local v12    # "i":I
    .local v9, "i":I
    aget v14, v5, v10

    aput v14, v5, v12

    .line 591
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "k":I
    .local v12, "k":I
    aget v14, v5, v9

    aput v14, v5, v10

    .line 592
    if-gt v4, v12, :cond_9

    .line 593
    :goto_6
    if-ge v8, v6, :cond_8

    .line 594
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    aget v14, v1, v8

    aput v14, v5, v9

    .line 595
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "j":I
    .local v9, "j":I
    aget v14, v5, v10

    aput v14, v1, v8

    move v8, v9

    move v9, v10

    goto :goto_6

    .line 597
    .end local v10    # "i":I
    .restart local v8    # "j":I
    .local v9, "i":I
    :cond_8
    aget v10, v1, v8

    aput v10, v5, v9

    aput v7, v1, v8

    .line 598
    return-void

    .line 600
    :cond_9
    aget v10, v5, v12

    if-ltz v10, :cond_a

    move v10, v12

    move v15, v9

    move v9, v8

    move v8, v15

    goto/16 :goto_0

    :cond_a
    move v10, v12

    move v12, v9

    goto :goto_5

    .line 587
    .end local v9    # "i":I
    .local v10, "k":I
    .local v12, "i":I
    :cond_b
    move v9, v8

    move v8, v12

    goto :goto_4
.end method

.method private ssMultiKeyIntroSort(IIII)V
    .locals 24
    .param p1, "pa"    # I
    .param p2, "first"    # I
    .param p3, "last"    # I
    .param p4, "depth"    # I

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 355
    .local v2, "SA":[I
    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 357
    .local v3, "T":[B
    const/16 v4, 0x40

    new-array v4, v4, [Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 364
    .local v4, "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    const/4 v5, 0x0

    .line 366
    .local v5, "x":I
    const/4 v6, 0x0

    .local v6, "ssize":I
    sub-int v7, p3, p2

    invoke-static {v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v7

    move v8, v5

    move v9, v6

    move v10, v7

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 367
    .end local p2    # "first":I
    .end local p3    # "last":I
    .end local p4    # "depth":I
    .local v5, "first":I
    .local v6, "last":I
    .local v7, "depth":I
    .local v8, "x":I
    .local v9, "ssize":I
    .local v10, "limit":I
    :goto_0
    sub-int v11, v6, v5

    const/16 v12, 0x8

    const/4 v13, 0x1

    if-gt v11, v12, :cond_2

    .line 368
    sub-int v11, v6, v5

    if-ge v13, v11, :cond_0

    .line 369
    invoke-direct {v0, v1, v5, v6, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssInsertionSort(IIII)V

    .line 371
    :cond_0
    if-nez v9, :cond_1

    .line 372
    return-void

    .line 374
    :cond_1
    add-int/lit8 v9, v9, -0x1

    aget-object v11, v4, v9

    .line 375
    .local v11, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v5, v11, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 376
    iget v6, v11, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 377
    iget v7, v11, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 378
    iget v10, v11, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 379
    goto :goto_0

    .line 382
    .end local v11    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    :cond_2
    move v11, v7

    .line 383
    .local v11, "Td":I
    add-int/lit8 v12, v10, -0x1

    .end local v10    # "limit":I
    .local v12, "limit":I
    if-nez v10, :cond_3

    .line 384
    sub-int v10, v6, v5

    invoke-direct {v0, v11, v1, v5, v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssHeapSort(IIII)V

    .line 386
    :cond_3
    if-gez v12, :cond_b

    .line 387
    add-int/lit8 v14, v5, 0x1

    .local v14, "a":I
    aget v15, v2, v5

    add-int/2addr v15, v1

    aget v15, v2, v15

    add-int/2addr v15, v11

    aget-byte v15, v3, v15

    and-int/lit16 v15, v15, 0xff

    .local v15, "v":I
    :goto_1
    if-ge v14, v6, :cond_6

    .line 388
    aget v16, v2, v14

    add-int v16, v1, v16

    aget v16, v2, v16

    add-int v16, v11, v16

    aget-byte v10, v3, v16

    and-int/lit16 v10, v10, 0xff

    move v8, v10

    if-eq v10, v15, :cond_5

    .line 389
    sub-int v10, v14, v5

    if-ge v13, v10, :cond_4

    .line 390
    goto :goto_2

    .line 392
    :cond_4
    move v10, v8

    .line 393
    .end local v15    # "v":I
    .local v10, "v":I
    move v5, v14

    move v15, v10

    .line 387
    .end local v10    # "v":I
    .restart local v15    # "v":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 396
    :cond_6
    :goto_2
    aget v10, v2, v5

    add-int/2addr v10, v1

    aget v10, v2, v10

    add-int/2addr v10, v11

    sub-int/2addr v10, v13

    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    if-ge v10, v15, :cond_7

    .line 397
    invoke-direct {v0, v1, v5, v14, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssSubstringPartition(IIII)I

    move-result v5

    .line 399
    :cond_7
    sub-int v10, v14, v5

    sub-int v13, v6, v14

    if-gt v10, v13, :cond_9

    .line 400
    sub-int v10, v14, v5

    const/4 v13, 0x1

    if-ge v13, v10, :cond_8

    .line 401
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ssize":I
    .local v10, "ssize":I
    new-instance v13, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    move/from16 p4, v8

    const/4 v8, -0x1

    .end local v8    # "x":I
    .local p4, "x":I
    invoke-direct {v13, v14, v6, v7, v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v13, v4, v9

    .line 402
    move v6, v14

    .line 403
    add-int/lit8 v7, v7, 0x1

    .line 404
    sub-int v8, v14, v5

    invoke-static {v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v8

    move v9, v10

    move v10, v8

    move/from16 v8, p4

    .end local v12    # "limit":I
    .local v8, "limit":I
    goto/16 :goto_0

    .line 406
    .end local v10    # "ssize":I
    .end local p4    # "x":I
    .local v8, "x":I
    .restart local v9    # "ssize":I
    .restart local v12    # "limit":I
    :cond_8
    move/from16 p4, v8

    .end local v8    # "x":I
    .restart local p4    # "x":I
    move v5, v14

    .line 407
    const/4 v10, -0x1

    .end local v12    # "limit":I
    .local v10, "limit":I
    goto/16 :goto_0

    .line 410
    .end local v10    # "limit":I
    .end local p4    # "x":I
    .restart local v8    # "x":I
    .restart local v12    # "limit":I
    :cond_9
    move/from16 p4, v8

    .end local v8    # "x":I
    .restart local p4    # "x":I
    sub-int v8, v6, v14

    const/4 v10, 0x1

    if-ge v10, v8, :cond_a

    .line 411
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ssize":I
    .local v8, "ssize":I
    new-instance v10, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v13, v7, 0x1

    sub-int v16, v14, v5

    move/from16 p2, v8

    .end local v8    # "ssize":I
    .local p2, "ssize":I
    invoke-static/range {v16 .. v16}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v8

    invoke-direct {v10, v5, v14, v13, v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v10, v4, v9

    .line 412
    move v5, v14

    .line 413
    const/4 v10, -0x1

    move/from16 v9, p2

    move/from16 v8, p4

    .end local v12    # "limit":I
    .restart local v10    # "limit":I
    goto/16 :goto_0

    .line 415
    .end local v10    # "limit":I
    .end local p2    # "ssize":I
    .restart local v9    # "ssize":I
    .restart local v12    # "limit":I
    :cond_a
    move v6, v14

    .line 416
    add-int/lit8 v7, v7, 0x1

    .line 417
    sub-int v8, v14, v5

    invoke-static {v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v10

    .line 420
    .end local v12    # "limit":I
    .restart local v10    # "limit":I
    move/from16 v8, p4

    goto/16 :goto_0

    .line 423
    .end local v10    # "limit":I
    .end local v14    # "a":I
    .end local v15    # "v":I
    .end local p4    # "x":I
    .local v8, "x":I
    .restart local v12    # "limit":I
    :cond_b
    invoke-direct {v0, v11, v1, v5, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssPivot(IIII)I

    move-result v10

    .line 424
    .local v10, "a":I
    aget v13, v2, v10

    add-int/2addr v13, v1

    aget v13, v2, v13

    add-int/2addr v13, v11

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    .line 425
    .local v13, "v":I
    invoke-static {v2, v5, v2, v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 427
    add-int/lit8 v14, v5, 0x1

    .line 428
    .local v14, "b":I
    :goto_3
    if-ge v14, v6, :cond_c

    aget v15, v2, v14

    add-int/2addr v15, v1

    aget v15, v2, v15

    add-int/2addr v15, v11

    aget-byte v15, v3, v15

    and-int/lit16 v15, v15, 0xff

    move v8, v15

    if-ne v15, v13, :cond_c

    .line 429
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 431
    :cond_c
    move v10, v14

    if-ge v14, v6, :cond_e

    if-ge v8, v13, :cond_e

    .line 432
    :cond_d
    :goto_4
    const/4 v15, 0x1

    add-int/2addr v14, v15

    if-ge v14, v6, :cond_e

    aget v15, v2, v14

    add-int/2addr v15, v1

    aget v15, v2, v15

    add-int/2addr v15, v11

    aget-byte v15, v3, v15

    and-int/lit16 v15, v15, 0xff

    move v8, v15

    if-gt v15, v13, :cond_e

    .line 433
    if-ne v8, v13, :cond_d

    .line 434
    invoke-static {v2, v14, v2, v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 435
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 440
    :cond_e
    add-int/lit8 v15, v6, -0x1

    .line 441
    .local v15, "c":I
    :goto_5
    if-ge v14, v15, :cond_10

    aget v16, v2, v15

    add-int v16, v1, v16

    aget v16, v2, v16

    add-int v16, v11, v16

    move/from16 p4, v8

    .end local v8    # "x":I
    .restart local p4    # "x":I
    aget-byte v8, v3, v16

    and-int/lit16 v8, v8, 0xff

    move/from16 v16, v8

    .end local p4    # "x":I
    .local v16, "x":I
    if-ne v8, v13, :cond_f

    .line 442
    add-int/lit8 v15, v15, -0x1

    move/from16 v8, v16

    goto :goto_5

    .line 441
    :cond_f
    move/from16 v8, v16

    goto :goto_6

    .end local v16    # "x":I
    .restart local v8    # "x":I
    :cond_10
    move/from16 p4, v8

    .line 444
    :goto_6
    move/from16 v16, v15

    .local v16, "d":I
    if-ge v14, v15, :cond_14

    if-le v8, v13, :cond_14

    move/from16 p4, v8

    move/from16 v8, v16

    .line 445
    .end local v16    # "d":I
    .local v8, "d":I
    .restart local p4    # "x":I
    :goto_7
    const/16 v16, -0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_13

    aget v16, v2, v15

    add-int v16, v1, v16

    aget v16, v2, v16

    add-int v16, v11, v16

    move/from16 v17, v10

    .end local v10    # "a":I
    .local v17, "a":I
    aget-byte v10, v3, v16

    and-int/lit16 v10, v10, 0xff

    move/from16 p4, v10

    if-lt v10, v13, :cond_12

    .line 446
    move/from16 v10, p4

    .end local p4    # "x":I
    .local v10, "x":I
    if-ne v10, v13, :cond_11

    .line 447
    invoke-static {v2, v15, v2, v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 448
    add-int/lit8 v8, v8, -0x1

    move/from16 p4, v10

    move/from16 v10, v17

    goto :goto_7

    .line 446
    :cond_11
    move/from16 p4, v10

    move/from16 v10, v17

    goto :goto_7

    .line 445
    .end local v10    # "x":I
    .restart local p4    # "x":I
    :cond_12
    move/from16 v10, p4

    .end local p4    # "x":I
    .restart local v10    # "x":I
    move/from16 v10, v17

    goto :goto_8

    .end local v17    # "a":I
    .local v10, "a":I
    .restart local p4    # "x":I
    :cond_13
    move/from16 v17, v10

    .end local v10    # "a":I
    .restart local v17    # "a":I
    goto :goto_8

    .line 444
    .end local v17    # "a":I
    .end local p4    # "x":I
    .local v8, "x":I
    .restart local v10    # "a":I
    .restart local v16    # "d":I
    :cond_14
    move/from16 v17, v10

    .line 452
    .end local v10    # "a":I
    .restart local v17    # "a":I
    move/from16 p4, v8

    move/from16 v8, v16

    move/from16 v10, v17

    .end local v16    # "d":I
    .end local v17    # "a":I
    .local v8, "d":I
    .restart local v10    # "a":I
    .restart local p4    # "x":I
    :goto_8
    if-ge v14, v15, :cond_1b

    .line 453
    invoke-static {v2, v14, v2, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    move/from16 v16, v14

    move v14, v10

    move/from16 v10, p4

    .line 454
    .end local p4    # "x":I
    .local v10, "x":I
    .local v14, "a":I
    .local v16, "b":I
    :goto_9
    move/from16 p4, v10

    const/16 v17, 0x1

    .end local v10    # "x":I
    .restart local p4    # "x":I
    add-int/lit8 v10, v16, 0x1

    .end local v16    # "b":I
    .local v10, "b":I
    if-ge v10, v15, :cond_17

    aget v16, v2, v10

    add-int v16, v1, v16

    aget v16, v2, v16

    add-int v16, v11, v16

    move/from16 v17, v15

    .end local v15    # "c":I
    .local v17, "c":I
    aget-byte v15, v3, v16

    and-int/lit16 v15, v15, 0xff

    move/from16 p4, v15

    if-gt v15, v13, :cond_16

    .line 455
    move/from16 v15, p4

    .end local p4    # "x":I
    .local v15, "x":I
    if-ne v15, v13, :cond_15

    .line 456
    invoke-static {v2, v10, v2, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 457
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v10

    move v10, v15

    move/from16 v15, v17

    goto :goto_9

    .line 455
    :cond_15
    move/from16 v16, v10

    move v10, v15

    move/from16 v15, v17

    goto :goto_9

    .line 454
    .end local v15    # "x":I
    .restart local p4    # "x":I
    :cond_16
    move/from16 v15, p4

    .end local p4    # "x":I
    .restart local v15    # "x":I
    goto :goto_a

    .end local v17    # "c":I
    .local v15, "c":I
    .restart local p4    # "x":I
    :cond_17
    move/from16 v17, v15

    .end local v15    # "c":I
    .restart local v17    # "c":I
    move/from16 v15, p4

    .line 460
    .end local p4    # "x":I
    .local v15, "x":I
    :goto_a
    move/from16 p2, v14

    const/16 v16, -0x1

    .end local v14    # "a":I
    .local p2, "a":I
    add-int/lit8 v14, v17, -0x1

    .end local v17    # "c":I
    .local v14, "c":I
    if-ge v10, v14, :cond_19

    aget v17, v2, v14

    add-int v17, v1, v17

    aget v17, v2, v17

    add-int v17, v11, v17

    move/from16 p4, v10

    .end local v10    # "b":I
    .local p4, "b":I
    aget-byte v10, v3, v17

    and-int/lit16 v10, v10, 0xff

    move v15, v10

    if-lt v10, v13, :cond_1a

    .line 461
    if-ne v15, v13, :cond_18

    .line 462
    invoke-static {v2, v14, v2, v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 463
    add-int/lit8 v8, v8, -0x1

    move/from16 v10, p4

    move/from16 v17, v14

    move/from16 v14, p2

    goto :goto_a

    .line 461
    :cond_18
    move/from16 v10, p4

    move/from16 v17, v14

    move/from16 v14, p2

    goto :goto_a

    .line 460
    .end local p4    # "b":I
    .restart local v10    # "b":I
    :cond_19
    move/from16 p4, v10

    .end local v10    # "b":I
    .restart local p4    # "b":I
    :cond_1a
    move/from16 v10, p2

    move/from16 v23, v14

    move/from16 v14, p4

    move/from16 p4, v15

    move/from16 v15, v23

    goto :goto_8

    .line 468
    .end local p2    # "a":I
    .local v10, "a":I
    .local v14, "b":I
    .local v15, "c":I
    .local p4, "x":I
    :cond_1b
    move/from16 v17, v15

    .end local v15    # "c":I
    .restart local v17    # "c":I
    if-gt v10, v8, :cond_26

    .line 469
    add-int/lit8 v15, v14, -0x1

    .line 471
    .end local v17    # "c":I
    .restart local v15    # "c":I
    move/from16 p2, v12

    .end local v12    # "limit":I
    .local p2, "limit":I
    sub-int v12, v10, v5

    move/from16 v16, v12

    move-object/from16 v18, v4

    .end local v4    # "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .local v16, "s":I
    .local v18, "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    sub-int v4, v14, v10

    move/from16 v17, v4

    .local v17, "t":I
    if-le v12, v4, :cond_1c

    .line 472
    move/from16 v16, v17

    .line 474
    :cond_1c
    move v4, v5

    .local v4, "e":I
    sub-int v12, v14, v16

    .local v12, "f":I
    :goto_b
    if-lez v16, :cond_1d

    .line 475
    invoke-static {v2, v4, v2, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 474
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 477
    :cond_1d
    move/from16 v19, v4

    .end local v4    # "e":I
    .local v19, "e":I
    sub-int v4, v8, v15

    move/from16 v16, v4

    sub-int v20, v6, v8

    move/from16 v22, v12

    const/16 v21, 0x1

    .end local v12    # "f":I
    .local v22, "f":I
    add-int/lit8 v12, v20, -0x1

    move/from16 v17, v12

    if-le v4, v12, :cond_1e

    .line 478
    move/from16 v16, v17

    .line 480
    :cond_1e
    move v4, v14

    .end local v19    # "e":I
    .restart local v4    # "e":I
    sub-int v12, v6, v16

    .end local v22    # "f":I
    .restart local v12    # "f":I
    :goto_c
    if-lez v16, :cond_1f

    .line 481
    invoke-static {v2, v4, v2, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 480
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 484
    :cond_1f
    sub-int v19, v14, v10

    add-int v10, v5, v19

    .line 485
    sub-int v19, v8, v15

    sub-int v15, v6, v19

    .line 486
    aget v19, v2, v10

    add-int v19, v1, v19

    aget v19, v2, v19

    add-int v19, v11, v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v4

    .end local v4    # "e":I
    .local v20, "e":I
    aget-byte v4, v3, v19

    and-int/lit16 v4, v4, 0xff

    if-gt v13, v4, :cond_20

    move v4, v10

    goto :goto_d

    :cond_20
    invoke-direct {v0, v1, v10, v15, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssSubstringPartition(IIII)I

    move-result v4

    .line 488
    .end local v14    # "b":I
    .local v4, "b":I
    :goto_d
    sub-int v14, v10, v5

    move/from16 v19, v8

    .end local v8    # "d":I
    .local v19, "d":I
    sub-int v8, v6, v15

    if-gt v14, v8, :cond_23

    .line 489
    sub-int v8, v6, v15

    sub-int v14, v15, v4

    if-gt v8, v14, :cond_21

    .line 490
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ssize":I
    .local v8, "ssize":I
    new-instance v14, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    move/from16 v21, v12

    .end local v12    # "f":I
    .local v21, "f":I
    add-int/lit8 v12, v7, 0x1

    sub-int v22, v15, v4

    invoke-static/range {v22 .. v22}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v0

    invoke-direct {v14, v4, v15, v12, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v14, v18, v9

    .line 491
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v9    # "ssize":I
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    move/from16 v12, p2

    .end local p2    # "limit":I
    .local v12, "limit":I
    invoke-direct {v0, v15, v6, v7, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v0, v18, v8

    .line 492
    move v6, v10

    move-object/from16 v0, p0

    move/from16 v8, p4

    move v10, v12

    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 493
    .end local v21    # "f":I
    .local v12, "f":I
    .restart local p2    # "limit":I
    :cond_21
    move/from16 v21, v12

    move/from16 v12, p2

    .end local p2    # "limit":I
    .local v12, "limit":I
    .restart local v21    # "f":I
    sub-int v0, v10, v5

    sub-int v8, v15, v4

    if-gt v0, v8, :cond_22

    .line 494
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "ssize":I
    .local v0, "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v8, v15, v6, v7, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v9

    .line 495
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "ssize":I
    .restart local v9    # "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v14, v7, 0x1

    sub-int v22, v15, v4

    move/from16 p2, v9

    .end local v9    # "ssize":I
    .local p2, "ssize":I
    invoke-static/range {v22 .. v22}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v9

    invoke-direct {v8, v4, v15, v14, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v0

    .line 496
    move v6, v10

    move-object/from16 v0, p0

    move/from16 v9, p2

    move/from16 v8, p4

    move v10, v12

    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 498
    .end local p2    # "ssize":I
    .restart local v9    # "ssize":I
    :cond_22
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "ssize":I
    .restart local v0    # "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v8, v15, v6, v7, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v9

    .line 499
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "ssize":I
    .restart local v9    # "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v8, v5, v10, v7, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v0

    .line 500
    move v5, v4

    .line 501
    move v6, v15

    .line 502
    add-int/lit8 v7, v7, 0x1

    .line 503
    sub-int v0, v15, v4

    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v0

    move/from16 v8, p4

    move v10, v0

    move-object/from16 v4, v18

    move-object/from16 v0, p0

    .end local v12    # "limit":I
    .local v0, "limit":I
    goto/16 :goto_0

    .line 506
    .end local v0    # "limit":I
    .end local v21    # "f":I
    .local v12, "f":I
    .local p2, "limit":I
    :cond_23
    move/from16 v21, v12

    move/from16 v12, p2

    .end local p2    # "limit":I
    .local v12, "limit":I
    .restart local v21    # "f":I
    sub-int v0, v10, v5

    sub-int v8, v15, v4

    if-gt v0, v8, :cond_24

    .line 507
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "ssize":I
    .local v0, "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v14, v7, 0x1

    sub-int v22, v15, v4

    move/from16 p2, v13

    .end local v13    # "v":I
    .local p2, "v":I
    invoke-static/range {v22 .. v22}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v13

    invoke-direct {v8, v4, v15, v14, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v9

    .line 508
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "ssize":I
    .restart local v9    # "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v8, v5, v10, v7, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v0

    .line 509
    move v5, v15

    move-object/from16 v0, p0

    move/from16 v8, p4

    move v10, v12

    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 510
    .end local p2    # "v":I
    .restart local v13    # "v":I
    :cond_24
    move/from16 p2, v13

    .end local v13    # "v":I
    .restart local p2    # "v":I
    sub-int v0, v6, v15

    sub-int v8, v15, v4

    if-gt v0, v8, :cond_25

    .line 511
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "ssize":I
    .restart local v0    # "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v8, v5, v10, v7, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v9

    .line 512
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "ssize":I
    .restart local v9    # "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v13, v7, 0x1

    sub-int v14, v15, v4

    invoke-static {v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v14

    invoke-direct {v8, v4, v15, v13, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v0

    .line 513
    move v5, v15

    move-object/from16 v0, p0

    move/from16 v8, p4

    move v10, v12

    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 515
    :cond_25
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "ssize":I
    .restart local v0    # "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v8, v5, v10, v7, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v9

    .line 516
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "ssize":I
    .restart local v9    # "ssize":I
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v8, v15, v6, v7, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v8, v18, v0

    .line 517
    move v5, v4

    .line 518
    move v6, v15

    .line 519
    add-int/lit8 v7, v7, 0x1

    .line 520
    sub-int v0, v15, v4

    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v0

    move/from16 v8, p4

    move v10, v0

    move-object/from16 v4, v18

    move-object/from16 v0, p0

    .end local v12    # "limit":I
    .local v0, "limit":I
    goto/16 :goto_0

    .line 524
    .end local v0    # "limit":I
    .end local v15    # "c":I
    .end local v16    # "s":I
    .end local v18    # "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v19    # "d":I
    .end local v20    # "e":I
    .end local v21    # "f":I
    .end local p2    # "v":I
    .local v4, "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .local v8, "d":I
    .restart local v12    # "limit":I
    .restart local v13    # "v":I
    .restart local v14    # "b":I
    .local v17, "c":I
    :cond_26
    move-object/from16 v18, v4

    move/from16 v19, v8

    move/from16 p2, v13

    .end local v4    # "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v8    # "d":I
    .end local v13    # "v":I
    .restart local v18    # "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .restart local v19    # "d":I
    .restart local p2    # "v":I
    add-int/lit8 v12, v12, 0x1

    .line 525
    aget v0, v2, v5

    add-int/2addr v0, v1

    aget v0, v2, v0

    add-int/2addr v0, v11

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    move/from16 v4, p2

    .end local p2    # "v":I
    .local v4, "v":I
    if-ge v0, v4, :cond_27

    .line 526
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v6, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssSubstringPartition(IIII)I

    move-result v5

    .line 527
    sub-int v8, v6, v5

    invoke-static {v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    move-result v8

    move v12, v8

    .end local v12    # "limit":I
    .local v8, "limit":I
    goto :goto_e

    .line 525
    .end local v8    # "limit":I
    .restart local v12    # "limit":I
    :cond_27
    move-object/from16 v0, p0

    .line 529
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, p4

    move v10, v12

    move-object/from16 v4, v18

    goto/16 :goto_0
.end method

.method private ssPivot(IIII)I
    .locals 20
    .param p1, "td"    # I
    .param p2, "pa"    # I
    .param p3, "first"    # I
    .param p4, "last"    # I

    .line 286
    sub-int v6, p4, p3

    .line 287
    .local v6, "t":I
    div-int/lit8 v0, v6, 0x2

    add-int v13, p3, v0

    .line 289
    .local v13, "middle":I
    const/16 v0, 0x200

    if-gt v6, v0, :cond_1

    .line 290
    const/16 v0, 0x20

    if-gt v6, v0, :cond_0

    .line 291
    add-int/lit8 v5, p4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    move-result v0

    return v0

    .line 293
    :cond_0
    shr-int/lit8 v8, v6, 0x2

    .line 294
    .end local v6    # "t":I
    .local v8, "t":I
    add-int v4, p3, v8

    add-int/lit8 v0, p4, -0x1

    sub-int v6, v0, v8

    add-int/lit8 v7, p4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian5(IIIIIII)I

    move-result v0

    return v0

    .line 296
    .end local v8    # "t":I
    .restart local v6    # "t":I
    :cond_1
    shr-int/lit8 v6, v6, 0x3

    .line 297
    add-int v4, p3, v6

    shl-int/lit8 v0, v6, 0x1

    add-int v5, p3, v0

    .line 299
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    move-result v0

    sub-int v10, v13, v6

    add-int v12, v13, v6

    .line 300
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move v11, v13

    invoke-direct/range {v7 .. v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    move-result v11

    add-int/lit8 v1, p4, -0x1

    shl-int/lit8 v2, v6, 0x1

    sub-int v17, v1, v2

    add-int/lit8 v1, p4, -0x1

    sub-int v18, v1, v6

    add-int/lit8 v19, p4, -0x1

    .line 301
    move-object/from16 v14, p0

    move/from16 v15, p1

    move/from16 v16, p2

    invoke-direct/range {v14 .. v19}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    move-result v12

    .line 297
    move v10, v0

    invoke-direct/range {v7 .. v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    move-result v0

    return v0
.end method

.method private ssSubstringPartition(IIII)I
    .locals 5
    .param p1, "pa"    # I
    .param p2, "first"    # I
    .param p3, "last"    # I
    .param p4, "depth"    # I

    .line 312
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 317
    .local v0, "SA":[I
    add-int/lit8 v1, p2, -0x1

    .local v1, "a":I
    move v2, p3

    .line 318
    .local v2, "b":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    add-int/2addr v3, p1

    aget v3, v0, v3

    add-int/2addr v3, p4

    aget v4, v0, v1

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    aget v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_0

    .line 319
    aget v3, v0, v1

    not-int v3, v3

    aput v3, v0, v1

    goto :goto_0

    .line 321
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 322
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v2

    add-int/2addr v3, p1

    aget v3, v0, v3

    add-int/2addr v3, p4

    aget v4, v0, v2

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    aget v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_1

    .line 323
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 326
    :cond_1
    if-gt v2, v1, :cond_3

    .line 327
    nop

    .line 333
    if-ge p2, v1, :cond_2

    .line 334
    aget v3, v0, p2

    not-int v3, v3

    aput v3, v0, p2

    .line 336
    :cond_2
    return v1

    .line 329
    :cond_3
    aget v3, v0, v2

    not-int v3, v3

    .line 330
    .local v3, "t":I
    aget v4, v0, v1

    aput v4, v0, v2

    .line 331
    aput v3, v0, v1

    goto :goto_0
.end method

.method private subStringSort(III[IIIIZI)V
    .locals 23
    .param p1, "pa"    # I
    .param p2, "first"    # I
    .param p3, "last"    # I
    .param p4, "buf"    # [I
    .param p5, "bufoffset"    # I
    .param p6, "bufsize"    # I
    .param p7, "depth"    # I
    .param p8, "lastsuffix"    # Z
    .param p9, "size"    # I

    .line 864
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p7

    iget-object v13, v9, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 872
    .local v13, "SA":[I
    if-eqz p8, :cond_0

    .line 873
    add-int/lit8 v0, p2, 0x1

    move v14, v0

    .end local p2    # "first":I
    .local v0, "first":I
    goto :goto_0

    .line 872
    .end local v0    # "first":I
    .restart local p2    # "first":I
    :cond_0
    move/from16 v14, p2

    .line 875
    .end local p2    # "first":I
    .local v14, "first":I
    :goto_0
    move v0, v14

    .local v0, "a":I
    const/4 v1, 0x0

    move v15, v0

    move/from16 v16, v1

    .end local v0    # "a":I
    .local v15, "a":I
    .local v16, "i":I
    :goto_1
    add-int/lit16 v0, v15, 0x400

    if-ge v0, v11, :cond_3

    .line 876
    add-int/lit16 v0, v15, 0x400

    invoke-direct {v9, v10, v15, v0, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMultiKeyIntroSort(IIII)V

    .line 877
    move-object v0, v13

    .line 878
    .local v0, "curbuf":[I
    add-int/lit16 v1, v15, 0x400

    .line 879
    .local v1, "curbufoffset":I
    add-int/lit16 v2, v15, 0x400

    sub-int v2, v11, v2

    .line 880
    .local v2, "curbufsize":I
    move/from16 v8, p6

    if-gt v2, v8, :cond_1

    .line 881
    move/from16 v2, p6

    .line 882
    move-object/from16 v0, p4

    .line 883
    move/from16 v1, p5

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_2

    .line 880
    :cond_1
    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    .line 885
    .end local v0    # "curbuf":[I
    .end local v1    # "curbufoffset":I
    .end local v2    # "curbufsize":I
    .local v17, "curbuf":[I
    .local v18, "curbufoffset":I
    .local v19, "curbufsize":I
    :goto_2
    move v0, v15

    .local v0, "b":I
    const/16 v1, 0x400

    .local v1, "k":I
    move/from16 v2, v16

    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v22, v2

    .end local v0    # "b":I
    .end local v1    # "k":I
    .local v20, "b":I
    .local v21, "k":I
    .local v22, "j":I
    :goto_3
    and-int/lit8 v0, v22, 0x1

    if-eqz v0, :cond_2

    .line 886
    sub-int v2, v20, v21

    add-int v4, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, v20

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMerge(IIII[IIII)V

    .line 885
    sub-int v20, v20, v21

    shl-int/lit8 v21, v21, 0x1

    ushr-int/lit8 v22, v22, 0x1

    move/from16 v8, p6

    goto :goto_3

    .line 875
    :cond_2
    add-int/lit16 v15, v15, 0x400

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 890
    .end local v17    # "curbuf":[I
    .end local v18    # "curbufoffset":I
    .end local v19    # "curbufsize":I
    .end local v20    # "b":I
    .end local v21    # "k":I
    .end local v22    # "j":I
    :cond_3
    invoke-direct {v9, v10, v15, v11, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMultiKeyIntroSort(IIII)V

    .line 892
    const/16 v0, 0x400

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v0

    .local v15, "k":I
    .local v16, "a":I
    .local v17, "i":I
    :goto_4
    if-eqz v17, :cond_5

    .line 893
    and-int/lit8 v0, v17, 0x1

    if-eqz v0, :cond_4

    .line 894
    sub-int v2, v16, v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, v16

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMerge(IIII[IIII)V

    .line 895
    sub-int v16, v16, v15

    .line 892
    :cond_4
    shl-int/lit8 v15, v15, 0x1

    shr-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 899
    :cond_5
    if-eqz p8, :cond_9

    .line 901
    move v0, v14

    .end local v16    # "a":I
    .local v0, "a":I
    add-int/lit8 v1, v14, -0x1

    aget v17, v13, v1

    const/4 v1, 0x1

    move v7, v0

    move v6, v1

    .line 902
    .end local v0    # "a":I
    .local v6, "r":I
    .local v7, "a":I
    :goto_5
    if-ge v7, v11, :cond_7

    aget v0, v13, v7

    if-ltz v0, :cond_6

    add-int v2, v10, v17

    aget v0, v13, v7

    add-int v3, v10, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompareLast(IIIII)I

    move-result v0

    move v6, v0

    if-lez v0, :cond_7

    .line 904
    :cond_6
    add-int/lit8 v0, v7, -0x1

    aget v1, v13, v7

    aput v1, v13, v0

    .line 903
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 906
    :cond_7
    if-nez v6, :cond_8

    .line 907
    aget v0, v13, v7

    not-int v0, v0

    aput v0, v13, v7

    .line 909
    :cond_8
    add-int/lit8 v0, v7, -0x1

    aput v17, v13, v0

    move/from16 v16, v7

    .line 911
    .end local v6    # "r":I
    .end local v7    # "a":I
    .restart local v16    # "a":I
    :cond_9
    return-void
.end method

.method private static swapElements([II[II)V
    .locals 2
    .param p0, "array1"    # [I
    .param p1, "idx1"    # I
    .param p2, "array2"    # [I
    .param p3, "idx2"    # I

    .line 60
    aget v0, p0, p1

    .line 61
    .local v0, "temp":I
    aget v1, p2, p3

    aput v1, p0, p1

    .line 62
    aput v0, p2, p3

    .line 63
    return-void
.end method

.method private trCopy(IIIIIII)V
    .locals 7
    .param p1, "isa"    # I
    .param p2, "isaN"    # I
    .param p3, "first"    # I
    .param p4, "a"    # I
    .param p5, "b"    # I
    .param p6, "last"    # I
    .param p7, "depth"    # I

    .line 1425
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1430
    .local v0, "SA":[I
    add-int/lit8 v1, p5, -0x1

    .line 1432
    .local v1, "v":I
    move v2, p3

    .local v2, "c":I
    add-int/lit8 v3, p4, -0x1

    .local v3, "d":I
    :goto_0
    if-gt v2, v3, :cond_2

    .line 1433
    aget v4, v0, v2

    sub-int/2addr v4, p7

    move v5, v4

    .local v5, "s":I
    if-gez v4, :cond_0

    .line 1434
    sub-int v4, p2, p1

    add-int/2addr v5, v4

    .line 1436
    :cond_0
    add-int v4, p1, v5

    aget v4, v0, v4

    if-ne v4, v1, :cond_1

    .line 1437
    add-int/lit8 v3, v3, 0x1

    aput v5, v0, v3

    .line 1438
    add-int v4, p1, v5

    aput v3, v0, v4

    .line 1432
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1441
    .end local v5    # "s":I
    :cond_2
    add-int/lit8 v2, p6, -0x1

    add-int/lit8 v4, v3, 0x1

    .local v4, "e":I
    move v3, p5

    :goto_1
    if-ge v4, v3, :cond_5

    .line 1442
    aget v5, v0, v2

    sub-int/2addr v5, p7

    move v6, v5

    .local v6, "s":I
    if-gez v5, :cond_3

    .line 1443
    sub-int v5, p2, p1

    add-int/2addr v6, v5

    .line 1445
    :cond_3
    add-int v5, p1, v6

    aget v5, v0, v5

    if-ne v5, v1, :cond_4

    .line 1446
    add-int/lit8 v3, v3, -0x1

    aput v6, v0, v3

    .line 1447
    add-int v5, p1, v6

    aput v3, v0, v5

    .line 1441
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1450
    .end local v6    # "s":I
    :cond_5
    return-void
.end method

.method private trFixdown(IIIIII)V
    .locals 9
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "sa"    # I
    .param p5, "i"    # I
    .param p6, "size"    # I

    .line 922
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 928
    .local v0, "SA":[I
    add-int v1, p4, p5

    aget v1, v0, v1

    .local v1, "v":I
    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v2

    .local v2, "c":I
    :goto_0
    mul-int/lit8 v3, p5, 0x2

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .local v4, "j":I
    if-ge v3, p6, :cond_2

    .line 929
    add-int/lit8 v3, v4, 0x1

    .line 930
    .local v3, "j":I
    .local v4, "k":I
    add-int v5, p4, v4

    aget v5, v0, v5

    invoke-direct {p0, p1, p2, p3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v5

    .line 931
    .local v5, "d":I
    add-int v6, p4, v3

    aget v6, v0, v6

    invoke-direct {p0, p1, p2, p3, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v6

    move v7, v6

    .local v7, "e":I
    if-ge v5, v6, :cond_0

    .line 932
    move v4, v3

    .line 933
    move v5, v7

    .line 935
    :cond_0
    if-gt v5, v2, :cond_1

    .line 936
    move v4, v3

    goto :goto_1

    .line 928
    :cond_1
    add-int v6, p4, p5

    add-int v8, p4, v4

    aget v8, v0, v8

    aput v8, v0, v6

    move p5, v4

    goto :goto_0

    .line 939
    .end local v3    # "j":I
    .end local v5    # "d":I
    .end local v7    # "e":I
    .local v4, "j":I
    :cond_2
    :goto_1
    add-int v3, p4, p5

    aput v1, v0, v3

    .line 940
    return-void
.end method

.method private trGetC(IIII)I
    .locals 3
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "p"    # I

    .line 916
    add-int v0, p2, p4

    if-ge v0, p3, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    add-int v1, p2, p4

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    sub-int v1, p2, p1

    add-int/2addr v1, p4

    sub-int v2, p3, p1

    rem-int/2addr v1, v2

    add-int/2addr v1, p1

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method private trHeapSort(IIIII)V
    .locals 16
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "sa"    # I
    .param p5, "size"    # I

    .line 943
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    iget-object v12, v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 948
    .local v12, "SA":[I
    move/from16 v0, p5

    .line 949
    .local v0, "m":I
    rem-int/lit8 v1, p5, 0x2

    if-nez v1, :cond_1

    .line 950
    add-int/lit8 v0, v0, -0x1

    .line 951
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v11

    aget v1, v12, v1

    invoke-direct {v7, v8, v9, v10, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v1

    add-int v2, v11, v0

    aget v2, v12, v2

    invoke-direct {v7, v8, v9, v10, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 952
    add-int v1, v11, v0

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v11

    invoke-static {v12, v1, v12, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 956
    :cond_0
    move v13, v0

    goto :goto_0

    .line 949
    :cond_1
    move v13, v0

    .line 956
    .end local v0    # "m":I
    .local v13, "m":I
    :goto_0
    div-int/lit8 v0, v13, 0x2

    add-int/lit8 v0, v0, -0x1

    move v14, v0

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_2

    .line 957
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v14

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trFixdown(IIIIII)V

    .line 956
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 960
    :cond_2
    rem-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_3

    .line 961
    add-int v0, v11, v13

    invoke-static {v12, v11, v12, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 962
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trFixdown(IIIIII)V

    .line 965
    :cond_3
    add-int/lit8 v0, v13, -0x1

    move v14, v0

    :goto_2
    if-lez v14, :cond_4

    .line 966
    aget v15, v12, v11

    .line 967
    .local v15, "t":I
    add-int v0, v11, v14

    aget v0, v12, v0

    aput v0, v12, v11

    .line 968
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trFixdown(IIIIII)V

    .line 969
    add-int v0, v11, v14

    aput v15, v12, v0

    .line 965
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 971
    .end local v15    # "t":I
    :cond_4
    return-void
.end method

.method private trInsertionSort(IIIII)V
    .locals 7
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "first"    # I
    .param p5, "last"    # I

    .line 974
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 979
    .local v0, "SA":[I
    add-int/lit8 v1, p4, 0x1

    .local v1, "a":I
    :goto_0
    if-ge v1, p5, :cond_5

    .line 980
    aget v2, v0, v1

    .local v2, "t":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "b":I
    :cond_0
    invoke-direct {p0, p1, p2, p3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v4

    aget v5, v0, v3

    invoke-direct {p0, p1, p2, p3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    .local v5, "r":I
    if-gez v4, :cond_3

    .line 982
    :cond_1
    add-int/lit8 v4, v3, 0x1

    aget v6, v0, v3

    aput v6, v0, v4

    .line 983
    add-int/lit8 v3, v3, -0x1

    if-gt p4, v3, :cond_2

    aget v4, v0, v3

    if-ltz v4, :cond_1

    .line 984
    :cond_2
    if-ge v3, p4, :cond_0

    .line 988
    :cond_3
    if-nez v5, :cond_4

    .line 989
    aget v4, v0, v3

    not-int v4, v4

    aput v4, v0, v3

    .line 991
    :cond_4
    add-int/lit8 v4, v3, 0x1

    aput v2, v0, v4

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    .end local v2    # "t":I
    .end local v3    # "b":I
    .end local v5    # "r":I
    :cond_5
    return-void
.end method

.method private trIntroSort(IIIIILio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;I)V
    .locals 25
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "first"    # I
    .param p5, "last"    # I
    .param p6, "budget"    # Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;
    .param p7, "size"    # I

    .line 1454
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p3

    move-object/from16 v11, p6

    move/from16 v12, p7

    iget-object v13, v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1456
    .local v13, "SA":[I
    const/16 v0, 0x40

    new-array v14, v0, [Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1460
    .local v14, "stack":[Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    const/4 v0, 0x0

    .line 1464
    .local v0, "x":I
    const/4 v1, 0x0

    .local v1, "ssize":I
    sub-int v2, p5, p4

    invoke-static {v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v2

    move/from16 v15, p2

    move/from16 v7, p4

    move/from16 v6, p5

    move/from16 v16, v0

    move v5, v1

    move v4, v2

    .line 1465
    .end local v0    # "x":I
    .end local v1    # "ssize":I
    .end local p2    # "isaD":I
    .end local p4    # "first":I
    .end local p5    # "last":I
    .local v4, "limit":I
    .local v5, "ssize":I
    .local v6, "last":I
    .local v7, "first":I
    .local v15, "isaD":I
    .local v16, "x":I
    :goto_0
    const/4 v3, -0x3

    const/4 v2, -0x1

    const/4 v1, 0x1

    if-gez v4, :cond_1b

    .line 1466
    const/4 v0, -0x2

    if-ne v4, v2, :cond_e

    .line 1467
    sub-int v2, v6, v7

    invoke-virtual {v11, v12, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->update(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1468
    move/from16 v20, v4

    move v8, v5

    move v10, v6

    move-object/from16 v23, v11

    move v11, v7

    move-object/from16 v7, v23

    goto/16 :goto_9

    .line 1470
    :cond_0
    add-int/lit8 v2, v15, -0x1

    add-int/lit8 v17, v6, -0x1

    move v3, v0

    move-object/from16 v0, p0

    move v8, v1

    move/from16 v1, p1

    move v8, v3

    move/from16 v3, p3

    move/from16 v18, v4

    .end local v4    # "limit":I
    .local v18, "limit":I
    move v4, v7

    move v8, v5

    .end local v5    # "ssize":I
    .local v8, "ssize":I
    move v5, v6

    move v10, v6

    .end local v6    # "last":I
    .local v10, "last":I
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trPartition(IIIIII)Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;

    move-result-object v0

    .line 1471
    .local v0, "result":Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;
    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;->first:I

    .line 1472
    .local v1, "a":I
    iget v2, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;->last:I

    .line 1473
    .local v2, "b":I
    if-lt v7, v1, :cond_4

    if-ge v2, v10, :cond_1

    goto :goto_2

    .line 1523
    :cond_1
    move v3, v7

    .local v3, "c":I
    :goto_1
    if-ge v3, v10, :cond_2

    .line 1524
    aget v4, v13, v3

    add-int/2addr v4, v9

    aput v3, v13, v4

    .line 1523
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1526
    :cond_2
    if-nez v8, :cond_3

    .line 1527
    return-void

    .line 1529
    :cond_3
    add-int/lit8 v5, v8, -0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    aget-object v4, v14, v5

    .line 1530
    .local v4, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v6, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1531
    .end local v15    # "isaD":I
    .local v6, "isaD":I
    iget v7, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1532
    iget v8, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1533
    .end local v10    # "last":I
    .local v8, "last":I
    iget v10, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    move v15, v6

    move v6, v8

    move v4, v10

    .end local v18    # "limit":I
    .local v10, "limit":I
    goto/16 :goto_5

    .line 1474
    .end local v3    # "c":I
    .end local v4    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v5    # "ssize":I
    .end local v6    # "isaD":I
    .local v8, "ssize":I
    .local v10, "last":I
    .restart local v15    # "isaD":I
    .restart local v18    # "limit":I
    :cond_4
    :goto_2
    if-ge v1, v10, :cond_5

    .line 1475
    move v3, v7

    .restart local v3    # "c":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "v":I
    :goto_3
    if-ge v3, v1, :cond_5

    .line 1476
    aget v5, v13, v3

    add-int/2addr v5, v9

    aput v4, v13, v5

    .line 1475
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1479
    .end local v3    # "c":I
    .end local v4    # "v":I
    :cond_5
    if-ge v2, v10, :cond_6

    .line 1480
    move v3, v1

    .restart local v3    # "c":I
    add-int/lit8 v4, v2, -0x1

    .restart local v4    # "v":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 1481
    aget v5, v13, v3

    add-int/2addr v5, v9

    aput v4, v13, v5

    .line 1480
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1485
    .end local v3    # "c":I
    .end local v4    # "v":I
    :cond_6
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v3, v14, v8

    .line 1486
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "ssize":I
    .local v3, "ssize":I
    new-instance v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v6, v15, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v6, v7, v10, v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v4, v14, v5

    .line 1487
    sub-int v4, v1, v7

    sub-int v6, v10, v2

    if-gt v4, v6, :cond_a

    .line 1488
    sub-int v4, v1, v7

    const/4 v5, 0x1

    if-ge v5, v4, :cond_7

    .line 1489
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ssize":I
    .local v4, "ssize":I
    new-instance v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    sub-int v6, v10, v2

    invoke-static {v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v6

    invoke-direct {v5, v15, v2, v10, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v5, v14, v3

    .line 1490
    move v3, v1

    .end local v10    # "last":I
    .local v3, "last":I
    sub-int v5, v1, v7

    invoke-static {v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v5

    move v6, v3

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    .end local v18    # "limit":I
    .local v5, "limit":I
    goto/16 :goto_5

    .line 1491
    .end local v4    # "ssize":I
    .end local v5    # "limit":I
    .local v3, "ssize":I
    .restart local v10    # "last":I
    .restart local v18    # "limit":I
    :cond_7
    sub-int v6, v10, v2

    const/4 v4, 0x1

    if-ge v4, v6, :cond_8

    .line 1492
    move v4, v2

    .end local v7    # "first":I
    .local v4, "first":I
    sub-int v6, v10, v2

    invoke-static {v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v5

    move v7, v4

    move v4, v5

    move v6, v10

    move v5, v3

    .end local v18    # "limit":I
    .restart local v5    # "limit":I
    goto/16 :goto_5

    .line 1494
    .end local v4    # "first":I
    .end local v5    # "limit":I
    .restart local v7    # "first":I
    .restart local v18    # "limit":I
    :cond_8
    if-nez v3, :cond_9

    .line 1495
    return-void

    .line 1497
    :cond_9
    add-int/lit8 v3, v3, -0x1

    aget-object v4, v14, v3

    .line 1498
    .local v4, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v5, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1499
    .end local v15    # "isaD":I
    .local v5, "isaD":I
    iget v6, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1500
    .end local v7    # "first":I
    .local v6, "first":I
    iget v7, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1501
    .end local v10    # "last":I
    .local v7, "last":I
    iget v4, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 1502
    .end local v18    # "limit":I
    .local v4, "limit":I
    move v15, v5

    move v5, v3

    move/from16 v23, v7

    move v7, v6

    move/from16 v6, v23

    goto :goto_5

    .line 1504
    .end local v4    # "limit":I
    .end local v5    # "isaD":I
    .end local v6    # "first":I
    .local v7, "first":I
    .restart local v10    # "last":I
    .restart local v15    # "isaD":I
    .restart local v18    # "limit":I
    :cond_a
    sub-int v6, v10, v2

    const/4 v4, 0x1

    if-ge v4, v6, :cond_b

    .line 1505
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ssize":I
    .local v4, "ssize":I
    new-instance v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    sub-int v6, v1, v7

    invoke-static {v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v6

    invoke-direct {v5, v15, v7, v1, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v5, v14, v3

    .line 1506
    move v3, v2

    .line 1507
    .end local v7    # "first":I
    .local v3, "first":I
    sub-int v6, v10, v2

    invoke-static {v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v5

    move v7, v3

    move v6, v10

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    .end local v18    # "limit":I
    .local v5, "limit":I
    goto :goto_5

    .line 1508
    .end local v4    # "ssize":I
    .end local v5    # "limit":I
    .local v3, "ssize":I
    .restart local v7    # "first":I
    .restart local v18    # "limit":I
    :cond_b
    sub-int v4, v1, v7

    const/4 v5, 0x1

    if-ge v5, v4, :cond_c

    .line 1509
    move v4, v1

    .line 1510
    .end local v10    # "last":I
    .local v4, "last":I
    sub-int v5, v1, v7

    invoke-static {v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v5

    move v6, v4

    move v4, v5

    move v5, v3

    .end local v18    # "limit":I
    .restart local v5    # "limit":I
    goto :goto_5

    .line 1512
    .end local v4    # "last":I
    .end local v5    # "limit":I
    .restart local v10    # "last":I
    .restart local v18    # "limit":I
    :cond_c
    if-nez v3, :cond_d

    .line 1513
    return-void

    .line 1515
    :cond_d
    add-int/lit8 v3, v3, -0x1

    aget-object v4, v14, v3

    .line 1516
    .local v4, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v5, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1517
    .end local v15    # "isaD":I
    .local v5, "isaD":I
    iget v6, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1518
    .end local v7    # "first":I
    .restart local v6    # "first":I
    iget v7, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1519
    .end local v10    # "last":I
    .local v7, "last":I
    iget v4, v4, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 1520
    .end local v18    # "limit":I
    .local v4, "limit":I
    move v15, v5

    move v5, v3

    move/from16 v23, v7

    move v7, v6

    move/from16 v6, v23

    .line 1535
    .end local v0    # "result":Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;
    .end local v3    # "ssize":I
    .local v5, "ssize":I
    .local v6, "last":I
    .local v7, "first":I
    .restart local v15    # "isaD":I
    :goto_5
    move-object/from16 v8, p0

    move/from16 v10, p3

    goto/16 :goto_0

    .end local v1    # "a":I
    .end local v2    # "b":I
    :cond_e
    move/from16 v18, v4

    move v8, v5

    move v10, v6

    .end local v4    # "limit":I
    .end local v5    # "ssize":I
    .end local v6    # "last":I
    .restart local v8    # "ssize":I
    .restart local v10    # "last":I
    .restart local v18    # "limit":I
    move/from16 v6, v18

    const/4 v0, -0x2

    .end local v18    # "limit":I
    .local v6, "limit":I
    if-ne v6, v0, :cond_10

    .line 1536
    add-int/lit8 v8, v8, -0x1

    aget-object v0, v14, v8

    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1537
    .local v5, "a":I
    aget-object v0, v14, v8

    iget v4, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1538
    .local v4, "b":I
    sub-int v17, v15, v9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move v3, v7

    move/from16 v18, v4

    .end local v4    # "b":I
    .local v18, "b":I
    move v4, v5

    move/from16 v19, v5

    .end local v5    # "a":I
    .local v19, "a":I
    move/from16 v5, v18

    move/from16 v20, v6

    .end local v6    # "limit":I
    .local v20, "limit":I
    move v6, v10

    move v11, v7

    .end local v7    # "first":I
    .local v11, "first":I
    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trCopy(IIIIIII)V

    .line 1539
    if-nez v8, :cond_f

    .line 1540
    return-void

    .line 1542
    :cond_f
    add-int/lit8 v5, v8, -0x1

    .end local v8    # "ssize":I
    .local v5, "ssize":I
    aget-object v0, v14, v5

    .line 1543
    .local v0, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v15, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1544
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1545
    .end local v11    # "first":I
    .restart local v7    # "first":I
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1546
    .end local v10    # "last":I
    .local v6, "last":I
    iget v4, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 1547
    .end local v0    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v20    # "limit":I
    .local v4, "limit":I
    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    goto/16 :goto_0

    .line 1548
    .end local v4    # "limit":I
    .end local v5    # "ssize":I
    .end local v18    # "b":I
    .end local v19    # "a":I
    .local v6, "limit":I
    .restart local v8    # "ssize":I
    .restart local v10    # "last":I
    :cond_10
    move/from16 v20, v6

    move v11, v7

    .end local v6    # "limit":I
    .end local v7    # "first":I
    .restart local v11    # "first":I
    .restart local v20    # "limit":I
    aget v0, v13, v11

    if-ltz v0, :cond_13

    .line 1549
    move v0, v11

    .line 1551
    .local v0, "a":I
    :cond_11
    aget v1, v13, v0

    add-int/2addr v1, v9

    aput v0, v13, v1

    .line 1552
    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ge v0, v10, :cond_12

    aget v1, v13, v0

    if-gez v1, :cond_11

    .line 1553
    :cond_12
    move v1, v0

    move v7, v1

    .end local v11    # "first":I
    .local v1, "first":I
    goto :goto_6

    .line 1548
    .end local v0    # "a":I
    .end local v1    # "first":I
    .restart local v11    # "first":I
    :cond_13
    move v7, v11

    .line 1555
    .end local v11    # "first":I
    .restart local v7    # "first":I
    :goto_6
    if-ge v7, v10, :cond_19

    .line 1556
    move v0, v7

    .line 1558
    .restart local v0    # "a":I
    :goto_7
    aget v1, v13, v0

    not-int v1, v1

    aput v1, v13, v0

    .line 1559
    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget v1, v13, v0

    if-ltz v1, :cond_18

    .line 1560
    aget v1, v13, v0

    add-int/2addr v1, v9

    aget v1, v13, v1

    aget v4, v13, v0

    add-int/2addr v4, v15

    aget v4, v13, v4

    if-eq v1, v4, :cond_14

    sub-int v1, v0, v7

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v2

    :cond_14
    move v1, v2

    .line 1561
    .local v1, "next":I
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v10, :cond_15

    .line 1562
    move v2, v7

    .restart local v2    # "b":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "v":I
    :goto_8
    if-ge v2, v0, :cond_15

    .line 1563
    aget v5, v13, v2

    add-int/2addr v5, v9

    aput v4, v13, v5

    .line 1562
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1567
    .end local v2    # "b":I
    .end local v4    # "v":I
    :cond_15
    sub-int v2, v0, v7

    sub-int v6, v10, v0

    if-gt v2, v6, :cond_16

    .line 1568
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v2, v15, v0, v10, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v2, v14, v8

    .line 1569
    add-int/lit8 v15, v15, 0x1

    move v6, v0

    .end local v10    # "last":I
    .local v6, "last":I
    move v4, v1

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    .end local v20    # "limit":I
    .local v4, "limit":I
    goto/16 :goto_0

    .line 1571
    .end local v4    # "limit":I
    .end local v5    # "ssize":I
    .end local v6    # "last":I
    .restart local v8    # "ssize":I
    .restart local v10    # "last":I
    .restart local v20    # "limit":I
    :cond_16
    sub-int v6, v10, v0

    const/4 v4, 0x1

    if-ge v4, v6, :cond_17

    .line 1572
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v3, v15, 0x1

    invoke-direct {v2, v3, v7, v0, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v2, v14, v8

    .line 1573
    move v7, v0

    const/4 v4, -0x3

    move-object/from16 v8, p0

    move-object/from16 v11, p6

    move v6, v10

    move/from16 v10, p3

    .end local v20    # "limit":I
    .restart local v4    # "limit":I
    goto/16 :goto_0

    .line 1575
    .end local v4    # "limit":I
    .end local v5    # "ssize":I
    .restart local v8    # "ssize":I
    .restart local v20    # "limit":I
    :cond_17
    add-int/lit8 v15, v15, 0x1

    move v6, v0

    .end local v10    # "last":I
    .restart local v6    # "last":I
    move v4, v1

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v5, v8

    move-object/from16 v8, p0

    .end local v20    # "limit":I
    .restart local v4    # "limit":I
    goto/16 :goto_0

    .line 1559
    .end local v1    # "next":I
    .end local v4    # "limit":I
    .end local v6    # "last":I
    .restart local v10    # "last":I
    .restart local v20    # "limit":I
    :cond_18
    const/4 v4, 0x1

    goto :goto_7

    .line 1579
    .end local v0    # "a":I
    :cond_19
    if-nez v8, :cond_1a

    .line 1580
    return-void

    .line 1582
    :cond_1a
    add-int/lit8 v5, v8, -0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    aget-object v0, v14, v5

    .line 1583
    .local v0, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v15, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1584
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1585
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1586
    .end local v10    # "last":I
    .restart local v6    # "last":I
    iget v4, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 1589
    .end local v0    # "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    .end local v20    # "limit":I
    .restart local v4    # "limit":I
    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    goto/16 :goto_0

    .line 1592
    :cond_1b
    move/from16 v20, v4

    move v8, v5

    move v10, v6

    move v11, v7

    move v4, v1

    .end local v4    # "limit":I
    .end local v5    # "ssize":I
    .end local v6    # "last":I
    .end local v7    # "first":I
    .restart local v8    # "ssize":I
    .restart local v10    # "last":I
    .restart local v11    # "first":I
    .restart local v20    # "limit":I
    sub-int v6, v10, v11

    const/16 v0, 0x8

    if-gt v6, v0, :cond_1d

    .line 1593
    sub-int v6, v10, v11

    move-object/from16 v7, p6

    invoke-virtual {v7, v12, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->update(II)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1594
    nop

    .line 1795
    :goto_9
    move-object v5, v7

    move v4, v10

    move/from16 v6, v20

    goto/16 :goto_18

    .line 1596
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v15

    move/from16 v3, p3

    move v4, v11

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trInsertionSort(IIIII)V

    .line 1597
    const/4 v4, -0x3

    .line 1598
    .end local v20    # "limit":I
    .restart local v4    # "limit":I
    move v5, v8

    move v6, v10

    move-object/from16 v8, p0

    move/from16 v10, p3

    move/from16 v23, v11

    move-object v11, v7

    move/from16 v7, v23

    goto/16 :goto_0

    .line 1601
    .end local v4    # "limit":I
    .restart local v20    # "limit":I
    :cond_1d
    move-object/from16 v7, p6

    add-int/lit8 v6, v20, -0x1

    .end local v20    # "limit":I
    .local v6, "limit":I
    if-nez v20, :cond_21

    .line 1602
    sub-int v0, v10, v11

    invoke-virtual {v7, v12, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->update(II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1603
    move-object v5, v7

    move v4, v10

    goto/16 :goto_18

    .line 1605
    :cond_1e
    sub-int v5, v10, v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v15

    move/from16 v3, p3

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trHeapSort(IIIII)V

    .line 1606
    add-int/lit8 v0, v10, -0x1

    .local v0, "a":I
    :goto_a
    if-ge v11, v0, :cond_20

    .line 1607
    aget v1, v13, v0

    move/from16 v5, p3

    move v4, v10

    move-object/from16 v10, p0

    .end local v10    # "last":I
    .local v4, "last":I
    invoke-direct {v10, v9, v15, v5, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v1

    .end local v16    # "x":I
    .local v1, "x":I
    add-int/lit8 v2, v0, -0x1

    .line 1608
    .restart local v2    # "b":I
    :goto_b
    if-gt v11, v2, :cond_1f

    aget v3, v13, v2

    invoke-direct {v10, v9, v15, v5, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v3

    if-ne v3, v1, :cond_1f

    .line 1610
    aget v3, v13, v2

    not-int v3, v3

    aput v3, v13, v2

    .line 1609
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1606
    :cond_1f
    move v0, v2

    move/from16 v16, v1

    move v10, v4

    goto :goto_a

    .line 1613
    .end local v1    # "x":I
    .end local v2    # "b":I
    .end local v4    # "last":I
    .restart local v10    # "last":I
    .restart local v16    # "x":I
    :cond_20
    move/from16 v5, p3

    move v4, v10

    move-object/from16 v10, p0

    .end local v10    # "last":I
    .restart local v4    # "last":I
    const/4 v1, -0x3

    .line 1614
    .end local v6    # "limit":I
    .local v1, "limit":I
    move v6, v4

    move v4, v1

    move-object/from16 v23, v10

    move v10, v5

    move v5, v8

    move-object/from16 v8, v23

    move/from16 v24, v11

    move-object v11, v7

    move/from16 v7, v24

    goto/16 :goto_0

    .line 1617
    .end local v0    # "a":I
    .end local v1    # "limit":I
    .end local v4    # "last":I
    .restart local v6    # "limit":I
    .restart local v10    # "last":I
    :cond_21
    move/from16 v5, p3

    move v1, v4

    move v4, v10

    move-object/from16 v10, p0

    .end local v10    # "last":I
    .restart local v4    # "last":I
    move-object/from16 v0, p0

    move v7, v1

    move/from16 v1, p1

    move/from16 v17, v2

    move v2, v15

    move/from16 v3, p3

    move/from16 p2, v4

    .end local v4    # "last":I
    .local p2, "last":I
    move v4, v11

    move v7, v5

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trPivot(IIIII)I

    move-result v0

    .line 1619
    .restart local v0    # "a":I
    invoke-static {v13, v11, v13, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1620
    aget v1, v13, v11

    invoke-direct {v10, v9, v15, v7, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v1

    .line 1622
    .local v1, "v":I
    add-int/lit8 v2, v11, 0x1

    .line 1623
    .restart local v2    # "b":I
    :goto_c
    move/from16 v4, p2

    .end local p2    # "last":I
    .restart local v4    # "last":I
    if-ge v2, v4, :cond_22

    aget v3, v13, v2

    invoke-direct {v10, v9, v15, v7, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v3

    move/from16 v16, v3

    if-ne v3, v1, :cond_22

    .line 1624
    add-int/lit8 v2, v2, 0x1

    move/from16 p2, v4

    goto :goto_c

    .line 1623
    :cond_22
    move/from16 v3, v16

    .line 1626
    .end local v16    # "x":I
    .local v3, "x":I
    move v0, v2

    if-ge v2, v4, :cond_24

    if-ge v3, v1, :cond_24

    .line 1627
    :cond_23
    :goto_d
    const/4 v5, 0x1

    add-int/2addr v2, v5

    if-ge v2, v4, :cond_24

    aget v5, v13, v2

    invoke-direct {v10, v9, v15, v7, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v5

    move v3, v5

    if-gt v5, v1, :cond_24

    .line 1628
    if-ne v3, v1, :cond_23

    .line 1629
    invoke-static {v13, v2, v13, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1630
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1635
    :cond_24
    add-int/lit8 v5, v4, -0x1

    .line 1636
    .local v5, "c":I
    :goto_e
    if-ge v2, v5, :cond_25

    move/from16 p2, v0

    .end local v0    # "a":I
    .local p2, "a":I
    aget v0, v13, v5

    invoke-direct {v10, v9, v15, v7, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v0

    move v3, v0

    if-ne v0, v1, :cond_26

    .line 1637
    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    goto :goto_e

    .line 1636
    .end local p2    # "a":I
    .restart local v0    # "a":I
    :cond_25
    move/from16 p2, v0

    .line 1639
    .end local v0    # "a":I
    .restart local p2    # "a":I
    :cond_26
    move v0, v5

    .local v0, "d":I
    if-ge v2, v5, :cond_2a

    if-le v3, v1, :cond_2a

    .line 1640
    :goto_f
    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_28

    move/from16 v16, v2

    .end local v2    # "b":I
    .local v16, "b":I
    aget v2, v13, v5

    invoke-direct {v10, v9, v15, v7, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v2

    move v3, v2

    if-lt v2, v1, :cond_29

    .line 1641
    if-ne v3, v1, :cond_27

    .line 1642
    invoke-static {v13, v5, v13, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1643
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v16

    goto :goto_f

    .line 1641
    :cond_27
    move/from16 v2, v16

    goto :goto_f

    .line 1640
    .end local v16    # "b":I
    .restart local v2    # "b":I
    :cond_28
    move/from16 v16, v2

    .end local v2    # "b":I
    .restart local v16    # "b":I
    :cond_29
    move v2, v0

    move/from16 v0, p2

    move/from16 v23, v16

    move/from16 v16, v3

    move/from16 v3, v23

    goto :goto_10

    .line 1639
    .end local v16    # "b":I
    .restart local v2    # "b":I
    :cond_2a
    move/from16 v16, v2

    .line 1647
    .end local v2    # "b":I
    .restart local v16    # "b":I
    move v2, v0

    move/from16 v0, p2

    move/from16 v23, v16

    move/from16 v16, v3

    move/from16 v3, v23

    .end local p2    # "a":I
    .local v0, "a":I
    .local v2, "d":I
    .local v3, "b":I
    .local v16, "x":I
    :goto_10
    if-ge v3, v5, :cond_31

    .line 1648
    invoke-static {v13, v3, v13, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1649
    :goto_11
    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_2d

    move/from16 v18, v5

    .end local v5    # "c":I
    .local v18, "c":I
    aget v5, v13, v3

    invoke-direct {v10, v9, v15, v7, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v5

    move/from16 p2, v5

    .end local v16    # "x":I
    .local p2, "x":I
    if-gt v5, v1, :cond_2c

    .line 1650
    move/from16 v5, p2

    .end local p2    # "x":I
    .local v5, "x":I
    if-ne v5, v1, :cond_2b

    .line 1651
    invoke-static {v13, v3, v13, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1652
    add-int/lit8 v0, v0, 0x1

    move/from16 v16, v5

    move/from16 v5, v18

    goto :goto_11

    .line 1650
    :cond_2b
    move/from16 v16, v5

    move/from16 v5, v18

    goto :goto_11

    .line 1649
    .end local v5    # "x":I
    .restart local p2    # "x":I
    :cond_2c
    move/from16 v5, p2

    .end local p2    # "x":I
    .restart local v5    # "x":I
    move/from16 v16, v5

    move/from16 v5, v18

    goto :goto_12

    .end local v18    # "c":I
    .local v5, "c":I
    .restart local v16    # "x":I
    :cond_2d
    move/from16 v18, v5

    .line 1655
    :goto_12
    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_30

    move/from16 v19, v0

    .end local v0    # "a":I
    .restart local v19    # "a":I
    aget v0, v13, v5

    invoke-direct {v10, v9, v15, v7, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v0

    move/from16 p2, v0

    .end local v16    # "x":I
    .restart local p2    # "x":I
    if-lt v0, v1, :cond_2f

    .line 1656
    move/from16 v0, p2

    .end local p2    # "x":I
    .local v0, "x":I
    if-ne v0, v1, :cond_2e

    .line 1657
    invoke-static {v13, v5, v13, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1658
    add-int/lit8 v2, v2, -0x1

    move/from16 v16, v0

    move/from16 v0, v19

    goto :goto_12

    .line 1656
    :cond_2e
    move/from16 v16, v0

    move/from16 v0, v19

    goto :goto_12

    .line 1655
    .end local v0    # "x":I
    .restart local p2    # "x":I
    :cond_2f
    move/from16 v0, p2

    .end local p2    # "x":I
    .restart local v0    # "x":I
    move/from16 v16, v0

    move/from16 v0, v19

    goto :goto_10

    .end local v19    # "a":I
    .local v0, "a":I
    .restart local v16    # "x":I
    :cond_30
    move/from16 v19, v0

    .end local v0    # "a":I
    .restart local v19    # "a":I
    goto :goto_10

    .line 1663
    .end local v19    # "a":I
    .restart local v0    # "a":I
    :cond_31
    move/from16 v18, v5

    .end local v5    # "c":I
    .restart local v18    # "c":I
    if-gt v0, v2, :cond_4b

    .line 1664
    add-int/lit8 v5, v3, -0x1

    .line 1666
    .end local v18    # "c":I
    .restart local v5    # "c":I
    sub-int v7, v0, v11

    move/from16 v18, v7

    .local v18, "s":I
    sub-int v10, v3, v0

    move/from16 v19, v10

    .local v19, "t":I
    if-le v7, v10, :cond_32

    .line 1667
    move/from16 v18, v19

    .line 1669
    :cond_32
    move v7, v11

    .local v7, "e":I
    sub-int v10, v3, v18

    .local v10, "f":I
    :goto_13
    if-lez v18, :cond_33

    .line 1670
    invoke-static {v13, v7, v13, v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1669
    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 1672
    :cond_33
    move/from16 v20, v7

    .end local v7    # "e":I
    .local v20, "e":I
    sub-int v7, v2, v5

    move/from16 v18, v7

    sub-int v21, v4, v2

    move/from16 p2, v10

    const/16 v22, 0x1

    .end local v10    # "f":I
    .local p2, "f":I
    add-int/lit8 v10, v21, -0x1

    move/from16 v19, v10

    if-le v7, v10, :cond_34

    .line 1673
    move/from16 v18, v19

    .line 1675
    :cond_34
    move v7, v3

    .end local v20    # "e":I
    .restart local v7    # "e":I
    sub-int v10, v4, v18

    .end local p2    # "f":I
    .restart local v10    # "f":I
    :goto_14
    if-lez v18, :cond_35

    .line 1676
    invoke-static {v13, v7, v13, v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1675
    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 1679
    :cond_35
    sub-int v20, v3, v0

    add-int v0, v11, v20

    .line 1680
    sub-int v20, v2, v5

    sub-int v3, v4, v20

    .line 1681
    aget v20, v13, v0

    add-int v20, v9, v20

    move/from16 v22, v2

    .end local v2    # "d":I
    .local v22, "d":I
    aget v2, v13, v20

    if-eq v2, v1, :cond_36

    sub-int v2, v3, v0

    invoke-static {v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v2

    goto :goto_15

    :cond_36
    move/from16 v2, v17

    .line 1683
    .local v2, "next":I
    :goto_15
    move v5, v11

    add-int/lit8 v1, v0, -0x1

    :goto_16
    if-ge v5, v0, :cond_37

    .line 1684
    aget v17, v13, v5

    add-int v17, v9, v17

    aput v1, v13, v17

    .line 1683
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1686
    :cond_37
    if-ge v3, v4, :cond_38

    .line 1687
    move v5, v0

    add-int/lit8 v1, v3, -0x1

    :goto_17
    if-ge v5, v3, :cond_38

    .line 1688
    aget v17, v13, v5

    add-int v17, v9, v17

    aput v1, v13, v17

    .line 1687
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 1691
    :cond_38
    move/from16 p2, v1

    .end local v1    # "v":I
    .local p2, "v":I
    sub-int v1, v0, v11

    move/from16 p5, v5

    .end local v5    # "c":I
    .local p5, "c":I
    sub-int v5, v4, v3

    if-gt v1, v5, :cond_42

    .line 1692
    sub-int v1, v4, v3

    sub-int v5, v3, v0

    if-gt v1, v5, :cond_3d

    .line 1693
    sub-int v1, v0, v11

    const/4 v5, 0x1

    if-ge v5, v1, :cond_39

    .line 1694
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .local v5, "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    move/from16 v17, v7

    .end local v7    # "e":I
    .local v17, "e":I
    add-int/lit8 v7, v15, 0x1

    invoke-direct {v1, v7, v0, v3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1695
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "ssize":I
    .local v1, "ssize":I
    new-instance v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v7, v15, v3, v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v7, v14, v5

    .line 1696
    move v4, v0

    move-object/from16 v8, p0

    move/from16 v10, p3

    move v5, v1

    move v7, v11

    move-object/from16 v11, p6

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto/16 :goto_0

    .line 1697
    .end local v1    # "ssize":I
    .end local v17    # "e":I
    .restart local v7    # "e":I
    .restart local v8    # "ssize":I
    :cond_39
    move/from16 v17, v7

    .end local v7    # "e":I
    .restart local v17    # "e":I
    sub-int v1, v4, v3

    const/4 v5, 0x1

    if-ge v5, v1, :cond_3a

    .line 1698
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v7, v15, 0x1

    invoke-direct {v1, v7, v0, v3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1699
    move v7, v3

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    .end local v11    # "first":I
    .local v7, "first":I
    goto/16 :goto_0

    .line 1700
    .end local v5    # "ssize":I
    .end local v7    # "first":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    :cond_3a
    sub-int v1, v3, v0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_3b

    .line 1701
    add-int/lit8 v15, v15, 0x1

    .line 1702
    move v7, v0

    .line 1703
    .end local v11    # "first":I
    .restart local v7    # "first":I
    move v1, v3

    .line 1704
    .end local v4    # "last":I
    .local v1, "last":I
    move v4, v2

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v6, v1

    move v5, v8

    move-object/from16 v8, p0

    .end local v6    # "limit":I
    .local v4, "limit":I
    goto/16 :goto_0

    .line 1706
    .end local v1    # "last":I
    .end local v7    # "first":I
    .local v4, "last":I
    .restart local v6    # "limit":I
    .restart local v11    # "first":I
    :cond_3b
    if-nez v8, :cond_3c

    .line 1707
    return-void

    .line 1709
    :cond_3c
    add-int/lit8 v5, v8, -0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    aget-object v1, v14, v5

    .line 1710
    .local v1, "entry":Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    iget v15, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 1711
    iget v7, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1712
    .end local v11    # "first":I
    .restart local v7    # "first":I
    iget v4, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1713
    iget v1, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 1714
    .end local v6    # "limit":I
    .local v1, "limit":I
    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v6, v4

    move v4, v1

    goto/16 :goto_0

    .line 1715
    .end local v1    # "limit":I
    .end local v5    # "ssize":I
    .end local v17    # "e":I
    .restart local v6    # "limit":I
    .local v7, "e":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    :cond_3d
    move/from16 v17, v7

    .end local v7    # "e":I
    .restart local v17    # "e":I
    sub-int v1, v0, v11

    sub-int v5, v3, v0

    if-gt v1, v5, :cond_40

    .line 1716
    sub-int v1, v0, v11

    const/4 v5, 0x1

    if-ge v5, v1, :cond_3e

    .line 1717
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v3, v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1718
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "ssize":I
    .local v1, "ssize":I
    new-instance v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v8, v15, 0x1

    invoke-direct {v7, v8, v0, v3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v7, v14, v5

    .line 1719
    move v4, v0

    move-object/from16 v8, p0

    move/from16 v10, p3

    move v5, v1

    move v7, v11

    move-object/from16 v11, p6

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto/16 :goto_0

    .line 1720
    .end local v1    # "ssize":I
    .restart local v8    # "ssize":I
    :cond_3e
    sub-int v1, v3, v0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_3f

    .line 1721
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v3, v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1722
    add-int/lit8 v15, v15, 0x1

    .line 1723
    move v7, v0

    .line 1724
    .end local v11    # "first":I
    .local v7, "first":I
    move v1, v3

    .line 1725
    .end local v4    # "last":I
    .local v1, "last":I
    move v4, v2

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v6, v1

    .end local v6    # "limit":I
    .local v4, "limit":I
    goto/16 :goto_0

    .line 1727
    .end local v1    # "last":I
    .end local v5    # "ssize":I
    .end local v7    # "first":I
    .local v4, "last":I
    .restart local v6    # "limit":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    :cond_3f
    move v7, v3

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v5, v8

    move-object/from16 v8, p0

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    .end local v11    # "first":I
    .restart local v7    # "first":I
    goto/16 :goto_0

    .line 1730
    .end local v7    # "first":I
    .restart local v11    # "first":I
    :cond_40
    sub-int v1, v3, v0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_41

    .line 1731
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v3, v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1732
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "ssize":I
    .local v1, "ssize":I
    new-instance v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v7, v15, v11, v0, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v7, v14, v5

    .line 1733
    add-int/lit8 v15, v15, 0x1

    .line 1734
    move v7, v0

    .line 1735
    .end local v11    # "first":I
    .restart local v7    # "first":I
    move v4, v3

    .line 1736
    move v5, v2

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v6, v4

    move v4, v5

    move v5, v1

    .end local v6    # "limit":I
    .local v5, "limit":I
    goto/16 :goto_0

    .line 1738
    .end local v1    # "ssize":I
    .end local v5    # "limit":I
    .end local v7    # "first":I
    .restart local v6    # "limit":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    :cond_41
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .local v5, "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v3, v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1739
    move v1, v0

    move-object/from16 v8, p0

    move/from16 v10, p3

    move v4, v6

    move v7, v11

    move-object/from16 v11, p6

    move v6, v1

    .end local v4    # "last":I
    .local v1, "last":I
    goto/16 :goto_0

    .line 1743
    .end local v1    # "last":I
    .end local v5    # "ssize":I
    .end local v17    # "e":I
    .restart local v4    # "last":I
    .local v7, "e":I
    .restart local v8    # "ssize":I
    :cond_42
    move/from16 v17, v7

    .end local v7    # "e":I
    .restart local v17    # "e":I
    sub-int v1, v0, v11

    sub-int v5, v3, v0

    if-gt v1, v5, :cond_46

    .line 1744
    sub-int v1, v4, v3

    const/4 v5, 0x1

    if-ge v5, v1, :cond_43

    .line 1745
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v7, v15, 0x1

    invoke-direct {v1, v7, v0, v3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1746
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "ssize":I
    .local v1, "ssize":I
    new-instance v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v7, v15, v11, v0, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v7, v14, v5

    .line 1747
    move v7, v3

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v5, v1

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    .end local v11    # "first":I
    .local v7, "first":I
    goto/16 :goto_0

    .line 1748
    .end local v1    # "ssize":I
    .end local v7    # "first":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    :cond_43
    sub-int v1, v0, v11

    const/4 v5, 0x1

    if-ge v5, v1, :cond_44

    .line 1749
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v7, v15, 0x1

    invoke-direct {v1, v7, v0, v3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1750
    move v1, v0

    move-object/from16 v8, p0

    move/from16 v10, p3

    move v4, v6

    move v7, v11

    move-object/from16 v11, p6

    move v6, v1

    .end local v4    # "last":I
    .local v1, "last":I
    goto/16 :goto_0

    .line 1751
    .end local v1    # "last":I
    .end local v5    # "ssize":I
    .restart local v4    # "last":I
    .restart local v8    # "ssize":I
    :cond_44
    sub-int v1, v3, v0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_45

    .line 1752
    add-int/lit8 v15, v15, 0x1

    .line 1753
    move v7, v0

    .line 1754
    .end local v11    # "first":I
    .restart local v7    # "first":I
    move v1, v3

    .line 1755
    .end local v4    # "last":I
    .restart local v1    # "last":I
    move v4, v2

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v6, v1

    move v5, v8

    move-object/from16 v8, p0

    .end local v6    # "limit":I
    .local v4, "limit":I
    goto/16 :goto_0

    .line 1757
    .end local v1    # "last":I
    .end local v7    # "first":I
    .local v4, "last":I
    .restart local v6    # "limit":I
    .restart local v11    # "first":I
    :cond_45
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v11, v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    move-object/from16 v8, p0

    move/from16 v10, p3

    move v7, v11

    move-object/from16 v11, p6

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto/16 :goto_0

    .line 1759
    .end local v5    # "ssize":I
    .restart local v8    # "ssize":I
    :cond_46
    sub-int v1, v4, v3

    sub-int v5, v3, v0

    if-gt v1, v5, :cond_49

    .line 1760
    sub-int v1, v4, v3

    const/4 v5, 0x1

    if-ge v5, v1, :cond_47

    .line 1761
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v11, v0, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1762
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "ssize":I
    .local v1, "ssize":I
    new-instance v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    add-int/lit8 v8, v15, 0x1

    invoke-direct {v7, v8, v0, v3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v7, v14, v5

    .line 1763
    move v7, v3

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v5, v1

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    .end local v11    # "first":I
    .restart local v7    # "first":I
    goto/16 :goto_0

    .line 1764
    .end local v1    # "ssize":I
    .end local v7    # "first":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    :cond_47
    sub-int v1, v3, v0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_48

    .line 1765
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v11, v0, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1766
    add-int/lit8 v15, v15, 0x1

    .line 1767
    move v7, v0

    .line 1768
    .end local v11    # "first":I
    .restart local v7    # "first":I
    move v1, v3

    .line 1769
    .end local v4    # "last":I
    .local v1, "last":I
    move v4, v2

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v6, v1

    .end local v6    # "limit":I
    .local v4, "limit":I
    goto/16 :goto_0

    .line 1771
    .end local v1    # "last":I
    .end local v5    # "ssize":I
    .end local v7    # "first":I
    .local v4, "last":I
    .restart local v6    # "limit":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    :cond_48
    move v1, v0

    move/from16 v10, p3

    move v4, v6

    move v5, v8

    move v7, v11

    move-object/from16 v8, p0

    move-object/from16 v11, p6

    move v6, v1

    .end local v4    # "last":I
    .restart local v1    # "last":I
    goto/16 :goto_0

    .line 1774
    .end local v1    # "last":I
    .restart local v4    # "last":I
    :cond_49
    sub-int v1, v3, v0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_4a

    .line 1775
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .restart local v5    # "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v11, v0, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1776
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "ssize":I
    .local v1, "ssize":I
    new-instance v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v7, v15, v3, v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v7, v14, v5

    .line 1777
    add-int/lit8 v15, v15, 0x1

    .line 1778
    move v7, v0

    .line 1779
    .end local v11    # "first":I
    .restart local v7    # "first":I
    move v4, v3

    .line 1780
    move v5, v2

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move v6, v4

    move v4, v5

    move v5, v1

    .end local v6    # "limit":I
    .local v5, "limit":I
    goto/16 :goto_0

    .line 1782
    .end local v1    # "ssize":I
    .end local v5    # "limit":I
    .end local v7    # "first":I
    .restart local v6    # "limit":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    :cond_4a
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ssize":I
    .local v5, "ssize":I
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    invoke-direct {v1, v15, v11, v0, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    aput-object v1, v14, v8

    .line 1783
    move v7, v3

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    .end local v11    # "first":I
    .restart local v7    # "first":I
    goto/16 :goto_0

    .line 1788
    .end local v5    # "ssize":I
    .end local v7    # "first":I
    .end local v10    # "f":I
    .end local v17    # "e":I
    .end local v19    # "t":I
    .end local v22    # "d":I
    .end local p2    # "v":I
    .end local p5    # "c":I
    .local v1, "v":I
    .local v2, "d":I
    .restart local v8    # "ssize":I
    .restart local v11    # "first":I
    .local v18, "c":I
    :cond_4b
    move/from16 v22, v2

    .end local v2    # "d":I
    .restart local v22    # "d":I
    sub-int v2, v4, v11

    move-object/from16 v5, p6

    invoke-virtual {v5, v12, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->update(II)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1789
    nop

    .line 1795
    .end local v0    # "a":I
    .end local v1    # "v":I
    .end local v3    # "b":I
    .end local v18    # "c":I
    .end local v22    # "d":I
    :goto_18
    const/4 v0, 0x0

    .local v0, "s":I
    :goto_19
    if-ge v0, v8, :cond_4d

    .line 1796
    aget-object v1, v14, v0

    iget v1, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4c

    .line 1797
    aget-object v1, v14, v0

    iget v1, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    aget-object v3, v14, v0

    iget v3, v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    move-object/from16 v7, p0

    invoke-direct {v7, v9, v1, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsUpdateGroup(III)V

    goto :goto_1a

    .line 1796
    :cond_4c
    move-object/from16 v7, p0

    .line 1795
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1800
    :cond_4d
    move-object/from16 v7, p0

    return-void

    .line 1791
    .local v0, "a":I
    .restart local v1    # "v":I
    .restart local v3    # "b":I
    .restart local v18    # "c":I
    .restart local v22    # "d":I
    :cond_4e
    move-object/from16 v7, p0

    add-int/lit8 v2, v6, 0x1

    .end local v6    # "limit":I
    .local v2, "limit":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, p3

    move v6, v4

    move v4, v2

    move/from16 v23, v11

    move-object v11, v5

    move v5, v8

    move-object v8, v7

    move/from16 v7, v23

    goto/16 :goto_0
.end method

.method private static trLog(I)I
    .locals 2
    .param p0, "n"    # I

    .line 996
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x18

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0x10f

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const v0, 0xff00

    and-int/2addr v0, p0

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_2
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method private trMedian3(IIIIII)I
    .locals 6
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "v1"    # I
    .param p5, "v2"    # I
    .param p6, "v3"    # I

    .line 1002
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1004
    .local v0, "SA":[I
    aget v1, v0, p4

    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v1

    .line 1005
    .local v1, "SA_v1":I
    aget v2, v0, p5

    invoke-direct {p0, p1, p2, p3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v2

    .line 1006
    .local v2, "SA_v2":I
    aget v3, v0, p6

    invoke-direct {p0, p1, p2, p3, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v3

    .line 1008
    .local v3, "SA_v3":I
    if-le v1, v2, :cond_0

    .line 1009
    move v4, p4

    .line 1010
    .local v4, "temp":I
    move p4, p5

    .line 1011
    move p5, v4

    .line 1012
    move v5, v1

    .line 1013
    .local v5, "SA_vtemp":I
    move v1, v2

    .line 1014
    move v2, v5

    .line 1016
    .end local v4    # "temp":I
    .end local v5    # "SA_vtemp":I
    :cond_0
    if-le v2, v3, :cond_2

    .line 1017
    if-le v1, v3, :cond_1

    .line 1018
    return p4

    .line 1020
    :cond_1
    return p6

    .line 1023
    :cond_2
    return p5
.end method

.method private trMedian5(IIIIIIII)I
    .locals 17
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "v1"    # I
    .param p5, "v2"    # I
    .param p6, "v3"    # I
    .param p7, "v4"    # I
    .param p8, "v5"    # I

    .line 1027
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1029
    .local v4, "SA":[I
    aget v5, v4, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v5

    .line 1030
    .local v5, "SA_v1":I
    aget v6, v4, p5

    invoke-direct {v0, v1, v2, v3, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v6

    .line 1031
    .local v6, "SA_v2":I
    aget v7, v4, p6

    invoke-direct {v0, v1, v2, v3, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v7

    .line 1032
    .local v7, "SA_v3":I
    aget v8, v4, p7

    invoke-direct {v0, v1, v2, v3, v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v8

    .line 1033
    .local v8, "SA_v4":I
    aget v9, v4, p8

    invoke-direct {v0, v1, v2, v3, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v9

    .line 1037
    .local v9, "SA_v5":I
    if-le v6, v7, :cond_0

    .line 1038
    move/from16 v10, p5

    .line 1039
    .local v10, "temp":I
    move/from16 v11, p6

    .line 1040
    .end local p5    # "v2":I
    .local v11, "v2":I
    move v12, v10

    .line 1041
    .end local p6    # "v3":I
    .local v12, "v3":I
    move v13, v6

    .line 1042
    .local v13, "SA_vtemp":I
    move v6, v7

    .line 1043
    move v7, v13

    goto :goto_0

    .line 1037
    .end local v10    # "temp":I
    .end local v11    # "v2":I
    .end local v12    # "v3":I
    .end local v13    # "SA_vtemp":I
    .restart local p5    # "v2":I
    .restart local p6    # "v3":I
    :cond_0
    move/from16 v11, p5

    move/from16 v12, p6

    .line 1045
    .end local p5    # "v2":I
    .end local p6    # "v3":I
    .restart local v11    # "v2":I
    .restart local v12    # "v3":I
    :goto_0
    if-le v8, v9, :cond_1

    .line 1046
    move/from16 v10, p7

    .line 1047
    .restart local v10    # "temp":I
    move/from16 v13, p8

    .line 1048
    .end local p7    # "v4":I
    .local v13, "v4":I
    move v14, v10

    .line 1049
    .end local p8    # "v5":I
    .local v14, "v5":I
    move v15, v8

    .line 1050
    .local v15, "SA_vtemp":I
    move v8, v9

    .line 1051
    move v9, v15

    goto :goto_1

    .line 1045
    .end local v10    # "temp":I
    .end local v13    # "v4":I
    .end local v14    # "v5":I
    .end local v15    # "SA_vtemp":I
    .restart local p7    # "v4":I
    .restart local p8    # "v5":I
    :cond_1
    move/from16 v13, p7

    move/from16 v14, p8

    .line 1053
    .end local p7    # "v4":I
    .end local p8    # "v5":I
    .restart local v13    # "v4":I
    .restart local v14    # "v5":I
    :goto_1
    if-le v6, v8, :cond_2

    .line 1054
    move v10, v11

    .line 1055
    .restart local v10    # "temp":I
    move v13, v10

    .line 1056
    move v15, v6

    .line 1057
    .restart local v15    # "SA_vtemp":I
    move v8, v15

    .line 1058
    move v10, v12

    .line 1059
    move v12, v14

    .line 1060
    move v14, v10

    .line 1061
    move v15, v7

    .line 1062
    move v7, v9

    .line 1063
    move v9, v15

    .line 1065
    .end local v10    # "temp":I
    .end local v15    # "SA_vtemp":I
    :cond_2
    if-le v5, v7, :cond_3

    .line 1066
    move/from16 v10, p4

    .line 1067
    .restart local v10    # "temp":I
    move v15, v12

    .line 1068
    .end local p4    # "v1":I
    .local v15, "v1":I
    move v12, v10

    .line 1069
    move/from16 v16, v5

    .line 1070
    .local v16, "SA_vtemp":I
    move v5, v7

    .line 1071
    move/from16 v7, v16

    goto :goto_2

    .line 1065
    .end local v10    # "temp":I
    .end local v15    # "v1":I
    .end local v16    # "SA_vtemp":I
    .restart local p4    # "v1":I
    :cond_3
    move/from16 v15, p4

    .line 1073
    .end local p4    # "v1":I
    .restart local v15    # "v1":I
    :goto_2
    if-le v5, v8, :cond_4

    .line 1074
    move v10, v15

    .line 1075
    .restart local v10    # "temp":I
    move v13, v10

    .line 1076
    move/from16 v16, v5

    .line 1077
    .restart local v16    # "SA_vtemp":I
    move/from16 v8, v16

    .line 1078
    move v12, v14

    .line 1079
    move v7, v9

    .line 1081
    .end local v10    # "temp":I
    .end local v16    # "SA_vtemp":I
    :cond_4
    if-le v7, v8, :cond_5

    .line 1082
    return v13

    .line 1084
    :cond_5
    return v12
.end method

.method private trPartition(IIIIII)Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;
    .locals 17
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "first"    # I
    .param p5, "last"    # I
    .param p6, "v"    # I

    .line 1356
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    iget-object v6, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1360
    .local v6, "SA":[I
    const/4 v7, 0x0

    .line 1362
    .local v7, "x":I
    move/from16 v8, p4

    .line 1363
    .local v8, "b":I
    :goto_0
    if-ge v8, v4, :cond_0

    aget v9, v6, v8

    invoke-direct {v0, v1, v2, v3, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v9

    move v7, v9

    if-ne v9, v5, :cond_0

    .line 1364
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1366
    :cond_0
    move v9, v8

    .local v9, "a":I
    if-ge v8, v4, :cond_2

    if-ge v7, v5, :cond_2

    .line 1367
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v4, :cond_2

    aget v10, v6, v8

    invoke-direct {v0, v1, v2, v3, v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v10

    move v7, v10

    if-gt v10, v5, :cond_2

    .line 1368
    if-ne v7, v5, :cond_1

    .line 1369
    invoke-static {v6, v8, v6, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1370
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1375
    :cond_2
    add-int/lit8 v10, v4, -0x1

    .line 1376
    .local v10, "c":I
    :goto_2
    if-ge v8, v10, :cond_3

    aget v11, v6, v10

    invoke-direct {v0, v1, v2, v3, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v11

    move v7, v11

    if-ne v11, v5, :cond_3

    .line 1377
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1379
    :cond_3
    move v11, v10

    .local v11, "d":I
    if-ge v8, v10, :cond_5

    if-le v7, v5, :cond_5

    .line 1380
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_5

    aget v12, v6, v10

    invoke-direct {v0, v1, v2, v3, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v12

    move v7, v12

    if-lt v12, v5, :cond_5

    .line 1381
    if-ne v7, v5, :cond_4

    .line 1382
    invoke-static {v6, v10, v6, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1383
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 1387
    :cond_5
    if-ge v8, v10, :cond_8

    .line 1388
    invoke-static {v6, v8, v6, v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1389
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v10, :cond_7

    aget v12, v6, v8

    invoke-direct {v0, v1, v2, v3, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v12

    move v7, v12

    if-gt v12, v5, :cond_7

    .line 1390
    if-ne v7, v5, :cond_6

    .line 1391
    invoke-static {v6, v8, v6, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1392
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1395
    :cond_7
    :goto_5
    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_5

    aget v12, v6, v10

    invoke-direct {v0, v1, v2, v3, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    move-result v12

    move v7, v12

    if-lt v12, v5, :cond_5

    .line 1396
    if-ne v7, v5, :cond_7

    .line 1397
    invoke-static {v6, v10, v6, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1398
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 1403
    :cond_8
    if-gt v9, v11, :cond_d

    .line 1404
    add-int/lit8 v10, v8, -0x1

    .line 1405
    sub-int v12, v9, p4

    move v13, v12

    .local v13, "s":I
    sub-int v14, v8, v9

    move v15, v14

    .local v15, "t":I
    if-le v12, v14, :cond_9

    .line 1406
    move v13, v15

    .line 1408
    :cond_9
    move/from16 v12, p4

    .local v12, "e":I
    sub-int v14, v8, v13

    .local v14, "f":I
    :goto_6
    if-lez v13, :cond_a

    .line 1409
    invoke-static {v6, v12, v6, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1408
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1411
    :cond_a
    sub-int v0, v11, v10

    move v13, v0

    sub-int v16, v4, v11

    add-int/lit8 v1, v16, -0x1

    move v15, v1

    if-le v0, v1, :cond_b

    .line 1412
    move v13, v15

    .line 1414
    :cond_b
    move v0, v8

    .end local v12    # "e":I
    .local v0, "e":I
    sub-int v1, v4, v13

    .end local v14    # "f":I
    .local v1, "f":I
    :goto_7
    if-lez v13, :cond_c

    .line 1415
    invoke-static {v6, v0, v6, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 1414
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1417
    :cond_c
    sub-int v12, v8, v9

    add-int v12, p4, v12

    .line 1418
    .end local p4    # "first":I
    .local v12, "first":I
    sub-int v14, v11, v10

    sub-int/2addr v4, v14

    .end local p5    # "last":I
    .local v4, "last":I
    goto :goto_8

    .line 1403
    .end local v0    # "e":I
    .end local v1    # "f":I
    .end local v4    # "last":I
    .end local v12    # "first":I
    .end local v13    # "s":I
    .end local v15    # "t":I
    .restart local p4    # "first":I
    .restart local p5    # "last":I
    :cond_d
    move/from16 v12, p4

    .line 1420
    .end local p4    # "first":I
    .end local p5    # "last":I
    .restart local v4    # "last":I
    .restart local v12    # "first":I
    :goto_8
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;

    invoke-direct {v0, v12, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;-><init>(II)V

    return-object v0
.end method

.method private trPivot(IIIII)I
    .locals 23
    .param p1, "isa"    # I
    .param p2, "isaD"    # I
    .param p3, "isaN"    # I
    .param p4, "first"    # I
    .param p5, "last"    # I

    .line 1091
    sub-int v7, p5, p4

    .line 1092
    .local v7, "t":I
    div-int/lit8 v0, v7, 0x2

    add-int v15, p4, v0

    .line 1094
    .local v15, "middle":I
    const/16 v0, 0x200

    if-gt v7, v0, :cond_1

    .line 1095
    const/16 v0, 0x20

    if-gt v7, v0, :cond_0

    .line 1096
    add-int/lit8 v6, p5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    move-result v0

    return v0

    .line 1098
    :cond_0
    shr-int/lit8 v9, v7, 0x2

    .line 1099
    .end local v7    # "t":I
    .local v9, "t":I
    add-int v5, p4, v9

    add-int/lit8 v0, p5, -0x1

    sub-int v7, v0, v9

    add-int/lit8 v8, p5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v6, v15

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian5(IIIIIIII)I

    move-result v0

    return v0

    .line 1106
    .end local v9    # "t":I
    .restart local v7    # "t":I
    :cond_1
    shr-int/lit8 v7, v7, 0x3

    .line 1107
    add-int v5, p4, v7

    shl-int/lit8 v0, v7, 0x1

    add-int v6, p4, v0

    .line 1109
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    move-result v0

    sub-int v12, v15, v7

    add-int v14, v15, v7

    .line 1110
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move v13, v15

    invoke-direct/range {v8 .. v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    move-result v13

    add-int/lit8 v1, p5, -0x1

    shl-int/lit8 v2, v7, 0x1

    sub-int v20, v1, v2

    add-int/lit8 v1, p5, -0x1

    sub-int v21, v1, v7

    add-int/lit8 v22, p5, -0x1

    .line 1111
    move-object/from16 v16, p0

    move/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p3

    invoke-direct/range {v16 .. v22}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    move-result v14

    .line 1107
    move v12, v0

    invoke-direct/range {v8 .. v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    move-result v0

    return v0
.end method

.method private trSort(III)V
    .locals 17
    .param p1, "isa"    # I
    .param p2, "n"    # I
    .param p3, "depth"    # I

    .line 1824
    move/from16 v8, p2

    move-object/from16 v9, p0

    iget-object v10, v9, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 1826
    .local v10, "SA":[I
    const/4 v0, 0x0

    .line 1829
    .local v0, "first":I
    neg-int v1, v8

    const/4 v11, 0x0

    aget v2, v10, v11

    if-ge v1, v2, :cond_4

    .line 1830
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;

    invoke-static/range {p2 .. p2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    const/4 v12, 0x1

    add-int/2addr v2, v12

    invoke-direct {v1, v8, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;-><init>(II)V

    move-object v13, v1

    move v14, v0

    .line 1832
    .end local v0    # "first":I
    .local v13, "budget":Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;
    .local v14, "first":I
    :cond_0
    aget v0, v10, v14

    move v15, v0

    .local v15, "t":I
    if-gez v0, :cond_1

    .line 1833
    sub-int/2addr v14, v15

    goto :goto_0

    .line 1835
    :cond_1
    add-int v0, p1, v15

    aget v0, v10, v0

    add-int/lit8 v16, v0, 0x1

    .line 1836
    .local v16, "last":I
    sub-int v0, v16, v14

    if-ge v12, v0, :cond_3

    .line 1837
    add-int v2, p1, p3

    add-int v3, p1, v8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v4, v14

    move/from16 v5, v16

    move-object v6, v13

    move/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trIntroSort(IIIIILio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;I)V

    .line 1838
    iget v0, v13, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->chance:I

    if-nez v0, :cond_3

    .line 1840
    if-lez v14, :cond_2

    .line 1841
    neg-int v0, v14

    aput v0, v10, v11

    .line 1843
    :cond_2
    invoke-direct/range {p0 .. p3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsSort(III)V

    .line 1844
    move v0, v14

    goto :goto_1

    .line 1847
    :cond_3
    move/from16 v0, v16

    move v14, v0

    .line 1849
    .end local v16    # "last":I
    :goto_0
    if-lt v14, v8, :cond_0

    move v0, v14

    .line 1851
    .end local v13    # "budget":Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;
    .end local v14    # "first":I
    .end local v15    # "t":I
    .restart local v0    # "first":I
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public bwt()I
    .locals 7

    .line 2096
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2097
    .local v0, "SA":[I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 2098
    .local v1, "T":[B
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->n:I

    .line 2100
    .local v2, "n":I
    const/16 v3, 0x100

    new-array v3, v3, [I

    .line 2101
    .local v3, "bucketA":[I
    const/high16 v4, 0x10000

    new-array v4, v4, [I

    .line 2103
    .local v4, "bucketB":[I
    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 2104
    return v5

    .line 2106
    :cond_0
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 2107
    aget-byte v6, v1, v5

    aput v6, v0, v5

    .line 2108
    return v5

    .line 2111
    :cond_1
    invoke-direct {p0, v3, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->sortTypeBstar([I[I)I

    move-result v6

    .line 2112
    .local v6, "m":I
    if-lez v6, :cond_2

    .line 2113
    invoke-direct {p0, v3, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->constructBWT([I[I)I

    move-result v5

    return v5

    .line 2115
    :cond_2
    return v5
.end method
