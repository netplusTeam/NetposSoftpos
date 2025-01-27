.class final Lio/netty/handler/codec/http/LastHttpContent$1;
.super Ljava/lang/Object;
.source "LastHttpContent.java"

# interfaces
.implements Lio/netty/handler/codec/http/LastHttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/LastHttpContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 34
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->copy()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->copy()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 39
    sget-object v0, Lio/netty/handler/codec/http/LastHttpContent$1;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    return-object v0
.end method

.method public decoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1

    .line 64
    sget-object v0, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->duplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->duplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 44
    return-object p0
.end method

.method public getDecoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public refCnt()I
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public release()Z
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/LastHttpContent$1;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/LastHttpContent$1;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 49
    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/LastHttpContent$1;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/LastHttpContent$1;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 85
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0
    .param p1, "increment"    # I

    .line 90
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/LastHttpContent$1;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 54
    return-object p0
.end method

.method public setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
    .locals 2
    .param p1, "result"    # Lio/netty/handler/codec/DecoderResult;

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "EmptyLastHttpContent"

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->touch()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/LastHttpContent$1;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->touch()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/LastHttpContent$1;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 95
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 100
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/LastHttpContent$1;->touch()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/LastHttpContent$1;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 59
    sget-object v0, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    return-object v0
.end method
