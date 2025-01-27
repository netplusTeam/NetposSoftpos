.class Lio/netty/channel/CombinedChannelDuplexHandler$1;
.super Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;
.source "CombinedChannelDuplexHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/CombinedChannelDuplexHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/CombinedChannelDuplexHandler;


# direct methods
.method constructor <init>(Lio/netty/channel/CombinedChannelDuplexHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelHandler;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/CombinedChannelDuplexHandler;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 137
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler$1;, "Lio/netty/channel/CombinedChannelDuplexHandler$1;"
    iput-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler$1;->this$0:Lio/netty/channel/CombinedChannelDuplexHandler;

    invoke-direct {p0, p2, p3}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelHandler;)V

    return-void
.end method


# virtual methods
.method public fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 141
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler$1;, "Lio/netty/channel/CombinedChannelDuplexHandler$1;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$1;->this$0:Lio/netty/channel/CombinedChannelDuplexHandler;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler;->access$000(Lio/netty/channel/CombinedChannelDuplexHandler;)Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    move-result-object v0

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_2

    .line 145
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$1;->this$0:Lio/netty/channel/CombinedChannelDuplexHandler;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler;->access$100(Lio/netty/channel/CombinedChannelDuplexHandler;)Lio/netty/channel/ChannelOutboundHandler;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler$1;->this$0:Lio/netty/channel/CombinedChannelDuplexHandler;

    invoke-static {v1}, Lio/netty/channel/CombinedChannelDuplexHandler;->access$000(Lio/netty/channel/CombinedChannelDuplexHandler;)Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/netty/channel/ChannelOutboundHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    .local v0, "error":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/channel/CombinedChannelDuplexHandler;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-static {}, Lio/netty/channel/CombinedChannelDuplexHandler;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    .line 152
    invoke-static {v0}, Lio/netty/util/internal/ThrowableUtil;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string v3, "An exception {}was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-interface {v1, v3, v2, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Lio/netty/channel/CombinedChannelDuplexHandler;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-static {}, Lio/netty/channel/CombinedChannelDuplexHandler;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "An exception \'{}\' [enable DEBUG level for full stacktrace] was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-interface {v1, v2, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .end local v0    # "error":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    goto :goto_1

    .line 161
    :cond_2
    invoke-super {p0, p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 163
    :goto_1
    return-object p0
.end method

.method public bridge synthetic fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 137
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler$1;, "Lio/netty/channel/CombinedChannelDuplexHandler$1;"
    invoke-virtual {p0, p1}, Lio/netty/channel/CombinedChannelDuplexHandler$1;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method
