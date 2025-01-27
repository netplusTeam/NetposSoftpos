.class public Lorg/apache/sshd/common/channel/ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "ChannelOutputStream.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Lorg/apache/sshd/common/channel/ChannelHolder;


# static fields
.field public static final DEFAULT_WAIT_FOR_SPACE_TIMEOUT:J

.field public static final WAIT_FOR_SPACE_TIMEOUT:Ljava/lang/String; = "channel-output-wait-for-space-timeout"


# instance fields
.field private final b:[B

.field private buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

.field private bufferLength:I

.field private final channelInstance:Lorg/apache/sshd/common/channel/AbstractChannel;

.field private final closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cmd:B

.field private final eofOnClose:Z

.field private lastSize:I

.field private final log:Lorg/slf4j/Logger;

.field private final maxWaitTimeout:J

.field private noDelay:Z

.field private final packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

.field private final remoteWindow:Lorg/apache/sshd/common/channel/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->DEFAULT_WAIT_FOR_SPACE_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;JLorg/slf4j/Logger;BZ)V
    .locals 5
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/AbstractChannel;
    .param p2, "remoteWindow"    # Lorg/apache/sshd/common/channel/Window;
    .param p3, "maxWaitTimeout"    # J
    .param p5, "log"    # Lorg/slf4j/Logger;
    .param p6, "cmd"    # B
    .param p7, "eofOnClose"    # Z

    .line 70
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->b:[B

    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    const-string v1, "No channel"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/channel/AbstractChannel;

    iput-object v1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->channelInstance:Lorg/apache/sshd/common/channel/AbstractChannel;

    .line 72
    invoke-virtual {v1, p1, p6}, Lorg/apache/sshd/common/channel/AbstractChannel;->resolveChannelStreamPacketWriter(Lorg/apache/sshd/common/channel/Channel;B)Lorg/apache/sshd/common/io/PacketWriter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

    .line 73
    const-string v1, "No remote window"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/channel/Window;

    iput-object v1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    .line 74
    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Non-positive max. wait time: %d"

    invoke-static {v0, v1, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 75
    iput-wide p3, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->maxWaitTimeout:J

    .line 76
    const-string v0, "No logger"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    .line 77
    iput-byte p6, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->cmd:B

    .line 78
    iput-boolean p7, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->eofOnClose:Z

    .line 79
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->newBuffer(I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V
    .locals 12
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/AbstractChannel;
    .param p2, "remoteWindow"    # Lorg/apache/sshd/common/channel/Window;
    .param p3, "log"    # Lorg/slf4j/Logger;
    .param p4, "cmd"    # B
    .param p5, "eofOnClose"    # Z

    .line 64
    sget-wide v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->DEFAULT_WAIT_FOR_SPACE_TIMEOUT:J

    .line 65
    const-string v2, "channel-output-wait-for-space-timeout"

    move-object v11, p1

    invoke-virtual {p1, v2, v0, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v6

    .line 64
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;JLorg/slf4j/Logger;BZ)V

    .line 67
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    .line 261
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    const-string v1, "close({}) closing"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 269
    .end local p0    # "this":Lorg/apache/sshd/common/channel/ChannelOutputStream;
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->flush()V

    .line 271
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->isEofOnClose()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v1

    .line 273
    .local v1, "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    invoke-virtual {v1}, Lorg/apache/sshd/common/channel/AbstractChannel;->sendEof()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    .end local v1    # "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    :cond_2
    :try_start_3
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

    instance-of v2, v1, Lorg/apache/sshd/common/channel/Channel;

    if-nez v2, :cond_3

    .line 278
    invoke-interface {v1}, Lorg/apache/sshd/common/io/PacketWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    :cond_3
    :try_start_4
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 282
    nop

    .line 283
    nop

    .line 284
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 276
    :catchall_1
    move-exception v1

    .line 277
    :try_start_6
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

    instance-of v3, v2, Lorg/apache/sshd/common/channel/Channel;

    if-nez v3, :cond_4

    .line 278
    invoke-interface {v2}, Lorg/apache/sshd/common/io/PacketWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 281
    :cond_4
    :try_start_7
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    nop

    .line 283
    throw v1

    .line 281
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    .line 259
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 180
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v0

    move-object v2, v0

    .line 181
    .local v2, "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    .line 187
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    move-object v4, v0

    .line 188
    .local v4, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    move v5, v0

    .line 189
    .local v5, "traceEnabled":Z
    :goto_0
    iget v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    if-lez v0, :cond_6

    .line 190
    invoke-interface {v4}, Lorg/apache/sshd/common/session/Session;->resetIdleTimeout()J

    .line 192
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    move-object v6, v0

    .line 193
    .local v6, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I
    :try_end_1
    .catch Lorg/apache/sshd/common/channel/WindowClosedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v7, v0

    .line 196
    .local v7, "total":J
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_2
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    iget-wide v12, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->maxWaitTimeout:J

    invoke-virtual {v0, v12, v13}, Lorg/apache/sshd/common/channel/Window;->waitForSpace(J)J

    move-result-wide v12

    .line 197
    .local v12, "available":J
    if-eqz v5, :cond_0

    .line 198
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    const-string v14, "flush({}) len={}, available={}"

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v1, v15, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v9

    invoke-interface {v0, v14, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/sshd/common/channel/WindowClosedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .end local p0    # "this":Lorg/apache/sshd/common/channel/ChannelOutputStream;
    :cond_0
    nop

    .line 209
    :try_start_3
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 210
    .local v14, "lenToSend":J
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v9

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 211
    .local v9, "length":J
    const-wide/32 v17, 0x7fffffff

    cmp-long v0, v9, v17

    if-gtz v0, :cond_4

    .line 216
    invoke-virtual {v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 217
    .local v0, "pos":I
    iget-byte v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->cmd:B

    const/16 v11, 0x5f

    if-ne v3, v11, :cond_1

    const/16 v3, 0xe

    goto :goto_1

    :cond_1
    const/16 v3, 0xa

    :goto_1
    invoke-virtual {v6, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 218
    invoke-virtual {v6, v9, v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 219
    invoke-virtual {v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v3

    long-to-int v11, v9

    add-int/2addr v3, v11

    invoke-virtual {v6, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 220
    cmp-long v3, v7, v9

    if-nez v3, :cond_2

    .line 221
    long-to-int v3, v9

    invoke-virtual {v1, v3}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->newBuffer(I)V

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    goto :goto_2

    .line 223
    :cond_2
    move-wide/from16 v19, v12

    .end local v12    # "available":J
    .local v19, "available":J
    sub-long v11, v7, v9

    .line 224
    .local v11, "leftover":J
    move-wide/from16 v21, v14

    .end local v14    # "lenToSend":J
    .local v21, "lenToSend":J
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    long-to-int v3, v13

    invoke-virtual {v1, v3}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->newBuffer(I)V

    .line 225
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v13

    long-to-int v14, v11

    sub-int v14, v0, v14

    long-to-int v15, v11

    invoke-virtual {v3, v13, v14, v15}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 226
    long-to-int v3, v11

    iput v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    .line 228
    .end local v11    # "leftover":J
    :goto_2
    long-to-int v3, v9

    iput v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->lastSize:I

    .line 230
    invoke-interface {v4}, Lorg/apache/sshd/common/session/Session;->resetIdleTimeout()J

    .line 231
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    iget-wide v11, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->maxWaitTimeout:J

    invoke-virtual {v3, v9, v10, v11, v12}, Lorg/apache/sshd/common/channel/Window;->waitAndConsume(JJ)V

    .line 232
    if-eqz v5, :cond_3

    .line 233
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    const-string v11, "flush({}) send {} len={}"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    iget-byte v13, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->cmd:B

    .line 234
    invoke-static {v13}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    .line 233
    invoke-interface {v3, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_3
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

    invoke-interface {v3, v6}, Lorg/apache/sshd/common/io/PacketWriter;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 237
    const/4 v3, 0x1

    .end local v0    # "pos":I
    .end local v6    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v7    # "total":J
    .end local v9    # "length":J
    .end local v19    # "available":J
    .end local v21    # "lenToSend":J
    goto/16 :goto_0

    .line 212
    .restart local v6    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v7    # "total":J
    .restart local v9    # "length":J
    .restart local v12    # "available":J
    .restart local v14    # "lenToSend":J
    :cond_4
    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .end local v12    # "available":J
    .end local v14    # "lenToSend":J
    .restart local v19    # "available":J
    .restart local v21    # "lenToSend":J
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Accumulated "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v11, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->cmd:B

    invoke-static {v11}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " command bytes size ("

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ") exceeds int boundaries"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v2    # "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    throw v0

    .line 200
    .end local v9    # "length":J
    .end local v19    # "available":J
    .end local v21    # "lenToSend":J
    .restart local v2    # "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 202
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    const-string v9, "flush({}) failed ({}) to wait for space of len={}: {}"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 202
    invoke-interface {v3, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_5
    nop

    .end local v2    # "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    throw v0
    :try_end_3
    .catch Lorg/apache/sshd/common/channel/WindowClosedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v5    # "traceEnabled":Z
    .end local v6    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v7    # "total":J
    .restart local v2    # "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    :cond_6
    nop

    .line 256
    monitor-exit p0

    return-void

    .line 245
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    instance-of v3, v0, Ljava/io/IOException;

    if-nez v3, :cond_8

    .line 248
    instance-of v3, v0, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_7

    .line 249
    new-instance v3, Ljava/io/InterruptedIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted while waiting for remote space flush len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 253
    :cond_7
    new-instance v3, Lorg/apache/sshd/common/SshException;

    invoke-direct {v3, v0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 247
    :cond_8
    move-object v3, v0

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 239
    .local v0, "e":Lorg/apache/sshd/common/channel/WindowClosedException;
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_9

    .line 240
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 241
    iget-object v3, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    const-string v4, "flush({}) closing due to window closed"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    :cond_9
    throw v0

    .line 182
    .end local v0    # "e":Lorg/apache/sshd/common/channel/WindowClosedException;
    :cond_a
    new-instance v0, Lorg/apache/sshd/common/channel/exception/SshChannelClosedException;

    invoke-virtual {v2}, Lorg/apache/sshd/common/channel/AbstractChannel;->getId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flush("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - stream is already closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/sshd/common/channel/exception/SshChannelClosedException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    .end local v2    # "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->channelInstance:Lorg/apache/sshd/common/channel/AbstractChannel;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lorg/apache/sshd/common/channel/Channel;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v0

    return-object v0
.end method

.method public isEofOnClose()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->eofOnClose:Z

    return v0
.end method

.method public isNoDelay()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->noDelay:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected newBuffer(I)V
    .locals 5
    .param p1, "size"    # I

    .line 287
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v0

    .line 288
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    invoke-interface {v0}, Lorg/apache/sshd/common/channel/Channel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 289
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    iget-byte v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->cmd:B

    if-gtz p1, :cond_0

    const/16 v3, 0xc

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0xc

    :goto_0
    invoke-interface {v1, v2, v3}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 290
    invoke-interface {v0}, Lorg/apache/sshd/common/channel/Channel;->getRecipient()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 291
    iget-byte v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->cmd:B

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_1

    .line 292
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 294
    :cond_1
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 295
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    .line 296
    return-void
.end method

.method public setNoDelay(Z)V
    .locals 0
    .param p1, "noDelay"    # Z

    .line 92
    iput-boolean p1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->noDelay:Z

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->cmd:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "w"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelOutputStream;->b:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 105
    .end local p0    # "this":Lorg/apache/sshd/common/channel/ChannelOutputStream;
    .end local p1    # "w":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 20
    .param p1, "buf"    # [B
    .param p2, "s"    # I
    .param p3, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v0

    move-object v2, v0

    .line 113
    .local v2, "channel":Lorg/apache/sshd/common/channel/Channel;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    invoke-interface {v2}, Lorg/apache/sshd/common/channel/Channel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    move-object v3, v0

    .line 119
    .local v3, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    move v4, v0

    .line 120
    .local v4, "debugEnabled":Z
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    move v5, v0

    move/from16 v6, p2

    move/from16 v7, p3

    .line 121
    .end local p2    # "s":I
    .end local p3    # "l":I
    .local v5, "traceEnabled":Z
    .local v6, "s":I
    .local v7, "l":I
    :goto_0
    if-lez v7, :cond_6

    .line 128
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v8

    iget v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->lastSize:I

    int-to-long v10, v0

    add-long/2addr v8, v10

    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 129
    .local v8, "minReqLen":J
    int-to-long v10, v7

    iget v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    int-to-long v12, v0

    sub-long v12, v8, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 130
    .local v10, "l2":J
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gtz v0, :cond_4

    .line 131
    iget v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    if-lez v0, :cond_0

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->flush()V

    move/from16 v17, v5

    goto :goto_2

    .line 134
    .end local p0    # "this":Lorg/apache/sshd/common/channel/ChannelOutputStream;
    :cond_0
    invoke-interface {v3}, Lorg/apache/sshd/common/session/Session;->resetIdleTimeout()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v15, 0x3

    :try_start_1
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    iget-wide v13, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->maxWaitTimeout:J

    invoke-virtual {v0, v13, v14}, Lorg/apache/sshd/common/channel/Window;->waitForSpace(J)J

    move-result-wide v13

    .line 137
    .local v13, "available":J
    if-eqz v5, :cond_1

    .line 138
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    const-string/jumbo v12, "write({}) len={} - available={}"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v5

    .end local v5    # "traceEnabled":Z
    .local v17, "traceEnabled":Z
    :try_start_2
    new-array v5, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v5, v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v5, v19

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v5, v19

    invoke-interface {v0, v12, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 153
    .end local v13    # "available":J
    :catch_0
    move-exception v0

    goto :goto_3

    .line 140
    :catch_1
    move-exception v0

    goto :goto_4

    .line 137
    .end local v17    # "traceEnabled":Z
    .restart local v5    # "traceEnabled":Z
    .restart local v13    # "available":J
    :cond_1
    move/from16 v17, v5

    .line 157
    .end local v5    # "traceEnabled":Z
    .end local v13    # "available":J
    .restart local v17    # "traceEnabled":Z
    :goto_1
    nop

    .line 159
    :goto_2
    :try_start_3
    invoke-interface {v3}, Lorg/apache/sshd/common/session/Session;->resetIdleTimeout()J

    .line 160
    move/from16 v5, v17

    goto :goto_0

    .line 153
    .end local v17    # "traceEnabled":Z
    .restart local v5    # "traceEnabled":Z
    :catch_2
    move-exception v0

    move/from16 v17, v5

    .line 154
    .end local v5    # "traceEnabled":Z
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v17    # "traceEnabled":Z
    :goto_3
    new-instance v5, Ljava/io/InterruptedIOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Interrupted while waiting for remote space on write len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v5, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    throw v5

    .line 140
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v17    # "traceEnabled":Z
    .restart local v5    # "traceEnabled":Z
    :catch_3
    move-exception v0

    move/from16 v17, v5

    .line 141
    .end local v5    # "traceEnabled":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "traceEnabled":Z
    :goto_4
    if-eqz v4, :cond_2

    .line 142
    iget-object v5, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    const-string/jumbo v12, "write({}) failed ({}) to wait for space of len={}: {}"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v13, v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x2

    aput-object v14, v13, v16

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v15

    .line 142
    invoke-interface {v5, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_2
    instance-of v5, v0, Lorg/apache/sshd/common/channel/WindowClosedException;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->closedState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 147
    if-eqz v4, :cond_3

    .line 148
    iget-object v5, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->log:Lorg/slf4j/Logger;

    const-string/jumbo v12, "write({})[len={}] closing due to window closed"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v12, v1, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :cond_3
    throw v0

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "traceEnabled":Z
    .restart local v5    # "traceEnabled":Z
    :cond_4
    move/from16 v17, v5

    const/4 v12, 0x1

    const/4 v14, 0x0

    .end local v5    # "traceEnabled":Z
    .restart local v17    # "traceEnabled":Z
    const-wide/32 v15, 0x7fffffff

    cmp-long v0, v10, v15

    if-gtz v0, :cond_5

    goto :goto_5

    :cond_5
    move v12, v14

    :goto_5
    const-string v0, "Accumulated bytes length exceeds int boundary: %d"

    invoke-static {v12, v0, v10, v11}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 165
    iget-object v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    long-to-int v5, v10

    move-object/from16 v12, p1

    invoke-virtual {v0, v12, v6, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 166
    iget v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    int-to-long v13, v0

    add-long/2addr v13, v10

    long-to-int v0, v13

    iput v0, v1, Lorg/apache/sshd/common/channel/ChannelOutputStream;->bufferLength:I

    .line 167
    int-to-long v13, v6

    add-long/2addr v13, v10

    long-to-int v6, v13

    .line 168
    int-to-long v13, v7

    sub-long/2addr v13, v10

    long-to-int v7, v13

    .line 169
    .end local v8    # "minReqLen":J
    .end local v10    # "l2":J
    move/from16 v5, v17

    goto/16 :goto_0

    .line 171
    .end local v17    # "traceEnabled":Z
    .restart local v5    # "traceEnabled":Z
    :cond_6
    move-object/from16 v12, p1

    move/from16 v17, v5

    .end local v5    # "traceEnabled":Z
    .restart local v17    # "traceEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->isNoDelay()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/ChannelOutputStream;->flush()V

    goto :goto_6

    .line 174
    :cond_7
    invoke-interface {v3}, Lorg/apache/sshd/common/session/Session;->resetIdleTimeout()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    :goto_6
    monitor-exit p0

    return-void

    .line 114
    .end local v3    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v4    # "debugEnabled":Z
    .end local v6    # "s":I
    .end local v7    # "l":I
    .end local v17    # "traceEnabled":Z
    .restart local p2    # "s":I
    .restart local p3    # "l":I
    :cond_8
    move-object/from16 v12, p1

    :try_start_4
    new-instance v0, Lorg/apache/sshd/common/channel/exception/SshChannelClosedException;

    invoke-interface {v2}, Lorg/apache/sshd/common/channel/Channel;->getId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "write("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " - channel already closed"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/sshd/common/channel/exception/SshChannelClosedException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    .end local v2    # "channel":Lorg/apache/sshd/common/channel/Channel;
    .end local p1    # "buf":[B
    .end local p2    # "s":I
    .end local p3    # "l":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
