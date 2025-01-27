.class public abstract Lorg/apache/sshd/common/signature/AbstractSignature;
.super Ljava/lang/Object;
.source "AbstractSignature.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/Signature;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private signatureInstance:Ljava/security/Signature;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 47
    const-string v0, "No signature algorithm specified"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/signature/AbstractSignature;->algorithm:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected doInitSignature(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/security/Key;Z)Ljava/security/Signature;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "algo"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "forSigning"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    invoke-static {p2}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method protected doVerify([B)Z
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 154
    nop

    .line 155
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/AbstractSignature;->getSignature()Ljava/security/Signature;

    move-result-object v0

    const-string v1, "Signature not initialized"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    .line 156
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method

.method protected extractEncodedSignature([B)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 13
    .param p1, "sig"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    .line 123
    .local v0, "dataLen":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 124
    return-object v1

    .line 127
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getUInt([BII)J

    move-result-wide v3

    .line 129
    .local v3, "keyTypeLen":J
    add-int/lit8 v5, v0, -0x4

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 130
    return-object v1

    .line 133
    :cond_1
    const/4 v5, 0x4

    .line 134
    .local v5, "keyTypeStartPos":I
    long-to-int v6, v3

    add-int/2addr v6, v5

    .line 135
    .local v6, "keyTypeEndPos":I
    sub-int v7, v0, v6

    .line 137
    .local v7, "remainLen":I
    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    .line 138
    return-object v1

    .line 141
    :cond_2
    invoke-static {p1, v6, v7}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getUInt([BII)J

    move-result-wide v8

    .line 143
    .local v8, "dataBytesLen":J
    add-int/lit8 v10, v7, -0x4

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    .line 144
    return-object v1

    .line 147
    :cond_3
    new-instance v1, Ljava/lang/String;

    long-to-int v10, v3

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v5, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 148
    .local v1, "keyType":Ljava/lang/String;
    long-to-int v10, v8

    new-array v10, v10, [B

    .line 149
    .local v10, "data":[B
    add-int/lit8 v11, v6, 0x4

    long-to-int v12, v8

    invoke-static {p1, v11, v10, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v1, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/common/signature/AbstractSignature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method protected getSignature()Ljava/security/Signature;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/sshd/common/signature/AbstractSignature;->signatureInstance:Ljava/security/Signature;

    return-object v0
.end method

.method public initSigner(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PrivateKey;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/AbstractSignature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "algo":Ljava/lang/String;
    nop

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/sshd/common/signature/AbstractSignature;->doInitSignature(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/security/Key;Z)Ljava/security/Signature;

    move-result-object v1

    .line 101
    const-string v2, "No signature instance create"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    iput-object v1, p0, Lorg/apache/sshd/common/signature/AbstractSignature;->signatureInstance:Ljava/security/Signature;

    .line 103
    const-string v2, "No private key provided"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 104
    return-void
.end method

.method public initVerifier(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/AbstractSignature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "algo":Ljava/lang/String;
    nop

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/sshd/common/signature/AbstractSignature;->doInitSignature(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/security/Key;Z)Ljava/security/Signature;

    move-result-object v1

    .line 93
    const-string v2, "No signature instance create"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    iput-object v1, p0, Lorg/apache/sshd/common/signature/AbstractSignature;->signatureInstance:Ljava/security/Signature;

    .line 95
    const-string v2, "No public key provided"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 96
    return-void
.end method

.method public sign(Lorg/apache/sshd/common/session/SessionContext;)[B
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    nop

    .line 86
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/AbstractSignature;->getSignature()Ljava/security/Signature;

    move-result-object v0

    const-string v1, "Signature not initialized"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    .line 87
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/AbstractSignature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lorg/apache/sshd/common/session/SessionContext;[BII)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "hash"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/AbstractSignature;->getSignature()Ljava/security/Signature;

    move-result-object v0

    const-string v1, "Signature not initialized"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    .line 110
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p2, p3, p4}, Ljava/security/Signature;->update([BII)V

    .line 111
    return-void
.end method
