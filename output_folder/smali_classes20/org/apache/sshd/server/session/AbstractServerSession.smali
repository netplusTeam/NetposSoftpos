.class public abstract Lorg/apache/sshd/server/session/AbstractServerSession;
.super Lorg/apache/sshd/common/session/helpers/AbstractSession;
.source "AbstractServerSession.java"

# interfaces
.implements Lorg/apache/sshd/server/session/ServerSession;


# instance fields
.field private clientAddress:Ljava/net/SocketAddress;

.field private gssAuthenticator:Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

.field private hostBasedAuthenticator:Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

.field private interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

.field private keyPairProvider:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

.field private passwordAuthenticator:Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

.field private proxyAcceptor:Lorg/apache/sshd/server/session/ServerProxyAcceptor;

.field private publickeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

.field private userAuthFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/server/ServerFactoryManager;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 1
    .param p1, "factoryManager"    # Lorg/apache/sshd/server/ServerFactoryManager;
    .param p2, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;-><init>(ZLorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoSession;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected checkKeys()V
    .locals 0

    .line 220
    return-void
.end method

.method public getActiveSessionCountForUser(Ljava/lang/String;)I
    .locals 9
    .param p1, "userName"    # Ljava/lang/String;

    .line 515
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 516
    return v1

    .line 519
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v0

    .line 520
    .local v0, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->getService()Lorg/apache/sshd/common/io/IoService;

    move-result-object v2

    .line 521
    .local v2, "service":Lorg/apache/sshd/common/io/IoService;
    invoke-interface {v2}, Lorg/apache/sshd/common/io/IoService;->getManagedSessions()Ljava/util/Map;

    move-result-object v3

    .line 522
    .local v3, "sessionsMap":Ljava/util/Map;, "Ljava/util/Map<*Lorg/apache/sshd/common/io/IoSession;>;"
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    return v1

    .line 526
    :cond_1
    const/4 v1, 0x0

    .line 527
    .local v1, "totalCount":I
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sshd/common/io/IoSession;

    .line 528
    .local v5, "is":Lorg/apache/sshd/common/io/IoSession;
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/sshd/server/session/AbstractServerSession;->getSession(Lorg/apache/sshd/common/io/IoSession;Z)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/server/session/ServerSession;

    .line 529
    .local v6, "session":Lorg/apache/sshd/server/session/ServerSession;
    if-nez v6, :cond_2

    .line 530
    goto :goto_0

    .line 533
    :cond_2
    invoke-interface {v6}, Lorg/apache/sshd/server/session/ServerSession;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "sessionUser":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 535
    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 536
    add-int/lit8 v1, v1, 0x1

    .line 538
    .end local v5    # "is":Lorg/apache/sshd/common/io/IoSession;
    .end local v6    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .end local v7    # "sessionUser":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 540
    :cond_4
    return v1
.end method

.method public getClientAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientAddress:Ljava/net/SocketAddress;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolvePeerAddress(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->currentService:Lorg/apache/sshd/common/Service;

    instance-of v0, v0, Lorg/apache/sshd/common/session/ConnectionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->currentService:Lorg/apache/sshd/common/Service;

    check-cast v0, Lorg/apache/sshd/common/session/ConnectionService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;
    .locals 1

    .line 91
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/ServerFactoryManager;

    return-object v0
.end method

.method public getGSSAuthenticator()Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;
    .locals 4

    .line 152
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    .line 153
    .local v0, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    const-class v1, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->gssAuthenticator:Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    .line 154
    invoke-interface {v0}, Lorg/apache/sshd/server/ServerFactoryManager;->getGSSAuthenticator()Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    move-result-object v3

    .line 153
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    return-object v1
.end method

.method public getHostBasedAuthenticator()Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;
    .locals 4

    .line 164
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    .line 165
    .local v0, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    const-class v1, Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->hostBasedAuthenticator:Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    .line 166
    invoke-interface {v0}, Lorg/apache/sshd/server/ServerFactoryManager;->getHostBasedAuthenticator()Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    move-result-object v3

    .line 165
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    return-object v1
.end method

.method public getHostKey()Ljava/security/KeyPair;
    .locals 8

    .line 496
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->SERVERKEYS:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "proposedKey":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getCanonicalKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "keyType":Ljava/lang/String;
    nop

    .line 499
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getKeyPairProvider()Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v2

    const-string v3, "No host keys provider"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    .line 501
    .local v2, "provider":Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    :try_start_0
    invoke-interface {v2, p0, v1}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->loadKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 502
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    .line 503
    .local v3, "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    .line 504
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 503
    const-string v6, "getHostKey({}) failed ({}) to load key of type={}[{}]: {}"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHostKey("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] key load failure details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    :cond_0
    new-instance v4, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v4, v3}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getId()J
    .locals 3

    .line 547
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v0

    .line 548
    .local v0, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->getId()J

    move-result-wide v1

    return-wide v1
.end method

.method public getKeyPairProvider()Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    .locals 4

    .line 187
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;

    move-result-object v0

    .line 188
    .local v0, "parent":Lorg/apache/sshd/common/kex/KexFactoryManager;
    const-class v1, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->keyPairProvider:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move-object v3, v0

    check-cast v3, Lorg/apache/sshd/server/ServerAuthenticationManager;

    .line 189
    invoke-interface {v3}, Lorg/apache/sshd/server/ServerAuthenticationManager;->getKeyPairProvider()Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v3

    .line 188
    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    return-object v1
.end method

.method public getKeyboardInteractiveAuthenticator()Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;
    .locals 4

    .line 140
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    .line 141
    .local v0, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    const-class v1, Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 142
    invoke-interface {v0}, Lorg/apache/sshd/server/ServerFactoryManager;->getKeyboardInteractiveAuthenticator()Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    move-result-object v3

    .line 141
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    return-object v1
.end method

.method public getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
    .locals 4

    .line 116
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    .line 117
    .local v0, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    const-class v1, Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->passwordAuthenticator:Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    .line 118
    invoke-interface {v0}, Lorg/apache/sshd/server/ServerFactoryManager;->getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    move-result-object v3

    .line 117
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    return-object v1
.end method

.method public getPublickeyAuthenticator()Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .locals 4

    .line 128
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    .line 129
    .local v0, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    const-class v1, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->publickeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 130
    invoke-interface {v0}, Lorg/apache/sshd/server/ServerFactoryManager;->getPublickeyAuthenticator()Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    move-result-object v3

    .line 129
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    return-object v1
.end method

.method public getServerProxyAcceptor()Lorg/apache/sshd/server/session/ServerProxyAcceptor;
    .locals 3

    .line 96
    const-class v0, Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    iget-object v1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->proxyAcceptor:Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    .line 97
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/sshd/server/ServerFactoryManager;->getServerProxyAcceptor()Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    return-object v0
.end method

.method public getUserAuthFactories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    .line 177
    .local v0, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    iget-object v1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->userAuthFactories:Ljava/util/List;

    invoke-interface {v0}, Lorg/apache/sshd/server/ServerFactoryManager;->getUserAuthFactories()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEffectiveFactories(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method protected handleServiceAccept(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleServiceAccept(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 326
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v1

    .line 327
    .local v1, "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    if-eqz v1, :cond_1

    const/4 v2, 0x6

    .line 328
    invoke-interface {v1, p0, v2, p1, p2}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleUnsupportedServiceDisconnectReason(Lorg/apache/sshd/common/session/Session;ILjava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const-string v3, "handleServiceAccept({}) ignore unknown service={} by handler"

    invoke-interface {v2, v3, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    return-void

    .line 341
    .end local v1    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    :cond_1
    goto :goto_1

    .line 335
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v0

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 336
    const-string v4, "handleServiceAccept({}) failed ({}) to invoke disconnect handler of unknown service={}: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleServiceAccept("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] handler invocation exception details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported packet: SSH_MSG_SERVICE_ACCEPT for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/server/session/AbstractServerSession;->disconnect(ILjava/lang/String;)V

    .line 346
    return-void
.end method

.method protected handleServiceRequest(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleServiceRequest(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v0

    .line 225
    .local v0, "started":Z
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    return v1

    .line 229
    :cond_0
    const-string v1, "ssh-userauth"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->currentService:Lorg/apache/sshd/common/Service;

    instance-of v1, v1, Lorg/apache/sshd/server/session/ServerUserAuthService;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->currentService:Lorg/apache/sshd/common/Service;

    check-cast v1, Lorg/apache/sshd/server/session/ServerUserAuthService;

    .line 232
    .local v1, "authService":Lorg/apache/sshd/server/session/ServerUserAuthService;
    sget-object v2, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->IMMEDIATE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    invoke-virtual {v1}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getWelcomePhase()Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v1, p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->sendWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 237
    .end local v1    # "authService":Lorg/apache/sshd/server/session/ServerUserAuthService;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$readIdentification$0$org-apache-sshd-server-session-AbstractServerSession(Lorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 1
    .param p1, "future"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 476
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/session/AbstractServerSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    return-void
.end method

.method protected readIdentification(Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 11
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getServerProxyAcceptor()Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    move-result-object v0

    .line 419
    .local v0, "acceptor":Lorg/apache/sshd/server/session/ServerProxyAcceptor;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    .line 420
    .local v1, "rpos":I
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 421
    .local v2, "debugEnabled":Z
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 423
    nop

    .line 424
    :try_start_0
    invoke-interface {v0, p0, p1}, Lorg/apache/sshd/server/session/ServerProxyAcceptor;->acceptServerProxyMetadata(Lorg/apache/sshd/server/session/ServerSession;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v6

    .line 425
    .local v6, "completed":Z
    if-nez v6, :cond_0

    .line 426
    invoke-virtual {p1, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    return v4

    .line 441
    .end local v6    # "completed":Z
    :cond_0
    goto :goto_0

    .line 429
    :catchall_0
    move-exception v6

    .line 430
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v4

    .line 431
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 430
    const-string v3, "readIdentification({}) failed ({}) to accept proxy metadata: {}"

    invoke-interface {v7, v3, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    if-eqz v2, :cond_1

    .line 433
    iget-object v3, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIdentification("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") proxy metadata acceptance failure details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    :cond_1
    instance-of v3, v6, Ljava/io/IOException;

    if-eqz v3, :cond_2

    .line 437
    move-object v3, v6

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 439
    :cond_2
    new-instance v3, Lorg/apache/sshd/common/SshException;

    invoke-direct {v3, v6}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 444
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v5}, Lorg/apache/sshd/server/session/AbstractServerSession;->doReadIdentification(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/util/List;

    move-result-object v6

    .line 445
    .local v6, "ident":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v7

    .line 446
    .local v7, "numLines":I
    const/4 v8, 0x0

    if-gtz v7, :cond_4

    move-object v9, v8

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v7, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :goto_1
    iput-object v9, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientVersion:Ljava/lang/String;

    .line 447
    iget-object v9, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientVersion:Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 448
    invoke-virtual {p1, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 449
    return v4

    .line 452
    :cond_5
    if-eqz v2, :cond_6

    .line 453
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    iget-object v9, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientVersion:Ljava/lang/String;

    const-string v10, "readIdentification({}) client version string: {}"

    invoke-interface {v4, v10, p0, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    :cond_6
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientVersion:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/sshd/common/session/SessionContext;->isValidVersionPrefix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 463
    if-le v7, v5, :cond_7

    new-instance v8, Lorg/apache/sshd/common/SshException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected extra "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " lines from client="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientVersion:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v3, v4}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    :cond_7
    move-object v3, v8

    .local v3, "err":Ljava/io/IOException;
    goto :goto_2

    .line 468
    .end local v3    # "err":Ljava/io/IOException;
    :cond_8
    new-instance v3, Lorg/apache/sshd/common/SshException;

    const/16 v4, 0x8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported protocol version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v8}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    .line 472
    .restart local v3    # "err":Ljava/io/IOException;
    :goto_2
    if-nez v3, :cond_9

    .line 480
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientVersion:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lorg/apache/sshd/server/session/AbstractServerSession;->signalPeerIdentificationReceived(Ljava/lang/String;Ljava/util/List;)V

    .line 482
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v8, Lorg/apache/sshd/common/kex/KexState;->INIT:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 483
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->sendKexInit()[B

    .line 484
    return v5

    .line 473
    :cond_9
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v4

    .line 474
    .local v4, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    new-instance v5, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V

    .line 474
    invoke-interface {v4, v5}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v5

    new-instance v8, Lorg/apache/sshd/server/session/AbstractServerSession$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lorg/apache/sshd/server/session/AbstractServerSession$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/server/session/AbstractServerSession;)V

    .line 476
    invoke-interface {v5, v8}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 477
    throw v3
.end method

.method protected receiveKexInit(Ljava/util/Map;[B)V
    .locals 1
    .param p2, "seed"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    .local p1, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientProposal:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/server/session/AbstractServerSession;->mergeProposals(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 491
    invoke-virtual {p0, p2}, Lorg/apache/sshd/server/session/AbstractServerSession;->setClientKexData([B)V

    .line 492
    return-void
.end method

.method protected resolveAvailableSignaturesProposal(Lorg/apache/sshd/common/FactoryManager;)Ljava/lang/String;
    .locals 7
    .param p1, "proposedManager"    # Lorg/apache/sshd/common/FactoryManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Mismatched signatures proposed factory manager"

    invoke-static {v0, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getKeyPairProvider()Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v0

    .line 369
    .local v0, "kpp":Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    iget-object v3, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 372
    .local v3, "debugEnabled":Z
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->getKeyTypes(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .local v1, "provided":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :goto_1
    nop

    .line 383
    nop

    .line 384
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getSignatureFactories()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 385
    .local v2, "available":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 389
    :cond_2
    nop

    .line 390
    invoke-static {v1, v2}, Lorg/apache/sshd/common/signature/SignatureFactory;->resolveSignatureFactoryNamesProposal(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 391
    .local v4, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 392
    invoke-virtual {p0, v2, v1}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEmptySignaturesProposal(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 394
    :cond_3
    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 386
    .end local v4    # "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    invoke-virtual {p0, v2, v1}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveEmptySignaturesProposal(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 373
    .end local v1    # "provided":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 374
    .local v4, "e":Ljava/lang/Error;
    iget-object v5, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    .line 375
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    invoke-virtual {v4}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 374
    const-string v1, "resolveAvailableSignaturesProposal({}) failed ({}) to get key types: {}"

    invoke-interface {v5, v1, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    if-eqz v3, :cond_5

    .line 377
    iget-object v1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAvailableSignaturesProposal("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") fetch key types failure details"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    :cond_5
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v4}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected resolveEmptySignaturesProposal(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 409
    .local p1, "supported":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p2, "provided":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string v2, "resolveEmptySignaturesProposal({})[{}] none of the keys appears in supported list: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected sendKexInit(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    .local p1, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->serverProposal:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/server/session/AbstractServerSession;->mergeProposals(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 351
    invoke-super {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sendKexInit(Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs sendServerIdentification([Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 4
    .param p1, "headerLines"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const-string v0, "server-identification"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveIdentificationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->serverVersion:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->serverVersion:Ljava/lang/String;

    .line 211
    .local v0, "ident":Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n"

    invoke-static {p1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->serverVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/session/AbstractServerSession;->sendIdentification(Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    return-object v1
.end method

.method public setClientAddress(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "clientAddress"    # Ljava/net/SocketAddress;

    .line 111
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->clientAddress:Ljava/net/SocketAddress;

    .line 112
    return-void
.end method

.method public setGSSAuthenticator(Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;)V
    .locals 0
    .param p1, "gssAuthenticator"    # Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    .line 159
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->gssAuthenticator:Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    .line 160
    return-void
.end method

.method public setHostBasedAuthenticator(Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;)V
    .locals 0
    .param p1, "hostBasedAuthenticator"    # Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    .line 171
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->hostBasedAuthenticator:Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    .line 172
    return-void
.end method

.method protected varargs setKexSeed([B)V
    .locals 0
    .param p1, "seed"    # [B

    .line 356
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/session/AbstractServerSession;->setServerKexData([B)V

    .line 357
    return-void
.end method

.method public setKeyPairProvider(Lorg/apache/sshd/common/keyprovider/KeyPairProvider;)V
    .locals 0
    .param p1, "keyPairProvider"    # Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    .line 194
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->keyPairProvider:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    .line 195
    return-void
.end method

.method public setKeyboardInteractiveAuthenticator(Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;)V
    .locals 0
    .param p1, "interactiveAuthenticator"    # Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 147
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 148
    return-void
.end method

.method public setPasswordAuthenticator(Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;)V
    .locals 0
    .param p1, "passwordAuthenticator"    # Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    .line 123
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->passwordAuthenticator:Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    .line 124
    return-void
.end method

.method public setPublickeyAuthenticator(Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;)V
    .locals 0
    .param p1, "publickeyAuthenticator"    # Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 135
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->publickeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 136
    return-void
.end method

.method public setServerProxyAcceptor(Lorg/apache/sshd/server/session/ServerProxyAcceptor;)V
    .locals 0
    .param p1, "proxyAcceptor"    # Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    .line 102
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->proxyAcceptor:Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    .line 103
    return-void
.end method

.method public setUserAuthFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "userAuthFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->userAuthFactories:Ljava/util/List;

    .line 183
    return-void
.end method

.method public signalAuthenticationSuccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "authService"    # Ljava/lang/String;
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexState;

    .line 281
    .local v0, "curState":Lorg/apache/sshd/common/kex/KexState;
    sget-object v1, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/kex/KexState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v1

    .line 297
    .local v1, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    if-eqz v1, :cond_0

    sget-object v2, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->AUTHOK:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    invoke-interface {v1, p0, v2}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->isKexExtensionsAvailable(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    sget-object v2, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;->AUTHOK:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    invoke-interface {v1, p0, v2}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->sendKexExtensions(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;)V

    .line 301
    :cond_0
    const/16 v2, 0x34

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/server/session/AbstractServerSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 303
    .local v2, "response":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v3

    .line 304
    .local v3, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->encodeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 305
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/sshd/server/session/AbstractServerSession;->resolveOutputPacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v5

    .line 307
    .local v5, "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/session/AbstractServerSession;->setUsername(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->setAuthenticated()V

    .line 310
    invoke-virtual {p0, p2, p3}, Lorg/apache/sshd/server/session/AbstractServerSession;->startService(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 313
    invoke-interface {v3, v5}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v6

    move-object v5, v6

    .line 314
    .local v5, "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->resetIdleTimeout()J

    .line 317
    iget-object v4, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const-string v6, "Session {}@{} authenticated"

    invoke-interface {v3}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-interface {v4, v6, p1, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    return-object v5

    .line 314
    .end local v5    # "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 282
    .end local v1    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    .end local v2    # "response":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v3    # "networkSession":Lorg/apache/sshd/common/io/IoSession;
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication success signalled though KEX state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public startService(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    .line 243
    .local v0, "factoryManager":Lorg/apache/sshd/common/FactoryManager;
    nop

    .line 244
    invoke-interface {v0}, Lorg/apache/sshd/common/FactoryManager;->getServiceFactories()Ljava/util/List;

    move-result-object v1

    .line 245
    const-string v2, "No service name specified"

    invoke-static {p1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v1, v2, p0}, Lorg/apache/sshd/common/ServiceFactory;->create(Ljava/util/Collection;Ljava/lang/String;Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/Service;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->currentService:Lorg/apache/sshd/common/Service;

    .line 253
    iget-object v1, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->currentService:Lorg/apache/sshd/common/Service;

    if-nez v1, :cond_3

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/AbstractServerSession;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v1

    .line 256
    .local v1, "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    if-eqz v1, :cond_1

    const/4 v2, 0x5

    .line 257
    invoke-interface {v1, p0, v2, p1, p2}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleUnsupportedServiceDisconnectReason(Lorg/apache/sshd/common/session/Session;ILjava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const-string v3, "startService({}) ignore unknown service={} by handler"

    invoke-interface {v2, v3, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    return-void

    .line 270
    .end local v1    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    :cond_1
    goto :goto_1

    .line 264
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 265
    const-string v4, "startService({})[{}] failed ({}) to invoke disconnect handler: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lorg/apache/sshd/server/session/AbstractServerSession;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] disconnect handler invocation exception details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 274
    :cond_3
    return-void
.end method
