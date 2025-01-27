.class public Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "WebSocket08FrameEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
        ">;",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;"
    }
.end annotation


# static fields
.field private static final GATHERING_WRITE_THRESHOLD:I = 0x400

.field private static final OPCODE_BINARY:B = 0x2t

.field private static final OPCODE_CLOSE:B = 0x8t

.field private static final OPCODE_CONT:B = 0x0t

.field private static final OPCODE_PING:B = 0x9t

.field private static final OPCODE_PONG:B = 0xat

.field private static final OPCODE_TEXT:B = 0x1t

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final maskPayload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "maskPayload"    # Z

    .line 101
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 102
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    .line 103
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V
    .locals 20
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
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

    .line 107
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 111
    .local v4, "data":Lio/netty/buffer/ByteBuf;
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    move v5, v0

    .local v0, "opcode":B
    goto :goto_0

    .line 113
    .end local v0    # "opcode":B
    :cond_0
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    if-eqz v0, :cond_1

    .line 114
    const/16 v0, 0x9

    move v5, v0

    .restart local v0    # "opcode":B
    goto :goto_0

    .line 115
    .end local v0    # "opcode":B
    :cond_1
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    if-eqz v0, :cond_2

    .line 116
    const/16 v0, 0xa

    move v5, v0

    .restart local v0    # "opcode":B
    goto :goto_0

    .line 117
    .end local v0    # "opcode":B
    :cond_2
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v0, :cond_3

    .line 118
    const/16 v0, 0x8

    move v5, v0

    .restart local v0    # "opcode":B
    goto :goto_0

    .line 119
    .end local v0    # "opcode":B
    :cond_3
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-eqz v0, :cond_4

    .line 120
    const/4 v0, 0x2

    move v5, v0

    .restart local v0    # "opcode":B
    goto :goto_0

    .line 121
    .end local v0    # "opcode":B
    :cond_4
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v0, :cond_1d

    .line 122
    const/4 v0, 0x0

    move v5, v0

    .line 127
    .local v5, "opcode":B
    :goto_0
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    .line 129
    .local v6, "length":I
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 130
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Encoding WebSocket Frame opCode={} length={}"

    invoke-interface {v0, v9, v7, v8}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_5
    const/4 v0, 0x0

    .line 134
    .local v0, "b0":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->isFinalFragment()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 135
    or-int/lit16 v0, v0, 0x80

    .line 137
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv()I

    move-result v7

    rem-int/lit8 v7, v7, 0x8

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    or-int/2addr v0, v7

    .line 138
    rem-int/lit16 v7, v5, 0x80

    or-int/2addr v7, v0

    .line 140
    .end local v0    # "b0":I
    .local v7, "b0":I
    const/16 v0, 0x9

    const/16 v9, 0x7d

    if-ne v5, v0, :cond_8

    if-gt v6, v9, :cond_7

    goto :goto_1

    .line 141
    :cond_7
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid payload for PING (payload length must be <= 125, was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_8
    :goto_1
    const/4 v10, 0x1

    .line 146
    .local v10, "release":Z
    const/4 v11, 0x0

    .line 148
    .local v11, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_9

    move v13, v8

    goto :goto_2

    :cond_9
    const/4 v13, 0x0

    .line 149
    .local v13, "maskLength":I
    :goto_2
    const/16 v14, 0x400

    const/16 v15, 0xff

    if-gt v6, v9, :cond_d

    .line 150
    add-int/lit8 v9, v13, 0x2

    .line 151
    .local v9, "size":I
    if-nez v0, :cond_a

    if-gt v6, v14, :cond_b

    .line 152
    :cond_a
    add-int/2addr v9, v6

    .line 154
    :cond_b
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v9}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v11, v0

    .line 155
    invoke-virtual {v11, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 156
    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v0, :cond_c

    int-to-byte v0, v6

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_c
    int-to-byte v0, v6

    :goto_3
    int-to-byte v0, v0

    .line 157
    .local v0, "b":B
    invoke-virtual {v11, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 158
    move v14, v13

    .end local v0    # "b":B
    .end local v9    # "size":I
    goto :goto_6

    .line 229
    .end local v13    # "maskLength":I
    :catchall_0
    move-exception v0

    move/from16 v18, v5

    goto/16 :goto_a

    .line 158
    .restart local v13    # "maskLength":I
    :cond_d
    const v9, 0xffff

    if-gt v6, v9, :cond_11

    .line 159
    add-int/lit8 v9, v13, 0x4

    .line 160
    .restart local v9    # "size":I
    if-nez v0, :cond_e

    if-gt v6, v14, :cond_f

    .line 161
    :cond_e
    add-int/2addr v9, v6

    .line 163
    :cond_f
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v9}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v11, v0

    .line 164
    invoke-virtual {v11, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 165
    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v0, :cond_10

    const/16 v0, 0xfe

    goto :goto_4

    :cond_10
    const/16 v0, 0x7e

    :goto_4
    invoke-virtual {v11, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 166
    ushr-int/lit8 v0, v6, 0x8

    and-int/2addr v0, v15

    invoke-virtual {v11, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 167
    and-int/lit16 v0, v6, 0xff

    invoke-virtual {v11, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    move v14, v13

    .end local v9    # "size":I
    goto :goto_6

    .line 169
    :cond_11
    add-int/lit8 v9, v13, 0xa

    .line 170
    .restart local v9    # "size":I
    if-nez v0, :cond_12

    if-gt v6, v14, :cond_13

    .line 171
    :cond_12
    add-int/2addr v9, v6

    .line 173
    :cond_13
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v9}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v11, v0

    .line 174
    invoke-virtual {v11, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 175
    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v0, :cond_14

    move v0, v15

    goto :goto_5

    :cond_14
    const/16 v0, 0x7f

    :goto_5
    invoke-virtual {v11, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 176
    move v14, v13

    .end local v13    # "maskLength":I
    .local v14, "maskLength":I
    int-to-long v12, v6

    invoke-virtual {v11, v12, v13}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 180
    .end local v9    # "size":I
    :goto_6
    iget-boolean v9, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v9, :cond_19

    .line 181
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v16, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v12, v12, v16

    double-to-int v9, v12

    .line 182
    .local v9, "random":I
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 183
    .local v8, "mask":[B
    invoke-virtual {v11, v8}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 185
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v12

    .line 186
    .local v12, "srcOrder":Ljava/nio/ByteOrder;
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v13

    .line 188
    .local v13, "dstOrder":Ljava/nio/ByteOrder;
    const/16 v16, 0x0

    .line 189
    .local v16, "counter":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v17

    .line 190
    .local v17, "i":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v18

    move/from16 v19, v18

    .line 192
    .local v19, "end":I
    if-ne v12, v13, :cond_17

    .line 196
    const/4 v0, 0x0

    aget-byte v0, v8, v0

    and-int/2addr v0, v15

    shl-int/lit8 v0, v0, 0x18

    const/16 v18, 0x1

    aget-byte v15, v8, v18

    const/16 v1, 0xff

    and-int/2addr v15, v1

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v0, v15

    const/4 v15, 0x2

    aget-byte v15, v8, v15

    and-int/2addr v15, v1

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v0, v15

    const/4 v15, 0x3

    aget-byte v15, v8, v15

    and-int/2addr v1, v15

    or-int/2addr v0, v1

    .line 203
    .local v0, "intMask":I
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v12, v1, :cond_15

    .line 204
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    move/from16 v1, v17

    goto :goto_7

    .line 203
    :cond_15
    move/from16 v1, v17

    .line 207
    .end local v17    # "i":I
    .local v1, "i":I
    :goto_7
    add-int/lit8 v15, v1, 0x3

    move/from16 v2, v19

    .end local v19    # "end":I
    .local v2, "end":I
    if-ge v15, v2, :cond_16

    .line 208
    :try_start_4
    invoke-virtual {v4, v1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 209
    .local v15, "intData":I
    move/from16 v18, v5

    .end local v5    # "opcode":B
    .local v18, "opcode":B
    xor-int v5, v15, v0

    :try_start_5
    invoke-virtual {v11, v5}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 207
    nop

    .end local v15    # "intData":I
    add-int/lit8 v1, v1, 0x4

    move/from16 v19, v2

    move/from16 v5, v18

    move-object/from16 v2, p2

    goto :goto_7

    .end local v18    # "opcode":B
    .restart local v5    # "opcode":B
    :cond_16
    move/from16 v18, v5

    .end local v5    # "opcode":B
    .restart local v18    # "opcode":B
    goto :goto_8

    .line 192
    .end local v0    # "intMask":I
    .end local v1    # "i":I
    .end local v2    # "end":I
    .end local v18    # "opcode":B
    .restart local v5    # "opcode":B
    .restart local v17    # "i":I
    .restart local v19    # "end":I
    :cond_17
    move/from16 v18, v5

    move/from16 v2, v19

    .end local v5    # "opcode":B
    .end local v19    # "end":I
    .restart local v2    # "end":I
    .restart local v18    # "opcode":B
    move/from16 v1, v17

    .line 212
    .end local v17    # "i":I
    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v2, :cond_18

    .line 213
    invoke-virtual {v4, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    .line 214
    .local v0, "byteData":B
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "counter":I
    .local v5, "counter":I
    rem-int/lit8 v16, v16, 0x4

    aget-byte v15, v8, v16

    xor-int/2addr v15, v0

    invoke-virtual {v11, v15}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 212
    nop

    .end local v0    # "byteData":B
    add-int/lit8 v1, v1, 0x1

    move/from16 v16, v5

    goto :goto_8

    .line 216
    .end local v5    # "counter":I
    .restart local v16    # "counter":I
    :cond_18
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    nop

    .end local v1    # "i":I
    .end local v2    # "end":I
    .end local v9    # "random":I
    .end local v12    # "srcOrder":Ljava/nio/ByteOrder;
    .end local v13    # "dstOrder":Ljava/nio/ByteOrder;
    .end local v16    # "counter":I
    goto :goto_9

    .line 218
    .end local v8    # "mask":[B
    .end local v18    # "opcode":B
    .local v5, "opcode":B
    :cond_19
    move/from16 v18, v5

    .end local v5    # "opcode":B
    .restart local v18    # "opcode":B
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-lt v0, v1, :cond_1a

    .line 220
    invoke-virtual {v11, v4}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 221
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 223
    :cond_1a
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    :goto_9
    const/4 v0, 0x0

    .line 229
    .end local v10    # "release":Z
    .end local v14    # "maskLength":I
    .local v0, "release":Z
    if-eqz v0, :cond_1b

    if-eqz v11, :cond_1b

    .line 230
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 233
    :cond_1b
    return-void

    .line 229
    .end local v0    # "release":Z
    .restart local v10    # "release":Z
    :catchall_1
    move-exception v0

    goto :goto_a

    .end local v18    # "opcode":B
    .restart local v5    # "opcode":B
    :catchall_2
    move-exception v0

    move/from16 v18, v5

    .end local v5    # "opcode":B
    .restart local v18    # "opcode":B
    :goto_a
    if-eqz v10, :cond_1c

    if-eqz v11, :cond_1c

    .line 230
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 232
    :cond_1c
    throw v0

    .line 124
    .end local v6    # "length":I
    .end local v7    # "b0":I
    .end local v10    # "release":Z
    .end local v11    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v18    # "opcode":B
    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode frame of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    check-cast p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V

    return-void
.end method
