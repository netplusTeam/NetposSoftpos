.class Lio/netty/handler/codec/compression/Bzip2Encoder$2;
.super Ljava/lang/Object;
.source "Bzip2Encoder.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/compression/Bzip2Encoder;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/compression/Bzip2Encoder;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/compression/Bzip2Encoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/compression/Bzip2Encoder;

    .line 201
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$2;->this$0:Lio/netty/handler/codec/compression/Bzip2Encoder;

    iput-object p2, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$2;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "f"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$2;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 205
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/compression/Bzip2Encoder$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
