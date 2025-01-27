.class public Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
.super Ljava/lang/Object;
.source "DTLSServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ServerHandshakeState"
.end annotation


# instance fields
.field allowCertificateStatus:Z

.field certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

.field clientCertificateType:S

.field clientExtensions:Ljava/util/Hashtable;

.field expectSessionTicket:Z

.field keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field offeredCipherSuites:[I

.field offeredCompressionMethods:[S

.field resumedSession:Z

.field secure_renegotiation:Z

.field server:Lorg/bouncycastle/crypto/tls/TlsServer;

.field serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

.field serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

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

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    .line 4
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    .line 5
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    .line 6
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    .line 7
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParametersBuilder:Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    .line 8
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    .line 9
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    .line 10
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    .line 11
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->resumedSession:Z

    .line 13
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    .line 14
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->allowCertificateStatus:Z

    .line 15
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    .line 16
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    .line 17
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    .line 18
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    .line 19
    const/4 v1, -0x1

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    .line 20
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    return-void
.end method
