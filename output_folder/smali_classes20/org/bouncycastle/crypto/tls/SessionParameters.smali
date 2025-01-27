.class public final Lorg/bouncycastle/crypto/tls/SessionParameters;
.super Ljava/lang/Object;
.source "SessionParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;
    }
.end annotation


# instance fields
.field private cipherSuite:I

.field private compressionAlgorithm:S

.field private encodedServerExtensions:[B

.field private extendedMasterSecret:Z

.field private masterSecret:[B

.field private peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

.field private pskIdentity:[B

.field private srpIdentity:[B


# direct methods
.method private constructor <init>(IS[BLorg/bouncycastle/crypto/tls/Certificate;[B[B[BZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    .line 4
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->srpIdentity:[B

    .line 12
    iput p1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->cipherSuite:I

    .line 13
    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    .line 14
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->masterSecret:[B

    .line 15
    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    .line 16
    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    .line 17
    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->srpIdentity:[B

    .line 18
    iput-object p7, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    .line 19
    iput-boolean p8, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->extendedMasterSecret:Z

    return-void
.end method

.method synthetic constructor <init>(IS[BLorg/bouncycastle/crypto/tls/Certificate;[B[B[BZLorg/bouncycastle/crypto/tls/SessionParameters$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/bouncycastle/crypto/tls/SessionParameters;-><init>(IS[BLorg/bouncycastle/crypto/tls/Certificate;[B[B[BZ)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public copy()Lorg/bouncycastle/crypto/tls/SessionParameters;
    .locals 10

    .line 1
    new-instance v9, Lorg/bouncycastle/crypto/tls/SessionParameters;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->cipherSuite:I

    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->masterSecret:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->srpIdentity:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    iget-boolean v8, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->extendedMasterSecret:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/tls/SessionParameters;-><init>(IS[BLorg/bouncycastle/crypto/tls/Certificate;[B[B[BZ)V

    return-object v9
.end method

.method public getCipherSuite()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->cipherSuite:I

    return v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getPeerCertificate()Lorg/bouncycastle/crypto/tls/Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    return-object v0
.end method

.method public getSRPIdentity()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->srpIdentity:[B

    return-object v0
.end method

.method public isExtendedMasterSecret()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->extendedMasterSecret:Z

    return v0
.end method

.method public readServerExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
