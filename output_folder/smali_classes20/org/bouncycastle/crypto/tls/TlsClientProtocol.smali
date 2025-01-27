.class public Lorg/bouncycastle/crypto/tls/TlsClientProtocol;
.super Lorg/bouncycastle/crypto/tls/TlsProtocol;
.source "TlsClientProtocol.java"


# instance fields
.field protected authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field protected certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

.field protected keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field protected selectedSessionID:[B

.field protected tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

.field tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    .line 3
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 5
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 7
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 8
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    .line 10
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    .line 11
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/security/SecureRandom;)V

    .line 13
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method


# virtual methods
.method protected cleanupHandshake()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 4
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 5
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    .line 6
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    .line 7
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/TlsClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    if-nez v0, :cond_1

    .line 6
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    .line 8
    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    .line 9
    const/4 v1, 0x1

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    .line 11
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 13
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 14
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRandomBlock(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    .line 21
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    .line 28
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 32
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendClientHelloMessage()V

    .line 33
    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 35
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blockForHandshake()V

    return-void

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'connect\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsClient\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getContext()Lorg/bouncycastle/crypto/tls/TlsContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected handleHandshakeMessage(SLjava/io/ByteArrayInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    const/16 v1, 0xf

    const/16 v2, 0x14

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/16 v5, 0xa

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    .line 3
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-ne p1, v4, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 9
    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 11
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendChangeCipherSpecMessage()V

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendFinishedMessage()V

    .line 13
    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 15
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->completeHandshake()V

    return-void

    .line 16
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    if-eq p1, v4, :cond_1a

    const/16 v6, 0xe

    const/4 v7, 0x4

    if-eq p1, v7, :cond_17

    if-eq p1, v2, :cond_13

    const/16 v1, 0x16

    if-eq p1, v1, :cond_10

    const/16 v1, 0x17

    if-eq p1, v1, :cond_e

    packed-switch p1, :pswitch_data_0

    .line 439
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 440
    :pswitch_0
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_1

    .line 564
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_1
    nop

    .line 565
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 571
    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 572
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    .line 580
    :pswitch_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 587
    :pswitch_4
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0x8

    .line 589
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 591
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 593
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 596
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    :cond_2
    const/16 p1, 0x9

    .line 598
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 601
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez p1, :cond_3

    .line 603
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    move-object p1, v0

    goto :goto_0

    .line 607
    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object p1

    if-nez p1, :cond_4

    .line 611
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 619
    sget-object p2, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_0

    .line 623
    :cond_4
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    .line 625
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_0
    nop

    .line 629
    iput-short v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 635
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendClientKeyExchangeMessage()V

    const/16 p2, 0xb

    .line 636
    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 638
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 640
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    .line 643
    :cond_5
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p2

    .line 644
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    .line 646
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 648
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    .line 651
    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    if-eqz p1, :cond_8

    .line 653
    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_8

    .line 655
    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    .line 661
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    .line 662
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-nez v0, :cond_7

    .line 668
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object p2

    goto :goto_1

    .line 672
    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    invoke-interface {p2, v1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object p2

    .line 675
    :goto_1
    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object p1

    .line 676
    new-instance p2, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 677
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DigitallySigned;)V

    const/16 p1, 0xc

    .line 679
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 682
    :cond_8
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendChangeCipherSpecMessage()V

    .line 683
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendFinishedMessage()V

    .line 690
    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_4

    .line 727
    :pswitch_5
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_2

    .line 764
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 765
    :pswitch_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 771
    :pswitch_7
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-eqz p1, :cond_9

    .line 780
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 782
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 784
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    .line 790
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 791
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object p2

    .line 792
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    const/4 p1, 0x7

    .line 801
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_4

    .line 802
    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 803
    :pswitch_8
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_3

    .line 827
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_9
    nop

    .line 828
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 834
    :pswitch_a
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 835
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    .line 842
    :pswitch_b
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 844
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 p1, 0x6

    .line 851
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_4

    .line 852
    :pswitch_c
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-eq p1, v4, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_2

    .line 881
    :cond_a
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_b
    nop

    .line 882
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 889
    :goto_2
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    .line 891
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 894
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const/4 p1, 0x0

    .line 896
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    .line 899
    :cond_d
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 901
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    .line 902
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 910
    iput-short v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_4

    .line 1010
    :cond_e
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-ne p1, v4, :cond_f

    .line 1014
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_4

    .line 1018
    :cond_f
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 1019
    :cond_10
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-ne p1, v7, :cond_12

    .line 1023
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    if-eqz p1, :cond_11

    .line 1033
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateStatus;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    .line 1035
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 p1, 0x5

    .line 1039
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_4

    .line 1040
    :cond_11
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 1053
    :cond_12
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 1059
    :cond_13
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-eq p1, v3, :cond_15

    if-ne p1, v6, :cond_14

    goto :goto_3

    .line 1083
    :cond_14
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 1084
    :cond_15
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    if-nez p1, :cond_16

    .line 1097
    :goto_3
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 1098
    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 1100
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->completeHandshake()V

    goto/16 :goto_4

    .line 1101
    :cond_16
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 1379
    :cond_17
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-ne p1, v3, :cond_19

    .line 1383
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    if-eqz p1, :cond_18

    .line 1396
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    .line 1398
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V

    .line 1405
    iput-short v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto :goto_4

    .line 1406
    :cond_18
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 1419
    :cond_19
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 1420
    :cond_1a
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1c

    .line 1424
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V

    .line 1425
    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 1427
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    .line 1429
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applyMaxFragmentLengthExtension()V

    .line 1431
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-eqz p1, :cond_1b

    .line 1433
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 1434
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    goto :goto_4

    .line 1438
    :cond_1b
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    .line 1440
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length p2, p1

    if-lez p2, :cond_1e

    .line 1442
    new-instance p2, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    goto :goto_4

    .line 1449
    :cond_1c
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 1709
    :cond_1d
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 1717
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/16 p2, 0x10

    if-ne p1, p2, :cond_1e

    .line 1719
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->refuseRenegotiation()V

    :cond_1e
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_c
        :pswitch_8
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    .line 2
    const/4 p1, 0x3

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 4
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 5
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method protected receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 5
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_16

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 13
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 19
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 20
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 21
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0x20

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 29
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 30
    array-length v3, v0

    if-gt v3, v1, :cond_13

    .line 34
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    .line 42
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 43
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 45
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CipherSuite;->isSCSV(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 46
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 50
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 56
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    .line 57
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    invoke-static {v5, v1}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 61
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v5, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 71
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 77
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 78
    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iput-boolean v5, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    .line 80
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result p1

    const/16 v5, 0x28

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    .line 81
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->requiresExtendedMasterSecret()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 83
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 93
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz p1, :cond_6

    .line 95
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 96
    :goto_3
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 98
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 107
    sget-object v7, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    .line 119
    :cond_4
    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v7, v6}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 121
    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 147
    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_8

    .line 156
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    .line 158
    sget-object v6, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v6}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v6

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    .line 160
    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 166
    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    invoke-interface {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifySecureRenegotiation(Z)V

    .line 168
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 169
    iget-boolean v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-eqz v6, :cond_a

    .line 171
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result p1

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 172
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result p1

    if-ne v1, p1, :cond_9

    const/4 p1, 0x0

    .line 178
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v5

    goto :goto_5

    .line 179
    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 186
    :cond_a
    :goto_5
    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v0, v6, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 187
    iput-short v1, v6, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    if-eqz v5, :cond_f

    .line 189
    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 198
    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 199
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    .line 201
    :cond_b
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 203
    :cond_c
    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-boolean v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 206
    invoke-virtual {p0, p1, v5, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 209
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 215
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez v0, :cond_d

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    .line 216
    invoke-static {v5, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v4

    goto :goto_7

    :cond_d
    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    .line 219
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez v0, :cond_e

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    .line 220
    invoke-static {v5, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_e

    move v3, v4

    goto :goto_8

    :cond_e
    nop

    :goto_8
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    :cond_f
    if-eqz p1, :cond_10

    .line 226
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    .line 229
    :cond_10
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    .line 230
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v1

    .line 231
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result v0

    iput v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 239
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 v0, 0xc

    iput v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return-void

    .line 240
    :cond_11
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 241
    :cond_12
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 242
    :cond_13
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 243
    :cond_14
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 244
    :cond_15
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 245
    :cond_16
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DigitallySigned;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendClientHelloMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-nez v1, :cond_8

    .line 9
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 15
    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 16
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v2, :cond_0

    .line 18
    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 19
    array-length v3, v2

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 25
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsClient;->isFallback()Z

    move-result v3

    .line 27
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    .line 29
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    .line 31
    array-length v4, v2

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-eqz v4, :cond_2

    .line 33
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 34
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v5

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 35
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v5

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 41
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 43
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v2

    if-nez v2, :cond_4

    .line 45
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    .line 48
    :cond_4
    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    .line 50
    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 66
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    const/16 v5, 0xff

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    :cond_6
    if-eqz v3, :cond_7

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    const/16 v1, 0x5600

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    .line 86
    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 93
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void

    .line 94
    :cond_8
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected sendClientKeyExchangeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method
