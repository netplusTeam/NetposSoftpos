.class final Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;
.super Ljava/lang/Object;
.source "Bzip2MTFAndRLE2StageEncoder.java"


# instance fields
.field private alphabetSize:I

.field private final bwtBlock:[I

.field private final bwtLength:I

.field private final bwtValuesPresent:[Z

.field private final mtfBlock:[C

.field private mtfLength:I

.field private final mtfSymbolFrequencies:[I


# direct methods
.method constructor <init>([II[Z)V
    .locals 1
    .param p1, "bwtBlock"    # [I
    .param p2, "bwtLength"    # I
    .param p3, "bwtValuesPresent"    # [Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x102

    new-array v0, v0, [I

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfSymbolFrequencies:[I

    .line 69
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->bwtBlock:[I

    .line 70
    iput p2, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->bwtLength:I

    .line 71
    iput-object p3, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->bwtValuesPresent:[Z

    .line 72
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfBlock:[C

    .line 73
    return-void
.end method


# virtual methods
.method encode()V
    .locals 20

    .line 79
    move-object/from16 v0, p0

    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->bwtLength:I

    .line 80
    .local v1, "bwtLength":I
    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->bwtValuesPresent:[Z

    .line 81
    .local v2, "bwtValuesPresent":[Z
    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->bwtBlock:[I

    .line 82
    .local v3, "bwtBlock":[I
    iget-object v4, v0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfBlock:[C

    .line 83
    .local v4, "mtfBlock":[C
    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfSymbolFrequencies:[I

    .line 84
    .local v5, "mtfSymbolFrequencies":[I
    const/16 v6, 0x100

    new-array v6, v6, [B

    .line 85
    .local v6, "huffmanSymbolMap":[B
    new-instance v7, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    invoke-direct {v7}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;-><init>()V

    .line 87
    .local v7, "symbolMTF":Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;
    const/4 v8, 0x0

    .line 88
    .local v8, "totalUniqueValues":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v6

    if-ge v9, v10, :cond_1

    .line 89
    aget-boolean v10, v2, v9

    if-eqz v10, :cond_0

    .line 90
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "totalUniqueValues":I
    .local v10, "totalUniqueValues":I
    int-to-byte v8, v8

    aput-byte v8, v6, v9

    move v8, v10

    .line 88
    .end local v10    # "totalUniqueValues":I
    .restart local v8    # "totalUniqueValues":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 93
    .end local v9    # "i":I
    :cond_1
    add-int/lit8 v9, v8, 0x1

    .line 95
    .local v9, "endOfBlockSymbol":I
    const/4 v10, 0x0

    .line 96
    .local v10, "mtfIndex":I
    const/4 v11, 0x0

    .line 97
    .local v11, "repeatCount":I
    const/4 v12, 0x0

    .line 98
    .local v12, "totalRunAs":I
    const/4 v13, 0x0

    .line 99
    .local v13, "totalRunBs":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v1, :cond_6

    .line 101
    aget v15, v3, v14

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v6, v15

    invoke-virtual {v7, v15}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->valueToFront(B)I

    move-result v15

    .line 103
    .local v15, "mtfPosition":I
    if-nez v15, :cond_2

    .line 104
    add-int/lit8 v11, v11, 0x1

    move/from16 v19, v1

    goto :goto_5

    .line 106
    :cond_2
    if-lez v11, :cond_5

    .line 107
    add-int/lit8 v11, v11, -0x1

    .line 109
    :goto_2
    and-int/lit8 v18, v11, 0x1

    if-nez v18, :cond_3

    .line 110
    add-int/lit8 v18, v10, 0x1

    const/16 v16, 0x0

    .end local v10    # "mtfIndex":I
    .local v18, "mtfIndex":I
    aput-char v16, v4, v10

    .line 111
    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v1

    move/from16 v10, v18

    const/4 v1, 0x1

    goto :goto_3

    .line 113
    .end local v18    # "mtfIndex":I
    .restart local v10    # "mtfIndex":I
    :cond_3
    add-int/lit8 v18, v10, 0x1

    move/from16 v19, v1

    const/4 v1, 0x1

    .end local v1    # "bwtLength":I
    .end local v10    # "mtfIndex":I
    .restart local v18    # "mtfIndex":I
    .local v19, "bwtLength":I
    aput-char v1, v4, v10

    .line 114
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v18

    .line 117
    .end local v18    # "mtfIndex":I
    .restart local v10    # "mtfIndex":I
    :goto_3
    if-gt v11, v1, :cond_4

    .line 118
    nop

    .line 122
    const/4 v11, 0x0

    goto :goto_4

    .line 120
    :cond_4
    add-int/lit8 v17, v11, -0x2

    ushr-int/lit8 v11, v17, 0x1

    move/from16 v1, v19

    goto :goto_2

    .line 106
    .end local v19    # "bwtLength":I
    .restart local v1    # "bwtLength":I
    :cond_5
    move/from16 v19, v1

    .line 124
    .end local v1    # "bwtLength":I
    .restart local v19    # "bwtLength":I
    :goto_4
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "mtfIndex":I
    .local v1, "mtfIndex":I
    move/from16 v16, v1

    .end local v1    # "mtfIndex":I
    .local v16, "mtfIndex":I
    add-int/lit8 v1, v15, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v10

    .line 125
    add-int/lit8 v1, v15, 0x1

    aget v10, v5, v1

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v5, v1

    move/from16 v10, v16

    .line 99
    .end local v15    # "mtfPosition":I
    .end local v16    # "mtfIndex":I
    .restart local v10    # "mtfIndex":I
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v19

    goto :goto_1

    .end local v19    # "bwtLength":I
    .local v1, "bwtLength":I
    :cond_6
    move/from16 v19, v1

    .line 129
    .end local v1    # "bwtLength":I
    .end local v14    # "i":I
    .restart local v19    # "bwtLength":I
    if-lez v11, :cond_9

    .line 130
    add-int/lit8 v11, v11, -0x1

    .line 132
    :goto_6
    and-int/lit8 v1, v11, 0x1

    if-nez v1, :cond_7

    .line 133
    add-int/lit8 v1, v10, 0x1

    const/4 v14, 0x0

    .end local v10    # "mtfIndex":I
    .local v1, "mtfIndex":I
    aput-char v14, v4, v10

    .line 134
    add-int/lit8 v12, v12, 0x1

    move v10, v1

    const/4 v14, 0x1

    goto :goto_7

    .line 136
    .end local v1    # "mtfIndex":I
    .restart local v10    # "mtfIndex":I
    :cond_7
    add-int/lit8 v1, v10, 0x1

    const/4 v14, 0x1

    .end local v10    # "mtfIndex":I
    .restart local v1    # "mtfIndex":I
    aput-char v14, v4, v10

    .line 137
    add-int/lit8 v13, v13, 0x1

    move v10, v1

    .line 140
    .end local v1    # "mtfIndex":I
    .restart local v10    # "mtfIndex":I
    :goto_7
    if-gt v11, v14, :cond_8

    .line 141
    goto :goto_8

    .line 143
    :cond_8
    add-int/lit8 v1, v11, -0x2

    ushr-int/lit8 v11, v1, 0x1

    goto :goto_6

    .line 129
    :cond_9
    const/4 v14, 0x1

    .line 147
    :goto_8
    int-to-char v1, v9

    aput-char v1, v4, v10

    .line 148
    aget v1, v5, v9

    add-int/2addr v1, v14

    aput v1, v5, v9

    .line 149
    const/4 v1, 0x0

    aget v15, v5, v1

    add-int/2addr v15, v12

    aput v15, v5, v1

    .line 150
    aget v1, v5, v14

    add-int/2addr v1, v13

    aput v1, v5, v14

    .line 152
    add-int/lit8 v1, v10, 0x1

    iput v1, v0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfLength:I

    .line 153
    add-int/lit8 v1, v9, 0x1

    iput v1, v0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->alphabetSize:I

    .line 154
    return-void
.end method

.method mtfAlphabetSize()I
    .locals 1

    .line 174
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->alphabetSize:I

    return v0
.end method

.method mtfBlock()[C
    .locals 1

    .line 160
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfBlock:[C

    return-object v0
.end method

.method mtfLength()I
    .locals 1

    .line 167
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfLength:I

    return v0
.end method

.method mtfSymbolFrequencies()[I
    .locals 1

    .line 181
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfSymbolFrequencies:[I

    return-object v0
.end method
