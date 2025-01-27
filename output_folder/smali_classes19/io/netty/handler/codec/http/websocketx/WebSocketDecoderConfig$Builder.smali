.class public final Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;
.super Ljava/lang/Object;
.source "WebSocketDecoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowExtensions:Z

.field private allowMaskMismatch:Z

.field private closeOnProtocolViolation:Z

.field private expectMaskedFrames:Z

.field private maxFramePayloadLength:I

.field private withUTF8Validator:Z


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 1
    .param p1, "decoderConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string v0, "decoderConfig"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->maxFramePayloadLength()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->maxFramePayloadLength:I

    .line 122
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->expectMaskedFrames()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->expectMaskedFrames:Z

    .line 123
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->allowMaskMismatch()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowMaskMismatch:Z

    .line 124
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->allowExtensions()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowExtensions:Z

    .line 125
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->closeOnProtocolViolation()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->closeOnProtocolViolation:Z

    .line 126
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->withUTF8Validator()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->withUTF8Validator:Z

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;
    .param p2, "x1"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$1;

    .line 111
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    return-void
.end method


# virtual methods
.method public allowExtensions(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;
    .locals 0
    .param p1, "allowExtensions"    # Z

    .line 145
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowExtensions:Z

    .line 146
    return-object p0
.end method

.method public allowMaskMismatch(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;
    .locals 0
    .param p1, "allowMaskMismatch"    # Z

    .line 140
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowMaskMismatch:Z

    .line 141
    return-object p0
.end method

.method public build()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;
    .locals 9

    .line 160
    new-instance v8, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    iget v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->maxFramePayloadLength:I

    iget-boolean v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->expectMaskedFrames:Z

    iget-boolean v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowMaskMismatch:Z

    iget-boolean v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowExtensions:Z

    iget-boolean v5, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->closeOnProtocolViolation:Z

    iget-boolean v6, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->withUTF8Validator:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;-><init>(IZZZZZLio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$1;)V

    return-object v8
.end method

.method public closeOnProtocolViolation(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;
    .locals 0
    .param p1, "closeOnProtocolViolation"    # Z

    .line 150
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->closeOnProtocolViolation:Z

    .line 151
    return-object p0
.end method

.method public expectMaskedFrames(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;
    .locals 0
    .param p1, "expectMaskedFrames"    # Z

    .line 135
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->expectMaskedFrames:Z

    .line 136
    return-object p0
.end method

.method public maxFramePayloadLength(I)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;
    .locals 0
    .param p1, "maxFramePayloadLength"    # I

    .line 130
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->maxFramePayloadLength:I

    .line 131
    return-object p0
.end method

.method public withUTF8Validator(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;
    .locals 0
    .param p1, "withUTF8Validator"    # Z

    .line 155
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->withUTF8Validator:Z

    .line 156
    return-object p0
.end method
