.class public Lorg/apache/sshd/common/util/net/NetworkConnector;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "NetworkConnector.java"


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:J

.field public static final DEFAULT_HOST:Ljava/lang/String; = "127.0.0.1"

.field public static final DEFAULT_READ_TIMEOUT:J


# instance fields
.field private connectTimeout:J

.field private host:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private readTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/util/net/NetworkConnector;->DEFAULT_CONNECT_TIMEOUT:J

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/util/net/NetworkConnector;->DEFAULT_READ_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 35
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->host:Ljava/lang/String;

    .line 37
    sget-wide v0, Lorg/apache/sshd/common/util/net/NetworkConnector;->DEFAULT_CONNECT_TIMEOUT:J

    iput-wide v0, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->connectTimeout:J

    .line 38
    sget-wide v0, Lorg/apache/sshd/common/util/net/NetworkConnector;->DEFAULT_READ_TIMEOUT:J

    iput-wide v0, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->readTimeout:J

    .line 42
    return-void
.end method


# virtual methods
.method public getConnectTimeout()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->connectTimeout:J

    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTimeout()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->readTimeout:J

    return-wide v0
.end method

.method public setConnectTimeout(J)V
    .locals 0
    .param p1, "connectTimeout"    # J

    .line 73
    iput-wide p1, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->connectTimeout:J

    .line 74
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->host:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 65
    iput p1, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->port:I

    .line 66
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->protocol:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setReadTimeout(J)V
    .locals 0
    .param p1, "readTimeout"    # J

    .line 81
    iput-wide p1, p0, Lorg/apache/sshd/common/util/net/NetworkConnector;->readTimeout:J

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/NetworkConnector;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/NetworkConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/NetworkConnector;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";connect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/NetworkConnector;->getConnectTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/NetworkConnector;->getReadTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
