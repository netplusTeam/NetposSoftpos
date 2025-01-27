.class public Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsSRPKeyExchange.java"


# instance fields
.field protected groupVerifier:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;

.field protected identity:[B

.field protected password:[B

.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

.field protected serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field protected srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

.field protected srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

.field protected srpPeerCredentials:Ljava/math/BigInteger;

.field protected srpSalt:[B

.field protected srpServer:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

.field protected srpVerifier:Ljava/math/BigInteger;

.field protected tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 2
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 4
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    .line 5
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    .line 6
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    .line 7
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    .line 8
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    .line 9
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    .line 11
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    .line 18
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->createSigner(I)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    .line 19
    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->groupVerifier:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;

    .line 20
    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    .line 21
    iput-object p5, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    .line 22
    new-instance p1, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;[BLorg/bouncycastle/crypto/tls/TlsSRPLoginParameters;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 24
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    .line 27
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    .line 29
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    .line 30
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    .line 33
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    .line 52
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->createSigner(I)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    .line 53
    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    .line 54
    new-instance p1, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    .line 55
    invoke-virtual {p4}, Lorg/bouncycastle/crypto/tls/TlsSRPLoginParameters;->getGroup()Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    .line 56
    invoke-virtual {p4}, Lorg/bouncycastle/crypto/tls/TlsSRPLoginParameters;->getVerifier()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    .line 57
    invoke-virtual {p4}, Lorg/bouncycastle/crypto/tls/TlsSRPLoginParameters;->getSalt()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    return-void
.end method

.method protected static createSigner(I)Lorg/bouncycastle/crypto/tls/TlsSigner;
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unsupported key exchange algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    return-object p0

    .line 4
    :pswitch_1
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsSRPUtils;->writeSRPParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 4
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    .line 2
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    .line 3
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 2
    :goto_0
    nop

    .line 6
    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2f

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method public generateServerKeyExchange()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->init(Lorg/bouncycastle/crypto/params/SRP6GroupParameters;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->generateServerCredentials()Ljava/math/BigInteger;

    move-result-object v0

    .line 4
    new-instance v1, Lorg/bouncycastle/crypto/tls/ServerSRPParams;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/SRP6GroupParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/bouncycastle/crypto/tls/ServerSRPParams;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;)V

    .line 6
    new-instance v0, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;-><init>()V

    .line 8
    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/ServerSRPParams;->encode(Ljava/io/OutputStream;)V

    .line 10
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v1, :cond_0

    .line 15
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    .line 20
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    .line 21
    iget-object v4, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 22
    iget-object v3, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v4, v3

    invoke-interface {v2, v3, v6, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 23
    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/crypto/Digest;)V

    .line 25
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 26
    invoke-interface {v2, v3, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 28
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v2

    .line 30
    new-instance v3, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 31
    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    :cond_0
    return-void
.end method

.method protected initVerifyer(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p1

    .line 2
    iget-object p2, p3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    .line 3
    iget-object p2, p3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length p3, p2

    invoke-interface {p1, p2, v1, p3}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    return-object p1
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsSRPUtils;->readSRPParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 15
    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    .line 27
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    .line 29
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void

    .line 30
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    .line 32
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 33
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 8
    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    return-void

    .line 9
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 9
    new-instance v2, Lorg/bouncycastle/util/io/TeeInputStream;

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, p1

    .line 12
    :goto_0
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/ServerSRPParams;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerSRPParams;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->parseSignature(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;

    move-result-object p1

    .line 18
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->initVerifyer(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/bouncycastle/crypto/Signer;)V

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 26
    :cond_2
    :goto_1
    new-instance p1, Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ServerSRPParams;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ServerSRPParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/params/SRP6GroupParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->groupVerifier:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;->accept(Lorg/bouncycastle/crypto/params/SRP6GroupParameters;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 33
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ServerSRPParams;->getS()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    .line 41
    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ServerSRPParams;->getB()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/bouncycastle/crypto/params/SRP6GroupParameters;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;->init(Lorg/bouncycastle/crypto/params/SRP6GroupParameters;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    .line 50
    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x47

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
