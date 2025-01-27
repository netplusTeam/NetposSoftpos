.class Lio/netty/handler/ssl/JettyNpnSslEngine$2;
.super Ljava/lang/Object;
.source "JettyNpnSslEngine.java"

# interfaces
.implements Lorg/eclipse/jetty/npn/NextProtoNego$ClientProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/JettyNpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/JettyNpnSslEngine;

.field final synthetic val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/JettyNpnSslEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/JettyNpnSslEngine;

    .line 87
    iput-object p1, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->this$0:Lio/netty/handler/ssl/JettyNpnSslEngine;

    iput-object p2, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectProtocol(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 101
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->select(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 104
    const/4 v1, 0x0

    return-object v1
.end method

.method public supports()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public unsupported()V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->unsupported()V

    .line 96
    return-void
.end method
