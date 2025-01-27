.class public Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsPSKKeyExchange.java"


# instance fields
.field protected clientECPointFormats:[S

.field protected dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

.field protected dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

.field protected dhVerifier:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

.field protected ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field protected ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field protected namedCurves:[I

.field protected premasterSecret:[B

.field protected psk:[B

.field protected pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

.field protected pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

.field protected psk_identity_hint:[B

.field protected rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

.field protected serverECPointFormats:[S

.field protected serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Lorg/bouncycastle/crypto/params/DHParameters;[I[S[S)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 2
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 3
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    .line 5
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 6
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 8
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 9
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 11
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 12
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 13
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unsupported key exchange algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_0
    :pswitch_0
    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    .line 34
    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    .line 35
    iput-object p5, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhVerifier:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    .line 36
    iput-object p6, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    .line 37
    iput-object p7, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->namedCurves:[I

    .line 38
    iput-object p8, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    .line 39
    iput-object p9, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverECPointFormats:[S

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->skipIdentityHint()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->notifyIdentityHint([B)V

    .line 10
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->getPSKIdentity()[B

    move-result-object v0

    const/16 v1, 0x50

    if-eqz v0, :cond_5

    .line 16
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->getPSK()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    if-eqz v2, :cond_4

    .line 22
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 24
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    .line 26
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_1

    :cond_1
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverECPointFormats:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 34
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 35
    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;[SLorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    goto :goto_1

    :cond_2
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsRSAUtils;->generateEncryptedPreMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    :cond_3
    :goto_1
    return-void

    .line 41
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 42
    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected generateOtherSecret(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v1, 0x50

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 3
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    const/16 v2, 0x18

    if-ne v0, v2, :cond_3

    .line 13
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->calculateECDHBasicAgreement(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)[B

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 23
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    return-object p1

    .line 26
    :cond_4
    new-array p1, p1, [B

    return-object p1
.end method

.method public generatePremasterSecret()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->generateOtherSecret(I)[B

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 7
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    .line 10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public generateServerKeyExchange()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;->getHint()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->requiresServerKeyExchange()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v1, :cond_1

    .line 12
    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 19
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    .line 21
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_2

    .line 26
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_1

    .line 27
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    const/16 v2, 0x18

    if-ne v1, v2, :cond_4

    .line 35
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->namedCurves:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;[I[SLjava/io/OutputStream;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 39
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
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
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;->getPSK([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    .line 11
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 13
    new-instance v0, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    goto :goto_1

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 17
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverECPointFormats:[S

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/bouncycastle/crypto/params/ECDomainParameters;[B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    goto :goto_1

    :cond_1
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-static {p1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 37
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;->decryptPreMasterSecret([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    :cond_3
    :goto_1
    return-void

    .line 38
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x73

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

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

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->validateRSAPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    const/16 v1, 0x20

    .line 30
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    .line 32
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void

    .line 33
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :catch_0
    move-exception p1

    .line 34
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    .line 35
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    .line 8
    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    return-void

    .line 9
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 3
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhVerifier:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->receiveDHParameters(Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    .line 6
    new-instance v0, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->namedCurves:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->readECParameters([I[SLjava/io/InputStream;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 14
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/bouncycastle/crypto/params/ECDomainParameters;[B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    :cond_1
    :goto_0
    return-void
.end method

.method public requiresServerKeyExchange()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
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
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

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

.method protected validateRSAPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
