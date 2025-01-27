.class public final Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;
.super Ljava/lang/Object;
.source "PerMessageDeflateServerExtensionHandshaker.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;
    }
.end annotation


# static fields
.field static final CLIENT_MAX_WINDOW:Ljava/lang/String; = "client_max_window_bits"

.field static final CLIENT_NO_CONTEXT:Ljava/lang/String; = "client_no_context_takeover"

.field public static final MAX_WINDOW_SIZE:I = 0xf

.field public static final MIN_WINDOW_SIZE:I = 0x8

.field static final PERMESSAGE_DEFLATE_EXTENSION:Ljava/lang/String; = "permessage-deflate"

.field static final SERVER_MAX_WINDOW:Ljava/lang/String; = "server_max_window_bits"

.field static final SERVER_NO_CONTEXT:Ljava/lang/String; = "server_no_context_takeover"


# instance fields
.field private final allowServerNoContext:Z

.field private final allowServerWindowSize:Z

.field private final compressionLevel:I

.field private final extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

.field private final preferredClientNoContext:Z

.field private final preferredClientWindowSize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 58
    invoke-static {}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->isSupportingWindowSizeAndMemLevel()Z

    move-result v2

    const/4 v1, 0x6

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;-><init>(IZIZZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(IZIZZ)V
    .locals 7
    .param p1, "compressionLevel"    # I
    .param p2, "allowServerWindowSize"    # Z
    .param p3, "preferredClientWindowSize"    # I
    .param p4, "allowServerNoContext"    # Z
    .param p5, "preferredClientNoContext"    # Z

    .line 81
    sget-object v6, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;->DEFAULT:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;-><init>(IZIZZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V

    .line 83
    return-void
.end method

.method public constructor <init>(IZIZZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "allowServerWindowSize"    # Z
    .param p3, "preferredClientWindowSize"    # I
    .param p4, "allowServerNoContext"    # Z
    .param p5, "preferredClientNoContext"    # Z
    .param p6, "extensionFilterProvider"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/16 v0, 0xf

    if-gt p3, v0, :cond_1

    const/16 v0, 0x8

    if-lt p3, v0, :cond_1

    .line 112
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 116
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->compressionLevel:I

    .line 117
    iput-boolean p2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->allowServerWindowSize:Z

    .line 118
    iput p3, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->preferredClientWindowSize:I

    .line 119
    iput-boolean p4, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->allowServerNoContext:Z

    .line 120
    iput-boolean p5, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->preferredClientNoContext:Z

    .line 121
    const-string v0, "extensionFilterProvider"

    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 122
    return-void

    .line 113
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

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferredServerWindowSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 8-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public handshakeExtension(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;)Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    .locals 14
    .param p1, "extensionData"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    .line 126
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "permessage-deflate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return-object v1

    .line 130
    :cond_0
    const/4 v0, 0x1

    .line 131
    .local v0, "deflateEnabled":Z
    const/16 v2, 0xf

    .line 132
    .local v2, "clientWindowSize":I
    const/16 v3, 0xf

    .line 133
    .local v3, "serverWindowSize":I
    const/4 v4, 0x0

    .line 134
    .local v4, "serverNoContext":Z
    const/4 v5, 0x0

    .line 136
    .local v5, "clientNoContext":Z
    nop

    .line 137
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->parameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 138
    .local v6, "parametersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 139
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 141
    .local v7, "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "client_max_window_bits"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 143
    iget v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->preferredClientWindowSize:I

    goto :goto_1

    .line 144
    :cond_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "server_max_window_bits"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 146
    iget-boolean v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->allowServerWindowSize:Z

    if-eqz v8, :cond_3

    .line 147
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 148
    const/16 v8, 0xf

    if-gt v3, v8, :cond_2

    const/16 v8, 0x8

    if-ge v3, v8, :cond_8

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 152
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 154
    :cond_4
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "client_no_context_takeover"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 156
    iget-boolean v5, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->preferredClientNoContext:Z

    goto :goto_1

    .line 157
    :cond_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "server_no_context_takeover"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 159
    iget-boolean v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->allowServerNoContext:Z

    if-eqz v8, :cond_6

    .line 160
    const/4 v4, 0x1

    goto :goto_1

    .line 162
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 166
    :cond_7
    const/4 v0, 0x0

    .line 168
    .end local v7    # "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    :goto_1
    goto :goto_0

    .line 170
    :cond_9
    if-eqz v0, :cond_a

    .line 171
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;

    iget v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->compressionLevel:I

    iget-object v13, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    move-object v7, v1

    move v9, v4

    move v10, v3

    move v11, v5

    move v12, v2

    invoke-direct/range {v7 .. v13}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker$PermessageDeflateExtension;-><init>(IZIZILio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V

    return-object v1

    .line 174
    :cond_a
    return-object v1
.end method
