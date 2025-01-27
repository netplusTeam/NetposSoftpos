.class public Lorg/jpos/iso/IFEB_LLLNUM;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IFEB_LLLNUM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 135
    invoke-virtual {p0}, Lorg/jpos/iso/IFEB_LLLNUM;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 12
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "odd":Z
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v2

    .local v3, "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/IFEB_LLLNUM;->getLength()I

    move-result v4

    if-gt v2, v4, :cond_2

    const/16 v2, 0x63

    if-gt v3, v2, :cond_2

    .line 65
    rem-int/lit8 v2, v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 67
    div-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v5

    .end local v3    # "len":I
    .local v2, "len":I
    goto :goto_0

    .line 69
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :cond_0
    const/4 v0, 0x0

    .line 70
    div-int/lit8 v2, v3, 0x2

    .line 75
    .end local v3    # "len":I
    .restart local v2    # "len":I
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    invoke-static {v3, v6}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "fieldLength":Ljava/lang/String;
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;)[B

    move-result-object v7

    .line 80
    .local v7, "EBCDIClength":[B
    const/4 v8, 0x0

    invoke-static {v1, v8}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v9

    .line 81
    .local v9, "bcd":[B
    if-eqz v0, :cond_1

    .line 82
    add-int/lit8 v10, v2, -0x1

    add-int/lit8 v11, v2, -0x1

    aget-byte v11, v9, v11

    or-int/lit8 v11, v11, 0xf

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 87
    :cond_1
    array-length v10, v9

    add-int/2addr v10, v6

    new-array v10, v10, [B

    .line 89
    .local v10, "b":[B
    aget-byte v11, v7, v8

    aput-byte v11, v10, v8

    .line 90
    aget-byte v11, v7, v5

    aput-byte v11, v10, v5

    .line 91
    aget-byte v5, v7, v4

    aput-byte v5, v10, v4

    .line 92
    array-length v4, v9

    invoke-static {v9, v8, v10, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    return-object v10

    .line 56
    .end local v2    # "len":I
    .end local v7    # "EBCDIClength":[B
    .end local v9    # "bcd":[B
    .end local v10    # "b":[B
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

    const-string v5, " packing IFEB_LLLNUM field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 57
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

    .line 105
    const/4 v0, 0x0

    .line 108
    .local v0, "pad":Z
    aget-byte v1, p2, p3

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x64

    add-int/lit8 v2, p3, 0x1

    aget-byte v2, p2, v2

    and-int/lit8 v2, v2, 0xf

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v2, p3, 0x2

    aget-byte v2, p2, v2

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    .line 110
    .local v1, "len":I
    mul-int/lit8 v2, v1, 0x2

    .line 116
    .local v2, "tempLen":I
    add-int/lit8 v3, p3, 0x3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p2, v3

    .line 118
    .local v3, "testByte":B
    or-int/lit16 v4, v3, 0xf0

    const/16 v5, 0xff

    if-ne v4, v5, :cond_0

    .line 120
    add-int/lit8 v2, v2, -0x1

    .line 127
    :cond_0
    add-int/lit8 v4, p3, 0x3

    invoke-static {p2, v4, v2, v0}, Lorg/jpos/iso/ISOUtil;->bcd2str([BIIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 131
    add-int/lit8 v4, v1, 0x3

    return v4
.end method
