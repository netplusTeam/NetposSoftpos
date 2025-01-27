.class Lio/netty/handler/ssl/SslClientHelloHandler$1;
.super Ljava/lang/Object;
.source "SslClientHelloHandler.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$finalClientHello:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslClientHelloHandler;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 194
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler$1;, "Lio/netty/handler/ssl/SslClientHelloHandler$1;"
    iput-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$finalClientHello:Lio/netty/buffer/ByteBuf;

    iput-object p3, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler$1;, "Lio/netty/handler/ssl/SslClientHelloHandler$1;"
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<TT;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$finalClientHello:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$000(Lio/netty/buffer/ByteBuf;)V

    .line 199
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$102(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    :try_start_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v1, v2, p1}, Lio/netty/handler/ssl/SslClientHelloHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
    :try_end_1
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    .line 207
    .local v1, "cause":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2, v1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 204
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "cause":Ljava/lang/Exception;
    iget-object v2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v3, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v3, v1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 208
    nop

    .end local v1    # "cause":Ljava/lang/Exception;
    goto :goto_0

    .line 202
    :catch_1
    move-exception v1

    .line 203
    .local v1, "err":Lio/netty/handler/codec/DecoderException;
    iget-object v2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2, v1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    nop

    .line 210
    .end local v1    # "err":Lio/netty/handler/codec/DecoderException;
    :goto_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z

    .line 212
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 215
    :cond_0
    return-void

    .line 210
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v2, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z

    .line 212
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 214
    :cond_1
    throw v1
.end method
