.class public Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;
.super Lch/qos/logback/classic/net/server/ServerSocketReceiver;
.source "SSLServerSocketReceiver.java"

# interfaces
.implements Lch/qos/logback/core/net/ssl/SSLComponent;


# instance fields
.field private socketFactory:Ljavax/net/ServerSocketFactory;

.field private ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->socketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lch/qos/logback/core/net/ssl/SSLConfiguration;->createContext(Lch/qos/logback/core/spi/ContextAware;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 41
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/core/net/ssl/SSLConfiguration;->getParameters()Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    move-result-object v1

    .line 42
    .local v1, "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->setContext(Lch/qos/logback/core/Context;)V

    .line 43
    new-instance v2, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;-><init>(Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;Ljavax/net/ssl/SSLServerSocketFactory;)V

    iput-object v2, p0, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->socketFactory:Ljavax/net/ServerSocketFactory;

    .line 45
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v1    # "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->socketFactory:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;
    .locals 1

    .line 54
    iget-object v0, p0, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/SSLConfiguration;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 57
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    return-object v0
.end method

.method public setSsl(Lch/qos/logback/core/net/ssl/SSLConfiguration;)V
    .locals 0
    .param p1, "ssl"    # Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 65
    iput-object p1, p0, Lch/qos/logback/classic/net/server/SSLServerSocketReceiver;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 66
    return-void
.end method
