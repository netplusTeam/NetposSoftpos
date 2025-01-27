.class public Lorg/apache/sshd/common/util/io/der/DERWriter;
.super Ljava/io/FilterOutputStream;
.source "DERWriter.java"


# instance fields
.field private final lenBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .line 54
    const-string v0, "No output stream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/der/DERWriter;->lenBytes:[B

    .line 55
    return-void
.end method

.method private isPositive(B)Z
    .locals 1
    .param p1, "b"    # B

    .line 118
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public startSequence()Lorg/apache/sshd/common/util/io/der/DERWriter;
    .locals 7

    .line 58
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    .local v4, "dataWritten":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object v5, p0

    .line 62
    .local v5, "encloser":Lorg/apache/sshd/common/util/io/der/DERWriter;
    new-instance v6, Lorg/apache/sshd/common/util/io/der/DERWriter$1;

    move-object v0, v6

    move-object v1, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/util/io/der/DERWriter$1;-><init>(Lorg/apache/sshd/common/util/io/der/DERWriter;Ljava/io/OutputStream;Ljava/io/ByteArrayOutputStream;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/sshd/common/util/io/der/DERWriter;)V

    return-object v6
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/der/DERWriter;->out:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/der/DERWriter;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The underlying stream is not a byte[] stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBigInteger(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-string v0, "No value"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeBigInteger([B)V

    .line 76
    return-void
.end method

.method public varargs writeBigInteger([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeBigInteger([BII)V

    .line 87
    return-void
.end method

.method public writeBigInteger([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    :goto_0
    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    aget-byte v0, p1, p2

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;->isPositive(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    add-int/lit8 p2, p2, 0x1

    .line 102
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write(I)V

    .line 107
    aget-byte v0, p1, p2

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;->isPositive(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0, p3}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeLength(I)V

    goto :goto_1

    .line 110
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeLength(I)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write(I)V

    .line 114
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write([BII)V

    .line 115
    return-void
.end method

.method public writeLength(I)V
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v1, p1

    const-string v3, "Invalid length: %d"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 142
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 143
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write(I)V

    .line 144
    return-void

    .line 147
    :cond_1
    int-to-long v0, p1

    iget-object v2, p0, Lorg/apache/sshd/common/util/io/der/DERWriter;->lenBytes:[B

    invoke-static {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->putUInt(J[B)I

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "nonZeroPos":I
    :goto_1
    iget-object v1, p0, Lorg/apache/sshd/common/util/io/der/DERWriter;->lenBytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 151
    aget-byte v2, v1, v0

    if-eqz v2, :cond_2

    .line 152
    goto :goto_2

    .line 150
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_3
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 160
    array-length v1, v1

    sub-int/2addr v1, v0

    .line 161
    .local v1, "bytesLen":I
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write(I)V

    .line 162
    iget-object v2, p0, Lorg/apache/sshd/common/util/io/der/DERWriter;->lenBytes:[B

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write([BII)V

    .line 163
    return-void

    .line 157
    .end local v1    # "bytesLen":I
    :cond_4
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All zeroes length representation for len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs writeObject(BI[B)V
    .locals 1
    .param p1, "tag"    # B
    .param p2, "len"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write(I)V

    .line 134
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeLength(I)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write([BII)V

    .line 136
    return-void
.end method

.method public writeObject(Lorg/apache/sshd/common/util/io/der/ASN1Object;)V
    .locals 7
    .param p1, "obj"    # Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const-string v0, "No ASN.1 object"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v0

    .line 125
    .local v0, "type":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->getTypeValue()B

    move-result v1

    .line 126
    .local v1, "typeValue":B
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjClass()Lorg/apache/sshd/common/util/io/der/ASN1Class;

    move-result-object v2

    .line 127
    .local v2, "clazz":Lorg/apache/sshd/common/util/io/der/ASN1Class;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Class;->getClassValue()B

    move-result v3

    .line 128
    .local v3, "classValue":B
    shl-int/lit8 v4, v3, 0x6

    and-int/lit16 v4, v4, 0xc0

    and-int/lit8 v5, v1, 0x1f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 129
    .local v4, "tagValue":B
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeObject(BI[B)V

    .line 130
    return-void
.end method
