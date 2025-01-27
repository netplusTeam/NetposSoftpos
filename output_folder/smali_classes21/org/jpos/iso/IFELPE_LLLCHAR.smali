.class public Lorg/jpos/iso/IFELPE_LLLCHAR;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IFELPE_LLLCHAR.java"


# static fields
.field private static final LENGTH_BYTE_LENGTH:I = 0x3

.field private static final TAG_BYTE_LENGTH:I = 0x2

.field private static final TAG_HEADER_LENGTH:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/jpos/iso/IFELPE_LLLCHAR;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 7
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 57
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x5

    new-array v2, v2, [B

    .line 58
    .local v2, "payload":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "tagHeader":Ljava/lang/String;
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v4, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v5, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
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

    .line 67
    const/4 v0, 0x3

    invoke-static {p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "asciiResult":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    .line 69
    .local v1, "len":I
    instance-of v3, p1, Lorg/jpos/iso/ISOField;

    if-eqz v3, :cond_0

    .line 72
    add-int/lit8 v3, p3, 0x3

    invoke-static {p2, v3, v2}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 73
    add-int/lit8 v2, p3, 0x5

    invoke-static {p2, v2, v1}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 74
    add-int/lit8 v2, v1, 0x5

    return v2

    .line 69
    :cond_0
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an ISOField"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 80
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFELPE_LLLCHAR;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 85
    .local v0, "len":I
    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/IFELPE_LLLCHAR;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "fieldNumber":I
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 87
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFELPE_LLLCHAR;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 80
    .end local v0    # "len":I
    .end local v1    # "fieldNumber":I
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an ISOField"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
