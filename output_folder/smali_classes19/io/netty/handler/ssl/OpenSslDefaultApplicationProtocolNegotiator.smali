.class public final Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;
.super Ljava/lang/Object;
.source "OpenSslDefaultApplicationProtocolNegotiator.java"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final config:Lio/netty/handler/ssl/ApplicationProtocolConfig;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/ApplicationProtocolConfig;)V
    .locals 1
    .param p1, "config"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "config"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/ApplicationProtocolConfig;

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;->config:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    .line 32
    return-void
.end method


# virtual methods
.method public protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;->config:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v0

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;->config:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;->config:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    return-object v0
.end method

.method public selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;->config:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v0

    return-object v0
.end method
