.class public Lcom/sleepycat/asm/TypePath;
.super Ljava/lang/Object;
.source "TypePath.java"


# static fields
.field public static final ARRAY_ELEMENT:I = 0x0

.field public static final INNER_TYPE:I = 0x1

.field public static final TYPE_ARGUMENT:I = 0x3

.field public static final WILDCARD_BOUND:I = 0x2


# instance fields
.field b:[B

.field offset:I


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/sleepycat/asm/TypePath;->b:[B

    .line 86
    iput p2, p0, Lcom/sleepycat/asm/TypePath;->offset:I

    .line 87
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sleepycat/asm/TypePath;
    .locals 9
    .param p0, "typePath"    # Ljava/lang/String;

    .line 135
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 139
    .local v0, "n":I
    new-instance v1, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v1, v0}, Lcom/sleepycat/asm/ByteVector;-><init>(I)V

    .line 140
    .local v1, "out":Lcom/sleepycat/asm/ByteVector;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 141
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v0, :cond_7

    .line 142
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 143
    .local v3, "c":C
    const/16 v6, 0x5b

    if-ne v3, v6, :cond_1

    .line 144
    invoke-virtual {v1, v2, v2}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_2

    .line 145
    :cond_1
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_2

    .line 146
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_2

    .line 147
    :cond_2
    const/16 v6, 0x2a

    if-ne v3, v6, :cond_3

    .line 148
    invoke-virtual {v1, v4, v2}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_2

    .line 149
    :cond_3
    const/16 v4, 0x30

    if-lt v3, v4, :cond_6

    const/16 v6, 0x39

    if-gt v3, v6, :cond_6

    .line 150
    add-int/lit8 v7, v3, -0x30

    .line 151
    .local v7, "typeArg":I
    :goto_1
    if-ge v5, v0, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v3, v8

    if-lt v8, v4, :cond_4

    if-gt v3, v6, :cond_4

    .line 152
    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v8, v3

    add-int/lit8 v7, v8, -0x30

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 155
    :cond_4
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_5

    .line 156
    add-int/lit8 v5, v5, 0x1

    .line 158
    :cond_5
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v7}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    move v3, v5

    goto :goto_3

    .line 160
    .end local v3    # "c":C
    .end local v7    # "typeArg":I
    :cond_6
    :goto_2
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    :goto_3
    goto :goto_0

    .line 161
    .end local v3    # "i":I
    :cond_7
    iget-object v3, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget v5, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    div-int/2addr v5, v4

    int-to-byte v4, v5

    aput-byte v4, v3, v2

    .line 162
    new-instance v3, Lcom/sleepycat/asm/TypePath;

    iget-object v4, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    invoke-direct {v3, v4, v2}, Lcom/sleepycat/asm/TypePath;-><init>([BI)V

    return-object v3

    .line 136
    .end local v0    # "n":I
    .end local v1    # "out":Lcom/sleepycat/asm/ByteVector;
    :cond_8
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/sleepycat/asm/TypePath;->b:[B

    iget v1, p0, Lcom/sleepycat/asm/TypePath;->offset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStep(I)I
    .locals 3
    .param p1, "index"    # I

    .line 108
    iget-object v0, p0, Lcom/sleepycat/asm/TypePath;->b:[B

    iget v1, p0, Lcom/sleepycat/asm/TypePath;->offset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStepArgument(I)I
    .locals 3
    .param p1, "index"    # I

    .line 122
    iget-object v0, p0, Lcom/sleepycat/asm/TypePath;->b:[B

    iget v1, p0, Lcom/sleepycat/asm/TypePath;->offset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 174
    invoke-virtual {p0}, Lcom/sleepycat/asm/TypePath;->getLength()I

    move-result v0

    .line 175
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 176
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 177
    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/TypePath;->getStep(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 191
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 188
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/TypePath;->getStepArgument(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    goto :goto_1

    .line 185
    :pswitch_1
    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_1

    .line 182
    :pswitch_2
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_1

    .line 179
    :pswitch_3
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    nop

    .line 176
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
