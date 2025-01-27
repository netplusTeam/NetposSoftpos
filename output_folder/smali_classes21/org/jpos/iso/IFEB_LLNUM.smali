.class public Lorg/jpos/iso/IFEB_LLNUM;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IFEB_LLNUM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 130
    invoke-virtual {p0}, Lorg/jpos/iso/IFEB_LLNUM;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 11
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "odd":Z
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v2

    .local v3, "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/IFEB_LLNUM;->getLength()I

    move-result v4

    if-gt v2, v4, :cond_2

    const/16 v2, 0x63

    if-gt v3, v2, :cond_2

    .line 64
    rem-int/lit8 v2, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v4, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 66
    div-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v4

    .end local v3    # "len":I
    .local v2, "len":I
    goto :goto_0

    .line 68
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :cond_0
    const/4 v0, 0x0

    .line 69
    div-int/lit8 v2, v3, 0x2

    .line 72
    .end local v3    # "len":I
    .restart local v2    # "len":I
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "fieldLength":Ljava/lang/String;
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;)[B

    move-result-object v6

    .line 77
    .local v6, "EBCDIClength":[B
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v8

    .line 79
    .local v8, "bcd":[B
    if-eqz v0, :cond_1

    .line 80
    add-int/lit8 v9, v2, -0x1

    add-int/lit8 v10, v2, -0x1

    aget-byte v10, v8, v10

    or-int/lit8 v10, v10, 0xf

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 82
    :cond_1
    array-length v9, v8

    add-int/2addr v9, v5

    new-array v9, v9, [B

    .line 84
    .local v9, "b":[B
    aget-byte v10, v6, v7

    aput-byte v10, v9, v7

    .line 85
    aget-byte v10, v6, v4

    aput-byte v10, v9, v4

    .line 86
    array-length v4, v8

    invoke-static {v8, v7, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    return-object v9

    .line 60
    .end local v2    # "len":I
    .end local v6    # "EBCDIClength":[B
    .end local v8    # "bcd":[B
    .end local v9    # "b":[B
    .local v3, "len":I
    :cond_2
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packing IFEB_LLNUM field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 61
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "pad":Z
    aget-byte v1, p2, p3

    const/16 v2, 0xf

    and-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, p3, 0x1

    aget-byte v3, p2, v3

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 101
    .local v1, "len":I
    mul-int/lit8 v3, v1, 0x2

    .line 104
    .local v3, "tempLen":I
    add-int/lit8 v4, p3, 0x2

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p2, v4

    .line 106
    .local v4, "lastByte":B
    and-int/lit8 v5, v4, 0xf

    if-ne v5, v2, :cond_0

    .line 107
    add-int/lit8 v3, v3, -0x1

    .line 109
    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p2, v2, v3, v0}, Lorg/jpos/iso/ISOUtil;->bcd2str([BIIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 111
    add-int/lit8 v2, v1, 0x2

    return v2
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFEB_LLNUM;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 121
    .local v0, "b":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x9

    if-le v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    aget-byte v2, v0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    :goto_0
    mul-int/lit8 v2, v2, 0xa

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x64

    const/4 v4, 0x1

    aget-byte v5, v0, v4

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    if-le v5, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    aget-byte v3, v0, v4

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    :goto_1
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    aget-byte v3, v0, v4

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v2, v3

    .line 126
    .local v2, "len":I
    invoke-virtual {p0, p2, v2}, Lorg/jpos/iso/IFEB_LLNUM;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    mul-int/lit8 v4, v2, 0x2

    iget-boolean v5, p0, Lorg/jpos/iso/IFEB_LLNUM;->pad:Z

    invoke-static {v3, v1, v4, v5}, Lorg/jpos/iso/ISOUtil;->bcd2str([BIIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 127
    return-void
.end method
