.class public Lio/netty/handler/codec/http/HttpResponseDecoder;
.super Lio/netty/handler/codec/http/HttpObjectDecoder;
.source "HttpResponseDecoder.java"


# static fields
.field private static final UNKNOWN_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x3e7

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseDecoder;->UNKNOWN_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZ)V

    .line 102
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "validateHeaders"    # Z

    .line 106
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZ)V

    .line 107
    return-void
.end method

.method public constructor <init>(IIIZI)V
    .locals 7
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "validateHeaders"    # Z
    .param p5, "initialBufferSize"    # I

    .line 112
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZI)V

    .line 113
    return-void
.end method


# virtual methods
.method protected createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;
    .locals 4

    .line 124
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseDecoder;->UNKNOWN_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;

    iget-boolean v3, p0, Lio/netty/handler/codec/http/HttpResponseDecoder;->validateHeaders:Z

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Z)V

    return-object v0
.end method

.method protected createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 4
    .param p1, "initialLine"    # [Ljava/lang/String;

    .line 117
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpResponse;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 118
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v2, v3}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    iget-boolean v3, p0, Lio/netty/handler/codec/http/HttpResponseDecoder;->validateHeaders:Z

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Z)V

    .line 117
    return-object v0
.end method

.method protected isDecodingRequest()Z
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method
