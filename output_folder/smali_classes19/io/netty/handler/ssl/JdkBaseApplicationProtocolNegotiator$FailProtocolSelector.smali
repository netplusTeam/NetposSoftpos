.class final Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$FailProtocolSelector;
.super Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;
.source "JdkBaseApplicationProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FailProtocolSelector"
.end annotation


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/JdkSslEngine;Ljava/util/Set;)V
    .locals 0
    .param p1, "engineWrapper"    # Lio/netty/handler/ssl/JdkSslEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/JdkSslEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p2, "supportedProtocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;-><init>(Lio/netty/handler/ssl/JdkSslEngine;Ljava/util/Set;)V

    .line 163
    return-void
.end method


# virtual methods
.method public noSelectMatchFound()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Selected protocol is not supported"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
