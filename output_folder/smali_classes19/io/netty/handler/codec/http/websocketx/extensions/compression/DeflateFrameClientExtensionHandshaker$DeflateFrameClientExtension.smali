.class Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;
.super Ljava/lang/Object;
.source "DeflateFrameClientExtensionHandshaker.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeflateFrameClientExtension"
.end annotation


# instance fields
.field private final compressionLevel:I

.field private final extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;


# direct methods
.method constructor <init>(ILio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V
    .locals 0
    .param p1, "compressionLevel"    # I
    .param p2, "extensionFilterProvider"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;->compressionLevel:I

    .line 104
    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 105
    return-void
.end method


# virtual methods
.method public newExtensionDecoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;
    .locals 3

    .line 120
    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerFrameDeflateDecoder;

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    invoke-interface {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;->decoderFilter()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerFrameDeflateDecoder;-><init>(ZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V

    return-object v0
.end method

.method public newExtensionEncoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;
    .locals 5

    .line 114
    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerFrameDeflateEncoder;

    iget v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;->compressionLevel:I

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 115
    invoke-interface {v2}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;->encoderFilter()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerFrameDeflateEncoder;-><init>(IIZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V

    .line 114
    return-object v0
.end method

.method public rsv()I
    .locals 1

    .line 109
    const/4 v0, 0x4

    return v0
.end method
