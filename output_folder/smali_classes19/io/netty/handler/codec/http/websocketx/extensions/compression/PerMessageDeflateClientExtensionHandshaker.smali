.class public final Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;
.super Ljava/lang/Object;
.source "PerMessageDeflateClientExtensionHandshaker.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker$PermessageDeflateExtension;
    }
.end annotation


# instance fields
.field private final allowClientNoContext:Z

.field private final allowClientWindowSize:Z

.field private final compressionLevel:I

.field private final extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

.field private final requestedServerNoContext:Z

.field private final requestedServerWindowSize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 50
    invoke-static {}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->isSupportingWindowSizeAndMemLevel()Z

    move-result v2

    const/4 v1, 0x6

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;-><init>(IZIZZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(IZIZZ)V
    .locals 7
    .param p1, "compressionLevel"    # I
    .param p2, "allowClientWindowSize"    # Z
    .param p3, "requestedServerWindowSize"    # I
    .param p4, "allowClientNoContext"    # Z
    .param p5, "requestedServerNoContext"    # Z

    .line 73
    sget-object v6, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;->DEFAULT:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;-><init>(IZIZZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V

    .line 75
    return-void
.end method

.method public constructor <init>(IZIZZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "allowClientWindowSize"    # Z
    .param p3, "requestedServerWindowSize"    # I
    .param p4, "allowClientNoContext"    # Z
    .param p5, "requestedServerNoContext"    # Z
    .param p6, "extensionFilterProvider"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/16 v0, 0xf

    if-gt p3, v0, :cond_1

    const/16 v0, 0x8

    if-lt p3, v0, :cond_1

    .line 105
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 109
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->compressionLevel:I

    .line 110
    iput-boolean p2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->allowClientWindowSize:Z

    .line 111
    iput p3, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->requestedServerWindowSize:I

    .line 112
    iput-boolean p4, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->allowClientNoContext:Z

    .line 113
    iput-boolean p5, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->requestedServerNoContext:Z

    .line 114
    const-string v0, "extensionFilterProvider"

    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    .line 115
    return-void

    .line 106
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

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestedServerWindowSize: "

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

.method static synthetic access$000(Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;

    .line 37
    iget v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->compressionLevel:I

    return v0
.end method


# virtual methods
.method public handshakeExtension(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;)Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;
    .locals 14
    .param p1, "extensionData"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    .line 137
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "permessage-deflate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return-object v1

    .line 141
    :cond_0
    const/4 v0, 0x1

    .line 142
    .local v0, "succeed":Z
    const/16 v2, 0xf

    .line 143
    .local v2, "clientWindowSize":I
    const/16 v3, 0xf

    .line 144
    .local v3, "serverWindowSize":I
    const/4 v4, 0x0

    .line 145
    .local v4, "serverNoContext":Z
    const/4 v5, 0x0

    .line 147
    .local v5, "clientNoContext":Z
    nop

    .line 148
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->parameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 149
    .local v6, "parametersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 150
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 152
    .local v7, "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "client_max_window_bits"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 154
    iget-boolean v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->allowClientWindowSize:Z

    if-eqz v8, :cond_1

    .line 155
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    :cond_2
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "server_max_window_bits"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 161
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 162
    const/16 v8, 0xf

    if-gt v2, v8, :cond_3

    const/16 v8, 0x8

    if-ge v2, v8, :cond_9

    .line 163
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 165
    :cond_4
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "client_no_context_takeover"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 167
    iget-boolean v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->allowClientNoContext:Z

    if-eqz v8, :cond_5

    .line 168
    const/4 v5, 0x1

    goto :goto_1

    .line 170
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 172
    :cond_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "server_no_context_takeover"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 174
    iget-boolean v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->requestedServerNoContext:Z

    if-eqz v8, :cond_7

    .line 175
    const/4 v4, 0x1

    goto :goto_1

    .line 177
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 181
    :cond_8
    const/4 v0, 0x0

    .line 183
    .end local v7    # "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    :goto_1
    goto :goto_0

    .line 185
    :cond_a
    iget-boolean v7, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->requestedServerNoContext:Z

    if-eqz v7, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    iget v7, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->requestedServerWindowSize:I

    if-eq v7, v3, :cond_d

    .line 187
    :cond_c
    const/4 v0, 0x0

    .line 190
    :cond_d
    if-eqz v0, :cond_e

    .line 191
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker$PermessageDeflateExtension;

    iget-object v13, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->extensionFilterProvider:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;

    move-object v7, v1

    move-object v8, p0

    move v9, v4

    move v10, v3

    move v11, v5

    move v12, v2

    invoke-direct/range {v7 .. v13}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker$PermessageDeflateExtension;-><init>(Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;ZIZILio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;)V

    return-object v1

    .line 194
    :cond_e
    return-object v1
.end method

.method public newRequestData()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    .locals 4

    .line 119
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 120
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->requestedServerWindowSize:I

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 121
    const-string v1, "server_no_context_takeover"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->allowClientNoContext:Z

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "client_no_context_takeover"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    iget v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->requestedServerWindowSize:I

    if-eq v1, v2, :cond_2

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "server_max_window_bits"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_2
    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;->allowClientWindowSize:Z

    if-eqz v1, :cond_3

    .line 130
    const-string v1, "client_max_window_bits"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    const-string v2, "permessage-deflate"

    invoke-direct {v1, v2, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method
