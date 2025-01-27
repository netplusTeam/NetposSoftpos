.class Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;
.super Ljava/lang/Object;
.source "AuthorizedKeysFileBasedPKA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthorizedKeysDecoder"
.end annotation


# instance fields
.field private bytes:[B

.field private pos:I

.field final synthetic this$0:Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;


# direct methods
.method constructor <init>(Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;

    .line 88
    iput-object p1, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->this$0:Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeBigInt()Ljava/math/BigInteger;
    .locals 5

    .line 179
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeInt()I

    move-result v0

    .line 180
    .local v0, "len":I
    new-array v1, v0, [B

    .line 181
    .local v1, "bigIntBytes":[B
    iget-object v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->bytes:[B

    iget v3, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    .line 183
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v2
.end method

.method private decodeInt()I
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->bytes:[B

    iget v1, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private decodeString(I)Ljava/lang/String;
    .locals 3
    .param p1, "maxChars"    # I

    .line 204
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->readRLEBytes(I)[B

    move-result-object v0

    .line 205
    .local v0, "result":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private decodeType()Ljava/lang/String;
    .locals 4

    .line 165
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeInt()I

    move-result v0

    .line 166
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->bytes:[B

    iget v3, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 167
    .local v1, "type":Ljava/lang/String;
    iget v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    .line 168
    return-object v1
.end method

.method private readRLEBytes(I)[B
    .locals 5
    .param p1, "maxAllowed"    # I

    .line 188
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeInt()I

    move-result v0

    .line 189
    .local v0, "len":I
    if-gt v0, p1, :cond_1

    .line 193
    if-ltz v0, :cond_0

    .line 196
    new-array v1, v0, [B

    .line 197
    .local v1, "RLEBytes":[B
    iget-object v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->bytes:[B

    iget v3, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    .line 199
    return-object v1

    .line 194
    .end local v1    # "RLEBytes":[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative block length requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested block length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeds max. allowed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public decodePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 11
    .param p1, "keyLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    const-string v0, " from octets="

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->bytes:[B

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->pos:I

    .line 98
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 100
    .local v4, "part":Ljava/lang/String;
    const-string v5, "AAAA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 103
    .local v1, "bytePart":[B
    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->bytes:[B

    .line 104
    goto :goto_1

    .line 98
    .end local v1    # "bytePart":[B
    .end local v4    # "part":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->bytes:[B

    if-eqz v1, :cond_8

    .line 112
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeType()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "type":Ljava/lang/String;
    const-string v2, "ssh-rsa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeBigInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 115
    .local v0, "e":Ljava/math/BigInteger;
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeBigInt()Ljava/math/BigInteger;

    move-result-object v2

    .line 116
    .local v2, "m":Ljava/math/BigInteger;
    const-string v3, "RSA"

    invoke-static {v3}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 117
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v2, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    return-object v4

    .line 118
    .end local v0    # "e":Ljava/math/BigInteger;
    .end local v2    # "m":Ljava/math/BigInteger;
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :cond_2
    const-string v2, "ssh-dss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeBigInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 120
    .local v0, "p":Ljava/math/BigInteger;
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeBigInt()Ljava/math/BigInteger;

    move-result-object v2

    .line 121
    .local v2, "q":Ljava/math/BigInteger;
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeBigInt()Ljava/math/BigInteger;

    move-result-object v3

    .line 122
    .local v3, "g":Ljava/math/BigInteger;
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeBigInt()Ljava/math/BigInteger;

    move-result-object v4

    .line 123
    .local v4, "y":Ljava/math/BigInteger;
    const-string v5, "DSA"

    invoke-static {v5}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 124
    .local v5, "keyFactory":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v6, v4, v0, v2, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    return-object v6

    .line 125
    .end local v0    # "p":Ljava/math/BigInteger;
    .end local v2    # "q":Ljava/math/BigInteger;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v4    # "y":Ljava/math/BigInteger;
    .end local v5    # "keyFactory":Ljava/security/KeyFactory;
    :cond_3
    const-string v2, "ssh-ed25519"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_4

    .line 126
    invoke-direct {p0, v3}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->readRLEBytes(I)[B

    move-result-object v0

    .line 127
    .local v0, "seed":[B
    const-string v2, "Ed25519"

    invoke-static {v2}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v2

    .line 128
    .local v2, "params":Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    const-string v3, "EdDSA"

    invoke-static {v3}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 129
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-direct {v4, v0, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    return-object v4

    .line 131
    .end local v0    # "seed":[B
    .end local v2    # "params":Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :cond_4
    invoke-static {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->fromKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v2

    .line 132
    .local v2, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v2, :cond_7

    .line 135
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "keyCurveName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodeString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "encCurveName":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    const/16 v5, 0x7fff

    invoke-direct {p0, v5}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->readRLEBytes(I)[B

    move-result-object v5

    .line 144
    .local v5, "octets":[B
    const/16 v6, 0x3a

    :try_start_0
    invoke-static {v5}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToEcPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v7, "w":Ljava/security/spec/ECPoint;
    if-eqz v7, :cond_5

    .line 156
    nop

    .line 157
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 158
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    const-string v6, "EC"

    invoke-static {v6}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 159
    .local v6, "keyFactory":Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v8, v7, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v6, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    return-object v8

    .line 146
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v6    # "keyFactory":Ljava/security/KeyFactory;
    :cond_5
    :try_start_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No ECPoint generated for curve="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 147
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 148
    invoke-static {v6, v5}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .end local v3    # "encCurveName":Ljava/lang/String;
    .end local v4    # "keyCurveName":Ljava/lang/String;
    .end local v5    # "octets":[B
    .end local p1    # "keyLine":Ljava/lang/String;
    throw v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    .end local v7    # "w":Ljava/security/spec/ECPoint;
    .restart local v1    # "type":Ljava/lang/String;
    .restart local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .restart local v3    # "encCurveName":Ljava/lang/String;
    .restart local v4    # "keyCurveName":Ljava/lang/String;
    .restart local v5    # "octets":[B
    .restart local p1    # "keyLine":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 151
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 152
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") to generate ECPoint for curve="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 153
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-static {v6, v5}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 138
    .end local v5    # "octets":[B
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatched key curve name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") vs. encoded one ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    .end local v3    # "encCurveName":Ljava/lang/String;
    .end local v4    # "keyCurveName":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no Base64 part to decode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
