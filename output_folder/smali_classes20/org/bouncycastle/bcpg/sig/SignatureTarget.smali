.class public Lorg/bouncycastle/bcpg/sig/SignatureTarget;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>(ZII[B)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    int-to-byte p2, p3

    const/4 p3, 0x1

    aput-byte p2, v0, p3

    invoke-static {v0, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p2

    const/16 p3, 0x1f

    invoke-direct {p0, p3, p1, v1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/SignatureTarget;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getHashData()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/SignatureTarget;->data:[B

    iget-object v1, p0, Lorg/bouncycastle/bcpg/sig/SignatureTarget;->data:[B

    array-length v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyAlgorithm()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/SignatureTarget;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
