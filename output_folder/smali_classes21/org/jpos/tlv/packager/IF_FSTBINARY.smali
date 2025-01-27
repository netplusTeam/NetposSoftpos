.class public Lorg/jpos/tlv/packager/IF_FSTBINARY;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IF_FSTBINARY.java"

# interfaces
.implements Lorg/jpos/iso/TaggedFieldPackager;


# instance fields
.field private terminator:B

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/jpos/tlv/packager/IF_FSTBINARY;->terminator:B

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 38
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/jpos/tlv/packager/IF_FSTBINARY;->terminator:B

    .line 65
    return-void
.end method

.method private byteBufferToBytes(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 153
    .local v0, "dataLength":I
    new-array v1, v0, [B

    .line 154
    .local v1, "bytes":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    return-object v1
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 161
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTBINARY;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jpos/tlv/packager/IF_FSTBINARY;->token:Ljava/lang/String;

    return-object v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getBytes()[B

    move-result-object v0

    .line 76
    .local v0, "s":[B
    array-length v1, v0

    move v2, v1

    .local v2, "len":I
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTBINARY;->getLength()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 82
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 83
    .local v1, "b":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    iget-byte v4, p0, Lorg/jpos/tlv/packager/IF_FSTBINARY;->terminator:B

    aput-byte v4, v1, v3

    .line 85
    return-object v1

    .line 77
    .end local v1    # "b":[B
    :cond_0
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packing IF_FSTBINARY field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 79
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTBINARY;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 50
    iput-object p1, p0, Lorg/jpos/tlv/packager/IF_FSTBINARY;->token:Ljava/lang/String;

    .line 51
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/jpos/tlv/packager/IF_FSTBINARY;->terminator:B

    .line 52
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IF_FSTBINARY needs a HEX token of 2 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 97
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_3

    .line 100
    const/4 v0, -0x1

    .line 101
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTBINARY;->getMaxPackedLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    add-int v2, p3, v1

    aget-byte v2, p2, v2

    .line 103
    .local v2, "dataByte":B
    iget-byte v3, p0, Lorg/jpos/tlv/packager/IF_FSTBINARY;->terminator:B

    if-ne v2, v3, :cond_0

    .line 104
    move v0, v1

    .line 105
    goto :goto_1

    .line 101
    .end local v2    # "dataByte":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 109
    new-array v1, v0, [B

    .line 110
    .local v1, "value":[B
    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 112
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 114
    .end local v1    # "value":[B
    :cond_2
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Terminating Backslash does not exist"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local v0    # "length":I
    :cond_3
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

    .line 121
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_5

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "endFound":Z
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTBINARY;->getMaxPackedLength()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/InputStream;->mark(I)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTBINARY;->getMaxPackedLength()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 131
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTBINARY;->getMaxPackedLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_2

    .line 132
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    .line 133
    .local v3, "dataByte":B
    iget-byte v4, p0, Lorg/jpos/tlv/packager/IF_FSTBINARY;->terminator:B

    if-ne v3, v4, :cond_1

    .line 134
    const/4 v0, 0x1

    .line 135
    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    .end local v3    # "dataByte":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 141
    invoke-direct {p0, v1}, Lorg/jpos/tlv/packager/IF_FSTBINARY;->byteBufferToBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 142
    .local v2, "data":[B
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 143
    .end local v2    # "data":[B
    nop

    .line 149
    return-void

    .line 144
    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    .line 147
    :cond_4
    new-instance v2, Lorg/jpos/iso/ISOException;

    const-string v3, "Terminating Backslash does not exist"

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v0    # "endFound":Z
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
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
