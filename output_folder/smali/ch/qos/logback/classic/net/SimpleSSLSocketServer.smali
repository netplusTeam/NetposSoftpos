.class public Lch/qos/logback/classic/net/SimpleSSLSocketServer;
.super Lch/qos/logback/classic/net/SimpleSocketServer;
.source "SimpleSSLSocketServer.java"


# instance fields
.field private final socketFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;I)V
    .locals 1
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 73
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lch/qos/logback/classic/net/SimpleSSLSocketServer;-><init>(Lch/qos/logback/classic/LoggerContext;ILjavax/net/ssl/SSLContext;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;ILjavax/net/ssl/SSLContext;)V
    .locals 3
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;
    .param p2, "port"    # I
    .param p3, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .line 83
    invoke-direct {p0, p1, p2}, Lch/qos/logback/classic/net/SimpleSocketServer;-><init>(Lch/qos/logback/classic/LoggerContext;I)V

    .line 84
    if-eqz p3, :cond_0

    .line 87
    new-instance v0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;-><init>()V

    .line 89
    .local v0, "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    invoke-virtual {v0, p1}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->setContext(Lch/qos/logback/core/Context;)V

    .line 90
    new-instance v1, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;-><init>(Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;Ljavax/net/ssl/SSLServerSocketFactory;)V

    iput-object v1, p0, Lch/qos/logback/classic/net/SimpleSSLSocketServer;->socketFactory:Ljavax/net/ServerSocketFactory;

    .line 91
    return-void

    .line 85
    .end local v0    # "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SSL context required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    const-class v0, Lch/qos/logback/classic/net/SimpleSSLSocketServer;

    invoke-static {v0, p0}, Lch/qos/logback/classic/net/SimpleSSLSocketServer;->doMain(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1

    .line 95
    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSSLSocketServer;->socketFactory:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method
