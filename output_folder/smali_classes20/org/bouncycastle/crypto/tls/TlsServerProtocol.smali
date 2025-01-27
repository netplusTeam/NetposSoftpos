.class public Lorg/bouncycastle/crypto/tls/TlsServerProtocol;
.super Lorg/bouncycastle/crypto/tls/TlsProtocol;
.source "TlsServerProtocol.java"


# instance fields
.field protected certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field protected clientCertificateType:S

.field protected keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field protected prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

.field protected tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

.field tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    .line 3
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 5
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 6
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    .line 7
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 9
    const/4 p2, -0x1

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    .line 10
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/security/SecureRandom;)V

    .line 12
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 19
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method


# virtual methods
.method public accept(Lorg/bouncycastle/crypto/tls/TlsServer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    .line 8
    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    .line 9
    const/4 v1, 0x0

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    .line 11
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 13
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->shouldUseGMTUnixTime()Z

    move-result p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 14
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v2

    .line 15
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRandomBlock(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 18
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V

    .line 19
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    .line 21
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    .line 23
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blockForHandshake()V

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'accept\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsServer\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected cleanupHandshake()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 4
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    .line 5
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 6
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method protected expectCertificateVerifyMessage()Z
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    if-ltz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasSigningCapability(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getContext()Lorg/bouncycastle/crypto/tls/TlsContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    return-object v0
.end method

.method protected handleAlertWarningMessage(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleAlertWarningMessage(S)V

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    const/16 v0, 0xa

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz p1, :cond_2

    .line 13
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 22
    :goto_0
    sget-object p1, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 23
    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    return-void

    .line 28
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected handleHandshakeMessage(SLjava/io/ByteArrayInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-eq p1, v3, :cond_13

    const/16 v3, 0x9

    const/16 v5, 0xb

    if-eq p1, v5, :cond_f

    const/16 v6, 0x14

    const/16 v7, 0xf

    const/16 v8, 0xc

    if-eq p1, v6, :cond_a

    const/16 v6, 0x17

    if-eq p1, v6, :cond_8

    if-eq p1, v7, :cond_5

    if-ne p1, v0, :cond_4

    .line 1
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_0

    .line 47
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 48
    :pswitch_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 53
    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 69
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 78
    :cond_2
    sget-object p1, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 85
    :goto_0
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V

    .line 86
    iput-short v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_6

    .line 87
    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 183
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 184
    :cond_5
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-ne p1, v5, :cond_7

    .line 193
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 198
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V

    .line 199
    iput-short v8, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_6

    .line 200
    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 209
    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 210
    :cond_8
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-ne p1, v2, :cond_9

    .line 214
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 215
    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_6

    .line 219
    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 327
    :cond_a
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-eq p1, v5, :cond_c

    if-ne p1, v8, :cond_b

    goto :goto_1

    .line 356
    :cond_b
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 357
    :cond_c
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result p1

    if-nez p1, :cond_e

    .line 365
    :goto_1
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0xd

    .line 366
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 368
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    if-eqz p1, :cond_d

    .line 370
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendNewSessionTicketMessage(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    :cond_d
    const/16 p1, 0xe

    .line 372
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 374
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendChangeCipherSpecMessage()V

    .line 375
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendFinishedMessage()V

    .line 376
    iput-short v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 378
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->completeHandshake()V

    goto/16 :goto_6

    .line 379
    :cond_e
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 380
    :cond_f
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-eq p1, v2, :cond_11

    if-ne p1, v3, :cond_10

    goto :goto_2

    .line 398
    :cond_10
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 399
    :cond_11
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 404
    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz p1, :cond_12

    .line 408
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V

    .line 409
    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    goto/16 :goto_6

    .line 410
    :cond_12
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 411
    :cond_13
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    if-eqz p1, :cond_15

    if-ne p1, v0, :cond_14

    .line 503
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->refuseRenegotiation()V

    goto/16 :goto_6

    .line 507
    :cond_14
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 508
    :cond_15
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V

    .line 509
    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 511
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerHelloMessage()V

    const/4 p1, 0x2

    .line 512
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 514
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    .line 516
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 519
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    :cond_16
    const/4 p1, 0x3

    .line 521
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 523
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 524
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    .line 526
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-nez p1, :cond_17

    .line 532
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    goto :goto_3

    .line 536
    :cond_17
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    .line 538
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v1

    .line 539
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_3
    const/4 p1, 0x4

    .line 541
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/4 p1, 0x0

    if-eqz v1, :cond_18

    .line 544
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_19

    :cond_18
    nop

    .line 546
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    .line 549
    :cond_19
    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    if-eqz p2, :cond_1a

    .line 551
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/bouncycastle/crypto/tls/CertificateStatus;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 554
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendCertificateStatusMessage(Lorg/bouncycastle/crypto/tls/CertificateStatus;)V

    :cond_1a
    const/4 p2, 0x5

    .line 558
    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 560
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 563
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerKeyExchangeMessage([B)V

    :cond_1b
    const/4 p2, 0x6

    .line 565
    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 567
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz p2, :cond_1e

    .line 569
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz p2, :cond_1e

    .line 572
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_4

    :cond_1c
    move v3, p1

    :goto_4
    if-ne p2, v3, :cond_1d

    .line 577
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    .line 579
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendCertificateRequestMessage(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    .line 581
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 582
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object p2

    .line 583
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    goto :goto_5

    .line 584
    :cond_1d
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1e
    :goto_5
    const/4 p1, 0x7

    .line 595
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 597
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerHelloDoneMessage()V

    .line 598
    iput-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 600
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-nez v0, :cond_1

    .line 11
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    .line 13
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    .line 27
    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/tls/Certificate;)S

    move-result v0

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 42
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void

    .line 43
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 5
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method protected receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;

    move-result-object v0

    .line 8
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 13
    const/16 p1, 0x33

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)V

    .line 19
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v2

    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object v2

    .line 19
    :goto_0
    nop

    .line 26
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 28
    invoke-static {v3}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    .line 30
    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object v4

    .line 31
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    .line 32
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v0

    invoke-interface {v4, v1, v0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 34
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    .line 44
    :catch_1
    move-exception p1

    throw p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 4
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_9

    .line 9
    const/16 v1, 0x20

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    .line 15
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 16
    array-length v4, v4

    if-gt v4, v1, :cond_8

    .line 26
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_7

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_7

    .line 31
    div-int/2addr v1, v4

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    .line 37
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_6

    .line 42
    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    .line 49
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 59
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result p1

    iput-boolean p1, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    .line 60
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result p1

    const/16 v1, 0x28

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->requiresExtendedMasterSecret()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 67
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 68
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    const/16 v2, 0x5600

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyFallback(Z)V

    .line 70
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-object v3, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 72
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    .line 73
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    .line 90
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    .line 99
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 107
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    .line 109
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 111
    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 116
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifySecureRenegotiation(Z)V

    .line 118
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz p1, :cond_5

    .line 121
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->getPaddingExtension(Ljava/util/Hashtable;)I

    .line 123
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    :cond_5
    return-void

    .line 124
    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 125
    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 126
    :cond_8
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 127
    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 5
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    .line 11
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    .line 13
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    .line 18
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    return-void
.end method

.method protected sendCertificateRequestMessage(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendCertificateStatusMessage(Lorg/bouncycastle/crypto/tls/CertificateStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendNewSessionTicketMessage(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void

    .line 6
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendServerHelloDoneMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 2
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 3
    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 5
    invoke-virtual {p0, v1, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeHandshakeMessage([BII)V

    return-void
.end method

.method protected sendServerHelloMessage()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    .line 4
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v2

    const/16 v3, 0x50

    if-eqz v2, :cond_9

    .line 10
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 11
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 12
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    .line 13
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 15
    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 18
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v1, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 24
    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 26
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v2

    .line 27
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    invoke-static {v5, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 29
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/CipherSuite;->isSCSV(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 30
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 34
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v2, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 36
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v5

    .line 37
    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 41
    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-short v5, v6, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 43
    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 44
    invoke-static {v5, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 46
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 51
    iget-boolean v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 53
    sget-object v5, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-boolean v6, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    goto :goto_1

    .line 78
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    .line 89
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 91
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 93
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p0, v2, v5, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v2

    iput-short v2, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 102
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    .line 103
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v6

    :goto_2
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    .line 106
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    .line 107
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 113
    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result v2

    iput v2, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 119
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 v2, 0xc

    iput v2, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 121
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applyMaxFragmentLengthExtension()V

    .line 123
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void

    .line 124
    :cond_7
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 125
    :cond_8
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 126
    :cond_9
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected sendServerKeyExchangeMessage([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    array-length v1, p1

    const/16 v2, 0xc

    invoke-direct {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;SI)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method
