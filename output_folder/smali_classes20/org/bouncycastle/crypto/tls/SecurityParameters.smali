.class public Lorg/bouncycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;
.source "SecurityParameters.java"


# instance fields
.field cipherSuite:I

.field clientRandom:[B

.field compressionAlgorithm:S

.field encryptThenMAC:Z

.field entity:I

.field extendedMasterSecret:Z

.field masterSecret:[B

.field maxFragmentLength:S

.field prfAlgorithm:I

.field pskIdentity:[B

.field serverRandom:[B

.field sessionHash:[B

.field srpIdentity:[B

.field truncatedHMac:Z

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    .line 4
    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 5
    const/4 v1, 0x0

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 6
    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 7
    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 8
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 9
    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 10
    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 11
    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    .line 12
    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    .line 13
    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    .line 16
    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 17
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 18
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 19
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    :cond_0
    return-void
.end method

.method public getCipherSuite()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getEntity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getPrfAlgorithm()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getSRPIdentity()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    return-object v0
.end method

.method public getServerRandom()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

.method public getSessionHash()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    return-object v0
.end method

.method public getVerifyDataLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return v0
.end method

.method public isExtendedMasterSecret()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    return v0
.end method
