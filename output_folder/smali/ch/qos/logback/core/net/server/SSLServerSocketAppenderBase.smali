.class public abstract Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;
.super Lch/qos/logback/core/net/server/AbstractServerSocketAppender;
.source "SSLServerSocketAppenderBase.java"

# interfaces
.implements Lch/qos/logback/core/net/ssl/SSLComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<",
        "TE;>;",
        "Lch/qos/logback/core/net/ssl/SSLComponent;"
    }
.end annotation


# instance fields
.field private socketFactory:Ljavax/net/ServerSocketFactory;

.field private ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    .local p0, "this":Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;, "Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;-><init>()V

    return-void
.end method


# virtual methods
.method protected getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1

    .line 38
    .local p0, "this":Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;, "Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->socketFactory:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;
    .locals 1

    .line 63
    .local p0, "this":Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;, "Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/SSLConfiguration;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 66
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    return-object v0
.end method

.method public setSsl(Lch/qos/logback/core/net/ssl/SSLConfiguration;)V
    .locals 0
    .param p1, "ssl"    # Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 74
    .local p0, "this":Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;, "Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->ssl:Lch/qos/logback/core/net/ssl/SSLConfiguration;

    .line 75
    return-void
.end method

.method public start()V
    .locals 4

    .line 47
    .local p0, "this":Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;, "Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase<TE;>;"
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lch/qos/logback/core/net/ssl/SSLConfiguration;->createContext(Lch/qos/logback/core/spi/ContextAware;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 48
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->getSsl()Lch/qos/logback/core/net/ssl/SSLConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/core/net/ssl/SSLConfiguration;->getParameters()Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    move-result-object v1

    .line 49
    .local v1, "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->setContext(Lch/qos/logback/core/Context;)V

    .line 50
    new-instance v2, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lch/qos/logback/core/net/ssl/ConfigurableSSLServerSocketFactory;-><init>(Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;Ljavax/net/ssl/SSLServerSocketFactory;)V

    iput-object v2, p0, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->socketFactory:Ljavax/net/ServerSocketFactory;

    .line 51
    invoke-super {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v1    # "parameters":Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/server/SSLServerSocketAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
