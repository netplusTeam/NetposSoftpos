.class public Lorg/bouncycastle/openpgp/PGPSignature;
.super Ljava/lang/Object;


# static fields
.field public static final BINARY_DOCUMENT:I = 0x0

.field public static final CANONICAL_TEXT_DOCUMENT:I = 0x1

.field public static final CASUAL_CERTIFICATION:I = 0x12

.field public static final CERTIFICATION_REVOCATION:I = 0x30

.field public static final DEFAULT_CERTIFICATION:I = 0x10

.field public static final DIRECT_KEY:I = 0x1f

.field public static final KEY_REVOCATION:I = 0x20

.field public static final NO_CERTIFICATION:I = 0x11

.field public static final POSITIVE_CERTIFICATION:I = 0x13

.field public static final PRIMARYKEY_BINDING:I = 0x19

.field public static final STAND_ALONE:I = 0x2

.field public static final SUBKEY_BINDING:I = 0x18

.field public static final SUBKEY_REVOCATION:I = 0x28

.field public static final TIMESTAMP:I = 0x40


# instance fields
.field private lastb:B

.field private sigOut:Ljava/io/OutputStream;

.field private sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

.field private signatureType:I

.field private trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

.field private verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->cast(Lorg/bouncycastle/bcpg/Packet;)Lorg/bouncycastle/bcpg/SignaturePacket;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;-><init>(Lorg/bouncycastle/bcpg/SignaturePacket;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/SignaturePacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureType()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->signatureType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/SignaturePacket;Lorg/bouncycastle/bcpg/TrustPacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;-><init>(Lorg/bouncycastle/bcpg/SignaturePacket;)V

    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPSignature;->trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

    return-void
.end method

.method private addTrailer()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blockUpdate([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private byteUpdate(B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static cast(Lorg/bouncycastle/bcpg/Packet;)Lorg/bouncycastle/bcpg/SignaturePacket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/bcpg/SignaturePacket;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/bcpg/SignaturePacket;

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected packet in stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSubpacketVector([Lorg/bouncycastle/bcpg/SignatureSubpacket;)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    invoke-direct {v0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;-><init>([Lorg/bouncycastle/bcpg/SignatureSubpacket;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getEncodedPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "exception preparing key."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static isCertification(I)Z
    .locals 1

    const/16 v0, 0x10

    if-eq v0, p0, :cond_1

    const/16 v0, 0x11

    if-eq v0, p0, :cond_1

    const/16 v0, 0x12

    if-eq v0, p0, :cond_1

    const/16 v0, 0x13

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateWithIdData(I[B)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    array-length p1, p2

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    array-length p1, p2

    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    array-length p1, p2

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->update([B)V

    return-void
.end method

.method private updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getEncodedPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)[B

    move-result-object p1

    const/16 v0, -0x67

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->update([B)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/bouncycastle/openpgp/PGPSignature;->trustPck:Lorg/bouncycastle/bcpg/TrustPacket;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    :cond_1
    return-void
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getCreationTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashAlgorithm()I

    move-result v0

    return v0
.end method

.method public getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->createSubpacketVector([Lorg/bouncycastle/bcpg/SignatureSubpacket;)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    return-object v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignature()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignature()[Lorg/bouncycastle/bcpg/MPInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyAlgorithm()I

    move-result v1

    const/16 v4, 0x16

    if-ne v1, v4, :cond_1

    const/16 v1, 0x40

    new-array v4, v1, [B

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v5

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v2, v5

    rsub-int/lit8 v2, v2, 0x20

    array-length v6, v5

    invoke-static {v5, v3, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    sub-int/2addr v1, v2

    array-length v2, v0

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v2, "exception encoding DSA sig."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureBytes()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSignatureTrailer()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureTrailer()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getSignatureType()I

    move-result v0

    return v0
.end method

.method public getUnhashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getUnhashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->createSubpacketVector([Lorg/bouncycastle/bcpg/SignatureSubpacket;)Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasSubpackets()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getUnhashedSubPackets()[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigPck:Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SignaturePacket;->getHashAlgorithm()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;->get(II)Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;->build(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    const/4 p2, 0x0

    iput-byte p2, p0, Lorg/bouncycastle/openpgp/PGPSignature;->lastb:B

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    return-void
.end method

.method public isCertification()Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->isCertification(I)Z

    move-result v0

    return v0
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    iget-byte v2, p0, Lorg/bouncycastle/openpgp/PGPSignature;->lastb:B

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    :cond_2
    :goto_1
    iput-byte p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->lastb:B

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->byteUpdate(B)V

    :goto_2
    return-void
.end method

.method public update([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/PGPSignature;->blockUpdate([BII)V

    :cond_1
    return-void
.end method

.method public verify()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public verifyCertification(Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    const/16 p2, 0xb4

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "PGPSignature not initialised - call init()."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "signature is not a key signature"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "PGPSignature not initialised - call init()."

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "PGPSignature not initialised - call init()."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyCertification(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xd1

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "cannot encode subpacket array"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_1
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "PGPSignature not initialised - call init()."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyCertification([BLorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    const/16 p2, 0xb4

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "PGPSignature not initialised - call init()."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
