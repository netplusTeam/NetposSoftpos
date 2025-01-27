.class final Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;
.super Ljava/lang/Object;
.source "Java9SslEngine.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/Java9SslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlpnSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljavax/net/ssl/SSLEngine;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private called:Z

.field private final selector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

.field final synthetic this$0:Lio/netty/handler/ssl/Java9SslEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lio/netty/handler/ssl/Java9SslEngine;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/Java9SslEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;)V
    .locals 0
    .param p2, "selector"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    .line 43
    iput-object p1, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->this$0:Lio/netty/handler/ssl/Java9SslEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->selector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Ljavax/net/ssl/SSLEngine;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->apply(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1, "sslEngine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 49
    .local p2, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->called:Z

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->called:Z

    .line 53
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->selector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {v0, p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->select(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "selected":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 55
    .end local v0    # "selected":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "cause":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1

    .line 49
    .end local v0    # "cause":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method checkUnsupported()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->called:Z

    if-eqz v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->this$0:Lio/netty/handler/ssl/Java9SslEngine;

    invoke-virtual {v0}, Lio/netty/handler/ssl/Java9SslEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "protocol":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->selector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {v1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->unsupported()V

    .line 79
    :cond_1
    return-void

    .line 73
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
