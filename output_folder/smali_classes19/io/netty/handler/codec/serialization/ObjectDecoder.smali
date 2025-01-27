.class public Lio/netty/handler/codec/serialization/ObjectDecoder;
.super Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;
.source "ObjectDecoder.java"


# instance fields
.field private final classResolver:Lio/netty/handler/codec/serialization/ClassResolver;


# direct methods
.method public constructor <init>(ILio/netty/handler/codec/serialization/ClassResolver;)V
    .locals 6
    .param p1, "maxObjectSize"    # I
    .param p2, "classResolver"    # Lio/netty/handler/codec/serialization/ClassResolver;

    .line 63
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    .line 64
    iput-object p2, p0, Lio/netty/handler/codec/serialization/ObjectDecoder;->classResolver:Lio/netty/handler/codec/serialization/ClassResolver;

    .line 65
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/serialization/ClassResolver;)V
    .locals 1
    .param p1, "classResolver"    # Lio/netty/handler/codec/serialization/ClassResolver;

    .line 49
    const/high16 v0, 0x100000

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/serialization/ObjectDecoder;-><init>(ILio/netty/handler/codec/serialization/ClassResolver;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 70
    .local v0, "frame":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    return-object v1

    .line 74
    :cond_0
    new-instance v1, Lio/netty/handler/codec/serialization/CompactObjectInputStream;

    new-instance v2, Lio/netty/buffer/ByteBufInputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    iget-object v3, p0, Lio/netty/handler/codec/serialization/ObjectDecoder;->classResolver:Lio/netty/handler/codec/serialization/ClassResolver;

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/serialization/CompactObjectInputStream;-><init>(Ljava/io/InputStream;Lio/netty/handler/codec/serialization/ClassResolver;)V

    .line 76
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 76
    return-object v2

    .line 78
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 79
    throw v2
.end method
