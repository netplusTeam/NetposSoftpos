.class public Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "ConfigurableSSLServerSocketFactory.java"


# instance fields
.field private final delegate:Ljavax/net/ssl/SSLServerSocketFactory;

.field private final parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;Ljavax/net/ssl/SSLServerSocketFactory;)V
    .locals 0
    .param p1, "parameters"    # Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    .param p2, "delegate"    # Ljavax/net/ssl/SSLServerSocketFactory;

    .line 48
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    .line 49
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    .line 50
    iput-object p2, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;->delegate:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 51
    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;->delegate:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 79
    .local v0, "socket":Ljavax/net/ssl/SSLServerSocket;
    iget-object v1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    new-instance v2, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;

    invoke-direct {v2, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;-><init>(Ljavax/net/ssl/SSLServerSocket;)V

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->configure(Lch/qos/logback/core/net/ssl/SSLConfigurable;)V

    .line 80
    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 3
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;->delegate:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(II)Ljava/net/ServerSocket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 69
    .local v0, "socket":Ljavax/net/ssl/SSLServerSocket;
    iget-object v1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    new-instance v2, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;

    invoke-direct {v2, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;-><init>(Ljavax/net/ssl/SSLServerSocket;)V

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->configure(Lch/qos/logback/core/net/ssl/SSLConfigurable;)V

    .line 70
    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 3
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "ifAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;->delegate:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 59
    .local v0, "socket":Ljavax/net/ssl/SSLServerSocket;
    iget-object v1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    new-instance v2, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;

    invoke-direct {v2, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;-><init>(Ljavax/net/ssl/SSLServerSocket;)V

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->configure(Lch/qos/logback/core/net/ssl/SSLConfigurable;)V

    .line 60
    return-object v0
.end method
