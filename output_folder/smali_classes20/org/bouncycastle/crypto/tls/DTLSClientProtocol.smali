.class public Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;
.super Lorg/bouncycastle/crypto/tls/DTLSProtocol;
.source "DTLSClientProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;-><init>(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected static patchClientHelloWithCookie([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x22

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    add-int/lit8 v0, v0, 0x23

    add-int/lit8 v1, v0, 0x1

    .line 6
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 7
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    array-length v4, p1

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 9
    array-length v4, p1

    invoke-static {v4, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(I[BI)V

    .line 10
    array-length v0, p1

    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length p1, p1

    add-int/2addr p1, v1

    array-length v0, p0

    sub-int/2addr v0, v1

    invoke-static {p0, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected abortClientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V
    .locals 0

    .line 1
    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->invalidateSession(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V

    return-void
.end method

.method protected clientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    .line 4
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateClientHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/TlsClient;)[B

    move-result-object v2

    .line 6
    sget-object v3, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p2, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 8
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 10
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v4

    .line 12
    :goto_0
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    .line 14
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    .line 15
    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    .line 23
    invoke-virtual {v5, v6}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    invoke-virtual {p2, v7}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 30
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processHelloVerifyRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B

    move-result-object v4

    .line 31
    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->patchClientHelloWithCookie([B[B)[B

    move-result-object v4

    .line 33
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetHandshakeMessagesDigest()V

    .line 34
    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 36
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v4

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 51
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/4 v3, 0x2

    const/16 v5, 0xa

    if-ne v2, v3, :cond_17

    .line 53
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 54
    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->reportServerVersion(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 55
    invoke-virtual {p2, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 57
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 64
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->notifyHelloComplete()V

    .line 66
    iget-short v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    invoke-static {p2, v2}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->applyMaxFragmentLengthExtension(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    .line 68
    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    const-string v3, "client finished"

    const-string v4, "server finished"

    const/16 v6, 0x14

    if-eqz v2, :cond_2

    .line 70
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 71
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    .line 74
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 75
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    .line 76
    invoke-static {v0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 78
    invoke-virtual {v1, v6}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->processFinished([B[B)V

    .line 81
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 82
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    .line 83
    invoke-static {v0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 85
    invoke-virtual {v1, v6, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 87
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    .line 89
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setResumableSession(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    .line 91
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V

    .line 93
    new-instance p1, Lorg/bouncycastle/crypto/tls/DTLSTransport;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/DTLSTransport;-><init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    return-object p1

    .line 96
    :cond_2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->invalidateSession(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V

    .line 98
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v8, v2

    if-lez v8, :cond_3

    .line 100
    new-instance v8, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;

    invoke-direct {v8, v2, v7}, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V

    iput-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    .line 103
    :cond_3
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v8

    const/16 v9, 0x17

    if-ne v8, v9, :cond_4

    .line 107
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 108
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    goto :goto_1

    .line 112
    :cond_4
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v8, v7}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    .line 115
    :goto_1
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v8

    iput-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 116
    iget-object v10, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v8, v10}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    .line 120
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v8

    const/16 v10, 0xb

    if-ne v8, v10, :cond_5

    .line 122
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerCertificate(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v2

    .line 123
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v8

    goto :goto_2

    .line 128
    :cond_5
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    move-object v8, v2

    move-object v2, v7

    :goto_2
    if-eqz v2, :cond_6

    .line 132
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const/4 v11, 0x0

    .line 134
    iput-boolean v11, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    .line 137
    :cond_7
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v11

    const/16 v12, 0x16

    if-ne v11, v12, :cond_8

    .line 139
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processCertificateStatus(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 140
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v8

    .line 147
    :cond_8
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_9

    .line 149
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 150
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v8

    goto :goto_3

    .line 155
    :cond_9
    iget-object v11, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v11}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 158
    :goto_3
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_a

    .line 160
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 166
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    iget-object v11, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 167
    invoke-virtual {v11}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v11

    .line 168
    invoke-static {v8, v11}, Lorg/bouncycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 171
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v8

    .line 178
    :cond_a
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_16

    .line 180
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_15

    .line 190
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 192
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 195
    invoke-static {v8}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v8

    .line 196
    invoke-virtual {v1, v9, v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 199
    :cond_b
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v8, :cond_e

    .line 201
    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {v9, v8}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v8

    iput-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v8, :cond_c

    .line 212
    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v8

    goto :goto_4

    .line 201
    :cond_c
    move-object v8, v7

    .line 212
    :goto_4
    if-nez v8, :cond_d

    .line 216
    sget-object v8, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    .line 219
    :cond_d
    invoke-static {v8}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->generateCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)[B

    move-result-object v8

    .line 220
    invoke-virtual {v1, v10, v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 223
    :cond_e
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v8, :cond_f

    .line 225
    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v9, v8}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    goto :goto_5

    .line 229
    :cond_f
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 232
    :goto_5
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B

    move-result-object v8

    const/16 v9, 0x10

    .line 233
    invoke-virtual {v1, v9, v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 235
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    .line 236
    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v9, v8, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v9

    iput-object v9, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    .line 238
    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v10, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v9, v10}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    .line 239
    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v9}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v9

    invoke-virtual {p2, v9}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    .line 241
    iget-object v9, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v9, :cond_11

    instance-of v10, v9, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v10, :cond_11

    .line 243
    check-cast v9, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    .line 248
    iget-object v10, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v10, v9}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v10

    if-nez v10, :cond_10

    .line 254
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object v8

    goto :goto_6

    .line 258
    :cond_10
    invoke-virtual {v10}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v11

    invoke-interface {v8, v11}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v8

    .line 261
    :goto_6
    invoke-interface {v9, v8}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v8

    .line 262
    new-instance v9, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {v9, v10, v8}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 263
    invoke-virtual {p0, p1, v9}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DigitallySigned;)[B

    move-result-object v8

    const/16 v9, 0xf

    .line 264
    invoke-virtual {v1, v9, v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 268
    :cond_11
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 269
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v9

    .line 270
    invoke-static {v8, v3, v9}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v3

    .line 272
    invoke-virtual {v1, v6, v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 274
    iget-boolean v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    if-eqz v3, :cond_13

    .line 276
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_12

    .line 279
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    goto :goto_7

    .line 283
    :cond_12
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 288
    :cond_13
    :goto_7
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 289
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    invoke-static {v3, v5, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v5

    .line 290
    invoke-static {v3, v4, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v3

    .line 292
    invoke-virtual {v1, v6}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->processFinished([B[B)V

    .line 294
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    .line 296
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v1, :cond_14

    .line 298
    new-instance v1, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;-><init>()V

    .line 299
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCompressionAlgorithm()S

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setCompressionAlgorithm(S)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v1

    .line 301
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setExtendedMasterSecret(Z)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v1

    .line 302
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setMasterSecret([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v1

    .line 303
    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v1

    .line 304
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getPSKIdentity()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setPSKIdentity([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v1

    .line 305
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSRPIdentity()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setSRPIdentity([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 307
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setServerExtensions(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->build()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 310
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->importSession([BLorg/bouncycastle/crypto/tls/SessionParameters;)Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    .line 312
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setResumableSession(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    .line 315
    :cond_14
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V

    .line 317
    new-instance p1, Lorg/bouncycastle/crypto/tls/DTLSTransport;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/DTLSTransport;-><init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    return-object p1

    .line 318
    :cond_15
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 323
    :cond_16
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 324
    :cond_17
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/TlsClient;Lorg/bouncycastle/crypto/tls/DatagramTransport;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    .line 4
    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;-><init>()V

    .line 5
    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    .line 6
    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 8
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 9
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRandomBlock(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 13
    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    .line 15
    new-instance v2, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const/16 v4, 0x16

    invoke-direct {v2, p2, v3, p1, v4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;-><init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V

    .line 17
    iget-object p1, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->isResumable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 20
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    .line 24
    iput-object p2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 30
    :cond_0
    const/16 p1, 0x50

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->clientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clear()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 50
    :try_start_1
    invoke-virtual {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->abortClientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    .line 51
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    .line 52
    invoke-virtual {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->abortClientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    .line 53
    throw p2

    :catch_2
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, v1, v2, p2}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->abortClientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    .line 55
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clear()V

    .line 70
    throw p1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'transport\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'client\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DigitallySigned;)[B
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
    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateClientHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/TlsClient;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 9
    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 11
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 15
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v3, :cond_0

    .line 17
    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 18
    array-length v4, v3

    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    :cond_0
    move-object v3, v2

    .line 24
    :cond_1
    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->isFallback()Z

    move-result v4

    .line 26
    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v5

    iput-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    .line 28
    array-length v5, v3

    if-lez v5, :cond_3

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-eqz v5, :cond_3

    .line 30
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 31
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v6

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 32
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v3, v2

    .line 38
    :cond_3
    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    .line 40
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    .line 42
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 46
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 48
    invoke-static {v3, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 51
    invoke-static {v2, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 60
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 63
    :goto_0
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    const/16 v5, 0xff

    invoke-static {v3, v5}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 68
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    :cond_5
    if-eqz v4, :cond_6

    .line 78
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    const/16 v3, 0x5600

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 80
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    .line 83
    :cond_6
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    .line 86
    new-array v0, v1, [S

    aput-short v2, v0, v2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    .line 89
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 91
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 92
    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected generateClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected invalidateSession(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->clear()V

    .line 4
    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 7
    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->invalidate()V

    .line 10
    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method protected processCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 14
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 16
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    return-void

    .line 17
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processCertificateStatus(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 13
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateStatus;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    .line 15
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void

    .line 16
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processHelloVerifyRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object p2

    .line 4
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 6
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 10
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result p1

    const/16 v0, 0x2f

    if-eqz p1, :cond_2

    .line 19
    sget-object p1, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result p1

    if-nez p1, :cond_1

    array-length p1, v1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return-object v1

    .line 22
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
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
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object p2

    .line 5
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 7
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected processServerCertificate(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)Lorg/bouncycastle/crypto/tls/Certificate;
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
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 8
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    .line 9
    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-object p2
.end method

.method protected processServerHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->reportServerVersion(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 10
    const/16 p2, 0x20

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 12
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    .line 13
    array-length v3, v2

    const/16 v4, 0x2f

    if-gt v3, p2, :cond_12

    .line 17
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 18
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v2, p2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v2, :cond_0

    .line 19
    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v5

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    iput-boolean p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    .line 21
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result p2

    .line 22
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v2, p2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz p2, :cond_11

    .line 24
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/CipherSuite;->isSCSV(I)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 25
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 29
    invoke-static {p2, v4}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->validateSelectedCipherSuite(IS)V

    .line 30
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 32
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    if-nez v2, :cond_10

    .line 37
    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v6, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 55
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 61
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    .line 63
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v1

    const/16 v6, 0x28

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    .line 64
    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->requiresExtendedMasterSecret()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 74
    :cond_2
    :goto_1
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v1, :cond_5

    .line 76
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 77
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 79
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 88
    sget-object v8, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 100
    :cond_3
    iget-object v8, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v8, v7}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 102
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x6e

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 128
    :cond_5
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v7, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v1, v7}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    if-eqz v1, :cond_7

    .line 137
    iput-boolean v5, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    .line 139
    sget-object v7, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 140
    invoke-static {v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v7

    .line 141
    invoke-static {v1, v7}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 144
    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 150
    :cond_7
    :goto_3
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    invoke-interface {v1, v6}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifySecureRenegotiation(Z)V

    .line 152
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 153
    iget-boolean v7, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-eqz v7, :cond_9

    .line 155
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v1

    if-ne p2, v1, :cond_8

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 156
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v1

    if-ne v2, v1, :cond_8

    const/4 v1, 0x0

    .line 162
    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v6

    goto :goto_4

    .line 163
    :cond_8
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 170
    :cond_9
    :goto_4
    iput p2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 171
    iput-short v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    if-eqz v6, :cond_e

    .line 173
    invoke-virtual {v6}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    .line 182
    invoke-static {v6}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 183
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    .line 185
    :cond_a
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 187
    :cond_b
    :goto_5
    iput-boolean p2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 190
    iget-boolean p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    invoke-static {p2, v1, v6, v4}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;->evaluateMaxFragmentLengthExtension(ZLjava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p2

    iput-short p2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 193
    invoke-static {v6}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result p2

    iput-boolean p2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 199
    iget-boolean p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-nez p2, :cond_c

    sget-object p2, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    .line 200
    invoke-static {v6, p2, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p2

    if-eqz p2, :cond_c

    move p2, v5

    goto :goto_6

    :cond_c
    move p2, v3

    :goto_6
    iput-boolean p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    .line 203
    iget-boolean p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-nez p2, :cond_d

    sget-object p2, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    .line 204
    invoke-static {v6, p2, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p2

    if-eqz p2, :cond_d

    move v3, v5

    goto :goto_7

    :cond_d
    nop

    :goto_7
    iput-boolean v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    :cond_e
    if-eqz v1, :cond_f

    .line 210
    iget-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p2, v6}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    .line 213
    :cond_f
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 214
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result p2

    .line 215
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result p1

    iput p1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    const/16 p1, 0xc

    .line 222
    iput p1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return-void

    .line 223
    :cond_10
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 224
    :cond_11
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 225
    :cond_12
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processServerKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
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
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 5
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processServerSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
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
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method protected reportServerVersion(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    .line 6
    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, p2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
