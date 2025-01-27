.class Lcom/auth0/jwt/algorithms/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field private static final JWT_PART_SEPARATOR:B = 0x2et


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createSignatureFor(Ljava/lang/String;Ljava/security/PrivateKey;[B)[B
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .param p3, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 203
    .local v0, "s":Ljava/security/Signature;
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 204
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 205
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method createSignatureFor(Ljava/lang/String;Ljava/security/PrivateKey;[B[B)[B
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .param p3, "headerBytes"    # [B
    .param p4, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 120
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 121
    .local v0, "s":Ljava/security/Signature;
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 122
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 123
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update(B)V

    .line 124
    invoke-virtual {v0, p4}, Ljava/security/Signature;->update([B)V

    .line 125
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method createSignatureFor(Ljava/lang/String;[B[B)[B
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "secretBytes"    # [B
    .param p3, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 161
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 162
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method createSignatureFor(Ljava/lang/String;[B[B[B)[B
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "secretBytes"    # [B
    .param p3, "headerBytes"    # [B
    .param p4, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 61
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 62
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 63
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 64
    invoke-virtual {v0, p4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method verifySignatureFor(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "payload"    # Ljava/lang/String;
    .param p5, "signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 81
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/auth0/jwt/algorithms/CryptoHelper;->verifySignatureFor(Ljava/lang/String;Ljava/security/PublicKey;[B[B[B)Z

    move-result v0

    return v0
.end method

.method verifySignatureFor(Ljava/lang/String;Ljava/security/PublicKey;[B[B)Z
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "contentBytes"    # [B
    .param p4, "signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 182
    .local v0, "s":Ljava/security/Signature;
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 183
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 184
    invoke-virtual {v0, p4}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method

.method verifySignatureFor(Ljava/lang/String;Ljava/security/PublicKey;[B[B[B)Z
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "headerBytes"    # [B
    .param p4, "payloadBytes"    # [B
    .param p5, "signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 98
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 99
    .local v0, "s":Ljava/security/Signature;
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 100
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 101
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update(B)V

    .line 102
    invoke-virtual {v0, p4}, Ljava/security/Signature;->update([B)V

    .line 103
    invoke-virtual {v0, p5}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method

.method verifySignatureFor(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B)Z
    .locals 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "secretBytes"    # [B
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "payload"    # Ljava/lang/String;
    .param p5, "signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 27
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/auth0/jwt/algorithms/CryptoHelper;->verifySignatureFor(Ljava/lang/String;[B[B[B[B)Z

    move-result v0

    return v0
.end method

.method verifySignatureFor(Ljava/lang/String;[B[B[B)Z
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "secretBytes"    # [B
    .param p3, "contentBytes"    # [B
    .param p4, "signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/jwt/algorithms/CryptoHelper;->createSignatureFor(Ljava/lang/String;[B[B)[B

    move-result-object v0

    invoke-static {v0, p4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    return v0
.end method

.method verifySignatureFor(Ljava/lang/String;[B[B[B[B)Z
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "secretBytes"    # [B
    .param p3, "headerBytes"    # [B
    .param p4, "payloadBytes"    # [B
    .param p5, "signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/auth0/jwt/algorithms/CryptoHelper;->createSignatureFor(Ljava/lang/String;[B[B[B)[B

    move-result-object v0

    invoke-static {v0, p5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    return v0
.end method
