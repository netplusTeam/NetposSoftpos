.class public Lio/netty/handler/codec/LengthFieldPrepender;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "LengthFieldPrepender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final lengthAdjustment:I

.field private final lengthFieldLength:I

.field private final lengthIncludesLengthFieldLength:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "lengthFieldLength"    # I

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/LengthFieldPrepender;-><init>(IZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "lengthFieldLength"    # I
    .param p2, "lengthAdjustment"    # I

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/LengthFieldPrepender;-><init>(IIZ)V

    .line 106
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "lengthFieldLength"    # I
    .param p2, "lengthAdjustment"    # I
    .param p3, "lengthIncludesLengthFieldLength"    # Z

    .line 124
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/handler/codec/LengthFieldPrepender;-><init>(Ljava/nio/ByteOrder;IIZ)V

    .line 125
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "lengthFieldLength"    # I
    .param p2, "lengthIncludesLengthFieldLength"    # Z

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/LengthFieldPrepender;-><init>(IIZ)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;IIZ)V
    .locals 3
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .param p2, "lengthFieldLength"    # I
    .param p3, "lengthAdjustment"    # I
    .param p4, "lengthIncludesLengthFieldLength"    # Z

    .line 145
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 146
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lengthFieldLength must be either 1, 2, 3, 4, or 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    :goto_0
    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteOrder;

    iput-object v0, p0, Lio/netty/handler/codec/LengthFieldPrepender;->byteOrder:Ljava/nio/ByteOrder;

    .line 154
    iput p2, p0, Lio/netty/handler/codec/LengthFieldPrepender;->lengthFieldLength:I

    .line 155
    iput-boolean p4, p0, Lio/netty/handler/codec/LengthFieldPrepender;->lengthIncludesLengthFieldLength:Z

    .line 156
    iput p3, p0, Lio/netty/handler/codec/LengthFieldPrepender;->lengthAdjustment:I

    .line 157
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
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

    .line 161
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/LengthFieldPrepender;->lengthAdjustment:I

    add-int/2addr v0, v1

    .line 162
    .local v0, "length":I
    iget-boolean v1, p0, Lio/netty/handler/codec/LengthFieldPrepender;->lengthIncludesLengthFieldLength:Z

    if-eqz v1, :cond_0

    .line 163
    iget v1, p0, Lio/netty/handler/codec/LengthFieldPrepender;->lengthFieldLength:I

    add-int/2addr v0, v1

    .line 166
    :cond_0
    const-string v1, "length"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 168
    iget v1, p0, Lio/netty/handler/codec/LengthFieldPrepender;->lengthFieldLength:I

    packed-switch v1, :pswitch_data_0

    .line 197
    :pswitch_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :pswitch_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/LengthFieldPrepender;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    goto/16 :goto_0

    .line 191
    :pswitch_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/LengthFieldPrepender;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    goto/16 :goto_0

    .line 184
    :pswitch_3
    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_1

    .line 188
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/LengthFieldPrepender;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    goto :goto_0

    .line 185
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length does not fit into a medium integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :pswitch_4
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    .line 181
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/LengthFieldPrepender;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    int-to-short v2, v0

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    goto :goto_0

    .line 178
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length does not fit into a short integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :pswitch_5
    const/16 v1, 0x100

    if-ge v0, v1, :cond_3

    .line 174
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/LengthFieldPrepender;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    nop

    .line 199
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-void

    .line 171
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length does not fit into a byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/LengthFieldPrepender;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    return-void
.end method
