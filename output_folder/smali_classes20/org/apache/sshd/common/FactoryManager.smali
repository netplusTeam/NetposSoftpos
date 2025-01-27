.class public interface abstract Lorg/apache/sshd/common/FactoryManager;
.super Ljava/lang/Object;
.source "FactoryManager.java"

# interfaces
.implements Lorg/apache/sshd/common/kex/KexFactoryManager;
.implements Lorg/apache/sshd/common/session/SessionListenerManager;
.implements Lorg/apache/sshd/common/session/ReservedSessionMessagesManager;
.implements Lorg/apache/sshd/common/session/SessionDisconnectHandlerManager;
.implements Lorg/apache/sshd/common/channel/ChannelListenerManager;
.implements Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;
.implements Lorg/apache/sshd/common/session/UnknownChannelReferenceHandlerManager;
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;
.implements Lorg/apache/sshd/common/io/IoServiceEventListenerManager;
.implements Lorg/apache/sshd/common/AttributeStore;
.implements Lorg/apache/sshd/common/session/SessionHeartbeatController;


# static fields
.field public static final AGENT_FORWARDING_TYPE:Ljava/lang/String; = "agent-fw-auth-type"

.field public static final AGENT_FORWARDING_TYPE_IETF:Ljava/lang/String; = "auth-agent-req"

.field public static final AGENT_FORWARDING_TYPE_OPENSSH:Ljava/lang/String; = "auth-agent-req@openssh.com"

.field public static final AUTH_TIMEOUT:Ljava/lang/String; = "auth-timeout"

.field public static final CHANNEL_CLOSE_TIMEOUT:Ljava/lang/String; = "channel-close-timeout"

.field public static final DEFAULT_AUTH_TIMEOUT:J

.field public static final DEFAULT_CHANNEL_CLOSE_TIMEOUT:J

.field public static final DEFAULT_DISCONNECT_TIMEOUT:J

.field public static final DEFAULT_IDLE_TIMEOUT:J

.field public static final DEFAULT_IGNORE_MESSAGE_FREQUENCY:J = 0x400L

.field public static final DEFAULT_IGNORE_MESSAGE_SIZE:I = 0x10

.field public static final DEFAULT_IGNORE_MESSAGE_VARIANCE:I = 0x20

.field public static final DEFAULT_LIMIT_PACKET_SIZE:J = 0x1fffffffL

.field public static final DEFAULT_MAX_IDENTIFICATION_SIZE:I = 0x4000

.field public static final DEFAULT_MAX_PACKET_SIZE:J = 0x8000L

.field public static final DEFAULT_NIO2_MIN_WRITE_TIMEOUT:J

.field public static final DEFAULT_NIO2_READ_TIMEOUT:J

.field public static final DEFAULT_NIO_WORKERS:I

.field public static final DEFAULT_REKEY_BYTES_LIMIT:J = 0x40000000L

.field public static final DEFAULT_REKEY_PACKETS_LIMIT:J = 0x80000000L

.field public static final DEFAULT_REKEY_TIME_LIMIT:J = 0x36ee80L

.field public static final DEFAULT_STOP_WAIT_TIME:J

.field public static final DEFAULT_VERSION:Ljava/lang/String; = "SSHD-UNKNOWN"

.field public static final DEFAULT_WINDOW_SIZE:J = 0x200000L

.field public static final DEFAULT_WINDOW_TIMEOUT:J = 0x0L

.field public static final DISCONNECT_TIMEOUT:Ljava/lang/String; = "disconnect-timeout"

.field public static final IDLE_TIMEOUT:Ljava/lang/String; = "idle-timeout"

.field public static final IGNORE_MESSAGE_FREQUENCY:Ljava/lang/String; = "ignore-message-frequency"

.field public static final IGNORE_MESSAGE_SIZE:Ljava/lang/String; = "ignore-message-size"

.field public static final IGNORE_MESSAGE_VARIANCE:Ljava/lang/String; = "ignore-message-variance"

.field public static final LIMIT_PACKET_SIZE:Ljava/lang/String; = "max-packet-size"

.field public static final MAX_IDENTIFICATION_SIZE:Ljava/lang/String; = "max-identification-size"

.field public static final MAX_PACKET_SIZE:Ljava/lang/String; = "packet-size"

