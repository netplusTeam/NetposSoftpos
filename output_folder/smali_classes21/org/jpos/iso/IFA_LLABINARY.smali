.class public Lorg/jpos/iso/IFA_LLABINARY;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IFA_LLABINARY.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public createComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 89
    new-instance v0, Lorg/jpos/iso/ISOBinaryField;

    invoke-direct {v0, p1}, Lorg/jpos/iso/ISOBinaryField;-><init>(I)V

    return-object v0
.end method

.method public getMaxPackedLength()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_LLABINARY;->getLength()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 8
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 53
    .local v0, "b":[B
    array-length v1, v0

    move v2, v1

    .local v2, "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_LLABINARY;->getLength()I

    move-result v3

    if-gt v1, v3, :cond_0

    const/16 v1, 0x63

    if-gt v2, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 60
    .local v1, "data":[B
    array-length v3, v1

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 62
    .local v3, "nb":[B
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 63
    .local v5, "length":[B
    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    array-length v7, v1

    invoke-static {v1, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v3

    .line 54
    .end local v1    # "data":[B
    .end local v3    # "nb":[B
    .end local v5    # "length":[B
    :cond_0
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid len "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packing field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {v0, p2, p3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "len":I
    add-int/lit8 v2, p3, 0x2

    invoke-static {p2, v2, v0}, Lorg/jpos/iso/ISOUtil;->hex2byte([BII)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 82
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    return v2
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/IFA_LLABINARY;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "len":I
    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFA_LLABINARY;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
