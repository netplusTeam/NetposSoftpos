.class public Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;
.super Lorg/bouncycastle/bcpg/ECPublicBCPGKey;


# instance fields
.field private hashFunctionId:B

.field private reserved:B

.field private symAlgorithmId:B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V

    const/4 p1, 0x1

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    int-to-byte p1, p4

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->verifyHashAlgorithm()V

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->verifySymmetricKeyAlgorithm()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;)V

    const/4 p1, 0x1

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    int-to-byte p1, p4

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->verifyHashAlgorithm()V

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->verifySymmetricKeyAlgorithm()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([B)V

    const/4 p1, 0x0

    aget-byte p1, v1, p1

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    const/4 p1, 0x1

    aget-byte p1, v1, p1

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    const/4 p1, 0x2

    aget-byte p1, v1, p1

    iput-byte p1, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->verifyHashAlgorithm()V

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->verifySymmetricKeyAlgorithm()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "kdf parameters size of 3 expected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyHashAlgorithm()V
    .locals 2

    iget-byte v0, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hash algorithm must be SHA-256 or stronger."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private verifySymmetricKeyAlgorithm()V
    .locals 2

    iget-byte v0, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Symmetric key algorithm must be AES-128 or stronger."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-byte v0, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-byte v0, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-byte v0, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    return-void
.end method

.method public getHashAlgorithm()B
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    return v0
.end method

.method public getReserved()B
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    return v0
.end method

.method public getSymmetricKeyAlgorithm()B
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    return v0
.end method
