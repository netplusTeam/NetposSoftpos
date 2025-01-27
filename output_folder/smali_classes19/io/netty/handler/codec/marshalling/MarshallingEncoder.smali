.class public Lio/netty/handler/codec/marshalling/MarshallingEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "MarshallingEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final LENGTH_PLACEHOLDER:[B


# instance fields
.field private final provider:Lio/netty/handler/codec/marshalling/MarshallerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lio/netty/handler/codec/marshalling/MarshallingEncoder;->LENGTH_PLACEHOLDER:[B

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/marshalling/MarshallerProvider;)V
    .locals 0
    .param p1, "provider"    # Lio/netty/handler/codec/marshalling/MarshallerProvider;

    .line 48
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    .line 49
    iput-object p1, p0, Lio/netty/handler/codec/marshalling/MarshallingEncoder;->provider:Lio/netty/handler/codec/marshalling/MarshallerProvider;

    .line 50
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/netty/handler/codec/marshalling/MarshallingEncoder;->provider:Lio/netty/handler/codec/marshalling/MarshallerProvider;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/marshalling/MarshallerProvider;->getMarshaller(Lio/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Marshaller;

    move-result-object v0

    .line 55
    .local v0, "marshaller":Lorg/jboss/marshalling/Marshaller;
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 56
    .local v1, "lengthPos":I
    sget-object v2, Lio/netty/handler/codec/marshalling/MarshallingEncoder;->LENGTH_PLACEHOLDER:[B

    invoke-virtual {p3, v2}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 57
    new-instance v2, Lio/netty/handler/codec/marshalling/ChannelBufferByteOutput;

    invoke-direct {v2, p3}, Lio/netty/handler/codec/marshalling/ChannelBufferByteOutput;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 58
    .local v2, "output":Lio/netty/handler/codec/marshalling/ChannelBufferByteOutput;
    invoke-interface {v0, v2}, Lorg/jboss/marshalling/Marshaller;->start(Lorg/jboss/marshalling/ByteOutput;)V

    .line 59
    invoke-interface {v0, p2}, Lorg/jboss/marshalling/Marshaller;->writeObject(Ljava/lang/Object;)V

    .line 60
    invoke-interface {v0}, Lorg/jboss/marshalling/Marshaller;->finish()V

    .line 61
    invoke-interface {v0}, Lorg/jboss/marshalling/Marshaller;->close()V

    .line 63
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p3, v1, v3}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 64
    return-void
.end method
