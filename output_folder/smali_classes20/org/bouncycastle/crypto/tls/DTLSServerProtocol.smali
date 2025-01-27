.class public Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;
.super Lorg/bouncycastle/crypto/tls/DTLSProtocol;
.source "DTLSServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    }
.end annotation


# instance fields
.field protected verifyRequests:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;-><init>(Ljava/security/SecureRandom;)V

    .line 2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    return-void
.end method


# virtual methods
.method protected abortServerHandshake(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V
    .locals 0

    .line 1
    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->invalidateSession(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)V

    return-void
.end method

.method public accept(Lorg/bouncycastle/crypto/tls/TlsServer;Lorg/bouncycastle/crypto/tls/DatagramTransport;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    .line 4
    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;-><init>()V

    .line 5
    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    .line 6
    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 8
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 9
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRandomBlock(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 13
    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V

    .line 15
    new-instance v2, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    const/16 v4, 0x16

    invoke-direct {v2, p2, v3, p1, v4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;-><init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V

    .line 21
    const/16 p1, 0x50

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->serverHandshake(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clear()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 41
    :try_start_1
    invoke-virtual {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->abortServerHandshake(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    .line 42
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    .line 43
    invoke-virtual {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->abortServerHandshake(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    .line 44
    throw p2

    :catch_2
    move-exception p1

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, v1, v2, p2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->abortServerHandshake(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    .line 46
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clear()V

    .line 61
    throw p1

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'transport\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'server\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected expectCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)Z
    .locals 0

    .line 1
    iget-short p1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    if-ltz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasSigningCapability(S)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected generateCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/CertificateRequest;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateCertificateStatus(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/CertificateStatus;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/NewSessionTicket;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateServerHello(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 7
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    const/16 v4, 0x50

    if-eqz v3, :cond_8

    .line 16
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 18
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 21
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 27
    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 29
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v3

    .line 30
    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    invoke-static {v5, v3}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    .line 32
    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/CipherSuite;->isSCSV(I)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 33
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 37
    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->validateSelectedCipherSuite(IS)V

    .line 38
    iput v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 40
    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v5

    .line 41
    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 45
    iput-short v5, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 47
    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 48
    invoke-static {v5, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 50
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v3

    iput-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 55
    iget-boolean v5, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 57
    sget-object v5, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 75
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v2

    .line 76
    invoke-virtual {v3, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    .line 92
    :cond_2
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 94
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 96
    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->resumedSession:Z

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->evaluateMaxFragmentLengthExtension(ZLjava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v2

    iput-short v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 99
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 105
    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->resumedSession:Z

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    .line 106
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v7

    :goto_1
    iput-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->allowCertificateStatus:Z

    .line 109
    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->resumedSession:Z

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    .line 110
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    iput-boolean v6, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    .line 113
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 116
    :cond_5
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 117
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v2

    .line 118
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result p1

    iput p1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    const/16 p1, 0xc

    .line 125
    iput p1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 127
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 128
    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 129
    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 130
    :cond_8
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public getVerifyRequests()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    return v0
.end method

.method protected invalidateSession(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->clear()V

    .line 4
    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 7
    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->invalidate()V

    .line 10
    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method protected notifyClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-nez v0, :cond_1

    .line 11
    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    .line 13
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    .line 27
    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    .line 28
    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/tls/Certificate;)S

    move-result v0

    iput-short v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    .line 31
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 42
    :goto_0
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void

    .line 43
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected processCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[BLorg/bouncycastle/crypto/tls/TlsHandshakeHash;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 9
    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;

    move-result-object v1

    .line 11
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 16
    const/16 v0, 0x33

    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v2

    .line 19
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)V

    .line 22
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v3

    invoke-interface {p3, v3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object p3

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object p3

    .line 22
    :goto_0
    nop

    .line 29
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 31
    invoke-static {v3}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    .line 33
    iget-short p1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object p1

    .line 34
    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    .line 35
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object p2

    invoke-interface {p1, v2, p2, v3, p3}, Lorg/bouncycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 37
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2

    .line 47
    :catch_1
    move-exception p1

    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected processClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object p2

    .line 5
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method protected processClientHello(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    const/16 v2, 0x2f

    if-eqz v1, :cond_9

    .line 13
    const/16 v1, 0x20

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    .line 15
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 16
    array-length v4, v4

    if-gt v4, v1, :cond_8

    .line 22
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    .line 24
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_7

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_7

    .line 34
    div-int/2addr v1, v4

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    .line 36
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_6

    .line 42
    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    .line 49
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    .line 51
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 52
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 62
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    .line 63
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v2

    const/16 v5, 0x28

    if-nez v2, :cond_1

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->requiresExtendedMasterSecret()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 70
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 71
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    const/16 v2, 0x5600

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyFallback(Z)V

    .line 73
    iput-object v3, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 75
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    .line 76
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    .line 93
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    const/16 v0, 0xff

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 95
    iput-boolean v4, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    .line 102
    :cond_2
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p2

    if-eqz p2, :cond_4

    .line 110
    iput-boolean v4, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    .line 112
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 119
    :cond_4
    :goto_1
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifySecureRenegotiation(Z)V

    .line 121
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-eqz p2, :cond_5

    .line 124
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->getPaddingExtension(Ljava/util/Hashtable;)I

    .line 126
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    :cond_5
    return-void

    .line 127
    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 128
    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 129
    :cond_8
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 130
    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    .line 5
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processClientSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p2

    .line 3
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method protected serverHandshake(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    .line 4
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xa

    if-ne v3, v4, :cond_10

    .line 11
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processClientHello(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    .line 19
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateServerHello(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)[B

    move-result-object v2

    .line 21
    iget-short v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    invoke-static {p2, v3}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->applyMaxFragmentLengthExtension(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    .line 23
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    .line 24
    invoke-virtual {p2, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 25
    invoke-virtual {p2, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    const/4 v3, 0x2

    .line 27
    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 30
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->notifyHelloComplete()V

    .line 32
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v2

    const/16 v3, 0x17

    if-eqz v2, :cond_0

    .line 35
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v2

    .line 36
    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 39
    :cond_0
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 40
    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {v2, v6}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    .line 42
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-nez v2, :cond_1

    .line 48
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    move-object v2, v7

    goto :goto_0

    .line 52
    :cond_1
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v8, v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    .line 54
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->generateCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)[B

    move-result-object v8

    .line 56
    invoke-virtual {v1, v6, v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :goto_0
    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    nop

    .line 62
    iput-boolean v8, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->allowCertificateStatus:Z

    .line 65
    :cond_3
    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->allowCertificateStatus:Z

    if-eqz v2, :cond_4

    .line 67
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/bouncycastle/crypto/tls/CertificateStatus;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 70
    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateCertificateStatus(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/CertificateStatus;)[B

    move-result-object v2

    const/16 v9, 0x16

    .line 71
    invoke-virtual {v1, v9, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 75
    :cond_4
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v9, 0xc

    .line 78
    invoke-virtual {v1, v9, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 81
    :cond_5
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v2, :cond_8

    .line 83
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v2, :cond_8

    .line 86
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    move v4, v8

    :goto_1
    if-ne v2, v4, :cond_7

    .line 91
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v4, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v2, v4}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    .line 93
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/CertificateRequest;)[B

    move-result-object v2

    const/16 v4, 0xd

    .line 94
    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 96
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    iget-object v4, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 97
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v4

    .line 98
    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    goto :goto_2

    .line 99
    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 112
    :cond_8
    :goto_2
    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 114
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 116
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v4

    if-ne v4, v3, :cond_9

    .line 120
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processClientSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    .line 121
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    goto :goto_3

    .line 125
    :cond_9
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3, v7}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 128
    :goto_3
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez v3, :cond_a

    .line 130
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_4

    .line 134
    :cond_a
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v3

    if-ne v3, v6, :cond_b

    .line 136
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    .line 137
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    goto :goto_4

    .line 141
    :cond_b
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 152
    sget-object v3, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 156
    :goto_4
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_e

    .line 158
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    .line 165
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    .line 166
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-static {v3, v2, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    .line 168
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    .line 169
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    .line 176
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->expectCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    .line 178
    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v0

    .line 179
    invoke-virtual {p0, p1, v0, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[BLorg/bouncycastle/crypto/tls/TlsHandshakeHash;)V

    .line 183
    :cond_c
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 184
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    .line 185
    const-string v3, "client finished"

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 187
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->processFinished([B[B)V

    .line 189
    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    if-eqz v0, :cond_d

    .line 191
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    .line 192
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/NewSessionTicket;)[B

    move-result-object v0

    const/4 v3, 0x4

    .line 193
    invoke-virtual {v1, v3, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 197
    :cond_d
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 198
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v3

    .line 199
    const-string v4, "server finished"

    invoke-static {v0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 201
    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 203
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    .line 223
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V

    .line 225
    new-instance p1, Lorg/bouncycastle/crypto/tls/DTLSTransport;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/DTLSTransport;-><init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    return-object p1

    .line 226
    :cond_e
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 227
    :cond_f
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 228
    :cond_10
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public setVerifyRequests(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    return-void
.end method
