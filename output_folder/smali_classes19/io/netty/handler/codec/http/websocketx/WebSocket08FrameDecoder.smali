.class public Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "WebSocket08FrameDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    }
.end annotation


# static fields
.field private static final OPCODE_BINARY:B = 0x2t

.field private static final OPCODE_CLOSE:B = 0x8t

.field private static final OPCODE_CONT:B = 0x0t

.field private static final OPCODE_PING:B = 0x9t

.field private static final OPCODE_PONG:B = 0xat

.field private static final OPCODE_TEXT:B = 0x1t

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

.field private fragmentedFramesCount:I

.field private frameFinalFlag:Z

.field private frameMasked:Z

.field private frameOpcode:I

.field private framePayloadLen1:I

.field private framePayloadLength:J

.field private frameRsv:I

.field private maskingKey:[B

.field private receivedClosingHandshake:Z

.field private state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 1
    .param p1, "decoderConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 156
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 107
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_FIRST:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    .line 157
    const-string v0, "decoderConfig"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 158
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1
    .param p1, "expectMaskedFrames"    # Z
    .param p2, "allowExtensions"    # Z
    .param p3, "maxFramePayloadLength"    # I

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;-><init>(ZZIZ)V

    .line 123
    return-void
.end method

.method public constructor <init>(ZZIZ)V
    .locals 1
    .param p1, "expectMaskedFrames"    # Z
    .param p2, "allowExtensions"    # Z
    .param p3, "maxFramePayloadLength"    # I
    .param p4, "allowMaskMismatch"    # Z

    .line 142
    invoke-static {}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->newBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->expectMaskedFrames(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowExtensions(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->maxFramePayloadLength(I)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p4}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowMaskMismatch(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->build()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    .line 148
    return-void
.end method

.method private protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "ex"    # Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;

    .line 430
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->CORRUPT:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    .line 431
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 432
    .local v0, "readableBytes":I
    if-lez v0, :cond_0

    .line 435
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 437
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->closeOnProtocolViolation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    if-nez v1, :cond_2

    .line 442
    invoke-virtual {p3}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;->closeStatus()Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    move-result-object v1

    .line 443
    .local v1, "closeStatus":Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    invoke-virtual {p3}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "reasonText":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 445
    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->reasonText()Ljava/lang/String;

    move-result-object v2

    .line 447
    :cond_1
    new-instance v3, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    invoke-direct {v3, v1, v2}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    .local v3, "closeMessage":Ljava/lang/Object;
    goto :goto_0

    .line 440
    .end local v1    # "closeStatus":Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .end local v2    # "reasonText":Ljava/lang/String;
    .end local v3    # "closeMessage":Ljava/lang/Object;
    :cond_2
    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 449
    .restart local v3    # "closeMessage":Ljava/lang/Object;
    :goto_0
    invoke-interface {p1, v3}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    sget-object v2, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 451
    .end local v3    # "closeMessage":Ljava/lang/Object;
    :cond_3
    throw p3
.end method

.method private protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "status"    # Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .param p4, "reason"    # Ljava/lang/String;

    .line 426
    new-instance v0, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;

    invoke-direct {v0, p3, p4}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;)V

    .line 427
    return-void
.end method

.method private protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "reason"    # Ljava/lang/String;

    .line 422
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    invoke-direct {p0, p1, p2, v0, p3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private static toFrameLength(J)I
    .locals 3
    .param p0, "l"    # J

    .line 455
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 458
    long-to-int v0, p0

    return v0

    .line 456
    :cond_0
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unmask(Lio/netty/buffer/ByteBuf;)V
    .locals 7
    .param p1, "frame"    # Lio/netty/buffer/ByteBuf;

    .line 394
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 395
    .local v0, "i":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 397
    .local v1, "end":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 401
    .local v2, "order":Ljava/nio/ByteOrder;
    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 408
    .local v3, "intMask":I
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v4, :cond_0

    .line 409
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    .line 412
    :cond_0
    :goto_0
    add-int/lit8 v4, v0, 0x3

    if-ge v4, v1, :cond_1

    .line 413
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v4

    xor-int/2addr v4, v3

    .line 414
    .local v4, "unmasked":I
    invoke-virtual {p1, v0, v4}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 412
    .end local v4    # "unmasked":I
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 416
    :cond_1
    :goto_1
    if-ge v0, v1, :cond_2

    .line 417
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    iget-object v5, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    rem-int/lit8 v6, v0, 0x4

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    invoke-virtual {p1, v0, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkCloseFrameBody(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 465
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 468
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 469
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INVALID_PAYLOAD_DATA:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const-string v1, "Invalid close frame body"

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    .line 473
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 474
    .local v0, "idx":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 477
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readShort()S

    move-result v1

    .line 478
    .local v1, "statusCode":I
    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->isValidStatusCode(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid close frame getStatus code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 483
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    :try_start_0
    new-instance v2, Lio/netty/handler/codec/http/websocketx/Utf8Validator;

    invoke-direct {v2}, Lio/netty/handler/codec/http/websocketx/Utf8Validator;-><init>()V

    invoke-virtual {v2, p2}, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->check(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_0

    .line 486
    :catch_0
    move-exception v2

    .line 487
    .local v2, "ex":Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;
    invoke-direct {p0, p1, p2, v2}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;)V

    .line 492
    .end local v2    # "ex":Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;
    :cond_3
    :goto_0
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 493
    return-void

    .line 466
    .end local v0    # "idx":I
    .end local v1    # "statusCode":I
    :cond_4
    :goto_1
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 18
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->actualReadableBytes()I

    move-result v0

    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 165
    return-void

    .line 168
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$1;->$SwitchMap$io$netty$handler$codec$http$websocketx$WebSocket08FrameDecoder$State:[I

    iget-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->ordinal()I

    move-result v5

    aget v0, v0, v5

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    .line 389
    new-instance v0, Ljava/lang/Error;

    const-string v5, "Shouldn\'t reach here."

    invoke-direct {v0, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 387
    :cond_1
    return-void

    .line 170
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    return-void

    .line 174
    :cond_2
    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    .line 177
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 178
    .local v0, "b":B
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_3

    move v12, v11

    goto :goto_0

    :cond_3
    move v12, v6

    :goto_0
    iput-boolean v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    .line 179
    and-int/lit8 v12, v0, 0x70

    shr-int/2addr v12, v7

    iput v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    .line 180
    and-int/lit8 v12, v0, 0xf

    iput v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    .line 182
    sget-object v12, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v12}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 183
    iget v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Decoding WebSocket Frame opCode={}"

    invoke-interface {v12, v14, v13}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    :cond_4
    sget-object v12, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_SECOND:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    .line 188
    .end local v0    # "b":B
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 189
    return-void

    .line 192
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 193
    .restart local v0    # "b":B
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_6

    move v12, v11

    goto :goto_1

    :cond_6
    move v12, v6

    :goto_1
    iput-boolean v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameMasked:Z

    .line 194
    and-int/lit8 v12, v0, 0x7f

    iput v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLen1:I

    .line 196
    iget v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    if-eqz v12, :cond_7

    iget-object v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v12}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->allowExtensions()Z

    move-result v12

    if-nez v12, :cond_7

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSV != 0 and no extension negotiated, RSV:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_7
    iget-object v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v12}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->allowMaskMismatch()Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v12}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->expectMaskedFrames()Z

    move-result v12

    iget-boolean v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameMasked:Z

    if-eq v12, v13, :cond_8

    .line 202
    const-string v5, "received a frame that is not masked as expected"

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 203
    return-void

    .line 206
    :cond_8
    iget v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v13, 0x7

    if-le v12, v13, :cond_c

    .line 209
    iget-boolean v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    if-nez v13, :cond_9

    .line 210
    const-string v5, "fragmented control frame"

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 211
    return-void

    .line 215
    :cond_9
    iget v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLen1:I

    const/16 v14, 0x7d

    if-le v13, v14, :cond_a

    .line 216
    const-string v5, "control frame with payload length > 125 octets"

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 217
    return-void

    .line 221
    :cond_a
    if-eq v12, v10, :cond_b

    if-eq v12, v9, :cond_b

    if-eq v12, v5, :cond_b

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "control frame using reserved opcode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 224
    return-void

    .line 230
    :cond_b
    if-ne v12, v10, :cond_f

    if-ne v13, v11, :cond_f

    .line 231
    const-string v5, "received close control frame with payload len 1"

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 232
    return-void

    .line 236
    :cond_c
    if-eqz v12, :cond_d

    if-eq v12, v11, :cond_d

    if-eq v12, v8, :cond_d

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data frame using reserved opcode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 239
    return-void

    .line 243
    :cond_d
    iget v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    if-nez v13, :cond_e

    if-nez v12, :cond_e

    .line 244
    const-string v5, "received continuation data frame outside fragmented message"

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 245
    return-void

    .line 249
    :cond_e
    if-eqz v13, :cond_f

    if-eqz v12, :cond_f

    if-eq v12, v9, :cond_f

    .line 250
    const-string v5, "received non-continuation data frame while inside fragmented message"

    invoke-direct {v1, v2, v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 252
    return-void

    .line 256
    :cond_f
    sget-object v12, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_SIZE:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    .line 260
    .end local v0    # "b":B
    :pswitch_3
    iget v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLen1:I

    const/16 v12, 0x7e

    const-string v13, "invalid data frame length (not using minimal length encoding)"

    if-ne v0, v12, :cond_11

    .line 261
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v8, :cond_10

    .line 262
    return-void

    .line 264
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    int-to-long v14, v0

    iput-wide v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    .line 265
    const-wide/16 v16, 0x7e

    cmp-long v0, v14, v16

    if-gez v0, :cond_14

    .line 266
    invoke-direct {v1, v2, v3, v13}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 267
    return-void

    .line 269
    :cond_11
    const/16 v12, 0x7f

    if-ne v0, v12, :cond_13

    .line 270
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v10, :cond_12

    .line 271
    return-void

    .line 273
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readLong()J

    move-result-wide v14

    iput-wide v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    .line 277
    const-wide/32 v16, 0x10000

    cmp-long v0, v14, v16

    if-gez v0, :cond_14

    .line 278
    invoke-direct {v1, v2, v3, v13}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 279
    return-void

    .line 282
    :cond_13
    int-to-long v12, v0

    iput-wide v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    .line 285
    :cond_14
    iget-wide v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iget-object v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->maxFramePayloadLength()I

    move-result v0

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-lez v0, :cond_15

    .line 286
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->MESSAGE_TOO_BIG:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max frame length of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 287
    invoke-virtual {v6}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->maxFramePayloadLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been exceeded."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-direct {v1, v2, v3, v0, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    .line 288
    return-void

    .line 291
    :cond_15
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 292
    iget-wide v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "Decoding WebSocket Frame length={}"

    invoke-interface {v0, v13, v12}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    :cond_16
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->MASKING_KEY:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    .line 297
    :pswitch_4
    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameMasked:Z

    if-eqz v0, :cond_19

    .line 298
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v7, :cond_17

    .line 299
    return-void

    .line 301
    :cond_17
    iget-object v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    if-nez v0, :cond_18

    .line 302
    new-array v0, v7, [B

    iput-object v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    .line 304
    :cond_18
    iget-object v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 306
    :cond_19
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->PAYLOAD:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    .line 308
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v12, v0

    iget-wide v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    cmp-long v0, v12, v14

    if-gez v0, :cond_1a

    .line 309
    return-void

    .line 312
    :cond_1a
    const/4 v7, 0x0

    .line 314
    .local v7, "payloadBuffer":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget-wide v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-static {v12, v13}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->toFrameLength(J)I

    move-result v12

    invoke-static {v0, v3, v12}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v7, v0

    .line 318
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_FIRST:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    .line 321
    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameMasked:Z

    if-eqz v0, :cond_1b

    .line 322
    invoke-direct {v1, v7}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->unmask(Lio/netty/buffer/ByteBuf;)V

    .line 327
    :cond_1b
    iget v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v0, v9, :cond_1d

    .line 328
    new-instance v0, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v5, v6, v7}, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    const/4 v0, 0x0

    .line 377
    .end local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .local v0, "payloadBuffer":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_1c

    .line 378
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 330
    :cond_1c
    return-void

    .line 332
    .end local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    :cond_1d
    if-ne v0, v5, :cond_1f

    .line 333
    :try_start_1
    new-instance v0, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v5, v6, v7}, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    const/4 v0, 0x0

    .line 377
    .end local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_1e

    .line 378
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 335
    :cond_1e
    return-void

    .line 337
    .end local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    :cond_1f
    if-ne v0, v10, :cond_21

    .line 338
    :try_start_2
    iput-boolean v11, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    .line 339
    invoke-virtual {v1, v2, v7}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkCloseFrameBody(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 340
    new-instance v0, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v5, v6, v7}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    const/4 v0, 0x0

    .line 377
    .end local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_20

    .line 378
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 342
    :cond_20
    return-void

    .line 347
    .end local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    :cond_21
    :try_start_3
    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    if-eqz v5, :cond_22

    .line 350
    if-eq v0, v9, :cond_23

    .line 351
    iput v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    goto :goto_2

    .line 355
    :cond_22
    iget v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    add-int/2addr v5, v11

    iput v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    .line 359
    :cond_23
    :goto_2
    if-ne v0, v11, :cond_25

    .line 360
    new-instance v0, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v5, v6, v7}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    const/4 v0, 0x0

    .line 377
    .end local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_24

    .line 378
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 362
    :cond_24
    return-void

    .line 363
    .end local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    :cond_25
    if-ne v0, v8, :cond_27

    .line 364
    :try_start_4
    new-instance v0, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v5, v6, v7}, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 365
    const/4 v0, 0x0

    .line 377
    .end local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_26

    .line 378
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 366
    :cond_26
    return-void

    .line 367
    .end local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    :cond_27
    if-nez v0, :cond_29

    .line 368
    :try_start_5
    new-instance v0, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v5, v6, v7}, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 370
    const/4 v0, 0x0

    .line 377
    .end local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_28

    .line 378
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 371
    :cond_28
    return-void

    .line 373
    .end local v0    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    :cond_29
    :try_start_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot decode web socket frame with opcode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 377
    .restart local v7    # "payloadBuffer":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2a

    .line 378
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 380
    :cond_2a
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
