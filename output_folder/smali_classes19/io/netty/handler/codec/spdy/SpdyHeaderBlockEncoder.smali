.class abstract Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;
.super Ljava/lang/Object;
.source "SpdyHeaderBlockEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(Lio/netty/handler/codec/spdy/SpdyVersion;III)Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;
    .locals 2
    .param p0, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I

    .line 27
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;III)V

    return-object v0
.end method


# virtual methods
.method abstract encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract end()V
.end method
