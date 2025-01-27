.class public Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;
.super Ljava/lang/Object;
.source "SSLConfigurableServerSocket.java"

# interfaces
.implements Lch/qos/logback/core/net/ssl/SSLConfigurable;


# instance fields
.field private final delegate:Ljavax/net/ssl/SSLServerSocket;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLServerSocket;)V
    .locals 0
    .param p1, "delegate"    # Ljavax/net/ssl/SSLServerSocket;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    .line 29
    return-void
.end method


# virtual methods
.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultProtocols()[Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 56
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 57
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 60
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 61
    return-void
.end method
