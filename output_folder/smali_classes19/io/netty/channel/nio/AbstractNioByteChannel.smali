.class public abstract Lio/netty/channel/nio/AbstractNioByteChannel;
.super Lio/netty/channel/nio/AbstractNioChannel;
.source "AbstractNioByteChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;
    }
.end annotation


# static fields
.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# instance fields
.field private final flushTask:Ljava/lang/Runnable;

.field private inputClosedSeenErrorOnRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/channel/nio/AbstractNioByteChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 46
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/FileRegion;

    .line 47
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/nio/AbstractNioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 45
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "ch"    # Ljava/nio/channels/SelectableChannel;

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/AbstractNioChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V

    .line 49
    new-instance v0, Lio/netty/channel/nio/AbstractNioByteChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/nio/AbstractNioByteChannel$1;-><init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V

    iput-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel;->flushTask:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/ChannelConfig;

    .line 43
    invoke-static {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lio/netty/channel/nio/AbstractNioByteChannel;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioByteChannel;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel;->inputClosedSeenErrorOnRead:Z

    return p1
.end method

.method private doWriteInternal(Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Object;)I
    .locals 8
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 214
    move-object v0, p2

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 215
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 217
    return v2

    .line 220
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->doWriteBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v2

    .line 221
    .local v2, "localFlushedAmount":I
    if-lez v2, :cond_2

    .line 222
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 223
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 226
    :cond_1
    return v1

    .line 228
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v2    # "localFlushedAmount":I
    :cond_2
    goto :goto_0

    :cond_3
    instance-of v0, p2, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_7

    .line 229
    move-object v0, p2

    check-cast v0, Lio/netty/channel/FileRegion;

    .line 230
    .local v0, "region":Lio/netty/channel/FileRegion;
    invoke-interface {v0}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v3

    invoke-interface {v0}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    .line 231
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 232
    return v2

    .line 235
    :cond_4
    invoke-virtual {p0, v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->doWriteFileRegion(Lio/netty/channel/FileRegion;)J

    move-result-wide v2

    .line 236
    .local v2, "localFlushedAmount":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    .line 237
    invoke-virtual {p1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 238
    invoke-interface {v0}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v4

    invoke-interface {v0}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 239
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 241
    :cond_5
    return v1

    .line 243
    .end local v0    # "region":Lio/netty/channel/FileRegion;
    .end local v2    # "localFlushedAmount":J
    :cond_6
    nop

    .line 247
    :goto_0
    const v0, 0x7fffffff

    return v0

    .line 245
    :cond_7
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method private static isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p0, "config"    # Lio/netty/channel/ChannelConfig;

    .line 93
    instance-of v0, p0, Lio/netty/channel/socket/SocketChannelConfig;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/channel/socket/SocketChannelConfig;

    .line 94
    invoke-interface {v0}, Lio/netty/channel/socket/SocketChannelConfig;->isAllowHalfClosure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0
.end method


# virtual methods
.method protected final clearOpWrite()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 341
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 345
    .local v1, "interestOps":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 346
    and-int/lit8 v2, v1, -0x5

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 348
    :cond_1
    return-void
.end method

.method protected abstract doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 3
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteSpinCount()I

    move-result v0

    .line 254
    .local v0, "writeSpinCount":I
    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "msg":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->clearOpWrite()V

    .line 259
    return-void

    .line 261
    :cond_0
    invoke-direct {p0, p1, v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->doWriteInternal(Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 262
    .end local v1    # "msg":Ljava/lang/Object;
    if-gtz v0, :cond_2

    .line 264
    if-gez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->incompleteWrite(Z)V

    .line 265
    return-void

    .line 262
    :cond_2
    goto :goto_0
.end method

.method protected final doWrite0(Lio/netty/channel/ChannelOutboundBuffer;)I
    .locals 2
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "msg":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 207
    const/4 v1, 0x0

    return v1

    .line 209
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->doWriteInternal(Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected abstract doWriteBytes(Lio/netty/buffer/ByteBuf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doWriteFileRegion(Lio/netty/channel/FileRegion;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;

    .line 269
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_1

    .line 270
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 271
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    return-object p1

    .line 275
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    .line 278
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_1
    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    .line 279
    return-object p1

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/nio/AbstractNioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final incompleteWrite(Z)V
    .locals 2
    .param p1, "setOpWrite"    # Z

    .line 288
    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->setOpWrite()V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->clearOpWrite()V

    .line 298
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel;->flushTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/netty/channel/nio/NioEventLoop;->execute(Ljava/lang/Runnable;)V

    .line 300
    :goto_0
    return-void
.end method

.method protected isInputShutdown0()Z
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 85
    sget-object v0, Lio/netty/channel/nio/AbstractNioByteChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
    .locals 1

    .line 80
    new-instance v0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;

    invoke-direct {v0, p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V

    return-object v0
.end method

.method protected final setOpWrite()V
    .locals 3

    .line 323
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 327
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    return-void

    .line 330
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 331
    .local v1, "interestOps":I
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    .line 332
    or-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 334
    :cond_1
    return-void
.end method

.method final shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 89
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->isInputShutdown0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel;->inputClosedSeenErrorOnRead:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/netty/channel/nio/AbstractNioByteChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract shutdownInput()Lio/netty/channel/ChannelFuture;
.end method
