.class public Lio/netty/handler/codec/http/DefaultFullHttpRequest;
.super Lio/netty/handler/codec/http/DefaultHttpRequest;
.source "DefaultFullHttpRequest.java"

# interfaces
.implements Lio/netty/handler/codec/http/FullHttpRequest;


# instance fields
.field private final content:Lio/netty/buffer/ByteBuf;

.field private hash:I

.field private final trailingHeader:Lio/netty/handler/codec/http/HttpHeaders;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lio/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lio/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "content"    # Lio/netty/buffer/ByteBuf;

    .line 40
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 1
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lio/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "content"    # Lio/netty/buffer/ByteBuf;
    .param p5, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "trailingHeader"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 56
    invoke-direct {p0, p1, p2, p3, p5}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 57
    const-string v0, "content"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    .line 58
    const-string v0, "trailingHeader"

    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpHeaders;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->trailingHeader:Lio/netty/handler/codec/http/HttpHeaders;

    .line 59
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)V
    .locals 1
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lio/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "content"    # Lio/netty/buffer/ByteBuf;
    .param p5, "validateHeaders"    # Z

    .line 49
    invoke-direct {p0, p1, p2, p3, p5}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V

    .line 50
    const-string v0, "content"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    .line 51
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v0, p5}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->trailingHeader:Lio/netty/handler/codec/http/HttpHeaders;

    .line 52
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lio/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "validateHeaders"    # Z

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->copy()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->copy()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->copy()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->copy()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->duplicate()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->duplicate()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->duplicate()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->duplicate()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 174
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    return v1

    .line 178
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    .line 180
    .local v0, "other":Lio/netty/handler/codec/http/DefaultFullHttpRequest;
    invoke-super {p0, v0}, Lio/netty/handler/codec/http/DefaultHttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 180
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 153
    iget v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->hash:I

    .line 154
    .local v0, "hash":I
    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->hashCode()I

    move-result v1
    :try_end_0
    .catch Lio/netty/util/IllegalReferenceCountException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1f

    .end local v0    # "hash":I
    .local v1, "hash":I
    goto :goto_0

    .line 158
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    :catch_0
    move-exception v1

    .line 160
    .local v1, "ignored":Lio/netty/util/IllegalReferenceCountException;
    const/16 v1, 0x1f

    .line 161
    .end local v0    # "hash":I
    .local v1, "hash":I
    :goto_0
    goto :goto_1

    .line 163
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    :cond_0
    const/16 v1, 0x1f

    .line 165
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :goto_1
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Lio/netty/handler/codec/http/DefaultHttpRequest;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 167
    iput v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->hash:I

    .line 169
    :cond_1
    return v0
.end method

.method public refCnt()I
    .locals 1

    .line 73
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 107
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->release(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 8
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 145
    new-instance v7, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->uri()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->copy()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->copy()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 147
    .local v0, "request":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/FullHttpRequest;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 148
    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain(I)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain(I)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 79
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 1
    .param p1, "increment"    # I

    .line 84
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    .line 85
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain(I)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain(I)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retain(I)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public setMethod(Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 0
    .param p1, "method"    # Lio/netty/handler/codec/http/HttpMethod;

    .line 118
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpRequest;->setMethod(Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/HttpRequest;

    .line 119
    return-object p0
.end method

.method public bridge synthetic setMethod(Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/HttpRequest;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->setMethod(Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 0
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;

    .line 112
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpRequest;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpRequest;

    .line 113
    return-object p0
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpRequest;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public setUri(Ljava/lang/String;)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 124
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpRequest;->setUri(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;

    .line 125
    return-object p0
.end method

.method public bridge synthetic setUri(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->setUri(Ljava/lang/String;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendFullRequest(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpRequest;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    .line 91
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    .line 97
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->trailingHeader:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method
