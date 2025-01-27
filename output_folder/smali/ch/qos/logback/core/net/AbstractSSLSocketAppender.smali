.class public abstract Lch/qos/logback/core/net/AbstractSSLSocketAppender;
.super Lch/qos/logback/core/net/AbstractSocketAppender;
.source "AbstractSSLSocketAppender.java"

# interfaces
.implements Lch/qos/logback/core/net/ssl/SSLComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/net/AbstractSocketAppender<",
        "TE;>;",
        "Lch/qos/logback/core/net/ssl/SSLComponent;"
    }
.end annotation


# instance fields
.field private socketFactory:Ljavax/net/SocketFactory;

.field private ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lch/qos/logback/core/net/AbstractSSLSocketAppender;, "Lch/qos/logback/core/net/AbstractSSLSocketAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method protected getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 48
    .local p0, "this":Lch/qos/logback/core/net/AbstractSSLSocketAppender;, "Lch/qos/logback/core/net/AbstractSSLSocketAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;
    .locals 1

    .line 73
    .local p0, "this":Lch/qos/logback/core/net/AbstractSSLSocketAppender;, "Lch/qos/logback/core/net/AbstractSSLSocketAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/SSLConfiguration;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 76
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    return-object v0
.end method

.method public setSsl(Lch/qos/logback/core/net/ssl/SSLConfiguration;)V
    .locals 0
    .param p1, "ssl"    # Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 84
    .local p0, "this":Lch/qos/logback/core/net/AbstractSSLSocketAppender;, "Lch/qos/logback/core/net/AbstractSSLSocketAppender<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 85
    return-void
.end method

.method public start()V
    .locals 4

    .line 57
    .local p0, "this":Lch/qos/logback/core/net/AbstractSSLSocketAppender;, "Lch/qos/logback/core/net/AbstractSSLSocketAppender<TE;>;"
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lch/qos/logback/core/net/ssl/SSLConfiguration;->createContext(Lch/qos/logback/core/spi/ContextAware;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 58
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/core/net/ssl/SSLConfiguration;->getParameters()Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    move-result-object v1

    .line 59
    .local v1, "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->setContext(Lch/qos/logback/core/Context;)V

    .line 60
    new-instance v2, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lch/qos/logback/core/net/ssl/ConfigurableSSLSocketFactory;-><init>(Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object v2, p0, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->socketFactory:Ljavax/net/SocketFactory;

    .line 61
    invoke-super {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v1    # "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/AbstractSSLSocketAppender;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
