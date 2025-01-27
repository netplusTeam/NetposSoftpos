.class public final Lorg/apache/sshd/server/config/SshServerConfigFileReader;
.super Ljava/lang/Object;
.source "SshServerConfigFileReader.java"


# static fields
.field public static final ALLOW_AGENT_FORWARDING_CONFIG_PROP:Ljava/lang/String; = "AllowAgentForwarding"

.field public static final ALLOW_TCP_FORWARDING_CONFIG_PROP:Ljava/lang/String; = "AllowTcpForwarding"

.field public static final ALLOW_X11_FORWARDING_CONFIG_PROP:Ljava/lang/String; = "X11Forwarding"

.field public static final BANNER_CONFIG_PROP:Ljava/lang/String; = "Banner"

.field public static final DEFAULT_AGENT_FORWARDING:Ljava/lang/String; = "yes"

.field public static final DEFAULT_ALIVE_INTERVAL:J = 0x0L

.field public static final DEFAULT_TCP_FORWARDING:Ljava/lang/String; = "yes"

.field public static final DEFAULT_VISUAL_HOST_KEY:Ljava/lang/String; = "no"

.field public static final DEFAULT_X11_FORWARDING:Ljava/lang/String; = "no"

.field public static final SERVER_ALIVE_INTERVAL_PROP:Ljava/lang/String; = "ServerAliveInterval"

.field public static final SFTP_FORCED_VERSION_PROP:Ljava/lang/String; = "sftp-version"

