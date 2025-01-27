.class final Lio/netty/handler/codec/http/HttpClientCodec$Decoder;
.super Lio/netty/handler/codec/http/HttpResponseDecoder;
.source "HttpClientCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpClientCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Decoder"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/HttpClientCodec;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpClientCodec;IIIZ)V
    .locals 0
    .param p2, "maxInitialLineLength"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "maxChunkSize"    # I
    .param p5, "validateHeaders"    # Z

    .line 180
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    .line 181
    invoke-direct {p0, p2, p3, p4, p5}, Lio/netty/handler/codec/http/HttpResponseDecoder;-><init>(IIIZ)V

    .line 182
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/HttpClientCodec;IIIZI)V
    .locals 6
    .param p2, "maxInitialLineLength"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "maxChunkSize"    # I
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I

    .line 185
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    .line 186
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpResponseDecoder;-><init>(IIIZI)V

    .line 187
    return-void
.end method

.method private decrement(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 213
    if-nez p1, :cond_0

    .line 214
    return-void

    .line 218
    :cond_0
    instance-of v0, p1, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpClientCodec;->access$400(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 221
    :cond_1
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpResponseDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 290
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpClientCodec;->access$200(Lio/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpClientCodec;->access$400(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 292
    .local v0, "missingResponses":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 293
    new-instance v2, Lio/netty/handler/codec/PrematureChannelClosureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel gone inactive with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " missing response(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 298
    .end local v0    # "missingResponses":J
    :cond_0
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpClientCodec;->access$300(Lio/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->actualReadableBytes()I

    move-result v0

    .line 194
    .local v0, "readable":I
    if-nez v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v0    # "readable":I
    goto :goto_1

    .line 201
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    .local v0, "oldSize":I
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpResponseDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 203
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpClientCodec;->access$200(Lio/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 205
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 206
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->decrement(Ljava/lang/Object;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "oldSize":I
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 5
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 230
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpClientCodec;->access$100(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpMethod;

    .line 232
    .local v0, "method":Lio/netty/handler/codec/http/HttpMethod;
    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    .line 233
    .local v1, "statusCode":I
    const/16 v2, 0xc8

    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    if-ge v1, v2, :cond_0

    .line 236
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpResponseDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v2

    return v2

    .line 241
    :cond_0
    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 243
    .local v3, "firstChar":C
    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 249
    :sswitch_0
    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->HEAD:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v2, v0}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    return v4

    .line 268
    :sswitch_1
    if-ne v1, v2, :cond_2

    .line 269
    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->CONNECT:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v2, v0}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v2}, Lio/netty/handler/codec/http/HttpClientCodec;->access$500(Lio/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v2, v4}, Lio/netty/handler/codec/http/HttpClientCodec;->access$302(Lio/netty/handler/codec/http/HttpClientCodec;Z)Z

    .line 274
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v2}, Lio/netty/handler/codec/http/HttpClientCodec;->access$100(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 276
    :cond_1
    return v4

    .line 282
    .end local v3    # "firstChar":C
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpResponseDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v2

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method
