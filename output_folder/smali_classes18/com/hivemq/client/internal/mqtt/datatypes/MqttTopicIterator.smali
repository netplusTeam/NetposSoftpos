.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
.source "MqttTopicIterator.java"


# instance fields
.field private final allEnd:I

.field private end:I

.field private start:I


# direct methods
.method private constructor <init>([BIII)V
    .locals 0
    .param p1, "array"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "allEnd"    # I

    .line 51
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;-><init>([B)V

    .line 52
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    .line 53
    iput p3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    .line 54
    iput p4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    .line 55
    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .locals 4
    .param p0, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 40
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->toBinary()[B

    move-result-object v0

    .line 41
    .local v0, "binary":[B
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getFilterByteStart()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 42
    .local v1, "start":I
    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    .line 43
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->containsMultiLevelWildcard()Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    goto :goto_0

    :cond_0
    array-length v3, v0

    :goto_0
    invoke-direct {v2, v0, v1, v1, v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;-><init>([BIII)V

    .line 42
    return-object v2
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .locals 4
    .param p0, "topic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 35
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->toBinary()[B

    move-result-object v0

    .line 36
    .local v0, "binary":[B
    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    array-length v2, v0

    const/4 v3, -0x1

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;-><init>([BIII)V

    return-object v1
.end method


# virtual methods
.method public fork()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .locals 5

    .line 76
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iget v4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;-><init>([BIII)V

    return-object v0
.end method

.method public forwardIfEqual(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)Z
    .locals 10
    .param p1, "levels"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    .line 100
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getArray()[B

    move-result-object v6

    .line 101
    .local v6, "levelsArray":[B
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getEnd()I

    move-result v7

    .line 102
    .local v7, "levelsEnd":I
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    array-length v1, v6

    add-int/2addr v0, v1

    sub-int v8, v0, v7

    .line 103
    .local v8, "to":I
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    if-gt v8, v0, :cond_1

    if-eq v8, v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    aget-byte v0, v0, v8

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    add-int/lit8 v4, v7, 0x1

    array-length v5, v6

    .line 104
    move v2, v8

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->equals([BII[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iput v8, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput v8, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    .line 106
    return v9

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public forwardIfMatch(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)Z
    .locals 10
    .param p1, "levels"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    .line 148
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    return v1

    .line 151
    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 152
    .local v0, "index":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getEnd()I

    move-result v3

    add-int/2addr v3, v2

    .line 153
    .local v3, "levelsIndex":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getArray()[B

    move-result-object v4

    .line 155
    .local v4, "levelsArray":[B
    :goto_0
    iget v5, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    if-ne v0, v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 156
    .local v5, "isEnd":Z
    :goto_1
    array-length v6, v4

    if-ne v3, v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    .line 157
    .local v6, "isLevelsEnd":Z
    :goto_2
    const/16 v7, 0x2f

    if-eqz v6, :cond_5

    .line 158
    if-nez v5, :cond_4

    iget-object v8, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    aget-byte v8, v8, v0

    if-ne v8, v7, :cond_3

    goto :goto_3

    .line 162
    :cond_3
    return v1

    .line 159
    :cond_4
    :goto_3
    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    .line 160
    return v2

    .line 164
    :cond_5
    if-eqz v5, :cond_6

    .line 165
    return v1

    .line 167
    :cond_6
    aget-byte v8, v4, v3

    .line 168
    .local v8, "lb":B
    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    aget-byte v9, v9, v0

    if-ne v9, v8, :cond_7

    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 171
    :cond_7
    const/16 v9, 0x2b

    if-ne v8, v9, :cond_9

    .line 172
    :goto_4
    iget v9, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    if-ge v0, v9, :cond_8

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    aget-byte v9, v9, v0

    if-eq v9, v7, :cond_8

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 175
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 179
    .end local v5    # "isEnd":Z
    .end local v6    # "isLevelsEnd":Z
    .end local v8    # "lb":B
    :goto_5
    goto :goto_0

    .line 177
    .restart local v5    # "isEnd":Z
    .restart local v6    # "isLevelsEnd":Z
    .restart local v8    # "lb":B
    :cond_9
    return v1
.end method

.method public forwardWhileEqual(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)I
    .locals 10
    .param p1, "levels"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    .line 112
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getEnd()I

    move-result v0

    return v0

    .line 115
    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    .line 116
    .local v0, "branchIndex":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getEnd()I

    move-result v1

    .line 117
    .local v1, "levelsBranchIndex":I
    add-int/lit8 v2, v0, 0x1

    .line 118
    .local v2, "index":I
    add-int/lit8 v3, v1, 0x1

    .line 119
    .local v3, "levelsIndex":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->getArray()[B

    move-result-object v4

    .line 121
    .local v4, "levelsArray":[B
    :goto_0
    iget v5, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    .line 122
    .local v5, "isEnd":Z
    :goto_1
    array-length v8, v4

    if-ne v3, v8, :cond_2

    move v6, v7

    .line 123
    .local v6, "isLevelsEnd":Z
    :cond_2
    const/16 v7, 0x2f

    if-nez v6, :cond_5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 131
    :cond_3
    aget-byte v8, v4, v3

    .line 132
    .local v8, "lb":B
    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    aget-byte v9, v9, v2

    if-ne v9, v8, :cond_8

    .line 133
    if-ne v8, v7, :cond_4

    .line 134
    move v0, v2

    .line 135
    move v1, v3

    .line 137
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 138
    nop

    .end local v5    # "isEnd":Z
    .end local v6    # "isLevelsEnd":Z
    .end local v8    # "lb":B
    add-int/lit8 v3, v3, 0x1

    .line 142
    goto :goto_0

    .line 124
    .restart local v5    # "isEnd":Z
    .restart local v6    # "isLevelsEnd":Z
    :cond_5
    :goto_2
    if-nez v6, :cond_6

    aget-byte v8, v4, v3

    if-ne v8, v7, :cond_8

    :cond_6
    if-nez v5, :cond_7

    iget-object v8, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    aget-byte v8, v8, v2

    if-ne v8, v7, :cond_8

    .line 126
    :cond_7
    move v0, v2

    .line 127
    move v1, v3

    .line 143
    .end local v5    # "isEnd":Z
    .end local v6    # "isLevelsEnd":Z
    :cond_8
    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    .line 144
    return v1
.end method

.method protected getEnd()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    return v0
.end method

.method protected getStart()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    return v0
.end method

.method public hasMultiLevelWildcard()Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    .line 84
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->indexOf([BIB)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    .line 85
    return-object p0

    .line 81
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 5

    .line 90
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->of([BII)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    .line 94
    .local v0, "start":I
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    .line 95
    .local v1, "end":I
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->end:I

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->start:I

    .line 96
    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->array:[B

    iget v4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->allEnd:I

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    sub-int v4, v1, v0

    invoke-direct {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;-><init>([BI)V

    return-object v2
.end method
