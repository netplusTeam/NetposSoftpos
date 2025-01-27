.class public Lorg/apache/sshd/common/signature/SignatureDSA;
.super Lorg/apache/sshd/common/signature/AbstractSignature;
.source "SignatureDSA.java"


# static fields
.field public static final DEFAULT_ALGORITHM:Ljava/lang/String; = "SHA1withDSA"

.field public static final DSA_SIGNATURE_LENGTH:I = 0x28

.field public static final MAX_SIGNATURE_VALUE_LENGTH:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    const-string v0, "SHA1withDSA"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/signature/SignatureDSA;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/signature/AbstractSignature;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static putBigInteger(Ljava/math/BigInteger;[BI)V
    .locals 7
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "result"    # [B
    .param p2, "offset"    # I

    .line 91
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 92
    .local v0, "data":[B
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x14

    if-le v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 93
    .local v1, "maxExceeded":Z
    :goto_0
    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    array-length v5, v0

    rsub-int/lit8 v5, v5, 0x14

    .line 94
    .local v5, "dstOffset":I
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int v3, p2, v5

    array-length v6, v0

    .line 96
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 94
    invoke-static {v0, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    return-void
.end method


# virtual methods
.method public sign(Lorg/apache/sshd/common/session/SessionContext;)[B
    .locals 8
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Lorg/apache/sshd/common/signature/AbstractSignature;->sign(Lorg/apache/sshd/common/session/SessionContext;)[B

    move-result-object v0

    .line 59
    .local v0, "sig":[B
    new-instance v1, Lorg/apache/sshd/common/util/io/der/DERParser;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>([B)V

    .line 60
    .local v1, "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->read()I

    move-result v2

    .line 61
    .local v2, "type":I
    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 67
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->readLength()I

    move-result v3

    .line 75
    .local v3, "remainLen":I
    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 80
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 81
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 83
    .local v5, "s":Ljava/math/BigInteger;
    const/16 v6, 0x28

    new-array v6, v6, [B

    .line 84
    .local v6, "result":[B
    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lorg/apache/sshd/common/signature/SignatureDSA;->putBigInteger(Ljava/math/BigInteger;[BI)V

    .line 85
    const/16 v7, 0x14

    invoke-static {v5, v6, v7}, Lorg/apache/sshd/common/signature/SignatureDSA;->putBigInteger(Ljava/math/BigInteger;[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    nop

    .line 87
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 86
    return-object v6

    .line 76
    .end local v4    # "r":Ljava/math/BigInteger;
    .end local v5    # "s":Ljava/math/BigInteger;
    .end local v6    # "result":[B
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid signature format - not enough encoded data length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sig":[B
    .end local v1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    throw v4

    .line 62
    .end local v3    # "remainLen":I
    .restart local v0    # "sig":[B
    .restart local v1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    :cond_1
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid signature format - not a DER SEQUENCE: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sig":[B
    .end local v1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v2    # "type":I
    .restart local v0    # "sig":[B
    .restart local v1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    :catchall_0
    move-exception v2

    .end local v0    # "sig":[B
    .end local v1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    .restart local v0    # "sig":[B
    .restart local v1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method public verify(Lorg/apache/sshd/common/session/SessionContext;[B)Z
    .locals 9
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    .line 102
    .local v0, "sigLen":I
    move-object v1, p2

    .line 104
    .local v1, "data":[B
    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    .line 106
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/signature/SignatureDSA;->extractEncodedSignature([B)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v3

    .line 107
    .local v3, "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    if-eqz v3, :cond_0

    .line 108
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    .local v4, "keyType":Ljava/lang/String;
    nop

    .line 110
    const-string v5, "ssh-dss"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 109
    const-string v6, "Mismatched key type: %s"

    invoke-static {v5, v6, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, [B

    .line 112
    invoke-static {v1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    .line 116
    .end local v3    # "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v4    # "keyType":Ljava/lang/String;
    :cond_0
    if-ne v0, v2, :cond_1

    .line 123
    new-instance v2, Lorg/apache/sshd/common/util/io/der/DERWriter;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(I)V

    .line 124
    .local v2, "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    const/4 v4, 0x0

    const/16 v5, 0x14

    :try_start_0
    invoke-virtual {v2, v1, v4, v5}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeBigInteger([BII)V

    .line 125
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 126
    .local v4, "rEncoding":[B
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V

    .line 129
    .end local v2    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    new-instance v2, Lorg/apache/sshd/common/util/io/der/DERWriter;

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(I)V

    .line 130
    .restart local v2    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :try_start_1
    invoke-virtual {v2, v1, v5, v5}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeBigInteger([BII)V

    .line 131
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 132
    .local v3, "sEncoding":[B
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V

    .line 134
    .end local v2    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    array-length v2, v4

    array-length v5, v3

    add-int/2addr v2, v5

    .line 136
    .local v2, "length":I
    new-instance v5, Lorg/apache/sshd/common/util/io/der/DERWriter;

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v5, v6}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(I)V

    .line 137
    .local v5, "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    const/16 v6, 0x30

    :try_start_2
    invoke-virtual {v5, v6}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write(I)V

    .line 138
    invoke-virtual {v5, v2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeLength(I)V

    .line 139
    invoke-virtual {v5, v4}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write([B)V

    .line 140
    invoke-virtual {v5, v3}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write([B)V

    .line 141
    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/der/DERWriter;->toByteArray()[B

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .local v6, "encoded":[B
    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V

    .line 144
    .end local v5    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    invoke-virtual {p0, v6}, Lorg/apache/sshd/common/signature/SignatureDSA;->doVerify([B)Z

    move-result v5

    return v5

    .line 136
    .end local v6    # "encoded":[B
    .restart local v5    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :catchall_0
    move-exception v6

    .end local v0    # "sigLen":I
    .end local v1    # "data":[B
    .end local v2    # "length":I
    .end local v3    # "sEncoding":[B
    .end local v4    # "rEncoding":[B
    .end local v5    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "sig":[B
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    .restart local v0    # "sigLen":I
    .restart local v1    # "data":[B
    .restart local v2    # "length":I
    .restart local v3    # "sEncoding":[B
    .restart local v4    # "rEncoding":[B
    .restart local v5    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "sig":[B
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v7

    .line 129
    .end local v3    # "sEncoding":[B
    .end local v5    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .local v2, "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :catchall_3
    move-exception v3

    .end local v0    # "sigLen":I
    .end local v1    # "data":[B
    .end local v2    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .end local v4    # "rEncoding":[B
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "sig":[B
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 132
    .restart local v0    # "sigLen":I
    .restart local v1    # "data":[B
    .restart local v2    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .restart local v4    # "rEncoding":[B
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "sig":[B
    :catchall_4
    move-exception v5

    :try_start_6
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v6

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5

    .line 123
    .end local v4    # "rEncoding":[B
    :catchall_6
    move-exception v3

    .end local v0    # "sigLen":I
    .end local v1    # "data":[B
    .end local v2    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "sig":[B
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 126
    .restart local v0    # "sigLen":I
    .restart local v1    # "data":[B
    .restart local v2    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "sig":[B
    :catchall_7
    move-exception v4

    :try_start_8
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_2

    :catchall_8
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v4

    .line 117
    .end local v2    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :cond_1
    new-instance v3, Ljava/security/SignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad signature length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x3a

    .line 119
    invoke-static {v4, v1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
