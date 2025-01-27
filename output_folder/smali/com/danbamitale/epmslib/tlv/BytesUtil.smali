.class public Lcom/danbamitale/epmslib/tlv/BytesUtil;
.super Ljava/lang/Object;
.source "BytesUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BytesUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ASCII_To_BCD([BI)[B
    .locals 6
    .param p0, "ascii"    # [B
    .param p1, "asc_len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ascii",
            "asc_len"
        }
    .end annotation

    .line 194
    div-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    .line 195
    .local v0, "bcd":[B
    const/4 v1, 0x0

    .line 196
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p1, 0x1

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 197
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->asc_to_bcd(B)B

    move-result v1

    aput-byte v1, v0, v2

    .line 198
    if-lt v3, p1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "j":I
    .restart local v1    # "j":I
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->asc_to_bcd(B)B

    move-result v3

    move v5, v3

    move v3, v1

    move v1, v5

    .end local v1    # "j":I
    .restart local v3    # "j":I
    :goto_1
    aget-byte v4, v0, v2

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 196
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    .line 200
    .end local v2    # "i":I
    .end local v3    # "j":I
    .restart local v1    # "j":I
    :cond_1
    return-object v0
.end method

.method private static asc_to_bcd(B)B
    .locals 1
    .param p0, "asc"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asc"
        }
    .end annotation

    .line 206
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 207
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .local v0, "bcd":B
    goto :goto_0

    .line 208
    .end local v0    # "bcd":B
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 209
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    .restart local v0    # "bcd":B
    goto :goto_0

    .line 210
    .end local v0    # "bcd":B
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 211
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    .restart local v0    # "bcd":B
    goto :goto_0

    .line 213
    .end local v0    # "bcd":B
    :cond_2
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 214
    .restart local v0    # "bcd":B
    :goto_0
    return v0
.end method

.method public static ascii2Bcd(Ljava/lang/String;)[B
    .locals 6
    .param p0, "ascii"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ascii"
        }
    .end annotation

    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 21
    .local v0, "asc":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/2addr v2, v1

    new-array v2, v2, [B

    .line 22
    .local v2, "bcd":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 23
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, v0, v4

    int-to-char v4, v4

    invoke-static {v4}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->hex2byte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v1

    aget-byte v5, v0, v5

    int-to-char v5, v5

    invoke-static {v5}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->hex2byte(C)B

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 22
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public static ascii2Bytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "asciiString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asciiString"
        }
    .end annotation

    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 189
    .local v0, "byt":[B
    return-object v0
.end method

.method public static bcd2Ascii([B)Ljava/lang/String;
    .locals 9
    .param p0, "bcd"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bcd"
        }
    .end annotation

    .line 74
    if-nez p0, :cond_0

    .line 75
    const-string v0, ""

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p0, v2

    .line 78
    .local v3, "ch":B
    shr-int/lit8 v4, v3, 0x4

    int-to-byte v4, v4

    .line 79
    .local v4, "half":B
    const/16 v5, 0x37

    const/16 v6, 0x30

    const/16 v7, 0x9

    if-le v4, v7, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    add-int/2addr v8, v4

    int-to-char v8, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    and-int/lit8 v8, v3, 0xf

    int-to-byte v4, v8

    .line 81
    if-le v4, v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    add-int/2addr v5, v4

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .end local v3    # "ch":B
    .end local v4    # "half":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string v0, ""

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "buffer":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    .line 63
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "hex":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 65
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .end local v3    # "b":B
    .end local v4    # "hex":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytes2Int([B)I
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 29
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    .local v0, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 35
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 30
    .end local v0    # "total":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static bytesToInt([B)I
    .locals 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 282
    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 283
    const/4 v0, -0x1

    return v0

    .line 286
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 287
    .local v0, "lastIndex":I
    const/4 v1, 0x0

    .line 288
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 289
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    sub-int v4, v0, v2

    shl-int/lit8 v4, v4, 0x3

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public static dumpHex(Ljava/lang/String;[B)V
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "bytes"
        }
    .end annotation

    .line 139
    array-length v0, p1

    .line 140
    .local v0, "length":I
    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    move-object p0, v1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n---------------------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(len:%d) ----------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 144
    rem-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_2

    .line 145
    if-eqz v2, :cond_1

    .line 146
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "0x%08X    "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2
    new-array v4, v3, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%02X "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .end local v2    # "i":I
    :cond_3
    const-string v2, "\n----------------------------------------------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BytesUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public static fromBytes([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 119
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->fromBytes([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromBytes([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "charsetName"
        }
    .end annotation

    .line 112
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fromGB2312([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 127
    const-string v0, "GB2312"

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->fromBytes([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromGB2312New(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->fromGB2312([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromGBK([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 123
    const-string v0, "GBK"

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->fromBytes([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUtf8([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 135
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->fromBytes([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hex2byte(C)B
    .locals 1
    .param p0, "hex"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    .line 230
    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    .line 231
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    .line 234
    :cond_0
    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    .line 235
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    .line 238
    :cond_1
    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    .line 239
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    return v0

    .line 242
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 220
    .local v0, "result":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 223
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 224
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->hex2byte(C)B

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->hex2byte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static hexToBinString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "E0F8C8"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static int2Bytes(I)[B
    .locals 3
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 175
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 176
    .local v0, "src":[B
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 177
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 178
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 179
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 180
    return-object v0
.end method

.method public static int3ToHexString(I)Ljava/lang/String;
    .locals 5
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 52
    .local v0, "b":[B
    div-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 53
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 55
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v4, v0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v2

    aget-byte v2, v0, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%02X%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static intToBytes(I)[B
    .locals 3
    .param p0, "intValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intValue"
        }
    .end annotation

    .line 296
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 297
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 298
    rsub-int/lit8 v2, v1, 0x3

    shl-int/lit8 v2, v2, 0x3

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static intToHexString(I)Ljava/lang/String;
    .locals 5
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 44
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 45
    .local v1, "b":[B
    div-int/lit16 v2, p0, 0x100

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 46
    rem-int/lit16 v2, p0, 0x100

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    aget-byte v2, v1, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v3

    aget-byte v2, v1, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "%02X%02X"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static merage([[B)[B
    .locals 8
    .param p0, "data"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 263
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 266
    aget-object v2, p0, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    .end local v1    # "i":I
    :cond_1
    new-array v1, v0, [B

    .line 270
    .local v1, "newData":[B
    const/4 v0, 0x0

    .line 271
    move-object v2, p0

    .line 272
    .local v2, "arrayOfByte":[[B
    array-length v3, p0

    .line 273
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 274
    aget-object v5, v2, v4

    .line 275
    .local v5, "d":[B
    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    array-length v6, v5

    add-int/2addr v0, v6

    .line 273
    .end local v5    # "d":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 278
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method public static str2HexStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 157
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 158
    .local v0, "mChars":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 161
    .local v2, "bs":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 162
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static subBytes([BII)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "len"
        }
    .end annotation

    .line 246
    if-ltz p1, :cond_3

    array-length v0, p0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_2

    .line 251
    :cond_1
    array-length v0, p0

    sub-int p2, v0, p1

    .line 254
    :cond_2
    new-array v0, p2, [B

    .line 256
    .local v0, "ret":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    return-object v0

    .line 247
    .end local v0    # "ret":[B
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 95
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->toBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "charsetName"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toGB2312(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 103
    const-string v0, "GB2312"

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->toBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toGBK(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 99
    const-string v0, "GBK"

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->toBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUtf8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 107
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->toBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
