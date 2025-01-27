.class public Lio/netty/handler/codec/serialization/ObjectEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "ObjectEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Ljava/io/Serializable;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final LENGTH_PLACEHOLDER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lio/netty/handler/codec/serialization/ObjectEncoder;->LENGTH_PLACEHOLDER:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Ljava/io/Serializable;Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/io/Serializable;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 44
    .local v0, "startIdx":I
    new-instance v1, Lio/netty/buffer/ByteBufOutputStream;

    invoke-direct {v1, p3}, Lio/netty/buffer/ByteBufOutputStream;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 45
    .local v1, "bout":Lio/netty/buffer/ByteBufOutputStream;
    const/4 v2, 0x0

    .line 47
    .local v2, "oout":Ljava/io/ObjectOutputStream;
    :try_start_0
    sget-object v3, Lio/netty/handler/codec/serialization/ObjectEncoder;->LENGTH_PLACEHOLDER:[B

    invoke-virtual {v1, v3}, Lio/netty/buffer/ByteBufOutputStream;->write([B)V

    .line 48
    new-instance v3, Lio/netty/handler/codec/serialization/CompactObjectOutputStream;

    invoke-direct {v3, v1}, Lio/netty/handler/codec/serialization/CompactObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 49
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    nop

    .line 53
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 59
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    .line 61
    .local v3, "endIdx":I
    sub-int v4, v3, v0

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p3, v0, v4}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 62
    return-void

    .line 52
    .end local v3    # "endIdx":I
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lio/netty/buffer/ByteBufOutputStream;->close()V

    .line 57
    :goto_0
    throw v3
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/serialization/ObjectEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/io/Serializable;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
