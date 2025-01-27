.class public final Lio/netty/handler/ssl/OpenSslNpnApplicationProtocolNegotiator;
.super Ljava/lang/Object;
.source "OpenSslNpnApplicationProtocolNegotiator.java"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "protocols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lio/netty/handler/ssl/ApplicationProtocolUtil;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const-string v1, "protocols"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslNpnApplicationProtocolNegotiator;->protocols:Ljava/util/List;

    .line 34
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lio/netty/handler/ssl/ApplicationProtocolUtil;->toList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "protocols"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslNpnApplicationProtocolNegotiator;->protocols:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;
    .locals 1

    .line 42
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

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

    .line 47
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslNpnApplicationProtocolNegotiator;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;
    .locals 1

    .line 57
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    return-object v0
.end method

.method public selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;
    .locals 1

    .line 52
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->CHOOSE_MY_LAST_PROTOCOL:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    return-object v0
.end method
