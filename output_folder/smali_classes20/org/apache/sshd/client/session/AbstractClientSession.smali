.class public abstract Lorg/apache/sshd/client/session/AbstractClientSession;
.super Lorg/apache/sshd/common/session/helpers/AbstractSession;
.source "AbstractClientSession.java"

# interfaces
.implements Lorg/apache/sshd/client/session/ClientSession;


# instance fields
.field private connectAddress:Ljava/net/SocketAddress;

.field private final connectionContext:Lorg/apache/sshd/common/AttributeRepository;

.field private final identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final identitiesProvider:Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

.field private keyIdentityProvider:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

.field private passwordIdentityProvider:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

.field private proxyConnector:Lorg/apache/sshd/client/session/ClientProxyConnector;

.field protected final sendImmediateClientIdentification:Z

.field protected final sendImmediateKexInit:Z

.field private serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

.field private userAuthFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation
.end field

.field private userInteraction:Lorg/apache/sshd/client/auth/keyboard/UserInteraction;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/client/ClientFactoryManager;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 3
    .param p1, "factoryManager"    # Lorg/apache/sshd/client/ClientFactoryManager;
    .param p2, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;-><init>(ZLorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoSession;)V

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identities:Ljava/util/List;

    .line 98
    const-string v1, "send-immediate-identification"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/client/session/AbstractClientSession;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->sendImmediateClientIdentification:Z

    .line 101
    const-string v1, "send-immediate-kex-init"

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/client/session/AbstractClientSession;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->sendImmediateKexInit:Z

    .line 105
    invoke-static {v0}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->wrapIdentities(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identitiesProvider:Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    .line 106
    const-class v0, Lorg/apache/sshd/common/AttributeRepository;

    invoke-interface {p2, v0}, Lorg/apache/sshd/common/io/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/AttributeRepository;

    iput-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->connectionContext:Lorg/apache/sshd/common/AttributeRepository;

    .line 107
    return-void
.end method


# virtual methods
.method public addPasswordIdentity(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "No password provided"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 205
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addPasswordIdentity({}) {}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    :cond_1
    return-void
.end method

.method public addPublicKeyIdentity(Ljava/security/KeyPair;)V
    .locals 5
    .param p1, "kp"    # Ljava/security/KeyPair;

    .line 228
    const-string v0, "No key-pair to add"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "No public key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    const-string v1, "No private key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 236
    .local v0, "key":Ljava/security/PublicKey;
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "addPublicKeyIdentity({}) {}-{}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    .end local v0    # "key":Ljava/security/PublicKey;
    :cond_0
    return-void
.end method

.method protected checkKeys()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    nop

    .line 545
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getServerKeyVerifier()Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    move-result-object v0

    const-string v1, "No server key verifier"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 546
    .local v0, "serverKeyVerifier":Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v1

    .line 547
    .local v1, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    invoke-interface {v1}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 548
    .local v2, "remoteAddress":Ljava/net/SocketAddress;
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    invoke-interface {v3}, Lorg/apache/sshd/common/kex/KeyExchange;->getServerKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 549
    .local v3, "serverKey":Ljava/security/PublicKey;
    invoke-interface {v0, p0, v2, v3}, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;->verifyServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z

    move-result v4

    .line 550
    .local v4, "verified":Z
    iget-object v5, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    iget-object v5, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    .line 552
    invoke-static {v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 551
    const-string v7, "checkKeys({}) key={}-{}, verified={}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    :cond_0
    if-eqz v4, :cond_1

    .line 558
    return-void

    .line 556
    :cond_1
    new-instance v5, Lorg/apache/sshd/common/SshException;

    const/16 v6, 0x9

    const-string v7, "Server key did not validate"

    invoke-direct {v5, v6, v7}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public createChannel(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ClientChannel;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/client/session/AbstractClientSession;->createChannel(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/channel/ClientChannel;

    move-result-object v0

    return-object v0
.end method

.method public createChannel(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/channel/ClientChannel;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const-string v0, "shell"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->createShellChannel()Lorg/apache/sshd/client/channel/ChannelShell;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    const-string v0, "exec"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0, p2}, Lorg/apache/sshd/client/session/AbstractClientSession;->createExecChannel(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ChannelExec;

    move-result-object v0

    return-object v0

    .line 318
    :cond_1
    const-string v0, "subsystem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p0, p2}, Lorg/apache/sshd/client/session/AbstractClientSession;->createSubsystemChannel(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ChannelSubsystem;

    move-result-object v0

    return-object v0

    .line 321
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported channel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createDirectTcpipChannel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/client/channel/ChannelDirectTcpip;
    .locals 7
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    new-instance v0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;

    invoke-direct {v0, p1, p2}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;-><init>(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 352
    .local v0, "channel":Lorg/apache/sshd/client/channel/ChannelDirectTcpip;
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v1

    .line 353
    .local v1, "service":Lorg/apache/sshd/common/session/ConnectionService;
    invoke-interface {v1, v0}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    move-result v2

    .line 354
    .local v2, "id":I
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "createDirectTcpipChannel({})[{} => {}] created id={}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_0
    return-object v0
.end method

.method public createExecChannel(Ljava/lang/String;Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)Lorg/apache/sshd/client/channel/ChannelExec;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "ptyConfig"    # Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/apache/sshd/client/channel/ChannelExec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    .local p3, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Lorg/apache/sshd/client/channel/ChannelExec;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/sshd/client/channel/ChannelExec;-><init>(Ljava/lang/String;Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)V

    .line 329
    .local v0, "channel":Lorg/apache/sshd/client/channel/ChannelExec;
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v1

    .line 330
    .local v1, "service":Lorg/apache/sshd/common/session/ConnectionService;
    invoke-interface {v1, v0}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    move-result v2

    .line 331
    .local v2, "id":I
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const-string v5, "createExecChannel({})[{}] created id={} - PTY={}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_0
    return-object v0
.end method

.method public createShellChannel(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)Lorg/apache/sshd/client/channel/ChannelShell;
    .locals 7
    .param p1, "ptyConfig"    # Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/apache/sshd/client/channel/ChannelShell;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    instance-of v0, v0, Lorg/apache/sshd/common/cipher/CipherNone;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->outCipher:Lorg/apache/sshd/common/cipher/Cipher;

    instance-of v0, v0, Lorg/apache/sshd/common/cipher/CipherNone;

    if-nez v0, :cond_1

    .line 441
    new-instance v0, Lorg/apache/sshd/client/channel/ChannelShell;

    invoke-direct {v0, p1, p2}, Lorg/apache/sshd/client/channel/ChannelShell;-><init>(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)V

    .line 442
    .local v0, "channel":Lorg/apache/sshd/client/channel/ChannelShell;
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v1

    .line 443
    .local v1, "service":Lorg/apache/sshd/common/session/ConnectionService;
    invoke-interface {v1, v0}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    move-result v2

    .line 444
    .local v2, "id":I
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const-string v5, "createShellChannel({}) created id={} - PTY={}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :cond_0
    return-object v0

    .line 438
    .end local v0    # "channel":Lorg/apache/sshd/client/channel/ChannelShell;
    .end local v1    # "service":Lorg/apache/sshd/common/session/ConnectionService;
    .end local v2    # "id":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interactive channels are not supported with none cipher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSubsystemChannel(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ChannelSubsystem;
    .locals 7
    .param p1, "subsystem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    new-instance v0, Lorg/apache/sshd/client/channel/ChannelSubsystem;

    invoke-direct {v0, p1}, Lorg/apache/sshd/client/channel/ChannelSubsystem;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "channel":Lorg/apache/sshd/client/channel/ChannelSubsystem;
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v1

    .line 341
    .local v1, "service":Lorg/apache/sshd/common/session/ConnectionService;
    invoke-interface {v1, v0}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    move-result v2

    .line 342
    .local v2, "id":I
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "createSubsystemChannel({})[{}] created id={}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :cond_0
    return-object v0
.end method

.method public getClientProxyConnector()Lorg/apache/sshd/client/session/ClientProxyConnector;
    .locals 4

    .line 192
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    .line 193
    .local v0, "manager":Lorg/apache/sshd/client/ClientFactoryManager;
    const-class v1, Lorg/apache/sshd/client/session/ClientProxyConnector;

    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->proxyConnector:Lorg/apache/sshd/client/session/ClientProxyConnector;

    invoke-interface {v0}, Lorg/apache/sshd/client/ClientFactoryManager;->getClientProxyConnector()Lorg/apache/sshd/client/session/ClientProxyConnector;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/client/session/AbstractClientSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/session/ClientProxyConnector;

    return-object v1
.end method

.method public getConnectAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->connectAddress:Ljava/net/SocketAddress;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/session/AbstractClientSession;->resolvePeerAddress(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionContext()Lorg/apache/sshd/common/AttributeRepository;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->connectionContext:Lorg/apache/sshd/common/AttributeRepository;

    return-object v0
.end method

.method protected getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;
    .locals 1

    .line 366
    const-class v0, Lorg/apache/sshd/common/session/ConnectionService;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getService(Ljava/lang/Class;)Lorg/apache/sshd/common/Service;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/ConnectionService;

    return-object v0
.end method

.method public getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;
    .locals 1

    .line 116
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/ClientFactoryManager;

    return-object v0
.end method

.method public bridge synthetic getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method protected getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;
    .locals 3

    .line 409
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v0

    const-string v1, "No connection service"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/ConnectionService;

    .line 410
    .local v0, "service":Lorg/apache/sshd/common/session/ConnectionService;
    invoke-interface {v0}, Lorg/apache/sshd/common/session/ConnectionService;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v1

    const-string v2, "No forwarder"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/forward/ForwardingFilter;

    return-object v1
.end method

.method public getKeyIdentityProvider()Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 4

    .line 180
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    .line 181
    .local v0, "manager":Lorg/apache/sshd/client/ClientFactoryManager;
    const-class v1, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->keyIdentityProvider:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 182
    invoke-interface {v0}, Lorg/apache/sshd/client/ClientFactoryManager;->getKeyIdentityProvider()Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v3

    .line 181
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/client/session/AbstractClientSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    return-object v1
.end method

.method public getPasswordIdentityProvider()Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .locals 4

    .line 168
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    .line 169
    .local v0, "manager":Lorg/apache/sshd/client/ClientFactoryManager;
    const-class v1, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->passwordIdentityProvider:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 170
    invoke-interface {v0}, Lorg/apache/sshd/client/ClientFactoryManager;->getPasswordIdentityProvider()Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v3

    .line 169
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/client/session/AbstractClientSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    return-object v1
.end method

.method public getRegisteredIdentities()Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identitiesProvider:Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    return-object v0
.end method

.method public getServerKeyVerifier()Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    .locals 4

    .line 130
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    .line 131
    .local v0, "manager":Lorg/apache/sshd/client/ClientFactoryManager;
    const-class v1, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    invoke-interface {v0}, Lorg/apache/sshd/client/ClientFactoryManager;->getServerKeyVerifier()Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/client/session/AbstractClientSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    return-object v1
.end method

.method public getUserAuthFactories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    .line 153
    .local v0, "manager":Lorg/apache/sshd/client/ClientFactoryManager;
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->userAuthFactories:Ljava/util/List;

    invoke-interface {v0}, Lorg/apache/sshd/client/ClientFactoryManager;->getUserAuthFactories()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/client/session/AbstractClientSession;->resolveEffectiveFactories(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method protected getUserAuthService()Lorg/apache/sshd/client/session/ClientUserAuthService;
    .locals 1

    .line 361
    const-class v0, Lorg/apache/sshd/client/session/ClientUserAuthService;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getService(Ljava/lang/Class;)Lorg/apache/sshd/common/Service;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientUserAuthService;

    return-object v0
.end method

.method public getUserInteraction()Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
    .locals 4

    .line 141
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    .line 142
    .local v0, "manager":Lorg/apache/sshd/client/ClientFactoryManager;
    const-class v1, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->userInteraction:Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    invoke-interface {v0}, Lorg/apache/sshd/client/ClientFactoryManager;->getUserInteraction()Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/client/session/AbstractClientSession;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    return-object v1
.end method

.method protected initializeKeyExchangePhase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v0

    .line 257
    .local v0, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->PREKEX:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    invoke-interface {v0, p0, v1}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->isKexExtensionsAvailable(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const-string v2, "initializeKexPhase({}) delay KEX-INIT until server-side one received"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->INIT:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->sendKexInit()[B

    .line 265
    :cond_2
    :goto_1
    return-void
.end method

.method protected initializeProxyConnector()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getClientProxyConnector()Lorg/apache/sshd/client/session/ClientProxyConnector;

    move-result-object v0

    .line 269
    .local v0, "proxyConnector":Lorg/apache/sshd/client/session/ClientProxyConnector;
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 270
    .local v1, "debugEnabled":Z
    if-nez v0, :cond_1

    .line 271
    if-eqz v1, :cond_0

    .line 272
    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const-string v3, "initializeProxyConnector({}) no proxy to initialize"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    :cond_0
    return-void

    .line 278
    :cond_1
    if-eqz v1, :cond_2

    .line 279
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const-string v3, "initializeProxyConnector({}) initialize proxy={}"

    invoke-interface {v2, v3, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    :cond_2
    invoke-interface {v0, p0}, Lorg/apache/sshd/client/session/ClientProxyConnector;->sendClientProxyMetadata(Lorg/apache/sshd/client/session/ClientSession;)V

    .line 284
    if-eqz v1, :cond_3

    .line 285
    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const-string v3, "initializeProxyConnector({}) proxy={} initialized"

    invoke-interface {v2, v3, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_3
    nop

    .line 300
    return-void

    .line 287
    :catchall_0
    move-exception v2

    .line 288
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    .line 289
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 288
    const-string v5, "initializeProxyConnector({}) failed ({}) to send proxy metadata: {}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    if-eqz v1, :cond_4

    .line 291
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeProxyConnector("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") proxy metadata send failure details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    :cond_4
    instance-of v3, v2, Ljava/lang/Exception;

    if-eqz v3, :cond_5

    .line 295
    move-object v3, v2

    check-cast v3, Ljava/lang/Exception;

    throw v3

    .line 297
    :cond_5
    new-instance v3, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v3, v2}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected readIdentification(Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 6
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/client/session/AbstractClientSession;->doReadIdentification(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/util/List;

    move-result-object v1

    .line 453
    .local v1, "ident":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    .line 454
    .local v2, "numLines":I
    if-gtz v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    iput-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverVersion:Ljava/lang/String;

    .line 455
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 456
    return v0

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverVersion:Ljava/lang/String;

    const-string v4, "readIdentification({}) Server version string: {}"

    invoke-interface {v0, v4, p0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverVersion:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sshd/common/session/SessionContext;->isValidVersionPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 468
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/client/session/AbstractClientSession;->signalExtraServerVersionInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 471
    iget-boolean v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->sendImmediateClientIdentification:Z

    if-nez v0, :cond_3

    .line 472
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->sendClientIdentification()Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 474
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->initializeKeyExchangePhase()V

    goto :goto_1

    .line 475
    :cond_3
    iget-boolean v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->sendImmediateKexInit:Z

    if-nez v0, :cond_4

    .line 477
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->initializeKeyExchangePhase()V

    .line 480
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 464
    :cond_5
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protocol version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v0
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

    .line 538
    .local p1, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverProposal:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/client/session/AbstractClientSession;->mergeProposals(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 539
    invoke-virtual {p0, p2}, Lorg/apache/sshd/client/session/AbstractClientSession;->setServerKexData([B)V

    .line 540
    return-void
.end method

.method protected receiveKexInit(Lorg/apache/sshd/common/util/buffer/Buffer;)[B
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 520
    invoke-super {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->receiveKexInit(Lorg/apache/sshd/common/util/buffer/Buffer;)[B

    move-result-object v0

    .line 525
    .local v0, "seed":[B
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->UNKNOWN:Lorg/apache/sshd/common/kex/KexState;

    sget-object v3, Lorg/apache/sshd/common/kex/KexState;->RUN:Lorg/apache/sshd/common/kex/KexState;

    invoke-static {v1, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const-string v2, "receiveKexInit({}) sending client proposal"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->INIT:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 530
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->sendKexInit()[B

    .line 533
    :cond_1
    return-object v0
.end method

.method public removePasswordIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .line 213
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    return-object v1

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identities:Ljava/util/List;

    sget-object v2, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->PASSWORD_IDENTITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2, p1}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->findIdentityIndex(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v0

    .line 219
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 220
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 222
    :cond_1
    return-object v1
.end method

.method public removePublicKeyIdentity(Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 3
    .param p1, "kp"    # Ljava/security/KeyPair;

    .line 242
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 243
    return-object v0

    .line 246
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identities:Ljava/util/List;

    sget-object v2, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->KEYPAIR_IDENTITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2, p1}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->findIdentityIndex(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    .line 248
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 249
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->identities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    return-object v0

    .line 251
    :cond_1
    return-object v0
.end method

.method protected resolveAvailableSignaturesProposal(Lorg/apache/sshd/common/FactoryManager;)Ljava/lang/String;
    .locals 2
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;

    .line 416
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Mismatched factory manager instances"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getSignatureFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sendClientIdentification()Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    const-string v0, "client-identification"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/session/AbstractClientSession;->resolveIdentificationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->clientVersion:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->clientVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/session/AbstractClientSession;->sendIdentification(Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v0

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

    .line 509
    .local p1, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->clientProposal:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/client/session/AbstractClientSession;->mergeProposals(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 510
    invoke-super {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sendKexInit(Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public setClientProxyConnector(Lorg/apache/sshd/client/session/ClientProxyConnector;)V
    .locals 0
    .param p1, "proxyConnector"    # Lorg/apache/sshd/client/session/ClientProxyConnector;

    .line 198
    iput-object p1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->proxyConnector:Lorg/apache/sshd/client/session/ClientProxyConnector;

    .line 199
    return-void
.end method

.method public setConnectAddress(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "connectAddress"    # Ljava/net/SocketAddress;

    .line 125
    iput-object p1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->connectAddress:Ljava/net/SocketAddress;

    .line 126
    return-void
.end method

.method protected varargs setKexSeed([B)V
    .locals 0
    .param p1, "seed"    # [B

    .line 515
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/session/AbstractClientSession;->setClientKexData([B)V

    .line 516
    return-void
.end method

.method public setKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)V
    .locals 0
    .param p1, "keyIdentityProvider"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 187
    iput-object p1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->keyIdentityProvider:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 188
    return-void
.end method

.method public setPasswordIdentityProvider(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)V
    .locals 0
    .param p1, "provider"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 175
    iput-object p1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->passwordIdentityProvider:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 176
    return-void
.end method

.method public setServerKeyVerifier(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;)V
    .locals 0
    .param p1, "serverKeyVerifier"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 136
    iput-object p1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 137
    return-void
.end method

.method public setUserAuthFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "userAuthFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/auth/UserAuthFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->userAuthFactories:Ljava/util/List;

    .line 159
    return-void
.end method

.method public setUserInteraction(Lorg/apache/sshd/client/auth/keyboard/UserInteraction;)V
    .locals 0
    .param p1, "userInteraction"    # Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    .line 147
    iput-object p1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->userInteraction:Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    .line 148
    return-void
.end method

.method protected signalExtraServerVersionInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    .local p2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/client/session/AbstractClientSession;->signalPeerIdentificationReceived(Ljava/lang/String;Ljava/util/List;)V

    .line 486
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    return-void

    .line 490
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getUserInteraction()Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    move-result-object v0

    .line 492
    .local v0, "ui":Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p0}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->isInteractionAllowed(Lorg/apache/sshd/client/session/ClientSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    invoke-interface {v0, p0, p2}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->serverVersionInfo(Lorg/apache/sshd/client/session/ClientSession;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/Error;
    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    .line 497
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 496
    const-string v4, "signalExtraServerVersionInfo({})[{}] failed ({}) to consult interaction: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signalExtraServerVersionInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] interaction consultation failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    :cond_1
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 504
    .end local v1    # "e":Ljava/lang/Error;
    :cond_2
    :goto_0
    nop

    .line 505
    return-void
.end method

.method public startDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 2
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 398
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/forward/ForwardingFilter;->startDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    return-object v1
.end method

.method public startLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 2
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 373
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/common/forward/ForwardingFilter;->startLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    return-object v1
.end method

.method public startRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 2
    .param p1, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 386
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/common/forward/ForwardingFilter;->startRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    return-object v1
.end method

.method public startService(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v0

    .line 423
    .local v0, "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleUnsupportedServiceDisconnectReason(Lorg/apache/sshd/common/session/Session;ILjava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const-string v2, "startService({}) ignore unknown service={} by handler"

    invoke-interface {v1, v2, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    :cond_0
    return-void

    .line 431
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting services is not supported on the client side: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 1
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 404
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/forward/ForwardingFilter;->stopDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 405
    return-void
.end method

.method public stopLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 1
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 379
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/forward/ForwardingFilter;->stopLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 380
    return-void
.end method

.method public stopRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 1
    .param p1, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 392
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/forward/ForwardingFilter;->stopRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 393
    return-void
.end method

.method public switchToNoneCipher()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->currentService:Lorg/apache/sshd/common/Service;

    instance-of v0, v0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->currentService:Lorg/apache/sshd/common/Service;

    check-cast v0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;

    .line 563
    invoke-virtual {v0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannels()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 568
    iget-object v0, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->INIT:Lorg/apache/sshd/common/kex/KexState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 569
    new-instance v0, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;

    invoke-virtual {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 570
    .local v0, "kexFuture":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    iget-object v1, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;

    .line 571
    .local v1, "prev":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    if-eqz v1, :cond_1

    .line 572
    monitor-enter v1

    .line 573
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 574
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 575
    new-instance v3, Lorg/apache/sshd/common/SshException;

    const-string v4, "Switch to none cipher while previous KEX is ongoing"

    invoke-direct {v3, v4}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->setValue(Ljava/lang/Object;)V

    .line 577
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 582
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverProposal:Ljava/util/Map;

    monitor-enter v2

    .line 583
    :try_start_1
    iget-object v3, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverProposal:Ljava/util/Map;

    sget-object v4, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 584
    .local v3, "c2sEncServer":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->serverProposal:Ljava/util/Map;

    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 585
    .local v4, "s2cEncServer":Ljava/lang/String;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 586
    invoke-static {v3}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$Constants;->isNoneCipherIncluded(Ljava/lang/String;)Z

    move-result v5

    .line 587
    .local v5, "c2sEncServerNone":Z
    invoke-static {v4}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$Constants;->isNoneCipherIncluded(Ljava/lang/String;)Z

    move-result v6

    .line 591
    .local v6, "s2cEncServerNone":Z
    iget-object v7, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->clientProposal:Ljava/util/Map;

    monitor-enter v7

    .line 592
    :try_start_2
    iget-object v2, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->clientProposal:Ljava/util/Map;

    sget-object v8, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 593
    .local v2, "c2sEncClient":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->clientProposal:Ljava/util/Map;

    sget-object v9, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 594
    .local v8, "s2cEncClient":Ljava/lang/String;
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 596
    invoke-static {v2}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$Constants;->isNoneCipherIncluded(Ljava/lang/String;)Z

    move-result v7

    .line 597
    .local v7, "c2sEncClientNone":Z
    invoke-static {v8}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$Constants;->isNoneCipherIncluded(Ljava/lang/String;)Z

    move-result v9

    .line 599
    .local v9, "s2cEncClientNone":Z
    if-eqz v5, :cond_5

    if-nez v6, :cond_2

    goto :goto_2

    .line 601
    :cond_2
    if-eqz v7, :cond_4

    if-nez v9, :cond_3

    goto :goto_1

    .line 604
    :cond_3
    iget-object v10, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, "switchToNoneCipher({}) switching"

    invoke-interface {v10, v11, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 606
    new-instance v10, Ljava/util/EnumMap;

    const-class v11, Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-direct {v10, v11}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 607
    .local v10, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    iget-object v11, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->clientProposal:Ljava/util/Map;

    monitor-enter v11

    .line 608
    :try_start_3
    iget-object v12, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->clientProposal:Ljava/util/Map;

    invoke-interface {v10, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 609
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 611
    sget-object v11, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v12, "none"

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v11, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v12, "none"

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v12, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v12

    .line 616
    :try_start_4
    invoke-virtual {p0, v10}, Lorg/apache/sshd/client/session/AbstractClientSession;->sendKexInit(Ljava/util/Map;)[B

    move-result-object v11

    .line 617
    .local v11, "seed":[B
    invoke-virtual {p0, v11}, Lorg/apache/sshd/client/session/AbstractClientSession;->setKexSeed([B)V

    .line 618
    monitor-exit v12

    goto :goto_3

    .end local v11    # "seed":[B
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 609
    :catchall_2
    move-exception v12

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v12

    .line 602
    .end local v10    # "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :cond_4
    :goto_1
    new-instance v10, Lorg/apache/sshd/common/SshException;

    const-string v11, "Client does not support none cipher"

    invoke-direct {v10, v11}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 600
    :cond_5
    :goto_2
    new-instance v10, Lorg/apache/sshd/common/SshException;

    const-string v11, "Server does not support none cipher"

    invoke-direct {v10, v11}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->setValue(Ljava/lang/Object;)V

    .line 621
    :goto_3
    iget-object v10, p0, Lorg/apache/sshd/client/session/AbstractClientSession;->kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    const-string v11, "No current KEX future"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/sshd/common/future/KeyExchangeFuture;

    return-object v10

    .line 594
    .end local v2    # "c2sEncClient":Ljava/lang/String;
    .end local v7    # "c2sEncClientNone":Z
    .end local v8    # "s2cEncClient":Ljava/lang/String;
    .end local v9    # "s2cEncClientNone":Z
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 585
    .end local v3    # "c2sEncServer":Ljava/lang/String;
    .end local v4    # "s2cEncServer":Ljava/lang/String;
    .end local v5    # "c2sEncServerNone":Z
    .end local v6    # "s2cEncServerNone":Z
    :catchall_4
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v3

    .line 623
    .end local v0    # "kexFuture":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    .end local v1    # "prev":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    :cond_6
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "In flight key exchange"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The switch to the none cipher must be done immediately after authentication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
