.class public Lorg/jpos/tlv/packager/IF_FSTCHAR;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IF_FSTCHAR.java"

# interfaces
.implements Lorg/jpos/iso/TaggedFieldPackager;


# instance fields
.field private terminator:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 37
    const/16 v0, 0x5c

    iput-char v0, p0, Lorg/jpos/tlv/packager/IF_FSTCHAR;->terminator:C

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 37
    const/16 v0, 0x5c

    iput-char v0, p0, Lorg/jpos/tlv/packager/IF_FSTCHAR;->terminator:C

    .line 62
    return-void
.end method

.method private byteBufferToBytes(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 149
    .local v0, "dataLength":I
    new-array v1, v0, [B

    .line 150
    .local v1, "bytes":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    return-object v1
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTCHAR;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 53
    iget-char v0, p0, Lorg/jpos/tlv/packager/IF_FSTCHAR;->terminator:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

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

    .line 71
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    .local v2, "len":I
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTCHAR;->getLength()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v3, p0, Lorg/jpos/tlv/packager/IF_FSTCHAR;->terminator:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 74
    :cond_0
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packing IF_FSTCHAR field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTCHAR;->getLength()I

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

    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/jpos/tlv/packager/IF_FSTCHAR;->terminator:C

    .line 49
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IF_FSTCHAR needs a token of 1 character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 93
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_3

    .line 96
    const/4 v0, -0x1

    .line 97
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTCHAR;->getMaxPackedLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 98
    add-int v2, p3, v1

    aget-byte v2, p2, v2

    .line 99
    .local v2, "dataByte":B
    int-to-char v3, v2

    iget-char v4, p0, Lorg/jpos/tlv/packager/IF_FSTCHAR;->terminator:C

    if-ne v3, v4, :cond_0

    .line 100
    move v0, v1

    .line 101
    goto :goto_1

    .line 97
    .end local v2    # "dataByte":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 105
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, p3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 106
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 107
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 109
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Terminating Backslash does not exist"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "length":I
    :cond_3
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
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
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 116
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_5

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "endFound":Z
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTCHAR;->getMaxPackedLength()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/InputStream;->mark(I)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTCHAR;->getMaxPackedLength()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 126
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IF_FSTCHAR;->getMaxPackedLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_2

    .line 127
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    .line 128
    .local v3, "dataByte":B
    int-to-char v4, v3

    iget-char v5, p0, Lorg/jpos/tlv/packager/IF_FSTCHAR;->terminator:C

    if-ne v4, v5, :cond_1

    .line 129
    const/4 v0, 0x1

    .line 130
    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    .end local v3    # "dataByte":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 136
    invoke-direct {p0, v1}, Lorg/jpos/tlv/packager/IF_FSTCHAR;->byteBufferToBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 137
    .local v2, "data":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 138
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 139
    .end local v2    # "data":[B
    .end local v3    # "value":Ljava/lang/String;
    nop

    .line 145
    return-void

    .line 140
    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    .line 143
    :cond_4
    new-instance v2, Lorg/jpos/iso/ISOException;

    const-string v3, "Terminating Backslash does not exist"

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v0    # "endFound":Z
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
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
