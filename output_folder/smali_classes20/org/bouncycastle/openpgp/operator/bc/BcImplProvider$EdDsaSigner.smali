.class Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdDsaSigner"
.end annotation


# instance fields
.field private final digBuf:[B

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final signer:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Signer;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->signer:Lorg/bouncycastle/crypto/Signer;

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digBuf:[B

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digBuf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->signer:Lorg/bouncycastle/crypto/Signer;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digBuf:[B

    array-length v3, v1

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Signer;->generateSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digBuf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Signer;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digBuf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->signer:Lorg/bouncycastle/crypto/Signer;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->digBuf:[B

    array-length v3, v1

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider$EdDsaSigner;->signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    return p1
.end method
