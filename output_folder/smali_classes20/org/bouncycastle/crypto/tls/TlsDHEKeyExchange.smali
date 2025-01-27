.class public Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;
.super Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;
.source "TlsDHEKeyExchange.java"


# instance fields
.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Lorg/bouncycastle/crypto/params/DHParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Lorg/bouncycastle/crypto/params/DHParameters;)V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;-><init>()V

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 14
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    .line 20
    iget-object v4, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 21
    iget-object v3, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v4, v3

    invoke-interface {v2, v3, v6, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 22
    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/crypto/Digest;)V

    .line 24
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 25
    invoke-interface {v2, v3, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 27
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v2

    .line 29
    new-instance v3, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 30
    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected initVerifyer(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

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

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 8
    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

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

    .line 3
    new-instance v1, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 4
    new-instance v2, Lorg/bouncycastle/util/io/TeeInputStream;

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 6
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhVerifier:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->receiveDHParameters(Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    .line 7
    new-instance v3, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 9
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->parseSignature(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;

    move-result-object p1

    .line 11
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->initVerifyer(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    .line 12
    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/bouncycastle/crypto/Signer;)V

    .line 13
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