.field public static final VISUAL_HOST_KEY:Ljava/lang/String; = "VisualHostKey"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static configure(Lorg/apache/sshd/server/SshServer;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/server/SshServer;
    .locals 1
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/apache/sshd/server/SshServer;",
            ">(TS;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "ZZ)TS;"
        }
    .end annotation

    .line 113
    .local p0, "server":Lorg/apache/sshd/server/SshServer;, "TS;"
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configure(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 114
    sget-object v0, Lorg/apache/sshd/server/ServerBuilder;->DH2KEX:Ljava/util/function/Function;

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureKeyExchanges(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZLjava/util/function/Function;Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 115
    invoke-static {p0, p1}, Lorg/apache/sshd/server/config/SshServerConfigFileReader;->setupServerHeartbeat(Lorg/apache/sshd/server/ServerFactoryManager;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/ServerFactoryManager;

    .line 116
    return-object p0
.end method

.method public static resolveAgentForwardingFilter(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/forward/AgentForwardingFilter;
    .locals 2
    .param p0, "options"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 131
    const-string v0, "AllowAgentForwarding"

    const-string/jumbo v1, "yes"

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getStringProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lorg/apache/sshd/server/forward/AgentForwardingFilter;->of(Z)Lorg/apache/sshd/server/forward/AgentForwardingFilter;

    move-result-object v1

    return-object v1
.end method

.method public static resolveBanner(Lorg/apache/sshd/common/PropertyResolver;)Ljava/lang/Object;
    .locals 3
    .param p0, "options"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 151
    const-string v0, "Banner"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getString(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "bannerOption":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const-string v1, "VisualHostKey"

    const-string v2, "no"

    invoke-static {p0, v1, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getStringProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v0, "#auto-welcome-banner"

    goto :goto_0

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 162
    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    const-string v1, "Welcome to SSHD\n"

    return-object v1

    .line 164
    :cond_2
    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->isNoneValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_3
    const-string v1, "#auto-welcome-banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    return-object v0

    .line 169
    :cond_4
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1
.end method

.method public static resolveServerForwarding(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/forward/ForwardingFilter;
    .locals 4
    .param p0, "options"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/sshd/common/PropertyResolver;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lorg/apache/sshd/server/forward/AcceptAllForwardingFilter;->INSTANCE:Lorg/apache/sshd/server/forward/AcceptAllForwardingFilter;

    return-object v0

    .line 124
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/server/config/SshServerConfigFileReader;->resolveAgentForwardingFilter(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/forward/AgentForwardingFilter;

    move-result-object v0

    .line 125
    .local v0, "agentFilter":Lorg/apache/sshd/server/forward/AgentForwardingFilter;
    invoke-static {p0}, Lorg/apache/sshd/server/config/SshServerConfigFileReader;->resolveTcpForwardingFilter(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    move-result-object v1

    .line 126
    .local v1, "tcpFilter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    invoke-static {p0}, Lorg/apache/sshd/server/config/SshServerConfigFileReader;->resolveX11ForwardingFilter(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/forward/X11ForwardingFilter;

    move-result-object v2

    .line 127
    .local v2, "x11Filter":Lorg/apache/sshd/server/forward/X11ForwardingFilter;
    invoke-static {v0, v2, v1}, Lorg/apache/sshd/server/forward/ForwardingFilter;->asForwardingFilter(Lorg/apache/sshd/server/forward/AgentForwardingFilter;Lorg/apache/sshd/server/forward/X11ForwardingFilter;Lorg/apache/sshd/server/forward/TcpForwardingFilter;)Lorg/apache/sshd/server/forward/ForwardingFilter;

    move-result-object v3

    return-object v3
.end method

.method public static resolveTcpForwardingFilter(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .locals 5
    .param p0, "options"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 137
    const-string v0, "AllowTcpForwarding"

    const-string/jumbo v1, "yes"

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getStringProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->fromString(Ljava/lang/String;)Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    move-result-object v2

    .line 140
    .local v2, "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "Unknown %s value: %s"

    invoke-static {v2, v0, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v2
.end method

.method public static resolveX11ForwardingFilter(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/forward/X11ForwardingFilter;
    .locals 2
    .param p0, "options"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 145
    const-string v0, "X11Forwarding"

    const-string v1, "no"

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getStringProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lorg/apache/sshd/server/forward/X11ForwardingFilter;->of(Z)Lorg/apache/sshd/server/forward/X11ForwardingFilter;

    move-result-object v1

    return-object v1
.end method

.method public static setupServerHeartbeat(Lorg/apache/sshd/server/ServerFactoryManager;Ljava/util/Map;)Lorg/apache/sshd/server/ServerFactoryManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/sshd/server/ServerFactoryManager;",
            ">(TS;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TS;"
        }
    .end annotation

    .line 91
    .local p0, "server":Lorg/apache/sshd/server/ServerFactoryManager;, "TS;"
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->toPropertyResolver(Ljava/util/Map;)Lorg/apache/sshd/common/PropertyResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/server/config/SshServerConfigFileReader;->setupServerHeartbeat(Lorg/apache/sshd/server/ServerFactoryManager;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static setupServerHeartbeat(Lorg/apache/sshd/server/ServerFactoryManager;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/ServerFactoryManager;
    .locals 5
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/sshd/server/ServerFactoryManager;",
            ">(TS;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            ")TS;"
        }
    .end annotation

    .line 76
    .local p0, "server":Lorg/apache/sshd/server/ServerFactoryManager;, "TS;"
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    const-string v0, "ServerAliveInterval"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getLongProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 82
    .local v3, "interval":J
    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    .line 83
    return-object p0

    .line 86
    :cond_1
    sget-object v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->IGNORE:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v3, v4}, Lorg/apache/sshd/server/ServerFactoryManager;->setSessionHeartbeat(Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;Ljava/util/concurrent/TimeUnit;J)V

    .line 87
    return-object p0

    .line 77
    .end local v3    # "interval":J
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static setupSftpSubsystem(Lorg/apache/sshd/server/ServerFactoryManager;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/server/ServerFactoryManager;
    .locals 2
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/sshd/server/ServerFactoryManager;",
            ">(TS;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            ")TS;"
        }
    .end annotation

    .line 99
    .local p0, "server":Lorg/apache/sshd/server/ServerFactoryManager;, "TS;"
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "sftp-version"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getInteger(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 104
    .local v1, "version":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 105
    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    return-object p0

    .line 100
    .end local v1    # "version":Ljava/lang/Integer;
    :cond_2
    :goto_0
    return-object p0
.end method
