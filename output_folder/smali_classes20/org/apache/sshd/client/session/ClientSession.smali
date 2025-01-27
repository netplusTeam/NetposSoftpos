.class public interface abstract Lorg/apache/sshd/client/session/ClientSession;
.super Ljava/lang/Object;
.source "ClientSession.java"

# interfaces
.implements Lorg/apache/sshd/common/session/Session;
.implements Lorg/apache/sshd/client/session/ClientProxyConnectorHolder;
.implements Lorg/apache/sshd/client/ClientAuthenticationManager;
.implements Lorg/apache/sshd/common/forward/PortForwardingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;
    }
.end annotation


# static fields
.field public static final REMOTE_COMMAND_WAIT_EVENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->CLOSED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 99
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/session/ClientSession;->REMOTE_COMMAND_WAIT_EVENTS:Ljava/util/Set;

    .line 98
    return-void
.end method

.method public static passwordIteratorOf(Lorg/apache/sshd/client/session/ClientSession;)Ljava/util/Iterator;
    .locals 2
    .param p0, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    if-nez p0, :cond_0

    .line 451
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/client/session/ClientSession;->getRegisteredIdentities()Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/sshd/client/session/ClientSession;->getPasswordIdentityProvider()Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v1

    .line 452
    invoke-static {v0, v1}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->iteratorOf(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Ljava/util/Iterator;

    move-result-object v0

    .line 450
    :goto_0
    return-object v0
.end method

.method public static providerOf(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 2
    .param p0, "session"    # Lorg/apache/sshd/client/session/ClientSession;

    .line 433
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    goto :goto_0

    .line 436
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/client/session/ClientSession;->getRegisteredIdentities()Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/sshd/client/session/ClientSession;->getKeyIdentityProvider()Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v1

    .line 435
    invoke-static {v0, v1}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->resolveKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract auth()Lorg/apache/sshd/client/future/AuthFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createChannel(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ClientChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createChannel(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/channel/ClientChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createDirectTcpipChannel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/client/channel/ChannelDirectTcpip;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public createDynamicPortForwardingTracker(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/client/session/forward/DynamicPortForwardingTracker;
    .locals 2
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    new-instance v0, Lorg/apache/sshd/client/session/forward/DynamicPortForwardingTracker;

    invoke-interface {p0, p1}, Lorg/apache/sshd/client/session/ClientSession;->startDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/sshd/client/session/forward/DynamicPortForwardingTracker;-><init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    return-object v0
.end method

.method public createExecChannel(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ChannelExec;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/apache/sshd/client/session/ClientSession;->createExecChannel(Ljava/lang/String;Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)Lorg/apache/sshd/client/channel/ChannelExec;

    move-result-object v0

    return-object v0
.end method

.method public abstract createExecChannel(Ljava/lang/String;Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)Lorg/apache/sshd/client/channel/ChannelExec;
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
.end method

.method public createLocalPortForwardingTracker(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;
    .locals 7
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    new-instance v6, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;

    .line 335
    invoke-interface {p0, p1, p2}, Lorg/apache/sshd/client/session/ClientSession;->startLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v5

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;-><init>(Lorg/apache/sshd/client/session/ClientSession;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 334
    return-object v6
.end method

.method public createRemotePortForwardingTracker(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;
    .locals 7
    .param p1, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v6, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;

    .line 354
    invoke-interface {p0, p1, p2}, Lorg/apache/sshd/client/session/ClientSession;->startRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;-><init>(Lorg/apache/sshd/client/session/ClientSession;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 353
    return-object v6
.end method

.method public createShellChannel()Lorg/apache/sshd/client/channel/ChannelShell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/apache/sshd/client/session/ClientSession;->createShellChannel(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)Lorg/apache/sshd/client/channel/ChannelShell;

    move-result-object v0

    return-object v0
.end method

.method public abstract createShellChannel(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)Lorg/apache/sshd/client/channel/ChannelShell;
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
.end method

.method public abstract createSubsystemChannel(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ChannelSubsystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public executeRemoteCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    .local v0, "stderr":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, v0, v1}, Lorg/apache/sshd/client/session/ClientSession;->executeRemoteCommand(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_0

    .line 222
    nop

    .line 223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 222
    return-object v1

    .line 217
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 218
    .local v2, "error":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 219
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v4, Ljava/rmi/RemoteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reported from remote command=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/rmi/ServerException;

    invoke-direct {v6, v3}, Ljava/rmi/ServerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Ljava/rmi/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "stderr":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "command":Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "error":[B
    .end local v3    # "errorMessage":Ljava/lang/String;
    .restart local v0    # "stderr":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "command":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .end local v0    # "stderr":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "command":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    .restart local v0    # "stderr":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "command":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public executeRemoteCommand(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "stderr"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    if-nez p3, :cond_0

    .line 246
    sget-object p3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 249
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 250
    .local v0, "stdout":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p0, p1, v0, p2, p3}, Lorg/apache/sshd/client/session/ClientSession;->executeRemoteCommand(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 251
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 252
    .local v1, "outBytes":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 252
    return-object v2

    .line 249
    .end local v1    # "outBytes":[B
    :catchall_0
    move-exception v1

    .end local v0    # "stdout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "stderr":Ljava/io/OutputStream;
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    .restart local v0    # "stdout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "command":Ljava/lang/String;
    .restart local p2    # "stderr":Ljava/io/OutputStream;
    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public executeRemoteCommand(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "stdout"    # Ljava/io/OutputStream;
    .param p3, "stderr"    # Ljava/io/OutputStream;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    if-nez p4, :cond_0

    .line 277
    sget-object p4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 280
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Lorg/apache/sshd/common/util/io/NullOutputStream;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/NullOutputStream;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;

    invoke-direct {v0, p3}, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 281
    .local v0, "channelErr":Ljava/io/OutputStream;
    :goto_0
    if-nez p2, :cond_2

    :try_start_0
    new-instance v1, Lorg/apache/sshd/common/util/io/NullOutputStream;

    invoke-direct {v1}, Lorg/apache/sshd/common/util/io/NullOutputStream;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;

    invoke-direct {v1, p2}, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 280
    .local v1, "channelOut":Ljava/io/OutputStream;
    :goto_1
    nop

    .line 282
    :try_start_1
    invoke-interface {p0, p1}, Lorg/apache/sshd/client/session/ClientSession;->createExecChannel(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ChannelExec;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 280
    .local v2, "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    nop

    .line 283
    :try_start_2
    invoke-interface {v2, v1}, Lorg/apache/sshd/client/channel/ClientChannel;->setOut(Ljava/io/OutputStream;)V

    .line 284
    invoke-interface {v2, v0}, Lorg/apache/sshd/client/channel/ClientChannel;->setErr(Ljava/io/OutputStream;)V

    .line 285
    invoke-interface {v2}, Lorg/apache/sshd/client/channel/ClientChannel;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/sshd/client/future/OpenFuture;->await()Z

    .line 288
    sget-object v3, Lorg/apache/sshd/client/session/ClientSession;->REMOTE_COMMAND_WAIT_EVENTS:Ljava/util/Set;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/sshd/client/channel/ClientChannel;->waitFor(Ljava/util/Collection;J)Ljava/util/Set;

    move-result-object v3

    .line 289
    .local v3, "waitMask":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    sget-object v4, Lorg/apache/sshd/client/channel/ClientChannelEvent;->TIMEOUT:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 293
    invoke-interface {v2}, Lorg/apache/sshd/client/channel/ClientChannel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v4

    .line 294
    .local v4, "exitStatus":Ljava/lang/Integer;
    invoke-static {p1, v4}, Lorg/apache/sshd/client/channel/ClientChannel;->validateCommandExitStatusCode(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v3    # "waitMask":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    .end local v4    # "exitStatus":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v2}, Lorg/apache/sshd/client/channel/ClientChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v2    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .end local v1    # "channelOut":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 296
    .end local v0    # "channelErr":Ljava/io/OutputStream;
    return-void

    .line 290
    .restart local v0    # "channelErr":Ljava/io/OutputStream;
    .restart local v1    # "channelOut":Ljava/io/OutputStream;
    .restart local v2    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .restart local v3    # "waitMask":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    :cond_4
    :try_start_5
    new-instance v4, Ljava/net/SocketTimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve command result in time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .end local v0    # "channelErr":Ljava/io/OutputStream;
    .end local v1    # "channelOut":Ljava/io/OutputStream;
    .end local v2    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "stdout":Ljava/io/OutputStream;
    .end local p3    # "stderr":Ljava/io/OutputStream;
    .end local p4    # "charset":Ljava/nio/charset/Charset;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    .end local v3    # "waitMask":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    .restart local v0    # "channelErr":Ljava/io/OutputStream;
    .restart local v1    # "channelOut":Ljava/io/OutputStream;
    .restart local v2    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .restart local p1    # "command":Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/io/OutputStream;
    .restart local p3    # "stderr":Ljava/io/OutputStream;
    .restart local p4    # "charset":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v3

    .end local v0    # "channelErr":Ljava/io/OutputStream;
    .end local v1    # "channelOut":Ljava/io/OutputStream;
    .end local v2    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "stdout":Ljava/io/OutputStream;
    .end local p3    # "stderr":Ljava/io/OutputStream;
    .end local p4    # "charset":Ljava/nio/charset/Charset;
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 295
    .restart local v0    # "channelErr":Ljava/io/OutputStream;
    .restart local v1    # "channelOut":Ljava/io/OutputStream;
    .restart local v2    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .restart local p1    # "command":Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/io/OutputStream;
    .restart local p3    # "stderr":Ljava/io/OutputStream;
    .restart local p4    # "charset":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_5

    :try_start_7
    invoke-interface {v2}, Lorg/apache/sshd/client/channel/ClientChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "channelErr":Ljava/io/OutputStream;
    .end local v1    # "channelOut":Ljava/io/OutputStream;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "stdout":Ljava/io/OutputStream;
    .end local p3    # "stderr":Ljava/io/OutputStream;
    .end local p4    # "charset":Ljava/nio/charset/Charset;
    :cond_5
    :goto_2
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 280
    .end local v2    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .restart local v0    # "channelErr":Ljava/io/OutputStream;
    .restart local v1    # "channelOut":Ljava/io/OutputStream;
    .restart local p1    # "command":Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/io/OutputStream;
    .restart local p3    # "stderr":Ljava/io/OutputStream;
    .restart local p4    # "charset":Ljava/nio/charset/Charset;
    :catchall_3
    move-exception v2

    .end local v0    # "channelErr":Ljava/io/OutputStream;
    .end local v1    # "channelOut":Ljava/io/OutputStream;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "stdout":Ljava/io/OutputStream;
    .end local p3    # "stderr":Ljava/io/OutputStream;
    .end local p4    # "charset":Ljava/nio/charset/Charset;
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 295
    .restart local v0    # "channelErr":Ljava/io/OutputStream;
    .restart local v1    # "channelOut":Ljava/io/OutputStream;
    .restart local p1    # "command":Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/io/OutputStream;
    .restart local p3    # "stderr":Ljava/io/OutputStream;
    .restart local p4    # "charset":Ljava/nio/charset/Charset;
    :catchall_4
    move-exception v3

    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v4

    :try_start_b
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "channelErr":Ljava/io/OutputStream;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "stdout":Ljava/io/OutputStream;
    .end local p3    # "stderr":Ljava/io/OutputStream;
    .end local p4    # "charset":Ljava/nio/charset/Charset;
    :goto_3
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 280
    .end local v1    # "channelOut":Ljava/io/OutputStream;
    .restart local v0    # "channelErr":Ljava/io/OutputStream;
    .restart local p1    # "command":Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/io/OutputStream;
    .restart local p3    # "stderr":Ljava/io/OutputStream;
    .restart local p4    # "charset":Ljava/nio/charset/Charset;
    :catchall_6
    move-exception v1

    .end local v0    # "channelErr":Ljava/io/OutputStream;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "stdout":Ljava/io/OutputStream;
    .end local p3    # "stderr":Ljava/io/OutputStream;
    .end local p4    # "charset":Ljava/nio/charset/Charset;
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 295
    .restart local v0    # "channelErr":Ljava/io/OutputStream;
    .restart local p1    # "command":Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/io/OutputStream;
    .restart local p3    # "stderr":Ljava/io/OutputStream;
    .restart local p4    # "charset":Ljava/nio/charset/Charset;
    :catchall_7
    move-exception v2

    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
.end method

.method public abstract getConnectAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getConnectionContext()Lorg/apache/sshd/common/AttributeRepository;
.end method

.method public abstract getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;
.end method

.method public bridge synthetic getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1

    .line 88
    invoke-interface {p0}, Lorg/apache/sshd/client/session/ClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMetadataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionState()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract switchToNoneCipher()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract waitFor(Ljava/util/Collection;J)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;",
            ">;J)",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;",
            ">;"
        }
    .end annotation
.end method
