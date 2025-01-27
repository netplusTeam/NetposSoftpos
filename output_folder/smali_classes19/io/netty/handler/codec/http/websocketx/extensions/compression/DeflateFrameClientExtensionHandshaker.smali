.class public final Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;
.super Ljava/lang/Object;
.source "DeflateFrameClientExtensionHandshaker.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;
    }
.end annotation


# instance fields
.field private final compressionLevel:I

.field private final extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

.field private final useWebkitExtensionName:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "compressionLevel"    # I
    .param p2, "useWebkitExtensionName"    # Z

    .line 54
    sget-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;->DEFAULT:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;-><init>(IZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V

    .line 55
    return-void
.end method

.method public constructor <init>(IZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "useWebkitExtensionName"    # Z
    .param p3, "extensionFilterProvider"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 71
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;->compressionLevel:I

    .line 72
    iput-boolean p2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;->useWebkitExtensionName:Z

    .line 73
    const-string v0, "extensionFilterProvider"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 74
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useWebkitExtensionName"    # Z

    .line 44
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;-><init>(IZ)V

    .line 45
    return-void
.end method


# virtual methods
.method public handshakeExtension(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;)Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;
    .locals 3
    .param p1, "extensionData"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    .line 85
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-webkit-deflate-frame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "deflate-frame"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->parameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;

    iget v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;->compressionLevel:I

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker$DeflateFrameClientExtension;-><init>(ILio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V

    return-object v0

    .line 93
    :cond_1
    return-object v1
.end method

.method public newRequestData()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    .locals 3

    .line 78
    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;->useWebkitExtensionName:Z

    if-eqz v1, :cond_0

    const-string v1, "x-webkit-deflate-frame"

    goto :goto_0

    :cond_0
    const-string v1, "deflate-frame"

    .line 80
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    return-object v0
.end method
