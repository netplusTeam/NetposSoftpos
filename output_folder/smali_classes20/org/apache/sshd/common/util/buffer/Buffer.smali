.class public abstract Lorg/apache/sshd/common/util/buffer/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lorg/apache/sshd/common/util/Readable;


# instance fields
.field protected final workBuf:[B


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    .line 81
    return-void
.end method


# virtual methods
.method public abstract array()[B
.end method

.method public abstract capacity()I
.end method

.method public clear()V
    .locals 1

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear(Z)V

    .line 150
    return-void
.end method

.method public abstract clear(Z)V
.end method

.method public abstract compact()V
.end method

.method protected abstract copyRawBytes(I[BII)V
.end method

.method public dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;)V
    .locals 1
    .param p1, "logger"    # Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 229
    sget-object v0, Lorg/apache/sshd/common/util/buffer/BufferUtils;->DEFAULT_HEXDUMP_LEVEL:Ljava/util/logging/Level;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;)V

    .line 230
    return-void
.end method

.method public dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;)V
    .locals 8
    .param p1, "logger"    # Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    .param p2, "level"    # Ljava/util/logging/Level;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 233
    nop

    .line 234
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v6

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v7

    .line 233
    const/16 v4, 0x20

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;C[BII)V

    .line 235
    return-void
.end method

