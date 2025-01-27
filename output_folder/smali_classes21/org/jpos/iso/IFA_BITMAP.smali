.class public Lorg/jpos/iso/IFA_BITMAP;
.super Lorg/jpos/iso/ISOBitMapPackager;
.source "IFA_BITMAP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/jpos/iso/ISOBitMapPackager;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOBitMapPackager;-><init>(ILjava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_BITMAP;->getLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 51
    .local v0, "b":Ljava/util/BitSet;
    nop

    .line 52
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_BITMAP;->getLength()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3e

    shr-int/lit8 v1, v1, 0x6

    shl-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_BITMAP;->getLength()I

    move-result v1

    .line 54
    .local v1, "len":I
    :goto_0
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->bitSet2byte(Ljava/util/BitSet;I)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_BITMAP;->getLength()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    invoke-static {p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->hex2BitSet([BII)Ljava/util/BitSet;

    move-result-object v0

    .line 72
    .local v0, "bmap":Ljava/util/BitSet;
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    const/16 v2, 0x40

    .line 74
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_BITMAP;->getLength()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    const/16 v3, 0x41

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    const/16 v2, 0xc0

    .line 76
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_BITMAP;->getLength()I

    move-result v3

    shl-int/lit8 v1, v3, 0x1

    shr-int/lit8 v3, v2, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/16 v2, 0x10

    invoke-virtual {p0, p2, v2}, Lorg/jpos/iso/IFA_BITMAP;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lorg/jpos/iso/ISOUtil;->hex2BitSet(Ljava/util/BitSet;[BI)Ljava/util/BitSet;

    move-result-object v0

    .line 84
    .local v0, "bmap":Ljava/util/BitSet;
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_BITMAP;->getLength()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {p0, p2, v2}, Lorg/jpos/iso/IFA_BITMAP;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v0, v2, v1}, Lorg/jpos/iso/ISOUtil;->hex2BitSet(Ljava/util/BitSet;[BI)Ljava/util/BitSet;

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 88
    return-void
.end method
