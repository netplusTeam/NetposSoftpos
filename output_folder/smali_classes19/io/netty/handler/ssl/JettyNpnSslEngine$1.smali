.class Lio/netty/handler/ssl/JettyNpnSslEngine$1;
.super Ljava/lang/Object;
.source "JettyNpnSslEngine.java"

# interfaces
.implements Lorg/eclipse/jetty/npn/NextProtoNego$ServerProvider;


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

.field final synthetic val$applicationNegotiator:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

.field final synthetic val$protocolListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/JettyNpnSslEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/JettyNpnSslEngine;

    .line 63
    iput-object p1, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$1;->this$0:Lio/netty/handler/ssl/JettyNpnSslEngine;

    iput-object p2, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$1;->val$protocolListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    iput-object p3, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$1;->val$applicationNegotiator:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public protocolSelected(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .line 77
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$1;->val$protocolListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;->selected(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
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

    .line 71
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$1;->val$applicationNegotiator:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    invoke-interface {v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unsupported()V
    .locals 1

    .line 66
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$1;->val$protocolListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    invoke-interface {v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;->unsupported()V

    .line 67
    return-void
.end method
