.class public Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "AliasKeyManager.java"


# instance fields
.field private final clientAlias:Ljava/lang/String;

.field private final delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

.field private final serverAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509ExtendedKeyManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "delegateKeyManager"    # Ljavax/net/ssl/X509ExtendedKeyManager;
    .param p2, "serverAlias"    # Ljava/lang/String;
    .param p3, "clientAlias"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 46
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->serverAlias:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->clientAlias:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 58
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->clientAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->clientAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 99
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 106
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->serverAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 110
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->serverAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;->delegateKeyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
