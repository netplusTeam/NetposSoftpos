.class public Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "ConfigurableSSLSocketFactory.java"


# instance fields
.field private final delegate:Ljavax/net/ssl/SSLSocketFactory;

.field private final parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "parameters"    # Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    .param p2, "delegate"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 49
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 50
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    .line 51
    iput-object p2, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    .line 52
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 90
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    new-instance v2, Lch/qos/logback/core/net/ssl/SSLConfigurableSocket;

    invoke-direct {v2, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurableSocket;-><init>(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->configure(Lch/qos/logback/core/net/ssl/SSLConfigurable;)V

    .line 91
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 80
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    new-instance v2, Lch/qos/logback/core/net/ssl/SSLConfigurableSocket;

    invoke-direct {v2, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurableSocket;-><init>(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->configure(Lch/qos/logback/core/net/ssl/SSLConfigurable;)V

    .line 81
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 70
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    new-instance v2, Lch/qos/logback/core/net/ssl/SSLConfigurableSocket;

    invoke-direct {v2, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurableSocket;-><init>(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->configure(Lch/qos/logback/core/net/ssl/SSLConfigurable;)V

    .line 71
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 60
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;->parameters:Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    new-instance v2, Lch/qos/logback/core/net/ssl/SSLConfigurableSocket;

    invoke-direct {v2, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurableSocket;-><init>(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->configure(Lch/qos/logback/core/net/ssl/SSLConfigurable;)V

    .line 61
    return-object v0
.end method
