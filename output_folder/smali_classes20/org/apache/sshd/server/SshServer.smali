.class public Lorg/apache/sshd/server/SshServer;
.super Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
.source "SshServer.java"

# interfaces
.implements Lorg/apache/sshd/server/ServerFactoryManager;
.implements Lorg/apache/sshd/common/Closeable;


# static fields
.field public static final DEFAULT_SERVICE_FACTORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/ServiceFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SSH_SERVER_FACTORY:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/server/SshServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

.field private commandFactory:Lorg/apache/sshd/server/command/CommandFactory;

.field private gssAuthenticator:Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

.field protected host:Ljava/lang/String;

.field private hostBasedAuthenticator:Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

.field private interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

.field private keyPairProvider:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

.field private passwordAuthenticator:Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

.field protected port:I

.field private proxyAcceptor:Lorg/apache/sshd/server/session/ServerProxyAcceptor;

.field private publickeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

.field private sessionFactory:Lorg/apache/sshd/server/session/SessionFactory;

.field private shellFactory:Lorg/apache/sshd/server/shell/ShellFactory;

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private subsystemFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/subsystem/SubsystemFactory;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .locals 3

    .line 88
    new-instance v0, Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/SshServer;->DEFAULT_SSH_SERVER_FACTORY:Lorg/apache/sshd/common/Factory;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;

    sget-object v1, Lorg/apache/sshd/server/session/ServerUserAuthServiceFactory;->INSTANCE:Lorg/apache/sshd/server/session/ServerUserAuthServiceFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/server/session/ServerConnectionServiceFactory;->INSTANCE:Lorg/apache/sshd/server/session/ServerConnectionServiceFactory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/SshServer;->DEFAULT_SERVICE_FACTORIES:Ljava/util/List;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;-><init>()V

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/server/SshServer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    return-void
.end method

.method public static setUpDefaultServer()Lorg/apache/sshd/server/SshServer;
    .locals 2

    .line 435
    invoke-static {}, Lorg/apache/sshd/server/ServerBuilder;->builder()Lorg/apache/sshd/server/ServerBuilder;

    move-result-object v0

    .line 436
    .local v0, "builder":Lorg/apache/sshd/server/ServerBuilder;
    invoke-virtual {v0}, Lorg/apache/sshd/server/ServerBuilder;->build()Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/SshServer;

    return-object v1
.end method


