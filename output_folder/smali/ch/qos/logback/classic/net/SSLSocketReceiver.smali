.class public Lch/qos/logback/classic/net/SSLSocketReceiver;
.super Lch/qos/logback/classic/net/SocketReceiver;
.source "SSLSocketReceiver.java"

# interfaces
.implements Lch/qos/logback/core/net/ssl/SSLComponent;


# instance fields
.field private socketFactory:Ljavax/net/SocketFactory;

.field private ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lch/qos/logback/classic/net/SocketReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 41
    iget-object v0, p0, Lch/qos/logback/classic/net/SSLSocketReceiver;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;
    .locals 1

    .line 67
    iget-object v0, p0, Lch/qos/logback/classic/net/SSLSocketReceiver;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/SSLConfiguration;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/net/SSLSocketReceiver;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 70
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/net/SSLSocketReceiver;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    return-object v0
.end method

.method public setSsl(Lch/qos/logback/core/net/ssl/SSLConfiguration;)V
    .locals 0
    .param p1, "ssl"    # Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 78
    iput-object p1, p0, Lch/qos/logback/classic/net/SSLSocketReceiver;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 79
    return-void
.end method

.method protected shouldStart()Z
    .locals 4

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SSLSocketReceiver;->getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lch/qos/logback/core/net/ssl/SSLConfiguration;->createContext(Lch/qos/logback/core/spi/ContextAware;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 51
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SSLSocketReceiver;->getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/core/net/ssl/SSLConfiguration;->getParameters()Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    move-result-object v1

    .line 52
    .local v1, "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SSLSocketReceiver;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->setContext(Lch/qos/logback/core/Context;)V

    .line 53
    new-instance v2, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;-><init>(Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object v2, p0, Lch/qos/logback/classic/net/SSLSocketReceiver;->socketFactory:Ljavax/net/SocketFactory;

    .line 54
    invoke-super {p0}, Lch/qos/logback/classic/net/SocketReceiver;->shouldStart()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 55
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v1    # "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/classic/net/SSLSocketReceiver;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    const/4 v1, 0x0

    return v1
.end method
