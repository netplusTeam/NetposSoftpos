.class public Lorg/jpos/iso/IFB_LLHFBINARY;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IFB_LLHFBINARY.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public createComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 83
    new-instance v0, Lorg/jpos/iso/ISOBinaryField;

    invoke-direct {v0, p1}, Lorg/jpos/iso/ISOBinaryField;-><init>(I)V

    return-object v0
.end method

.method public getMaxPackedLength()I
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_LLHFBINARY;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    .line 49
    .local v0, "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_LLHFBINARY;->getLength()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_LLHFBINARY;->getLength()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 55
    .local v1, "b":[B
    int-to-byte v3, v0

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 56
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-object v1

    .line 50
    .end local v1    # "b":[B
    :cond_0
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packing field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

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

    .line 68
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    .line 69
    .local v0, "len":I
    new-array v1, v0, [B

    .line 70
    .local v1, "value":[B
    add-int/lit8 p3, p3, 0x1

    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_LLHFBINARY;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFB_LLHFBINARY;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 78
    .local v0, "b":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 79
    .local v1, "len":I
    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/IFB_LLHFBINARY;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_LLHFBINARY;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 81
    return-void
.end method
