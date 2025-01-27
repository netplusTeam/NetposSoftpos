.class public Lorg/apache/sshd/common/signature/SignatureECDSA;
.super Lorg/apache/sshd/common/signature/AbstractSignature;
.source "SignatureECDSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/signature/SignatureECDSA$SignatureECDSA521;,
        Lorg/apache/sshd/common/signature/SignatureECDSA$SignatureECDSA384;,
        Lorg/apache/sshd/common/signature/SignatureECDSA$SignatureECDSA256;
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algo"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/signature/AbstractSignature;-><init>(Ljava/lang/String;)V

    .line 66
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

    .line 70
    invoke-super {p0, p1}, Lorg/apache/sshd/common/signature/AbstractSignature;->sign(Lorg/apache/sshd/common/session/SessionContext;)[B

    move-result-object v0

    .line 72
    .local v0, "sig":[B
    new-instance v1, Lorg/apache/sshd/common/util/io/der/DERParser;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>([B)V

    .line 73
    .local v1, "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->read()I

    move-result v2

    .line 74
    .local v2, "type":I
    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 80
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->readLength()I

    move-result v3

    .line 88
    .local v3, "remainLen":I
    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 93
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 94
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 96
    .local v5, "s":Ljava/math/BigInteger;
    new-instance v6, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v6}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    .line 97
    .local v6, "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v6, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 98
    invoke-virtual {v6, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 100
    invoke-virtual {v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 100
    return-object v7

    .line 89
    .end local v4    # "r":Ljava/math/BigInteger;
    .end local v5    # "s":Ljava/math/BigInteger;
    .end local v6    # "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
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

    .line 75
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

    .line 76
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

    .line 72
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

    .line 101
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
    .locals 13
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    move-object v0, p2

    .line 107
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/signature/SignatureECDSA;->extractEncodedSignature([B)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    .line 108
    .local v1, "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "keyType":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->fromKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v3

    .line 111
    .local v3, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    const-string v4, "Unknown curve type: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    .line 115
    .end local v2    # "keyType":Ljava/lang/String;
    .end local v3    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_0
    new-instance v2, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v2, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V

    .line 116
    .local v2, "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v3

    .line 118
    .local v3, "rArray":[B
    new-instance v4, Lorg/apache/sshd/common/util/io/der/DERWriter;

    array-length v5, v3

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(I)V

    .line 119
    .local v4, "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :try_start_0
    invoke-virtual {v4, v3}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeBigInteger([B)V

    .line 120
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/io/der/DERWriter;->toByteArray()[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 121
    .local v5, "rEncoding":[B
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V

    .line 123
    .end local v4    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v4

    .line 125
    .local v4, "sArray":[B
    new-instance v6, Lorg/apache/sshd/common/util/io/der/DERWriter;

    array-length v7, v4

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v6, v7}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(I)V

    .line 126
    .local v6, "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :try_start_1
    invoke-virtual {v6, v4}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeBigInteger([B)V

    .line 127
    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/DERWriter;->toByteArray()[B

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 128
    .local v7, "sEncoding":[B
    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V

    .line 130
    .end local v6    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v6

    .line 131
    .local v6, "remaining":I
    if-nez v6, :cond_1

    .line 135
    array-length v8, v5

    array-length v9, v7

    add-int/2addr v8, v9

    .line 137
    .local v8, "length":I
    new-instance v9, Lorg/apache/sshd/common/util/io/der/DERWriter;

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v10, v10, 0x4

    invoke-direct {v9, v10}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(I)V

    .line 138
    .local v9, "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    const/16 v10, 0x30

    :try_start_2
    invoke-virtual {v9, v10}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write(I)V

    .line 139
    invoke-virtual {v9, v8}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeLength(I)V

    .line 140
    invoke-virtual {v9, v5}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write([B)V

    .line 141
    invoke-virtual {v9, v7}, Lorg/apache/sshd/common/util/io/der/DERWriter;->write([B)V

    .line 142
    invoke-virtual {v9}, Lorg/apache/sshd/common/util/io/der/DERWriter;->toByteArray()[B

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .local v10, "encoded":[B
    invoke-virtual {v9}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V

    .line 145
    .end local v9    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    invoke-virtual {p0, v10}, Lorg/apache/sshd/common/signature/SignatureECDSA;->doVerify([B)Z

    move-result v9

    return v9

    .line 137
    .end local v10    # "encoded":[B
    .restart local v9    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :catchall_0
    move-exception v10

    .end local v0    # "data":[B
    .end local v1    # "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v2    # "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v3    # "rArray":[B
    .end local v4    # "sArray":[B
    .end local v5    # "rEncoding":[B
    .end local v6    # "remaining":I
    .end local v7    # "sEncoding":[B
    .end local v8    # "length":I
    .end local v9    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "sig":[B
    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    .restart local v0    # "data":[B
    .restart local v1    # "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v2    # "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v3    # "rArray":[B
    .restart local v4    # "sArray":[B
    .restart local v5    # "rEncoding":[B
    .restart local v6    # "remaining":I
    .restart local v7    # "sEncoding":[B
    .restart local v8    # "length":I
    .restart local v9    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "sig":[B
    :catchall_1
    move-exception v11

    :try_start_4
    invoke-virtual {v9}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v12

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v11

    .line 132
    .end local v8    # "length":I
    .end local v9    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :cond_1
    new-instance v8, Ljava/io/StreamCorruptedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature had padding - remaining="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 125
    .end local v7    # "sEncoding":[B
    .local v6, "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :catchall_3
    move-exception v7

    .end local v0    # "data":[B
    .end local v1    # "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v2    # "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v3    # "rArray":[B
    .end local v4    # "sArray":[B
    .end local v5    # "rEncoding":[B
    .end local v6    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "sig":[B
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 128
    .restart local v0    # "data":[B
    .restart local v1    # "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v2    # "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v3    # "rArray":[B
    .restart local v4    # "sArray":[B
    .restart local v5    # "rEncoding":[B
    .restart local v6    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "sig":[B
    :catchall_4
    move-exception v8

    :try_start_6
    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v8

    .line 118
    .end local v5    # "rEncoding":[B
    .end local v6    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .local v4, "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    :catchall_6
    move-exception v5

    .end local v0    # "data":[B
    .end local v1    # "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v2    # "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v3    # "rArray":[B
    .end local v4    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "sig":[B
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 121
    .restart local v0    # "data":[B
    .restart local v1    # "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v2    # "rsBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v3    # "rArray":[B
    .restart local v4    # "w":Lorg/apache/sshd/common/util/io/der/DERWriter;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "sig":[B
    :catchall_7
    move-exception v6

    :try_start_8
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/io/der/DERWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_2

    :catchall_8
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v6
.end method