.field public static final NIO2_MIN_WRITE_TIMEOUT:Ljava/lang/String; = "nio2-min-write-timeout"

.field public static final NIO2_READ_BUFFER_SIZE:Ljava/lang/String; = "nio2-read-buf-size"

.field public static final NIO2_READ_TIMEOUT:Ljava/lang/String; = "nio2-read-timeout"

.field public static final NIO_WORKERS:Ljava/lang/String; = "nio-workers"

.field public static final REKEY_BLOCKS_LIMIT:Ljava/lang/String; = "rekey-blocks-limit"

.field public static final REKEY_BYTES_LIMIT:Ljava/lang/String; = "rekey-bytes-limit"

.field public static final REKEY_PACKETS_LIMIT:Ljava/lang/String; = "rekey-packets-limit"

.field public static final REKEY_TIME_LIMIT:Ljava/lang/String; = "rekey-time-limit"

.field public static final SOCKET_BACKLOG:Ljava/lang/String; = "socket-backlog"

.field public static final SOCKET_KEEPALIVE:Ljava/lang/String; = "socket-keepalive"

.field public static final SOCKET_LINGER:Ljava/lang/String; = "socket-linger"

.field public static final SOCKET_RCVBUF:Ljava/lang/String; = "socket-rcvbuf"

.field public static final SOCKET_REUSEADDR:Ljava/lang/String; = "socket-reuseaddr"

.field public static final SOCKET_SNDBUF:Ljava/lang/String; = "socket-sndbuf"

.field public static final STOP_WAIT_TIME:Ljava/lang/String; = "stop-wait-time"

.field public static final TCP_NODELAY:Ljava/lang/String; = "tcp-nodelay"

.field public static final WINDOW_SIZE:Ljava/lang/String; = "window-size"

.field public static final WINDOW_TIMEOUT:Ljava/lang/String; = "window-timeout"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 127
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_NIO_WORKERS:I

    .line 140
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_AUTH_TIMEOUT:J

    .line 152
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_IDLE_TIMEOUT:J

    .line 164
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xf

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    sput-wide v3, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_NIO2_READ_TIMEOUT:J

    .line 176
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_NIO2_MIN_WRITE_TIMEOUT:J

    .line 190
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_DISCONNECT_TIMEOUT:J

    .line 203
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_CHANNEL_CLOSE_TIMEOUT:J

    .line 215
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_STOP_WAIT_TIME:J

    return-void
.end method

.method public static resolveAttribute(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 1
    .param p0, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/FactoryManager;",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 486
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    const-string v0, "No key"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/FactoryManager;->getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract getAgentFactory()Lorg/apache/sshd/agent/SshAgentFactory;
.end method

.method public getAgentForwardingFilter()Lorg/apache/sshd/server/forward/AgentForwardingFilter;
    .locals 1

    .line 438
    invoke-interface {p0}, Lorg/apache/sshd/common/FactoryManager;->getForwardingFilter()Lorg/apache/sshd/server/forward/ForwardingFilter;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChannelFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileSystemFactory()Lorg/apache/sshd/common/file/FileSystemFactory;
.end method

.method public abstract getForwarderFactory()Lorg/apache/sshd/common/forward/ForwardingFilterFactory;
.end method

.method public abstract getForwardingFilter()Lorg/apache/sshd/server/forward/ForwardingFilter;
.end method

.method public abstract getGlobalRequestHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/session/ConnectionService;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getIoServiceFactory()Lorg/apache/sshd/common/io/IoServiceFactory;
.end method

.method public abstract getRandomFactory()Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/random/Random;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract getServiceFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/ServiceFactory;",
            ">;"
        }
    .end annotation
.end method

.method public getTcpForwardingFilter()Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .locals 1

    .line 434
    invoke-interface {p0}, Lorg/apache/sshd/common/FactoryManager;->getForwardingFilter()Lorg/apache/sshd/server/forward/ForwardingFilter;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public getX11ForwardingFilter()Lorg/apache/sshd/server/forward/X11ForwardingFilter;
    .locals 1

    .line 442
    invoke-interface {p0}, Lorg/apache/sshd/common/FactoryManager;->getForwardingFilter()Lorg/apache/sshd/server/forward/ForwardingFilter;

    move-result-object v0

    return-object v0
.end method

.method public resolveAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 476
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/FactoryManager;->resolveAttribute(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
