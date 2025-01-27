.class public final Lorg/apache/sshd/client/config/SshClientConfigFileReader;
.super Ljava/lang/Object;
.source "SshClientConfigFileReader.java"


# static fields
.field public static final CLIENT_LIVECHECK_INTERVAL_PROP:Ljava/lang/String; = "ClientAliveInterval"

.field public static final CLIENT_LIVECHECK_REPLIES_WAIT:Ljava/lang/String; = "ClientAliveReplyWait"

.field public static final CLIENT_LIVECHECK_USE_NULLS:Ljava/lang/String; = "ClientAliveUseNullPackets"

.field public static final DEFAULT_ALIVE_INTERVAL:J = 0x0L

.field public static final DEFAULT_LIVECHECK_REPLY_WAIT:J = 0x0L

.field public static final DEFAULT_LIVECHECK_USE_NULLS:Z = false

.field public static final REQUEST_TTY_OPTION:Ljava/lang/String; = "RequestTTY"

.field public static final SENDENV_PROP:Ljava/lang/String; = "SendEnv"

.field public static final SETENV_PROP:Ljava/lang/String; = "SetEnv"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static configure(Lorg/apache/sshd/client/SshClient;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/client/SshClient;
    .locals 1
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lorg/apache/sshd/client/SshClient;",
            ">(TC;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "ZZ)TC;"
        }
    .end annotation

    .line 94
    .local p0, "client":Lorg/apache/sshd/client/SshClient;, "TC;"
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configure(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 95
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DH2KEX:Ljava/util/function/Function;

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureKeyExchanges(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZLjava/util/function/Function;Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 96
    invoke-static {p0, p1}, Lorg/apache/sshd/client/config/SshClientConfigFileReader;->setupClientHeartbeat(Lorg/apache/sshd/client/SshClient;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/client/SshClient;

    .line 97
    return-object p0
.end method

.method public static setupClientHeartbeat(Lorg/apache/sshd/client/SshClient;Ljava/util/Map;)Lorg/apache/sshd/client/SshClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lorg/apache/sshd/client/SshClient;",
            ">(TC;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TC;"
        }
    .end annotation

    .line 85
    .local p0, "client":Lorg/apache/sshd/client/SshClient;, "TC;"
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->toPropertyResolver(Ljava/util/Map;)Lorg/apache/sshd/common/PropertyResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/client/config/SshClientConfigFileReader;->setupClientHeartbeat(Lorg/apache/sshd/client/SshClient;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/client/SshClient;

    move-result-object v0

    return-object v0

    .line 86
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static setupClientHeartbeat(Lorg/apache/sshd/client/SshClient;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/client/SshClient;
    .locals 7
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lorg/apache/sshd/client/SshClient;",
            ">(TC;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            ")TC;"
        }
    .end annotation

    .line 56
    .local p0, "client":Lorg/apache/sshd/client/SshClient;, "TC;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    const-string v0, "ClientAliveInterval"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getLongProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 62
    .local v3, "interval":J
    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    .line 63
    return-object p0

    .line 66
    :cond_1
    const/4 v0, 0x0

    const-string v5, "ClientAliveUseNullPackets"

    invoke-static {p1, v5, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    sget-object v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->IGNORE:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/apache/sshd/client/SshClient;->setSessionHeartbeat(Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;Ljava/util/concurrent/TimeUnit;J)V

    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 70
    const-string v0, "heartbeat-interval"

    invoke-static {p0, v0, v5, v6}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)Ljava/lang/Object;

    .line 73
    const-string v0, "ClientAliveReplyWait"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getLongProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 75
    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 76
    const-string v2, "heartbeat-reply-wait"

    invoke-static {p0, v2, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)Ljava/lang/Object;

    .line 81
    :cond_3
    :goto_0
    return-object p0

    .line 57
    .end local v3    # "interval":J
    :cond_4
    :goto_1
    return-object p0
.end method
