.class Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;
.super Ljava/lang/Object;
.source "JdkBaseApplicationProtocolNegotiator.java"

# interfaces
.implements Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoFailProtocolSelector"
.end annotation


# instance fields
.field private final engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

.field private final supportedProtocols:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    .line 133
    .local p2, "supportedProtocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;->engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

    .line 135
    iput-object p2, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;->supportedProtocols:Ljava/util/Set;

    .line 136
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

    .line 155
    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;->engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/JdkSslEngine;->setNegotiatedApplicationProtocol(Ljava/lang/String;)V

    .line 156
    return-object v1
.end method

.method public select(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;->supportedProtocols:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "p":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;->engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/JdkSslEngine;->setNegotiatedApplicationProtocol(Ljava/lang/String;)V

    .line 148
    return-object v1

    .line 150
    .end local v1    # "p":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;->noSelectMatchFound()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsupported()V
    .locals 2

    .line 140
    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;->engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/JdkSslEngine;->setNegotiatedApplicationProtocol(Ljava/lang/String;)V

    .line 141
    return-void
.end method
