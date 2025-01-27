.class final Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;
.super Lio/netty/channel/AbstractCoalescingBufferQueue;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SslHandlerCoalescingBufferQueue"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/Channel;I)V
    .locals 0
    .param p2, "channel"    # Lio/netty/channel/Channel;
    .param p3, "initSize"    # I

    .line 2172
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->this$0:Lio/netty/handler/ssl/SslHandler;

    .line 2173
    invoke-direct {p0, p2, p3}, Lio/netty/channel/AbstractCoalescingBufferQueue;-><init>(Lio/netty/channel/Channel;I)V

    .line 2174
    return-void
.end method


# virtual methods
.method protected compose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p3, "next"    # Lio/netty/buffer/ByteBuf;

    .line 2178
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget v0, v0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    .line 2179
    .local v0, "wrapDataSize":I
    instance-of v1, p2, Lio/netty/buffer/CompositeByteBuf;

    if-eqz v1, :cond_2

    .line 2180
    move-object v1, p2

    check-cast v1, Lio/netty/buffer/CompositeByteBuf;

    .line 2181
    .local v1, "composite":Lio/netty/buffer/CompositeByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf;->numComponents()I

    move-result v2

    .line 2182
    .local v2, "numComponents":I
    if-eqz v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 2183
    invoke-virtual {v1, v3}, Lio/netty/buffer/CompositeByteBuf;->internalComponent(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-static {v3, p3, v0}, Lio/netty/handler/ssl/SslHandler;->access$2800(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2184
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p3}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 2186
    :cond_1
    return-object v1

    .line 2188
    .end local v1    # "composite":Lio/netty/buffer/CompositeByteBuf;
    .end local v2    # "numComponents":I
    :cond_2
    invoke-static {p2, p3, v0}, Lio/netty/handler/ssl/SslHandler;->access$2800(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    goto :goto_0

    .line 2189
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->copyAndCompose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 2188
    :goto_0
    return-object v1
.end method

.method protected composeFirst(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "first"    # Lio/netty/buffer/ByteBuf;

    .line 2194
    instance-of v0, p2, Lio/netty/buffer/CompositeByteBuf;

    if-eqz v0, :cond_1

    .line 2195
    move-object v0, p2

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    .line 2196
    .local v0, "composite":Lio/netty/buffer/CompositeByteBuf;
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$2900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$SslEngineType;

    move-result-object v1

    iget-boolean v1, v1, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    if-eqz v1, :cond_0

    .line 2197
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v1

    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    goto :goto_0

    .line 2199
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v1

    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    .line 2202
    :goto_0
    :try_start_0
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    goto :goto_1

    .line 2203
    :catchall_0
    move-exception v1

    .line 2204
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 2205
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 2207
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->release()Z

    .line 2209
    .end local v0    # "composite":Lio/netty/buffer/CompositeByteBuf;
    :cond_1
    return-object p2
.end method

.method protected removeEmptyValue()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2214
    const/4 v0, 0x0

    return-object v0
.end method
