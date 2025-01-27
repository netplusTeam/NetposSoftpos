.class public final Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;
.super Ljava/lang/Object;
.source "DeflateFrameServerExtensionHandshaker.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker$DeflateFrameServerExtension;
    }
.end annotation


# static fields
.field static final DEFLATE_FRAME_EXTENSION:Ljava/lang/String; = "deflate-frame"

.field static final X_WEBKIT_DEFLATE_FRAME_EXTENSION:Ljava/lang/String; = "x-webkit-deflate-frame"


# instance fields
.field private final compressionLevel:I

.field private final extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "compressionLevel"    # I

    .line 55
    sget-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;->DEFAULT:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;-><init>(ILio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V

    .line 56
    return-void
.end method

.method public constructor <init>(ILio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "extensionFilterProvider"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 72
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;->compressionLevel:I

    .line 73
    const-string v0, "extensionFilterProvider"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 74
    return-void

    .line 69
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


# virtual methods
.method public handshakeExtension(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;)Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    .locals 4
    .param p1, "extensionData"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    .line 78
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-webkit-deflate-frame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "deflate-frame"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    return-object v1

    .line 83
    :cond_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->parameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker$DeflateFrameServerExtension;

    iget v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;->compressionLevel:I

    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker$DeflateFrameServerExtension;-><init>(ILjava/lang/String;Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V

    return-object v0

    .line 86
    :cond_1
    return-object v1
.end method
