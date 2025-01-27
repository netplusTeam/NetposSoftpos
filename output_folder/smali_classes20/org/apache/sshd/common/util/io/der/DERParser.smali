.class public Lorg/apache/sshd/common/util/io/der/DERParser;
.super Ljava/io/FilterInputStream;
.source "DERParser.java"


# static fields
.field public static final MAX_DER_VALUE_LENGTH:I = 0xfffe


# instance fields
.field private final lenBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;

    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/der/DERParser;->lenBytes:[B

    .line 59
    return-void
.end method

.method public varargs constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 50
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>([BII)V

    .line 51
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>(Ljava/io/InputStream;)V

    .line 55
    return-void
.end method


# virtual methods
.method public readBigInteger()Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->read()I

    move-result v0

    .line 138
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readLength()I

    move-result v1

    .line 143
    .local v1, "len":I
    new-array v2, v1, [B

    .line 144
    .local v2, "value":[B
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->read([B)I

    move-result v3

    .line 145
    .local v3, "n":I
    if-lt v3, v1, :cond_0

    .line 149
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>([B)V

    return-object v4

    .line 146
    :cond_0
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DER: stream too short, missing value: read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of required "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .end local v1    # "len":I
    .end local v2    # "value":[B
    .end local v3    # "n":I
    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DER: data type is not an INTEGER: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLength()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->read()I

    move-result v0

    .line 85
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 90
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_0

    .line 91
    return v0

    .line 94
    :cond_0
    and-int/lit8 v1, v0, 0x7f

    .line 96
    .local v1, "num":I
    const/16 v2, 0xff

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/apache/sshd/common/util/io/der/DERParser;->lenBytes:[B

    array-length v3, v2

    if-gt v1, v3, :cond_4

    .line 101
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 102
    iget-object v2, p0, Lorg/apache/sshd/common/util/io/der/DERParser;->lenBytes:[B

    rsub-int/lit8 v3, v1, 0x4

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->read([BII)I

    move-result v2

    .line 103
    .local v2, "n":I
    if-lt v2, v1, :cond_3

    .line 107
    iget-object v3, p0, Lorg/apache/sshd/common/util/io/der/DERParser;->lenBytes:[B

    invoke-static {v3}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getUInt([B)J

    move-result-wide v3

    .line 108
    .local v3, "len":J
    const-wide/16 v5, 0x7f

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 112
    const-wide/32 v5, 0xfffe

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 117
    long-to-int v5, v3

    return v5

    .line 113
    :cond_1
    new-instance v5, Ljava/io/StreamCorruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid DER: data length too big: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xfffe

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    :cond_2
    new-instance v5, Ljava/io/StreamCorruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid DER: length not in shortest form: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 104
    .end local v3    # "len":J
    :cond_3
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid DER: length data too short: expected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    .end local v2    # "n":I
    :cond_4
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid DER: length field too big: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1    # "num":I
    :cond_5
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "Invalid DER: length missing"

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->read()I

    move-result v0

    .line 122
    .local v0, "tag":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 123
    const/4 v1, 0x0

    return-object v1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readLength()I

    move-result v1

    .line 127
    .local v1, "length":I
    new-array v2, v1, [B

    .line 128
    .local v2, "value":[B
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->read([B)I

    move-result v3

    .line 129
    .local v3, "n":I
    if-lt v3, v1, :cond_1

    .line 133
    new-instance v4, Lorg/apache/sshd/common/util/io/der/ASN1Object;

    int-to-byte v5, v0

    invoke-direct {v4, v5, v1, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;-><init>(BI[B)V

    return-object v4

    .line 130
    :cond_1
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DER: stream too short, missing value: read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of required "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
