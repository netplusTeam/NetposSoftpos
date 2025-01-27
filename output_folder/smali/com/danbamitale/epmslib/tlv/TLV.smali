.class public Lcom/danbamitale/epmslib/tlv/TLV;
.super Ljava/lang/Object;
.source "TLV.java"


# instance fields
.field private data:[B

.field private length:I

.field private tag:Ljava/lang/String;

.field private value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->length:I

    return-void
.end method

.method private static calcValueLength([BII)I
    .locals 3
    .param p0, "l"    # [B
    .param p1, "offset"    # I
    .param p2, "lLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "offset",
            "lLen"
        }
    .end annotation

    .line 152
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 153
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "vLen":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 158
    shl-int/lit8 v0, v0, 0x8

    .line 159
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static fromData(Ljava/lang/String;[B)Lcom/danbamitale/epmslib/tlv/TLV;
    .locals 5
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagName",
            "value"
        }
    .end annotation

    .line 27
    invoke-static {p0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 28
    .local v0, "tag":[B
    new-instance v1, Lcom/danbamitale/epmslib/tlv/TLV;

    invoke-direct {v1}, Lcom/danbamitale/epmslib/tlv/TLV;-><init>()V

    .line 29
    .local v1, "d":Lcom/danbamitale/epmslib/tlv/TLV;
    const/4 v2, 0x3

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    array-length v3, p1

    invoke-static {v3}, Lcom/danbamitale/epmslib/tlv/TLV;->makeLengthData(I)[B

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->merage([[B)[B

    move-result-object v2

    iput-object v2, v1, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    .line 30
    iput-object p0, v1, Lcom/danbamitale/epmslib/tlv/TLV;->tag:Ljava/lang/String;

    .line 31
    array-length v2, p1

    iput v2, v1, Lcom/danbamitale/epmslib/tlv/TLV;->length:I

    .line 32
    iput-object p1, v1, Lcom/danbamitale/epmslib/tlv/TLV;->value:[B

    .line 33
    return-object v1
.end method

.method public static fromRawData([BI)Lcom/danbamitale/epmslib/tlv/TLV;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "offset"
        }
    .end annotation

    .line 37
    invoke-static {p0, p1}, Lcom/danbamitale/epmslib/tlv/TLV;->getDataLength([BI)I

    move-result v0

    .line 38
    .local v0, "len":I
    new-instance v1, Lcom/danbamitale/epmslib/tlv/TLV;

    invoke-direct {v1}, Lcom/danbamitale/epmslib/tlv/TLV;-><init>()V

    .line 39
    .local v1, "d":Lcom/danbamitale/epmslib/tlv/TLV;
    invoke-static {p0, p1, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->subBytes([BII)[B

    move-result-object v2

    iput-object v2, v1, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    .line 40
    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getTag()Ljava/lang/String;

    .line 41
    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getLength()I

    .line 42
    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getBytesValue()[B

    .line 43
    return-object v1
.end method

.method public static fromRawData([BI[BI)Lcom/danbamitale/epmslib/tlv/TLV;
    .locals 7
    .param p0, "tlData"    # [B
    .param p1, "tlOffset"    # I
    .param p2, "vData"    # [B
    .param p3, "vOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tlData",
            "tlOffset",
            "vData",
            "vOffset"
        }
    .end annotation

    .line 14
    invoke-static {p0, p1}, Lcom/danbamitale/epmslib/tlv/TLV;->getTLength([BI)I

    move-result v0

    .line 15
    .local v0, "tLen":I
    add-int v1, p1, v0

    invoke-static {p0, v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getLLength([BI)I

    move-result v1

    .line 16
    .local v1, "lLen":I
    add-int v2, p1, v0

    invoke-static {p0, v2, v1}, Lcom/danbamitale/epmslib/tlv/TLV;->calcValueLength([BII)I

    move-result v2

    .line 17
    .local v2, "vLen":I
    new-instance v3, Lcom/danbamitale/epmslib/tlv/TLV;

    invoke-direct {v3}, Lcom/danbamitale/epmslib/tlv/TLV;-><init>()V

    .line 18
    .local v3, "d":Lcom/danbamitale/epmslib/tlv/TLV;
    const/4 v4, 0x2

    new-array v4, v4, [[B

    add-int v5, v0, v1

    invoke-static {p0, p1, v5}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->subBytes([BII)[B

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2, p3, v2}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->subBytes([BII)[B

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->merage([[B)[B

    move-result-object v4

    iput-object v4, v3, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    .line 19
    invoke-virtual {v3}, Lcom/danbamitale/epmslib/tlv/TLV;->getTag()Ljava/lang/String;

    .line 20
    invoke-virtual {v3}, Lcom/danbamitale/epmslib/tlv/TLV;->getLength()I

    .line 21
    invoke-virtual {v3}, Lcom/danbamitale/epmslib/tlv/TLV;->getBytesValue()[B

    .line 23
    return-object v3
.end method

.method private static getDataLength([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "offset"
        }
    .end annotation

    .line 145
    invoke-static {p0, p1}, Lcom/danbamitale/epmslib/tlv/TLV;->getTLength([BI)I

    move-result v0

    .line 146
    .local v0, "tLen":I
    add-int v1, p1, v0

    invoke-static {p0, v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getLLength([BI)I

    move-result v1

    .line 147
    .local v1, "lLen":I
    add-int v2, p1, v0

    invoke-static {p0, v2, v1}, Lcom/danbamitale/epmslib/tlv/TLV;->calcValueLength([BII)I

    move-result v2

    .line 148
    .local v2, "vLen":I
    add-int v3, v0, v1

    add-int/2addr v3, v2

    return v3
.end method

.method private static getLLength([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "offset"
        }
    .end annotation

    .line 138
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 139
    return v1

    .line 141
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7f

    add-int/2addr v0, v1

    return v0
.end method

.method private static getTLength([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "offset"
        }
    .end annotation

    .line 131
    aget-byte v0, p0, p1

    const/16 v1, 0x1f

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 132
    const/4 v0, 0x2

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static makeLengthData(I)[B
    .locals 7
    .param p0, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7f

    if-le p0, v2, :cond_2

    .line 166
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 167
    .local v2, "lenData":[B
    const/4 v3, -0x1

    .line 168
    .local v3, "validIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 169
    rsub-int/lit8 v5, v4, 0x3

    mul-int/lit8 v5, v5, 0x8

    shr-int v5, p0, v5

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 170
    rsub-int/lit8 v5, v4, 0x3

    aget-byte v5, v2, v5

    if-eqz v5, :cond_0

    if-gez v3, :cond_0

    .line 171
    move v3, v4

    .line 168
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "i":I
    :cond_1
    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->subBytes([BII)[B

    move-result-object v2

    .line 175
    const/4 v4, 0x2

    new-array v4, v4, [[B

    new-array v5, v1, [B

    array-length v6, v2

    and-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    aput-object v5, v4, v0

    aput-object v2, v4, v1

    invoke-static {v4}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->merage([[B)[B

    move-result-object v0

    .line 176
    .end local v2    # "lenData":[B
    .local v0, "lenData":[B
    return-object v0

    .line 179
    .end local v0    # "lenData":[B
    .end local v3    # "validIndex":I
    :cond_2
    new-array v1, v1, [B

    int-to-byte v2, p0

    aput-byte v2, v1, v0

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 183
    if-ne p1, p0, :cond_0

    .line 184
    const/4 v0, 0x1

    return v0

    .line 187
    :cond_0
    instance-of v0, p1, Lcom/danbamitale/epmslib/tlv/TLV;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 188
    return v1

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/danbamitale/epmslib/tlv/TLV;

    iget-object v2, v2, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    if-nez v2, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/tlv/TLV;

    iget-object v1, v1, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 192
    :cond_3
    :goto_0
    return v1
.end method

.method public getBCDValue()[B
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLV;->getGBKValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getByteValue()B
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLV;->getBytesValue()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getBytesValue()[B
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->value:[B

    if-eqz v0, :cond_0

    .line 120
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLV;->getLength()I

    move-result v0

    .line 123
    .local v0, "l":I
    iget-object v1, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-static {v1, v2, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->subBytes([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/danbamitale/epmslib/tlv/TLV;->value:[B

    return-object v1
.end method

.method public getGBKNumberValue()[B
    .locals 2

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLV;->getNumberValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGBKValue()Ljava/lang/String;
    .locals 3

    .line 90
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLV;->getBytesValue()[B

    move-result-object v1

    const-string v2, "GBK"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 94
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 6

    .line 55
    iget v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->length:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 56
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getTLength([BI)I

    move-result v0

    .line 59
    .local v0, "offset":I
    iget-object v1, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    invoke-static {v1, v0}, Lcom/danbamitale/epmslib/tlv/TLV;->getLLength([BI)I

    move-result v1

    .line 60
    .local v1, "l":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 64
    :cond_1
    const/4 v2, 0x0

    .line 65
    .local v2, "afterLen":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 66
    shl-int/lit8 v2, v2, 0x8

    .line 67
    iget-object v4, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    add-int v5, v0, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_2
    iput v2, p0, Lcom/danbamitale/epmslib/tlv/TLV;->length:I

    return v2
.end method

.method public getNumberValue()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "num":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRawData()[B
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    return-object v0
.end method

.method public getTLLength()I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    if-nez v0, :cond_0

    .line 74
    const/4 v0, -0x1

    return v0

    .line 76
    :cond_0
    array-length v0, v0

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLV;->getBytesValue()[B

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 48
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getTLength([BI)I

    move-result v0

    .line 51
    .local v0, "tLen":I
    iget-object v2, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    invoke-static {v2, v1, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->subBytes([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/danbamitale/epmslib/tlv/TLV;->tag:Ljava/lang/String;

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLV;->getBytesValue()[B

    move-result-object v0

    .line 81
    .local v0, "temp":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isValid()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLV;->data:[B

    if-nez v0, :cond_0

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
