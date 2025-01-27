.class Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$3;
.super Ljava/lang/Object;
.source "WebSocketClientProtocolHandshakeHandler.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->applyHandshakeTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;

.field final synthetic val$timeoutFuture:Lio/netty/util/concurrent/Future;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;

    .line 118
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$3;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;

    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$3;->val$timeoutFuture:Lio/netty/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    .local p1, "f":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Void;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$3;->val$timeoutFuture:Lio/netty/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 122
    return-void
.end method