.method public ensureAvailable(I)I
    .locals 4
    .param p1, "reqLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/util/buffer/BufferException;
        }
    .end annotation

    .line 574
    if-ltz p1, :cond_1

    .line 578
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 579
    .local v0, "availLen":I
    if-lt v0, p1, :cond_0

    .line 583
    return p1

    .line 580
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/util/buffer/BufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Underflow: requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", available="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/util/buffer/BufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    .end local v0    # "availLen":I
    :cond_1
    new-instance v0, Lorg/apache/sshd/common/util/buffer/BufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad item length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/buffer/BufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ensureCapacity(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 964
    sget-object v0, Lorg/apache/sshd/common/util/buffer/BufferUtils;->DEFAULT_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureCapacity(ILjava/util/function/IntUnaryOperator;)V

    .line 965
    return-void
.end method

.method public abstract ensureCapacity(ILjava/util/function/IntUnaryOperator;)V
.end method

.method protected extractEC(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;
    .locals 8
    .param p1, "expectedCurveName"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "curveName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "extractEC("

    if-eqz v1, :cond_1

    .line 543
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v1

    .line 544
    .local v1, "groupBytes":[B
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v3

    .line 546
    .local v3, "exponent":Ljava/math/BigInteger;
    if-eqz p2, :cond_0

    .line 552
    :try_start_0
    invoke-static {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToEcPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .local v2, "group":Ljava/security/spec/ECPoint;
    nop

    .line 560
    const-string v4, "EC"

    invoke-static {v4}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 561
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v5, v2, p2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 562
    .local v5, "pubKey":Ljava/security/PublicKey;
    new-instance v6, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v6, v3, p2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    .line 563
    .local v6, "privKey":Ljava/security/PrivateKey;
    new-instance v7, Ljava/security/KeyPair;

    invoke-direct {v7, v5, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v7

    .line 553
    .end local v2    # "group":Ljava/security/spec/ECPoint;
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "pubKey":Ljava/security/PublicKey;
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v4

    .line 554
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") failed ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") to decode EC group for curve: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 556
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 547
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") missing parameters for curve"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    .end local v1    # "groupBytes":[B
    .end local v3    # "exponent":Ljava/math/BigInteger;
    :cond_1
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mismatched curve name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAvailableStrings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 364
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getAvailableStrings(Ljava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableStrings(Ljava/nio/charset/Charset;)Ljava/util/Collection;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 375
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "s":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 380
    :cond_0
    return-object v0
.end method

.method public getBoolean()Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte()B
    .locals 3

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureAvailable(I)I

    .line 247
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawBytes([BII)V

    .line 248
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public getBytes()[B
    .locals 3

    .line 432
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    .line 433
    .local v0, "reqLen":I
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureAvailable(I)I

    move-result v1

    .line 434
    .local v1, "len":I
    new-array v2, v1, [B

    .line 435
    .local v2, "b":[B
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawBytes([B)V

    .line 436
    return-object v2
.end method

.method public getCompactData()[B
    .locals 5

    .line 132
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 133
    .local v0, "l":I
    if-lez v0, :cond_0

    .line 134
    new-array v1, v0, [B

    .line 135
    .local v1, "b":[B
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-object v1

    .line 138
    .end local v1    # "b":[B
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v1
.end method

.method public getInt()I
    .locals 2

    .line 260
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/SshException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 497
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "keyAlg":Ljava/lang/String;
    const-string v2, "ssh-rsa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v2

    .line 500
    .local v2, "e":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v3

    move-object v12, v3

    .line 501
    .local v12, "n":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v3

    move-object v13, v3

    .line 502
    .local v13, "d":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v11

    .line 503
    .local v11, "qInv":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v3

    move-object v14, v3

    .line 504
    .local v14, "q":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v3

    move-object v15, v3

    .line 505
    .local v15, "p":Ljava/math/BigInteger;
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 506
    .local v9, "dP":Ljava/math/BigInteger;
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 507
    .local v10, "dQ":Ljava/math/BigInteger;
    const-string v3, "RSA"

    invoke-static {v3}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    move-object v8, v3

    .line 508
    .local v8, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v12, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v16, v3

    .line 509
    .local v16, "pub":Ljava/security/PublicKey;
    new-instance v7, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object v3, v7

    move-object v4, v12

    move-object v5, v2

    move-object v6, v13

    move-object/from16 v17, v2

    move-object v2, v7

    .end local v2    # "e":Ljava/math/BigInteger;
    .local v17, "e":Ljava/math/BigInteger;
    move-object v7, v15

    move-object/from16 v18, v12

    move-object v12, v8

    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    .local v12, "keyFactory":Ljava/security/KeyFactory;
    .local v18, "n":Ljava/math/BigInteger;
    move-object v8, v14

    invoke-direct/range {v3 .. v11}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v12, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 510
    .end local v9    # "dP":Ljava/math/BigInteger;
    .end local v10    # "dQ":Ljava/math/BigInteger;
    .end local v11    # "qInv":Ljava/math/BigInteger;
    .end local v12    # "keyFactory":Ljava/security/KeyFactory;
    .end local v13    # "d":Ljava/math/BigInteger;
    .end local v14    # "q":Ljava/math/BigInteger;
    .end local v15    # "p":Ljava/math/BigInteger;
    .end local v17    # "e":Ljava/math/BigInteger;
    .end local v18    # "n":Ljava/math/BigInteger;
    .local v2, "prv":Ljava/security/PrivateKey;
    move-object/from16 v3, v16

    goto :goto_0

    .end local v2    # "prv":Ljava/security/PrivateKey;
    .end local v16    # "pub":Ljava/security/PublicKey;
    :cond_0
    const-string v2, "ssh-dss"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v2

    .line 512
    .local v2, "p":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v3

    .line 513
    .local v3, "q":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v4

    .line 514
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v5

    .line 515
    .local v5, "y":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v6

    .line 516
    .local v6, "x":Ljava/math/BigInteger;
    const-string v7, "DSA"

    invoke-static {v7}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    .line 517
    .local v7, "keyFactory":Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v8, v5, v2, v3, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v7, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    move-object/from16 v16, v8

    .line 518
    .restart local v16    # "pub":Ljava/security/PublicKey;
    new-instance v8, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v8, v6, v2, v3, v4}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v7, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v8

    move-object v2, v8

    .line 519
    .end local v3    # "q":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "y":Ljava/math/BigInteger;
    .end local v6    # "x":Ljava/math/BigInteger;
    .end local v7    # "keyFactory":Ljava/security/KeyFactory;
    .local v2, "prv":Ljava/security/PrivateKey;
    move-object/from16 v3, v16

    .line 531
    .end local v16    # "pub":Ljava/security/PublicKey;
    .local v3, "pub":Ljava/security/PublicKey;
    :goto_0
    new-instance v4, Ljava/security/KeyPair;

    invoke-direct {v4, v3, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v4

    .line 519
    .end local v2    # "prv":Ljava/security/PrivateKey;
    .end local v3    # "pub":Ljava/security/PublicKey;
    :cond_1
    const-string v2, "ssh-ed25519"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    invoke-static {v1, v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->extractEDDSAKeyPair(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v2

    return-object v2

    .line 522
    :cond_2
    invoke-static {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->fromKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v2

    .line 523
    .local v2, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v2, :cond_3

    .line 526
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "curveName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 528
    .local v4, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->extractEC(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v5

    return-object v5

    .line 524
    .end local v3    # "curveName":Ljava/lang/String;
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_3
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported key pair algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v0    # "keyAlg":Ljava/lang/String;
    .end local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/apache/sshd/common/SshException;

    invoke-direct {v2, v0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getLong()J
    .locals 8

    .line 270
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureAvailable(I)I

    .line 271
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawBytes([BII)V

    .line 272
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    aget-byte v2, v1, v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v2, v4

    .line 273
    .local v2, "l":J
    const/4 v4, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 274
    const/4 v4, 0x2

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 275
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 276
    const/4 v4, 0x4

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 277
    const/4 v4, 0x5

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 278
    const/4 v4, 0x6

    aget-byte v4, v1, v4

    int-to-long v4, v4

    shl-long/2addr v4, v0

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 279
    const/4 v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 280
    .end local v2    # "l":J
    .local v0, "l":J
    return-wide v0
.end method

.method public getMPInt()Ljava/math/BigInteger;
    .locals 2

    .line 424
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public getMPIntAsBytes()[B
    .locals 1

    .line 428
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getNameList(Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNameList(C)Ljava/util/List;
    .locals 1
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getNameList(Ljava/nio/charset/Charset;C)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNameList(Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    const/16 v0, 0x2c

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getNameList(Ljava/nio/charset/Charset;C)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNameList(Ljava/nio/charset/Charset;C)Ljava/util/List;
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "list":Ljava/lang/String;
    invoke-static {v0, p2}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "values":[Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/SshException;
        }
    .end annotation

    .line 444
    sget-object v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->DEFAULT:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getPublicKey(Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey(Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "+",
            "Ljava/security/PublicKey;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/SshException;
        }
    .end annotation

    .line 455
    .local p1, "parser":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 456
    .local v0, "ow":I
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v1

    .line 457
    .local v1, "len":I
    if-ltz v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 463
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawPublicKey(Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 463
    return-object v2

    .line 465
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 466
    throw v2

    .line 458
    :cond_0
    new-instance v2, Lorg/apache/sshd/common/SshException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illogical public key length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRawBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 440
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawBytes([BII)V

    .line 441
    return-void
.end method

.method public getRawPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/SshException;
        }
    .end annotation

    .line 470
    sget-object v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->DEFAULT:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawPublicKey(Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getRawPublicKey(Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "+",
            "Ljava/security/PublicKey;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/SshException;
        }
    .end annotation

    .line 480
    .local p1, "parser":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    const-string v0, "No key data parser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "keyType":Ljava/lang/String;
    invoke-interface {p1, v0}, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->isKeyTypeSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-interface {p1, v0, p0}, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 484
    :cond_0
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not supported by parser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parser":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v0    # "keyType":Ljava/lang/String;
    .restart local p1    # "parser":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/apache/sshd/common/SshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getShort()S
    .locals 4

    .line 252
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureAvailable(I)I

    .line 253
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawBytes([BII)V

    .line 254
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    const v3, 0xff00

    and-int/2addr v1, v3

    int-to-short v1, v1

    .line 255
    .local v1, "v":S
    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 256
    .end local v1    # "v":S
    .local v0, "v":S
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 292
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public getStringList(Z)Ljava/util/Collection;
    .locals 1
    .param p1, "usePrependedLength"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getStringList(ZLjava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(ZLjava/nio/charset/Charset;)Ljava/util/Collection;
    .locals 2
    .param p1, "usePrependedLength"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    .line 353
    .local v0, "count":I
    invoke-virtual {p0, v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getStringList(ILjava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 355
    .end local v0    # "count":I
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getAvailableStrings(Ljava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(I)Ljava/util/List;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getStringList(ILjava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(ILjava/nio/charset/Charset;)Ljava/util/List;
    .locals 3
    .param p1, "count"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 399
    if-ltz p1, :cond_2

    const v0, 0x8000

    if-gt p1, v0, :cond_2

    .line 402
    if-nez p1, :cond_0

    .line 403
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "index":I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 408
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v2    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "index":I
    :cond_1
    return-object v0

    .line 400
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illogical string list length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUByte()I
    .locals 1

    .line 242
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getUInt()J
    .locals 3

    .line 264
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureAvailable(I)I

    .line 265
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawBytes([BII)V

    .line 266
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getUInt([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValidMessageStructure(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    .line 164
    .local p1, "fieldTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<*>;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 165
    return v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 169
    .local v0, "remainLen":I
    const/4 v2, 0x0

    .line 170
    .local v2, "readOffset":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 171
    .local v4, "ft":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    if-eq v4, v5, :cond_e

    const-class v5, Ljava/lang/Boolean;

    if-eq v4, v5, :cond_e

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_e

    const-class v5, Ljava/lang/Byte;

    if-ne v4, v5, :cond_1

    goto :goto_4

    .line 179
    :cond_1
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_c

    const-class v5, Ljava/lang/Short;

    if-ne v4, v5, :cond_2

    goto :goto_3

    .line 186
    :cond_2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    if-eq v4, v5, :cond_a

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 193
    :cond_3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_8

    const-class v5, Ljava/lang/Long;

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 200
    :cond_4
    const-class v5, [B

    if-eq v4, v5, :cond_5

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_10

    .line 201
    :cond_5
    if-ge v0, v7, :cond_6

    .line 202
    return v6

    .line 205
    :cond_6
    iget-object v5, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    invoke-virtual {p0, v2, v5, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->copyRawBytes(I[BII)V

    .line 206
    add-int/lit8 v0, v0, -0x4

    .line 207
    add-int/lit8 v2, v2, 0x4

    .line 209
    iget-object v5, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    invoke-static {v5, v6, v7}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getUInt([BII)J

    move-result-wide v7

    .line 210
    .local v7, "length":J
    int-to-long v9, v0

    cmp-long v5, v7, v9

    if-lez v5, :cond_7

    .line 211
    return v6

    .line 214
    :cond_7
    long-to-int v5, v7

    sub-int/2addr v0, v5

    .line 215
    long-to-int v5, v7

    add-int/2addr v2, v5

    goto :goto_5

    .line 194
    .end local v7    # "length":J
    :cond_8
    :goto_1
    const/16 v5, 0x8

    if-ge v0, v5, :cond_9

    .line 195
    return v6

    .line 198
    :cond_9
    add-int/lit8 v0, v0, -0x8

    .line 199
    add-int/lit8 v2, v2, 0x8

    goto :goto_5

    .line 187
    :cond_a
    :goto_2
    if-ge v0, v7, :cond_b

    .line 188
    return v6

    .line 191
    :cond_b
    add-int/lit8 v0, v0, -0x4

    .line 192
    add-int/lit8 v2, v2, 0x4

    goto :goto_5

    .line 180
    :cond_c
    :goto_3
    const/4 v5, 0x2

    if-ge v0, v5, :cond_d

    .line 181
    return v6

    .line 184
    :cond_d
    add-int/lit8 v0, v0, -0x2

    .line 185
    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 173
    :cond_e
    :goto_4
    if-ge v0, v1, :cond_f

    .line 174
    return v6

    .line 177
    :cond_f
    add-int/lit8 v0, v0, -0x1

    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 217
    .end local v4    # "ft":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    :goto_5
    goto/16 :goto_0

    .line 219
    :cond_11
    return v1
.end method

.method public varargs isValidMessageStructure([Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 160
    .local p1, "fieldTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->isValidMessageStructure(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public putAndWipeBytes([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 698
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putAndWipeBytes([BII)V

    .line 699
    return-void
.end method

.method public putAndWipeBytes([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([BII)V

    .line 704
    move v0, p2

    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 705
    const/4 v2, 0x0

    aput-byte v2, p1, v0

    .line 704
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    .end local v0    # "pos":I
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public putAndWipeChars([C)V
    .locals 2
    .param p1, "chars"    # [C

    .line 810
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putAndWipeChars([CII)V

    .line 811
    return-void
.end method

.method public putAndWipeChars([CII)V
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 814
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putAndWipeChars([CIILjava/nio/charset/Charset;)V

    .line 815
    return-void
.end method

.method public putAndWipeChars([CIILjava/nio/charset/Charset;)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 822
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putChars([CIILjava/nio/charset/Charset;)V

    .line 823
    move v0, p2

    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 824
    const/4 v2, 0x0

    aput-char v2, p1, v0

    .line 823
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    .end local v0    # "pos":I
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public putAndWipeChars([CLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 818
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putAndWipeChars([CIILjava/nio/charset/Charset;)V

    .line 819
    return-void
.end method

.method public putBoolean(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 687
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 688
    return-void
.end method

.method public abstract putBuffer(Lorg/apache/sshd/common/util/Readable;Z)I
.end method

.method public abstract putBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public putBuffer(Lorg/apache/sshd/common/util/Readable;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/Readable;

    .line 637
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;Z)I

    .line 638
    return-void
.end method

.method public putBufferedData(Ljava/lang/Object;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/Object;

    .line 623
    const-string v0, "No buffered data to encode"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 624
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 625
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    goto :goto_0

    .line 626
    :cond_0
    instance-of v0, p1, Lorg/apache/sshd/common/util/Readable;

    if-eqz v0, :cond_1

    .line 627
    move-object v0, p1

    check-cast v0, Lorg/apache/sshd/common/util/Readable;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    goto :goto_0

    .line 628
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 629
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Ljava/nio/ByteBuffer;)V

    .line 634
    :goto_0
    return-void

    .line 631
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No buffered overload found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 632
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putByte(B)V
    .locals 3
    .param p1, "b"    # B

    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureCapacity(I)V

    .line 592
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 593
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 594
    return-void
.end method

.method public putBytes([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 710
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([BII)V

    .line 711
    return-void
.end method

.method public putBytes([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 714
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 715
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 716
    return-void
.end method

.method public putChars([C)V
    .locals 2
    .param p1, "chars"    # [C

    .line 829
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putChars([CII)V

    .line 830
    return-void
.end method

.method public putChars([CII)V
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 833
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putChars([CIILjava/nio/charset/Charset;)V

    .line 834
    return-void
.end method

.method public putChars([CIILjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 841
    if-gtz p3, :cond_0

    .line 842
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    goto :goto_0

    .line 844
    :cond_0
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 845
    .local v0, "charBuf":Ljava/nio/CharBuffer;
    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 846
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Ljava/nio/ByteBuffer;)V

    .line 848
    .end local v0    # "charBuf":Ljava/nio/CharBuffer;
    .end local v1    # "byteBuf":Ljava/nio/ByteBuffer;
    :goto_0
    return-void
.end method

.method public putChars([CLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 837
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putChars([CIILjava/nio/charset/Charset;)V

    .line 838
    return-void
.end method

.method public putInt(J)V
    .locals 3
    .param p1, "i"    # J

    .line 662
    const-string v0, "Invalid 32-bit value: %d"

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->validateInt32Value(JLjava/lang/String;)J

    .line 663
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureCapacity(I)V

    .line 664
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->putUInt(J[BII)I

    .line 665
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 666
    return-void
.end method

.method public putKeyPair(Ljava/security/KeyPair;)V
    .locals 8
    .param p1, "kp"    # Ljava/security/KeyPair;

    .line 918
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 919
    .local v0, "pubKey":Ljava/security/PublicKey;
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    .line 920
    .local v1, "prvKey":Ljava/security/PrivateKey;
    instance-of v2, v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_0

    .line 921
    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 922
    .local v2, "rsaPub":Ljava/security/interfaces/RSAPublicKey;
    move-object v3, v1

    check-cast v3, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 924
    .local v3, "rsaPrv":Ljava/security/interfaces/RSAPrivateCrtKey;
    const-string v4, "ssh-rsa"

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 925
    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 926
    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 927
    invoke-interface {v3}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 928
    invoke-interface {v3}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 929
    invoke-interface {v3}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 930
    invoke-interface {v3}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 931
    .end local v2    # "rsaPub":Ljava/security/interfaces/RSAPublicKey;
    .end local v3    # "rsaPrv":Ljava/security/interfaces/RSAPrivateCrtKey;
    goto/16 :goto_0

    :cond_0
    instance-of v2, v0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_1

    .line 932
    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    .line 933
    .local v2, "dsaPub":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 934
    .local v3, "dsaParams":Ljava/security/interfaces/DSAParams;
    move-object v4, v1

    check-cast v4, Ljava/security/interfaces/DSAPrivateKey;

    .line 936
    .local v4, "dsaPrv":Ljava/security/interfaces/DSAPrivateKey;
    const-string v5, "ssh-dss"

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 937
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 938
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 939
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 940
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 941
    invoke-interface {v4}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 942
    .end local v2    # "dsaPub":Ljava/security/interfaces/DSAPublicKey;
    .end local v3    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v4    # "dsaPrv":Ljava/security/interfaces/DSAPrivateKey;
    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_3

    .line 943
    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 944
    .local v2, "ecPub":Ljava/security/interfaces/ECPublicKey;
    move-object v3, v1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    .line 945
    .local v3, "ecPriv":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 946
    .local v4, "ecParams":Ljava/security/spec/ECParameterSpec;
    invoke-static {v4}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v5

    .line 947
    .local v5, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v5, :cond_2

    .line 951
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/apache/sshd/common/cipher/ECCurves;->encodeECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)[B

    move-result-object v6

    .line 952
    .local v6, "ecPoint":[B
    invoke-virtual {v5}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeyType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v5}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 955
    invoke-interface {v3}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 956
    .end local v2    # "ecPub":Ljava/security/interfaces/ECPublicKey;
    .end local v3    # "ecPriv":Ljava/security/interfaces/ECPrivateKey;
    .end local v4    # "ecParams":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .end local v6    # "ecPoint":[B
    goto :goto_0

    .line 948
    .restart local v2    # "ecPub":Ljava/security/interfaces/ECPublicKey;
    .restart local v3    # "ecPriv":Ljava/security/interfaces/ECPrivateKey;
    .restart local v4    # "ecParams":Ljava/security/spec/ECParameterSpec;
    .restart local v5    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_2
    new-instance v6, Lorg/apache/sshd/common/util/buffer/BufferException;

    const-string v7, "Unsupported EC curve parameters"

    invoke-direct {v6, v7}, Lorg/apache/sshd/common/util/buffer/BufferException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 956
    .end local v2    # "ecPub":Ljava/security/interfaces/ECPublicKey;
    .end local v3    # "ecPriv":Ljava/security/interfaces/ECPrivateKey;
    .end local v4    # "ecParams":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_3
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EdDSA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 957
    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->putEDDSAKeyPair(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;Ljava/security/PrivateKey;)Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_4
    new-instance v2, Lorg/apache/sshd/common/util/buffer/BufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key pair algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/util/buffer/BufferException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putLong(J)V
    .locals 6
    .param p1, "i"    # J

    .line 674
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureCapacity(I)V

    .line 675
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    const/16 v2, 0x38

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 676
    const/16 v2, 0x30

    shr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 677
    const/16 v2, 0x28

    shr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 678
    const/16 v2, 0x20

    shr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 679
    const/16 v2, 0x18

    shr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    .line 680
    const/16 v2, 0x10

    shr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    .line 681
    shr-long v4, p1, v0

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x6

    aput-byte v2, v1, v4

    .line 682
    long-to-int v2, p1

    int-to-byte v2, v2

    const/4 v4, 0x7

    aput-byte v2, v1, v4

    .line 683
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 684
    return-void
.end method

.method public putMPInt(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "bi"    # Ljava/math/BigInteger;

    .line 851
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 852
    return-void
.end method

.method public putMPInt([B)V
    .locals 3
    .param p1, "foo"    # [B

    .line 855
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 856
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 857
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    goto :goto_0

    .line 859
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 861
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([B)V

    .line 862
    return-void
.end method

.method public putNameList(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 765
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putNameList(Ljava/util/Collection;Ljava/nio/charset/Charset;)V

    .line 766
    return-void
.end method

.method public putNameList(Ljava/util/Collection;C)V
    .locals 1
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .line 773
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putNameList(Ljava/util/Collection;Ljava/nio/charset/Charset;C)V

    .line 774
    return-void
.end method

.method public putNameList(Ljava/util/Collection;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 769
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x2c

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putNameList(Ljava/util/Collection;Ljava/nio/charset/Charset;C)V

    .line 770
    return-void
.end method

.method public putNameList(Ljava/util/Collection;Ljava/nio/charset/Charset;C)V
    .locals 1
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "C)V"
        }
    .end annotation

    .line 784
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1, p3}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "list":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 786
    return-void
.end method

.method public putOptionalBufferedData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Object;

    .line 606
    if-nez p1, :cond_0

    .line 607
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBufferedData(Ljava/lang/Object;)V

    .line 611
    :goto_0
    return-void
.end method

.method public putPublicKey(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 871
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 872
    .local v0, "ow":I
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 873
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v1

    .line 874
    .local v1, "ow1":I
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawPublicKey(Ljava/security/PublicKey;)V

    .line 875
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v2

    .line 876
    .local v2, "ow2":I
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 877
    sub-int v3, v2, v1

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 878
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 879
    return-void
.end method

.method public putRawBytes([B)V
    .locals 2
    .param p1, "d"    # [B

    .line 865
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 866
    return-void
.end method

.method public abstract putRawBytes([BII)V
.end method

.method public putRawPublicKey(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 882
    const-string v0, "No key"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 883
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 884
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 886
    .local v0, "rsaPub":Ljava/security/interfaces/RSAPublicKey;
    const-string v1, "ssh-rsa"

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 887
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 888
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 889
    .end local v0    # "rsaPub":Ljava/security/interfaces/RSAPublicKey;
    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1

    .line 890
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 891
    .local v0, "dsaPub":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 893
    .local v1, "dsaParams":Ljava/security/interfaces/DSAParams;
    const-string v2, "ssh-dss"

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 894
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 895
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 896
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 897
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 898
    .end local v0    # "dsaPub":Ljava/security/interfaces/DSAPublicKey;
    .end local v1    # "dsaParams":Ljava/security/interfaces/DSAParams;
    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_3

    .line 899
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 900
    .local v0, "ecKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 901
    .local v1, "ecParams":Ljava/security/spec/ECParameterSpec;
    invoke-static {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v2

    .line 902
    .local v2, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v2, :cond_2

    .line 906
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/apache/sshd/common/cipher/ECCurves;->encodeECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)[B

    move-result-object v3

    .line 907
    .local v3, "ecPoint":[B
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p0, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 910
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v1    # "ecParams":Ljava/security/spec/ECParameterSpec;
    .end local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .end local v3    # "ecPoint":[B
    goto :goto_0

    .line 903
    .restart local v0    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .restart local v1    # "ecParams":Ljava/security/spec/ECParameterSpec;
    .restart local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_2
    new-instance v3, Lorg/apache/sshd/common/util/buffer/BufferException;

    const-string v4, "Unsupported EC curve parameters"

    invoke-direct {v3, v4}, Lorg/apache/sshd/common/util/buffer/BufferException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 910
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v1    # "ecParams":Ljava/security/spec/ECParameterSpec;
    .end local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_3
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdDSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 911
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->putRawEDDSAPublicKey(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;)Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_4
    new-instance v0, Lorg/apache/sshd/common/util/buffer/BufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported raw public key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/buffer/BufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putShort(I)V
    .locals 5
    .param p1, "i"    # I

    .line 650
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->ensureCapacity(I)V

    .line 651
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/Buffer;->workBuf:[B

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 652
    int-to-byte v2, p1

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 653
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 654
    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 789
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 790
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 793
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    goto :goto_0

    .line 796
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 797
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 799
    .end local v0    # "bytes":[B
    :goto_0
    return-void
.end method

.method public putStringList(Ljava/util/Collection;Ljava/nio/charset/Charset;Z)V
    .locals 4
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "prependLength"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/nio/charset/Charset;",
            "Z)V"
        }
    .end annotation

    .line 741
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 742
    .local v0, "numObjects":I
    if-eqz p3, :cond_0

    .line 743
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 746
    :cond_0
    if-gtz v0, :cond_1

    .line 747
    return-void

    .line 750
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 751
    .local v2, "o":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 753
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 754
    :cond_2
    return-void
.end method

.method public putStringList(Ljava/util/Collection;Z)V
    .locals 1
    .param p2, "prependLength"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;Z)V"
        }
    .end annotation

    .line 727
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putStringList(Ljava/util/Collection;Ljava/nio/charset/Charset;Z)V

    .line 728
    return-void
.end method

.method public rawByte(I)B
    .locals 2
    .param p1, "pos"    # I

    .line 121
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    .line 122
    .local v0, "data":[B
    aget-byte v1, v0, p1

    return v1
.end method

.method public abstract rpos()I
.end method

.method public abstract rpos(I)V
.end method

.method protected abstract size()I
.end method

.method public toHex()Ljava/lang/String;
    .locals 3

    .line 225
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[rpos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 984
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wpos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 985
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 986
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    return-object v0
.end method

.method public abstract wpos()I
.end method

.method public abstract wpos(I)V
.end method
