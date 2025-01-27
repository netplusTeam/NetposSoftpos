.class public Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;
.super Ljava/lang/Object;


# instance fields
.field packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;


# direct methods
.method constructor <init>([Lorg/bouncycastle/bcpg/SignatureSubpacket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-void
.end method


# virtual methods
.method public getCriticalTags()[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v1, v4, :cond_1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v2, [I

    move v2, v0

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v0, v4, :cond_3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public getEmbeddedSignatures()Lorg/bouncycastle/openpgp/PGPSignatureList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpackets(I)[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    :try_start_0
    new-instance v3, Lorg/bouncycastle/openpgp/PGPSignature;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/bcpg/SignaturePacket;->fromByteArray([B)Lorg/bouncycastle/bcpg/SignaturePacket;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/openpgp/PGPSignature;-><init>(Lorg/bouncycastle/bcpg/SignaturePacket;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse signature packet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/openpgp/PGPSignature;

    check-cast v1, [Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureList;-><init>([Lorg/bouncycastle/openpgp/PGPSignature;)V

    return-object v0
.end method

.method public getFeatures()Lorg/bouncycastle/bcpg/sig/Features;
    .locals 4

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/bcpg/sig/Features;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isLongLength()Z

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/bcpg/sig/Features;-><init>(ZZ[B)V

    return-object v1
.end method

.method public getIntendedRecipientFingerprint()Lorg/bouncycastle/bcpg/sig/IntendedRecipientFingerprint;
    .locals 4

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/bcpg/sig/IntendedRecipientFingerprint;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isLongLength()Z

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/bcpg/sig/IntendedRecipientFingerprint;-><init>(ZZ[B)V

    return-object v1
.end method

.method public getIssuerFingerprint()Lorg/bouncycastle/bcpg/sig/IssuerFingerprint;
    .locals 4

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/bcpg/sig/IssuerFingerprint;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isLongLength()Z

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/bcpg/sig/IssuerFingerprint;-><init>(ZZ[B)V

    return-object v1
.end method

.method public getIssuerKeyID()J
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeyExpirationTime()J
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/KeyExpirationTime;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/KeyExpirationTime;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeyFlags()I
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/KeyFlags;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/KeyFlags;->getFlags()I

    move-result v0

    return v0
.end method

.method public getNotationDataOccurences()[Lorg/bouncycastle/bcpg/sig/NotationData;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getNotationDataOccurrences()[Lorg/bouncycastle/bcpg/sig/NotationData;

    move-result-object v0

    return-object v0
.end method

.method public getNotationDataOccurrences()[Lorg/bouncycastle/bcpg/sig/NotationData;
    .locals 4

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpackets(I)[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/bouncycastle/bcpg/sig/NotationData;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Lorg/bouncycastle/bcpg/sig/NotationData;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPreferredCompressionAlgorithms()[I
    .locals 1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object v0

    return-object v0
.end method

.method public getPreferredHashAlgorithms()[I
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSymmetricAlgorithms()[I
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object v0

    return-object v0
.end method

.method public getSignatureCreationTime()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureExpirationTime()J
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/SignatureExpirationTime;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/SignatureExpirationTime;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignatureTarget()Lorg/bouncycastle/bcpg/sig/SignatureTarget;
    .locals 4

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/bcpg/sig/SignatureTarget;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->isLongLength()Z

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/bcpg/sig/SignatureTarget;-><init>(ZZ[B)V

    return-object v1
.end method

.method public getSignerUserID()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/bcpg/sig/SignerUserID;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/SignerUserID;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubpackets(I)[Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    check-cast p1, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-object p1
.end method

.method public hasSubpacket(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPrimaryUserID()Z
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/bouncycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/sig/PrimaryUserID;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/sig/PrimaryUserID;->isPrimaryUserID()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    array-length v1, v0

    new-array v2, v1, [Lorg/bouncycastle/bcpg/SignatureSubpacket;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method toSubpacketArray()[Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/bouncycastle/bcpg/SignatureSubpacket;

    return-object v0
.end method
