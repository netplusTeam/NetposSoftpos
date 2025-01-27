.class final Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$FailProtocolSelectionListener;
.super Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;
.source "JdkBaseApplicationProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FailProtocolSelectionListener"
.end annotation


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/JdkSslEngine;Ljava/util/List;)V
    .locals 0
    .param p1, "engineWrapper"    # Lio/netty/handler/ssl/JdkSslEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/JdkSslEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p2, "supportedProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;-><init>(Lio/netty/handler/ssl/JdkSslEngine;Ljava/util/List;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected noSelectedMatchFound(Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "No compatible protocols found"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