# virtual methods
.method protected checkConfig()V
    .locals 4

    .line 265
    invoke-super {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->checkConfig()V

    .line 267
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getPort()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Bad port number: %d"

    invoke-static {v0, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 269
    nop

    .line 270
    invoke-static {p0}, Lorg/apache/sshd/server/ServerAuthenticationManager;->resolveUserAuthFactories(Lorg/apache/sshd/server/ServerAuthenticationManager;)Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "authFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    new-array v2, v1, [Ljava/lang/Object;

    .line 272
    const-string v3, "UserAuthFactories not set"

    invoke-static {v0, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 271
    invoke-virtual {p0, v2}, Lorg/apache/sshd/server/SshServer;->setUserAuthFactories(Ljava/util/List;)V

    .line 274
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getChannelFactories()Ljava/util/List;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "ChannelFactories not set"

    invoke-static {v2, v3, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 275
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getKeyPairProvider()Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v1

    const-string v2, "HostKeyProvider not set"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getFileSystemFactory()Lorg/apache/sshd/common/file/FileSystemFactory;

    move-result-object v1

    const-string v2, "FileSystemFactory not set"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getServiceFactories()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    sget-object v1, Lorg/apache/sshd/server/SshServer;->DEFAULT_SERVICE_FACTORIES:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/sshd/server/SshServer;->setServiceFactories(Ljava/util/List;)V

    .line 281
    :cond_1
    return-void
.end method

.method protected createAcceptor()Lorg/apache/sshd/common/io/IoAcceptor;
    .locals 3

    .line 413
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getIoServiceFactory()Lorg/apache/sshd/common/io/IoServiceFactory;

    move-result-object v0

    .line 414
    .local v0, "ioFactory":Lorg/apache/sshd/common/io/IoServiceFactory;
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getSessionFactory()Lorg/apache/sshd/server/session/SessionFactory;

    move-result-object v1

    .line 415
    .local v1, "sessFactory":Lorg/apache/sshd/server/session/SessionFactory;
    invoke-interface {v0, v1}, Lorg/apache/sshd/common/io/IoServiceFactory;->createAcceptor(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoAcceptor;

    move-result-object v2

    return-object v2
.end method

.method protected createSessionFactory()Lorg/apache/sshd/server/session/SessionFactory;
    .locals 1

    .line 419
    new-instance v0, Lorg/apache/sshd/server/session/SessionFactory;

    invoke-direct {v0, p0}, Lorg/apache/sshd/server/session/SessionFactory;-><init>(Lorg/apache/sshd/server/ServerFactoryManager;)V

    return-object v0
.end method

.method public getActiveSessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/session/helpers/AbstractSession;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/session/helpers/AbstractSession;>;"
    iget-object v1, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v1}, Lorg/apache/sshd/common/io/IoAcceptor;->getManagedSessions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/io/IoSession;

    .line 404
    .local v2, "ioSession":Lorg/apache/sshd/common/io/IoSession;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSession(Lorg/apache/sshd/common/io/IoSession;Z)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v3

    .line 405
    .local v3, "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    if-eqz v3, :cond_0

    .line 406
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v2    # "ioSession":Lorg/apache/sshd/common/io/IoSession;
    .end local v3    # "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    :cond_0
    goto :goto_0

    .line 409
    :cond_1
    return-object v0
.end method

.method public getBoundAddresses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoAcceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCommandFactory()Lorg/apache/sshd/server/command/CommandFactory;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->commandFactory:Lorg/apache/sshd/server/command/CommandFactory;

    return-object v0
.end method

.method public getGSSAuthenticator()Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->gssAuthenticator:Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostBasedAuthenticator()Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->hostBasedAuthenticator:Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    return-object v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 5

    .line 378
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "closeId":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/server/SshServer;)V

    .line 380
    invoke-virtual {v1, v0, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/sshd/common/Closeable;

    iget-object v3, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/apache/sshd/server/SshServer;->ioServiceFactory:Lorg/apache/sshd/common/io/IoServiceFactory;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 381
    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->sequential([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/server/SshServer;)V

    .line 382
    invoke-virtual {v1, v0, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    .line 379
    return-object v1
.end method

.method public getKeyPairProvider()Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->keyPairProvider:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    return-object v0
.end method

.method public getKeyboardInteractiveAuthenticator()Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    return-object v0
.end method

.method public getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->passwordAuthenticator:Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/apache/sshd/server/SshServer;->port:I

    return v0
.end method

.method public getPublickeyAuthenticator()Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->publickeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    return-object v0
.end method

.method public getServerProxyAcceptor()Lorg/apache/sshd/server/session/ServerProxyAcceptor;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->proxyAcceptor:Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    return-object v0
.end method

.method public getSessionFactory()Lorg/apache/sshd/server/session/SessionFactory;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->sessionFactory:Lorg/apache/sshd/server/session/SessionFactory;

    return-object v0
.end method

.method public getShellFactory()Lorg/apache/sshd/server/shell/ShellFactory;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->shellFactory:Lorg/apache/sshd/server/shell/ShellFactory;

    return-object v0
.end method

.method public getSubsystemFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/subsystem/SubsystemFactory;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->subsystemFactories:Ljava/util/List;

    return-object v0
.end method

.method public getUserAuthFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->userAuthFactories:Ljava/util/List;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getInnerCloseable$0$org-apache-sshd-server-SshServer()V
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->sessionFactory:Lorg/apache/sshd/server/session/SessionFactory;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/SshServer;->removeSessionTimeout(Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;)V

    return-void
.end method

.method synthetic lambda$getInnerCloseable$1$org-apache-sshd-server-SshServer()V
    .locals 2

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    .line 384
    iput-object v0, p0, Lorg/apache/sshd/server/SshServer;->ioServiceFactory:Lorg/apache/sshd/common/io/IoServiceFactory;

    .line 385
    iget-boolean v1, p0, Lorg/apache/sshd/server/SshServer;->shutdownExecutor:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/sshd/server/SshServer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/sshd/server/SshServer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/server/SshServer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iput-object v0, p0, Lorg/apache/sshd/server/SshServer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 390
    goto :goto_0

    .line 389
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/sshd/server/SshServer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 390
    throw v1

    .line 392
    :cond_0
    :goto_0
    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->start()V

    .line 374
    return-void
.end method

.method public setCommandFactory(Lorg/apache/sshd/server/command/CommandFactory;)V
    .locals 0
    .param p1, "commandFactory"    # Lorg/apache/sshd/server/command/CommandFactory;

    .line 191
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->commandFactory:Lorg/apache/sshd/server/command/CommandFactory;

    .line 192
    return-void
.end method

.method public setGSSAuthenticator(Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;)V
    .locals 0
    .param p1, "gssAuthenticator"    # Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    .line 240
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->gssAuthenticator:Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    .line 241
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->host:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setHostBasedAuthenticator(Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;)V
    .locals 0
    .param p1, "hostBasedAuthenticator"    # Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    .line 250
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->hostBasedAuthenticator:Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    .line 251
    return-void
.end method

.method public setKeyPairProvider(Lorg/apache/sshd/common/keyprovider/KeyPairProvider;)V
    .locals 0
    .param p1, "keyPairProvider"    # Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    .line 260
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->keyPairProvider:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    .line 261
    return-void
.end method

.method public setKeyboardInteractiveAuthenticator(Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;)V
    .locals 0
    .param p1, "interactiveAuthenticator"    # Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 230
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 231
    return-void
.end method

.method public setPasswordAuthenticator(Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;)V
    .locals 0
    .param p1, "passwordAuthenticator"    # Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    .line 210
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->passwordAuthenticator:Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    .line 211
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 137
    iput p1, p0, Lorg/apache/sshd/server/SshServer;->port:I

    .line 138
    return-void
.end method

.method public setPublickeyAuthenticator(Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;)V
    .locals 0
    .param p1, "publickeyAuthenticator"    # Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 220
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->publickeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 221
    return-void
.end method

.method public setServerProxyAcceptor(Lorg/apache/sshd/server/session/ServerProxyAcceptor;)V
    .locals 0
    .param p1, "proxyAcceptor"    # Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    .line 182
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->proxyAcceptor:Lorg/apache/sshd/server/session/ServerProxyAcceptor;

    .line 183
    return-void
.end method

.method public setSessionFactory(Lorg/apache/sshd/server/session/SessionFactory;)V
    .locals 0
    .param p1, "sessionFactory"    # Lorg/apache/sshd/server/session/SessionFactory;

    .line 172
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->sessionFactory:Lorg/apache/sshd/server/session/SessionFactory;

    .line 173
    return-void
.end method

.method public setShellFactory(Lorg/apache/sshd/server/shell/ShellFactory;)V
    .locals 0
    .param p1, "shellFactory"    # Lorg/apache/sshd/server/shell/ShellFactory;

    .line 164
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->shellFactory:Lorg/apache/sshd/server/shell/ShellFactory;

    .line 165
    return-void
.end method

.method public setSubsystemFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/subsystem/SubsystemFactory;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "subsystemFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/subsystem/SubsystemFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->subsystemFactories:Ljava/util/List;

    .line 201
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

    .line 155
    .local p1, "userAuthFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/server/SshServer;->userAuthFactories:Ljava/util/List;

    .line 156
    return-void
.end method

.method public start()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 297
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->checkConfig()V

    .line 302
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->sessionFactory:Lorg/apache/sshd/server/session/SessionFactory;

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->createSessionFactory()Lorg/apache/sshd/server/session/SessionFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/SshServer;->sessionFactory:Lorg/apache/sshd/server/session/SessionFactory;

    .line 305
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->createAcceptor()Lorg/apache/sshd/common/io/IoAcceptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    .line 307
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->sessionFactory:Lorg/apache/sshd/server/session/SessionFactory;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/SshServer;->setupSessionTimeout(Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;)V

    .line 309
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "hostsList":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "start() listen on auto-allocated port="

    if-nez v1, :cond_7

    .line 311
    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "hosts":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v1, v5

    .line 313
    .local v6, "host":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/sshd/server/SshServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 314
    iget-object v7, p0, Lorg/apache/sshd/server/SshServer;->log:Lorg/slf4j/Logger;

    const-string v8, "start() - resolve bind host={}"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    :cond_2
    invoke-static {v6}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    .line 318
    .local v7, "inetAddresses":[Ljava/net/InetAddress;
    array-length v8, v7

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 319
    .local v10, "inetAddress":Ljava/net/InetAddress;
    iget-object v11, p0, Lorg/apache/sshd/server/SshServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v11}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 320
    iget-object v11, p0, Lorg/apache/sshd/server/SshServer;->log:Lorg/slf4j/Logger;

    const-string v12, "start() - bind host={} / {}"

    invoke-interface {v11, v12, v6, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    :cond_3
    iget-object v11, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    new-instance v12, Ljava/net/InetSocketAddress;

    iget v13, p0, Lorg/apache/sshd/server/SshServer;->port:I

    invoke-direct {v12, v10, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v11, v12}, Lorg/apache/sshd/common/io/IoAcceptor;->bind(Ljava/net/SocketAddress;)V

    .line 324
    iget v11, p0, Lorg/apache/sshd/server/SshServer;->port:I

    if-nez v11, :cond_4

    .line 325
    iget-object v11, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    .line 326
    invoke-interface {v11}, Lorg/apache/sshd/common/io/IoAcceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/sshd/common/util/GenericUtils;->head(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/SocketAddress;

    .line 327
    .local v11, "selectedAddress":Ljava/net/SocketAddress;
    move-object v12, v11

    check-cast v12, Ljava/net/InetSocketAddress;

    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    iput v12, p0, Lorg/apache/sshd/server/SshServer;->port:I

    .line 328
    iget-object v12, p0, Lorg/apache/sshd/server/SshServer;->log:Lorg/slf4j/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/apache/sshd/server/SshServer;->port:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 318
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    .end local v11    # "selectedAddress":Ljava/net/SocketAddress;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 312
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "inetAddresses":[Ljava/net/InetAddress;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "hosts":[Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 333
    :cond_7
    iget-object v1, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget v4, p0, Lorg/apache/sshd/server/SshServer;->port:I

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-interface {v1, v3}, Lorg/apache/sshd/common/io/IoAcceptor;->bind(Ljava/net/SocketAddress;)V

    .line 334
    iget v1, p0, Lorg/apache/sshd/server/SshServer;->port:I

    if-nez v1, :cond_8

    .line 335
    iget-object v1, p0, Lorg/apache/sshd/server/SshServer;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    .line 336
    invoke-interface {v1}, Lorg/apache/sshd/common/io/IoAcceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->head(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    .line 337
    .local v1, "selectedAddress":Ljava/net/SocketAddress;
    move-object v3, v1

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Lorg/apache/sshd/server/SshServer;->port:I

    .line 338
    iget-object v3, p0, Lorg/apache/sshd/server/SshServer;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/apache/sshd/server/SshServer;->port:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 342
    .end local v1    # "selectedAddress":Ljava/net/SocketAddress;
    :cond_8
    :goto_2
    iget-object v1, p0, Lorg/apache/sshd/server/SshServer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 343
    return-void

    .line 295
    .end local v0    # "hostsList":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not start the server again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/SshServer;->stop(Z)V

    .line 351
    return-void
.end method

.method public stop(Z)V
    .locals 6
    .param p1, "immediately"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/apache/sshd/server/SshServer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    return-void

    .line 359
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "stop-wait-time"

    sget-wide v1, Lorg/apache/sshd/server/SshServer;->DEFAULT_STOP_WAIT_TIME:J

    .line 360
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/server/SshServer;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 360
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    .line 362
    .local v0, "maxWait":J
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/SshServer;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/apache/sshd/common/future/CloseFuture;->await(J)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .local v2, "successful":Z
    if-eqz v2, :cond_2

    .line 368
    .end local v0    # "maxWait":J
    .end local v2    # "successful":Z
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->clearAttributes()V

    .line 369
    nop

    .line 370
    return-void

    .line 364
    .restart local v0    # "maxWait":J
    .restart local v2    # "successful":Z
    :cond_2
    :try_start_1
    new-instance v3, Ljava/net/SocketTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to receive closure confirmation within "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " millis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .end local p1    # "immediately":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    .end local v0    # "maxWait":J
    .end local v2    # "successful":Z
    .restart local p1    # "immediately":Z
    :goto_1
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->clearAttributes()V

    .line 369
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "](port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Lorg/apache/sshd/server/SshServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    return-object v0
.end method
