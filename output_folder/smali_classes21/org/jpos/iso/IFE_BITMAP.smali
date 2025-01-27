.class public Lorg/jpos/iso/IFE_BITMAP;
.super Lorg/jpos/iso/ISOBitMapPackager;
.source "IFE_BITMAP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jpos/iso/ISOBitMapPackager;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOBitMapPackager;-><init>(ILjava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/jpos/iso/IFE_BITMAP;->getLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 9
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 50
    .local v0, "bitMapValue":Ljava/util/BitSet;
    invoke-virtual {p0}, Lorg/jpos/iso/IFE_BITMAP;->getLength()I

    move-result v1

    .line 51
    .local v1, "maxBytesPossible":I
    shl-int/lit8 v2, v1, 0x3

    .line 52
    .local v2, "maxBitsAllowedPhysically":I
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 53
    .local v3, "lastBitOn":I
    move v5, v3

    .line 54
    .local v5, "actualLastBit":I
    const/16 v6, 0x80

    if-le v3, v6, :cond_1

    .line 55
    const/16 v6, 0x41

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    const/16 v5, 0xc0

    goto :goto_0

    .line 58
    :cond_0
    const/16 v5, 0x80

    goto :goto_0

    .line 60
    :cond_1
    const/16 v6, 0x40

    if-le v3, v6, :cond_2

    .line 61
    const/16 v5, 0x80

    .line 63
    :cond_2
    :goto_0
    if-gt v5, v2, :cond_7

    .line 68
    shr-int/lit8 v6, v5, 0x3

    rem-int/lit8 v7, v5, 0x8

    if-lez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v6, v4

    .line 71
    .local v6, "requiredLengthInBytes":I
    const/4 v4, 0x4

    const/16 v7, 0x8

    if-le v6, v4, :cond_4

    if-gt v6, v7, :cond_4

    .line 72
    const/16 v4, 0x8

    .local v4, "requiredBitMapLengthInBytes":I
    goto :goto_2

    .line 74
    .end local v4    # "requiredBitMapLengthInBytes":I
    :cond_4
    const/16 v4, 0x10

    if-le v6, v7, :cond_5

    if-gt v6, v4, :cond_5

    .line 75
    const/16 v4, 0x10

    .restart local v4    # "requiredBitMapLengthInBytes":I
    goto :goto_2

    .line 77
    .end local v4    # "requiredBitMapLengthInBytes":I
    :cond_5
    if-le v6, v4, :cond_6

    const/16 v4, 0x18

    if-gt v6, v4, :cond_6

    .line 78
    const/16 v4, 0x18

    .restart local v4    # "requiredBitMapLengthInBytes":I
    goto :goto_2

    .line 81
    .end local v4    # "requiredBitMapLengthInBytes":I
    :cond_6
    move v4, v1

    .line 84
    .restart local v4    # "requiredBitMapLengthInBytes":I
    :goto_2
    invoke-static {v0, v4}, Lorg/jpos/iso/ISOUtil;->bitSet2byte(Ljava/util/BitSet;I)[B

    move-result-object v7

    .line 85
    .local v7, "b":[B
    invoke-static {v7}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic([B)[B

    move-result-object v8

    return-object v8

    .line 64
    .end local v4    # "requiredBitMapLengthInBytes":I
    .end local v6    # "requiredLengthInBytes":I
    .end local v7    # "b":[B
    :cond_7
    new-instance v4, Lorg/jpos/iso/ISOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap can only hold bits numbered up to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 65
    invoke-virtual {p0}, Lorg/jpos/iso/IFE_BITMAP;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes available."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/jpos/iso/IFE_BITMAP;->getLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAsciiBytes([BII)[B

    move-result-object v0

    .line 103
    .local v0, "b1":[B
    invoke-virtual {p0}, Lorg/jpos/iso/IFE_BITMAP;->getLength()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/jpos/iso/ISOUtil;->hex2BitSet([BII)Ljava/util/BitSet;

    move-result-object v1

    .line 104
    .local v1, "bmap":Ljava/util/BitSet;
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 105
    array-length v2, v0

    .line 107
    .local v2, "bytes":I
    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const/16 v2, 0x10

    goto :goto_0

    .line 110
    :cond_0
    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    const/16 v3, 0x41

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    const/16 v2, 0x20

    .line 113
    :cond_1
    :goto_0
    return v2
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 118
    const/16 v0, 0x10

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFE_BITMAP;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAsciiBytes([BII)[B

    move-result-object v1

    .line 119
    .local v1, "b1":[B
    new-instance v3, Ljava/util/BitSet;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    invoke-static {v3, v1, v2}, Lorg/jpos/iso/ISOUtil;->hex2BitSet(Ljava/util/BitSet;[BI)Ljava/util/BitSet;

    move-result-object v3

    .line 120
    .local v3, "bmap":Ljava/util/BitSet;
    invoke-virtual {p0}, Lorg/jpos/iso/IFE_BITMAP;->getLength()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFE_BITMAP;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-static {v5, v2, v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAsciiBytes([BII)[B

    move-result-object v0

    .line 122
    .local v0, "b2":[B
    invoke-static {v3, v0, v4}, Lorg/jpos/iso/ISOUtil;->hex2BitSet(Ljava/util/BitSet;[BI)Ljava/util/BitSet;

    .line 124
    .end local v0    # "b2":[B
    :cond_0
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
