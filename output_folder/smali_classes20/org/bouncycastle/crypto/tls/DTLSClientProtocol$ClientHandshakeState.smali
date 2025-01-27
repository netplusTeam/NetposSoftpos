.class public Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
.super Ljava/lang/Object;
.source "DTLSClientProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClientHandshakeState"
.end annotation


# instance fields
.field allowCertificateStatus:Z

.field authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

.field certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

.field client:Lorg/bouncycastle/crypto/tls/TlsClient;

.field clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

.field clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

.field clientExtensions:Ljava/util/Hashtable;

.field expectSessionTicket:Z

.field keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field offeredCipherSuites:[I

.field resumedSession:Z

.field secure_renegotiation:Z

.field selectedSessionID:[B

.field serverExtensions:Ljava/util/Hashtable;

.field sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

.field sessionParametersBuilder:Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

.field tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    .line 4
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    .line 5
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    .line 6
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 7
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParametersBuilder:Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    .line 8
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    .line 9
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    .line 10
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 11
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    .line 12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    .line 13
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    .line 14
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    .line 15
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    .line 16
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 17
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    .line 18
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    .line 19
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 20
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    return-void
.end method
