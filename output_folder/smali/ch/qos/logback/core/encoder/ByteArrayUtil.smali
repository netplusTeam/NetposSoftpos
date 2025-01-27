.class public Lch/qos/logback/core/encoder/ByteArrayUtil;
.super Ljava/lang/Object;
.source "ByteArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 59
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 61
    .local v1, "ba":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 62
    mul-int/lit8 v3, v2, 0x2

    .line 63
    .local v3, "j":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 64
    .local v4, "t":I
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 65
    .local v5, "b":B
    aput-byte v5, v1, v2

    .line 61
    .end local v3    # "j":I
    .end local v4    # "t":I
    .end local v5    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static readInt([BI)I
    .locals 4
    .param p0, "byteArray"    # [B
    .param p1, "offset"    # I

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 39
    mul-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x18

    .line 40
    .local v2, "shift":I
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 38
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "j":I
    :cond_0
    return v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "ba"    # [B

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 48
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 50
    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .end local v4    # "b":B
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "arr$":[B
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "i"    # I

    .line 29
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 30
    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x18

    .line 31
    .local v1, "shift":I
    ushr-int v2, p1, v1

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 29
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "j":I
    :cond_0
    return-void
.end method

.method static writeInt([BII)V
    .locals 4
    .param p0, "byteArray"    # [B
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .line 22
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 23
    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x18

    .line 24
    .local v1, "shift":I
    add-int v2, p1, v0

    ushr-int v3, p2, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 22
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "j":I
    :cond_0
    return-void
.end method
