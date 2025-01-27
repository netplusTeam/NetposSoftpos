.class public Lorg/jpos/iso/IFIPM_LLLCHAR;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IFIPM_LLLCHAR.java"


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

    .line 108
    invoke-virtual {p0}, Lorg/jpos/iso/IFIPM_LLLCHAR;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

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

    .line 55
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    .local v2, "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/IFIPM_LLLCHAR;->getLength()I

    move-result v3

    if-gt v1, v3, :cond_0

    const/16 v1, 0x3e5

    if-gt v2, v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 63
    return-object v1

    .line 58
    :cond_0
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid len "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packing IFIPM_LLLCHAR field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxlen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/iso/IFIPM_LLLCHAR;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p2, p3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 87
    add-int/2addr p3, v1

    .line 88
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {v0, p2, p3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "len":I
    add-int/2addr p3, v1

    .line 90
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, p3, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v0, 0x7

    return v1

    .line 81
    .end local v0    # "len":I
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
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

    .line 97
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/IFIPM_LLLCHAR;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "fldno":I
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, p2, v2}, Lorg/jpos/iso/IFIPM_LLLCHAR;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "len":I
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 104
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/IFIPM_LLLCHAR;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 105
    return-void

    .line 98
    .end local v0    # "fldno":I
    .end local v1    # "len":I
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
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
