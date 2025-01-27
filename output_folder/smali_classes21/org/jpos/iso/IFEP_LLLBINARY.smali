.class public Lorg/jpos/iso/IFEP_LLLBINARY;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "IFEP_LLLBINARY.java"

# interfaces
.implements Lorg/jpos/iso/packager/GenericPackagerParams;


# static fields
.field private static final TAG_HEADER_LENGTH:I = 0x2


# instance fields
.field fieldId:Ljava/lang/Integer;

.field private final prefixerPackedLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->fieldId:Ljava/lang/Integer;

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 38
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/EbcdicPrefixer;->LLL:Lorg/jpos/iso/EbcdicPrefixer;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->fieldId:Ljava/lang/Integer;

    .line 39
    const/16 v0, 0x3e7

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFEP_LLLBINARY;->checkLength(II)V

    .line 40
    sget-object v0, Lorg/jpos/iso/EbcdicPrefixer;->LLL:Lorg/jpos/iso/EbcdicPrefixer;

    invoke-virtual {v0}, Lorg/jpos/iso/EbcdicPrefixer;->getPackedLength()I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "binaryInterpreter"    # Lorg/jpos/iso/BinaryInterpreter;
    .param p4, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->fieldId:Ljava/lang/Integer;

    .line 45
    const/16 v0, 0x3e7

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFEP_LLLBINARY;->checkLength(II)V

    .line 46
    invoke-interface {p4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    .line 47
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/jpos/iso/IFEP_LLLBINARY;->getLength()I

    move-result v0

    iget v1, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    add-int/2addr v0, v1

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

    .line 60
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    .line 61
    .local v0, "len":I
    iget-object v1, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->fieldId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/iso/IFEP_LLLBINARY;->getLength()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 68
    iget v2, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    add-int/2addr v2, v0

    const/4 v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 69
    .local v2, "b":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x2

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    invoke-static {v5, v6}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-static {v1, v3}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;)[B

    move-result-object v4

    .line 74
    .local v4, "llltt":[B
    iget v5, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    add-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget v7, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    add-int/2addr v7, v3

    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    return-object v2

    .line 63
    .end local v2    # "b":[B
    .end local v4    # "llltt":[B
    :cond_1
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid len "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packing IFEP_LLLBINARY field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setGenericPackagerParams(Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 51
    const-string v0, "id"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->fieldId:Ljava/lang/Integer;

    .line 52
    return-void
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

    .line 89
    iget v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    invoke-static {p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 90
    .local v0, "len":I
    instance-of v2, p1, Lorg/jpos/iso/ISOBinaryField;

    if-eqz v2, :cond_0

    .line 94
    iget v2, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    add-int/2addr v2, p3

    .line 95
    invoke-static {p2, v2, v1}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 94
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 97
    new-array v2, v0, [B

    .line 98
    .local v2, "value":[B
    iget v3, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    add-int/2addr v3, p3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {p2, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 100
    iget v3, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    return v3

    .line 91
    .end local v2    # "value":[B
    :cond_0
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an ISOBinaryField"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 106
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lorg/jpos/iso/IFEP_LLLBINARY;->prefixerPackedLength:I

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFEP_LLLBINARY;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 111
    .local v0, "len":I
    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/IFEP_LLLBINARY;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "fldno":I
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 113
    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/IFEP_LLLBINARY;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 114
    return-void

    .line 107
    .end local v0    # "len":I
    .end local v1    # "fldno":I
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

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
