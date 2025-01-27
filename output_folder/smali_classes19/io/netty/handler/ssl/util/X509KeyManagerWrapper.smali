.class final Lio/netty/handler/ssl/util/X509KeyManagerWrapper;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "X509KeyManagerWrapper.java"


# instance fields
.field private final delegate:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;)V
    .locals 1
    .param p1, "delegate"    # Ljavax/net/ssl/X509KeyManager;

    .line 35
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 36
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    iput-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    .line 37
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "var1"    # [Ljava/lang/String;
    .param p2, "var2"    # [Ljava/security/Principal;
    .param p3, "var3"    # Ljava/net/Socket;

    .line 46
    iget-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 71
    iget-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 76
    iget-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # [Ljava/security/Principal;
    .param p3, "var3"    # Ljava/net/Socket;

    .line 56
    iget-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # [Ljava/security/Principal;

    .line 41
    iget-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # [Ljava/security/Principal;

    .line 51
    iget-object v0, p0, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
