.class public Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/bcpg/SymmetricKeyAlgorithmTags;
.implements Lorg/bouncycastle/openpgp/StreamGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;
    }
.end annotation


# static fields
.field public static final S2K_SHA1:I = 0x2

.field public static final S2K_SHA224:I = 0xb

.field public static final S2K_SHA256:I = 0x8

.field public static final S2K_SHA384:I = 0x9

.field public static final S2K_SHA512:I = 0xa


# instance fields
.field private cOut:Ljava/io/OutputStream;

.field private dataEncryptorBuilder:Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;

.field private defAlgorithm:I

.field private digestCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field private genOut:Ljava/io/OutputStream;

.field private methods:Ljava/util/List;

.field private oldFormat:Z

.field private pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->oldFormat:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->dataEncryptorBuilder:Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;

    iput-boolean p2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->oldFormat:Z

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;->getAlgorithm()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->dataEncryptorBuilder:Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->rand:Ljava/security/SecureRandom;

    return-void
.end method

.method private addCheckSum([B)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-eq v2, v3, :cond_0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    array-length v2, p1

    sub-int/2addr v2, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method private createSessionInfo(I[B)[B
    .locals 3

    array-length v0, p2

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    array-length p1, p2

    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->addCheckSum([B)V

    return-object v0
.end method

.method private open(Ljava/io/OutputStream;J[B)Ljava/io/OutputStream;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->cOut:Ljava/io/OutputStream;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->dataEncryptorBuilder:Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;->getAlgorithm()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->dataEncryptorBuilder:Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->rand:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->dataEncryptorBuilder:Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;

    invoke-interface {v3}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;->getAlgorithm()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->getKey(I)[B

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;

    iget v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;->generate(I[B)Lorg/bouncycastle/bcpg/ContainedPacket;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->rand:Ljava/security/SecureRandom;

    invoke-static {v0, v3}, Lorg/bouncycastle/openpgp/PGPUtil;->makeRandomKey(ILjava/security/SecureRandom;)[B

    move-result-object v0

    iget v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->createSessionInfo(I[B)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;

    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    iget v5, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    invoke-virtual {v1, v5, v3}, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;->generate(I[B)Lorg/bouncycastle/bcpg/ContainedPacket;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->rand:Ljava/security/SecureRandom;

    invoke-static {v0, v3}, Lorg/bouncycastle/openpgp/PGPUtil;->makeRandomKey(ILjava/security/SecureRandom;)[B

    move-result-object v0

    iget v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->createSessionInfo(I[B)[B

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;

    iget-object v5, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    iget v6, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->defAlgorithm:I

    invoke-virtual {v4, v6, v3}, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;->generate(I[B)Lorg/bouncycastle/bcpg/ContainedPacket;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->dataEncryptorBuilder:Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;

    invoke-interface {v1, v0}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;->build([B)Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;->getIntegrityCalculator()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->digestCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    if-nez p4, :cond_4

    const-wide/16 v3, 0x2

    if-eqz v1, :cond_3

    new-instance p4, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;

    const/16 v8, 0x12

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;->getBlockSize()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr p2, v5

    add-long/2addr p2, v3

    const-wide/16 v3, 0x1

    add-long/2addr p2, v3

    const-wide/16 v3, 0x16

    add-long v9, p2, v3

    move-object v5, p4

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;-><init>(Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;IJ)V

    iput-object p4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {p4, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    new-instance p4, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;

    const/16 v5, 0x9

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr p2, v1

    add-long/2addr p2, v3

    iget-boolean v7, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->oldFormat:Z

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move v4, v5

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;-><init>(Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;IJZ)V

    iput-object p4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    new-instance p2, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;

    const/16 p3, 0x12

    invoke-direct {p2, p0, p1, p3, p4}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;-><init>(Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;I[B)V

    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {p2, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    goto :goto_2

    :cond_5
    new-instance p2, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;

    const/16 p3, 0x9

    invoke-direct {p2, p0, p1, p3, p4}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;-><init>(Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;I[B)V

    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-interface {v0, p1}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->cOut:Ljava/io/OutputStream;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->genOut:Ljava/io/OutputStream;

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->digestCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    if-eqz p1, :cond_6

    new-instance p1, Lorg/bouncycastle/util/io/TeeOutputStream;

    iget-object p2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->digestCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {p2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->cOut:Ljava/io/OutputStream;

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->genOut:Ljava/io/OutputStream;

    :cond_6
    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;->getBlockSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p2, p1, [B

    iget-object p3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->rand:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 p3, p1, -0x1

    add-int/lit8 p4, p1, -0x3

    aget-byte p4, p2, p4

    aput-byte p4, p2, p3

    add-int/lit8 p3, p1, -0x2

    add-int/lit8 p1, p1, -0x4

    aget-byte p1, p2, p1

    aput-byte p1, p2, p3

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->genOut:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    new-instance p1, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;

    iget-object p2, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->genOut:Ljava/io/OutputStream;

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/StreamGenerator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "Exception creating cipher"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no encryption methods specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "generator already in open state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addMethod(Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->cOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->digestCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->genOut:Ljava/io/OutputStream;

    const/16 v2, 0x13

    const-wide/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;IJ)V

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->flush()V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->digestCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->cOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->cOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->cOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->pOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    :cond_1
    return-void
.end method

.method public open(Ljava/io/OutputStream;J)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;J[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;J[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method
