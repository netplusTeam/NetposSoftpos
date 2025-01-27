.class final Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;
.super Ljava/lang/Object;
.source "Bzip2HuffmanAllocator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allocateHuffmanCodeLengths([II)V
    .locals 3
    .param p0, "array"    # [I
    .param p1, "maximumLength"    # I

    .line 159
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-static {p0}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->setExtendedParentPointers([I)V

    .line 172
    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->findNodesToRelocate([II)I

    move-result v0

    .line 175
    .local v0, "nodesToRelocate":I
    aget v1, p0, v1

    array-length v2, p0

    rem-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    .line 176
    invoke-static {p0}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->allocateNodeLengths([I)V

    goto :goto_0

    .line 161
    .end local v0    # "nodesToRelocate":I
    :pswitch_0
    aput v2, p0, v2

    .line 164
    :pswitch_1
    aput v2, p0, v1

    .line 165
    return-void

    .line 178
    .restart local v0    # "nodesToRelocate":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    sub-int v1, p1, v1

    .line 179
    .local v1, "insertDepth":I
    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->allocateNodeLengthsWithRelocation([III)V

    .line 181
    .end local v1    # "insertDepth":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static allocateNodeLengths([I)V
    .locals 7
    .param p0, "array"    # [I

    .line 101
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    .line 102
    .local v0, "firstNode":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 104
    .local v1, "nextNode":I
    const/4 v2, 0x1

    .local v2, "currentDepth":I
    const/4 v3, 0x2

    .local v3, "availableNodes":I
    :goto_0
    if-lez v3, :cond_1

    .line 105
    move v4, v0

    .line 106
    .local v4, "lastNode":I
    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->first([III)I

    move-result v0

    .line 108
    sub-int v5, v4, v0

    sub-int v5, v3, v5

    .local v5, "i":I
    :goto_1
    if-lez v5, :cond_0

    .line 109
    add-int/lit8 v6, v1, -0x1

    .end local v1    # "nextNode":I
    .local v6, "nextNode":I
    aput v2, p0, v1

    .line 108
    add-int/lit8 v5, v5, -0x1

    move v1, v6

    goto :goto_1

    .line 112
    .end local v5    # "i":I
    .end local v6    # "nextNode":I
    .restart local v1    # "nextNode":I
    :cond_0
    sub-int v5, v4, v0

    shl-int/lit8 v3, v5, 0x1

    .line 104
    .end local v4    # "lastNode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "currentDepth":I
    .end local v3    # "availableNodes":I
    :cond_1
    return-void
.end method

.method private static allocateNodeLengthsWithRelocation([III)V
    .locals 10
    .param p0, "array"    # [I
    .param p1, "nodesToMove"    # I
    .param p2, "insertDepth"    # I

    .line 124
    array-length v0, p0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 125
    .local v0, "firstNode":I
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 126
    .local v2, "nextNode":I
    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 127
    .local v1, "currentDepth":I
    :goto_0
    if-ne p2, v3, :cond_1

    add-int/lit8 v4, p1, -0x2

    goto :goto_1

    :cond_1
    move v4, p1

    .line 129
    .local v4, "nodesLeftToMove":I
    :goto_1
    shl-int/lit8 v5, v1, 0x1

    .local v5, "availableNodes":I
    :goto_2
    if-lez v5, :cond_6

    .line 130
    move v6, v0

    .line 131
    .local v6, "lastNode":I
    if-gt v0, p1, :cond_2

    move v7, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v6, -0x1

    invoke-static {p0, v7, p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->first([III)I

    move-result v7

    :goto_3
    move v0, v7

    .line 133
    const/4 v7, 0x0

    .line 134
    .local v7, "offset":I
    if-lt v1, p2, :cond_3

    .line 135
    sub-int v8, v1, p2

    shl-int v8, v3, v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_4

    .line 136
    :cond_3
    add-int/lit8 v8, p2, -0x1

    if-ne v1, v8, :cond_4

    .line 137
    const/4 v7, 0x1

    .line 138
    aget v8, p0, v0

    if-ne v8, v6, :cond_4

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 143
    :cond_4
    :goto_4
    sub-int v8, v6, v0

    add-int/2addr v8, v7

    sub-int v8, v5, v8

    .local v8, "i":I
    :goto_5
    if-lez v8, :cond_5

    .line 144
    add-int/lit8 v9, v2, -0x1

    .end local v2    # "nextNode":I
    .local v9, "nextNode":I
    aput v1, p0, v2

    .line 143
    add-int/lit8 v8, v8, -0x1

    move v2, v9

    goto :goto_5

    .line 147
    .end local v8    # "i":I
    .end local v9    # "nextNode":I
    .restart local v2    # "nextNode":I
    :cond_5
    sub-int/2addr v4, v7

    .line 148
    sub-int v8, v6, v0

    add-int/2addr v8, v7

    shl-int/lit8 v5, v8, 0x1

    .line 129
    .end local v6    # "lastNode":I
    .end local v7    # "offset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    .end local v5    # "availableNodes":I
    :cond_6
    return-void
.end method

.method private static findNodesToRelocate([II)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "maximumLength"    # I

    .line 89
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    .line 90
    .local v0, "currentNode":I
    const/4 v1, 0x1

    .local v1, "currentDepth":I
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 91
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->first([III)I

    move-result v0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "currentDepth":I
    :cond_0
    return v0
.end method

.method private static first([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "i"    # I
    .param p2, "nodesToMove"    # I

    .line 34
    array-length v0, p0

    .line 35
    .local v0, "length":I
    move v1, p1

    .line 36
    .local v1, "limit":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    .line 38
    .local v2, "k":I
    :goto_0
    if-lt p1, p2, :cond_0

    aget v3, p0, p1

    rem-int/2addr v3, v0

    if-le v3, v1, :cond_0

    .line 39
    move v2, p1

    .line 40
    sub-int v3, v1, p1

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p1, v3

    goto :goto_0

    .line 42
    :cond_0
    add-int/lit8 v3, p2, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 44
    :goto_1
    add-int/lit8 v3, p1, 0x1

    if-le v2, v3, :cond_2

    .line 45
    add-int v3, p1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 46
    .local v3, "temp":I
    aget v4, p0, v3

    rem-int/2addr v4, v0

    if-le v4, v1, :cond_1

    .line 47
    move v2, v3

    goto :goto_2

    .line 49
    :cond_1
    move p1, v3

    .line 51
    .end local v3    # "temp":I
    :goto_2
    goto :goto_1

    .line 52
    :cond_2
    return v2
.end method

.method private static setExtendedParentPointers([I)V
    .locals 8
    .param p0, "array"    # [I

    .line 60
    array-length v0, p0

    .line 61
    .local v0, "length":I
    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget v3, p0, v3

    add-int/2addr v2, v3

    aput v2, p0, v1

    .line 63
    const/4 v1, 0x0

    .local v1, "headNode":I
    const/4 v2, 0x1

    .local v2, "tailNode":I
    const/4 v3, 0x2

    .local v3, "topNode":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_4

    .line 65
    if-ge v3, v0, :cond_1

    aget v4, p0, v1

    aget v5, p0, v3

    if-ge v4, v5, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "topNode":I
    .local v4, "topNode":I
    aget v3, p0, v3

    move v7, v4

    move v4, v3

    move v3, v7

    .local v3, "temp":I
    goto :goto_2

    .line 66
    .end local v4    # "topNode":I
    .local v3, "topNode":I
    :cond_1
    :goto_1
    aget v4, p0, v1

    .line 67
    .local v4, "temp":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "headNode":I
    .local v5, "headNode":I
    aput v2, p0, v1

    move v1, v5

    .line 72
    .end local v5    # "headNode":I
    .restart local v1    # "headNode":I
    :goto_2
    if-ge v3, v0, :cond_3

    if-ge v1, v2, :cond_2

    aget v5, p0, v1

    aget v6, p0, v3

    if-ge v5, v6, :cond_2

    goto :goto_3

    .line 76
    :cond_2
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "topNode":I
    .local v5, "topNode":I
    aget v3, p0, v3

    add-int/2addr v4, v3

    move v3, v5

    goto :goto_4

    .line 73
    .end local v5    # "topNode":I
    .restart local v3    # "topNode":I
    :cond_3
    :goto_3
    aget v5, p0, v1

    add-int/2addr v4, v5

    .line 74
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "headNode":I
    .local v5, "headNode":I
    add-int v6, v2, v0

    aput v6, p0, v1

    move v1, v5

    .line 78
    .end local v5    # "headNode":I
    .restart local v1    # "headNode":I
    :goto_4
    aput v4, p0, v2

    .line 63
    .end local v4    # "temp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "headNode":I
    .end local v2    # "tailNode":I
    .end local v3    # "topNode":I
    :cond_4
    return-void
.end method
