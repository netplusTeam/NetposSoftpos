.class Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;
.super Ljava/lang/Object;
.source "PerMessageDeflateServerExtensionHandshaker.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermessageDeflateExtension"
.end annotation


# instance fields
.field private final clientNoContext:Z

.field private final clientWindowSize:I

.field private final compressionLevel:I

.field private final extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

.field private final serverNoContext:Z

.field private final serverWindowSize:I


# direct methods
.method constructor <init>(IZIZILio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V
    .locals 0
    .param p1, "compressionLevel"    # I
    .param p2, "serverNoContext"    # Z
    .param p3, "serverWindowSize"    # I
    .param p4, "clientNoContext"    # Z
    .param p5, "clientWindowSize"    # I
    .param p6, "extensionFilterProvider"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->compressionLevel:I

    .line 191
    iput-boolean p2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->serverNoContext:Z

    .line 192
    iput p3, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->serverWindowSize:I

    .line 193
    iput-boolean p4, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->clientNoContext:Z

    .line 194
    iput p5, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->clientWindowSize:I

    .line 195
    iput-object p6, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 196
    return-void
.end method


# virtual methods
.method public newExtensionDecoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;
    .locals 3

    .line 211
    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->clientNoContext:Z

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    invoke-interface {v2}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;->decoderFilter()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;-><init>(ZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V

    return-object v0
.end method

.method public newExtensionEncoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;
    .locals 5

    .line 205
    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateEncoder;

    iget v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->compressionLevel:I

    iget v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->serverWindowSize:I

    iget-boolean v3, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->serverNoContext:Z

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 206
    invoke-interface {v4}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;->encoderFilter()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateEncoder;-><init>(IIZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V

    .line 205
    return-object v0
.end method

.method public newReponseData()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    .locals 4

    .line 216
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 217
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->serverNoContext:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "server_no_context_takeover"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->clientNoContext:Z

    if-eqz v1, :cond_1

    .line 221
    const-string v1, "client_no_context_takeover"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    iget v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->serverWindowSize:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "server_max_window_bits"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_2
    iget v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;->clientWindowSize:I

    if-eq v1, v2, :cond_3

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_max_window_bits"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    const-string v2, "permessage-deflate"

    invoke-direct {v1, v2, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public rsv()I
    .locals 1

    .line 200
    const/4 v0, 0x4

    return v0
.end method
