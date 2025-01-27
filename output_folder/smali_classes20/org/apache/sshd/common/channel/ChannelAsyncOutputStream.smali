.class public Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "ChannelAsyncOutputStream.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoOutputStream;
.implements Lorg/apache/sshd/common/channel/ChannelHolder;


# instance fields
.field private final channelInstance:Lorg/apache/sshd/common/channel/Channel;

.field private final cmd:B

.field private final packetWriteId:Ljava/lang/Object;

.field private final packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

.field private final pendingWrite:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/channel/IoWriteFutureImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/channel/Channel;B)V
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "cmd"    # B

    .line 44
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->pendingWrite:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    const-string v0, "No channel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/Channel;

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->channelInstance:Lorg/apache/sshd/common/channel/Channel;

    .line 46
    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/common/channel/Channel;->resolveChannelStreamPacketWriter(Lorg/apache/sshd/common/channel/Channel;B)Lorg/apache/sshd/common/io/PacketWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

    .line 47
    iput-byte p2, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->cmd:B

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->packetWriteId:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->pendingWrite:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method protected doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 2

    .line 90
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->pendingWrite:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/future/SshFuture;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->when(Lorg/apache/sshd/common/future/SshFuture;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/Closeable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized doWriteIfPossible(Z)V
    .locals 19
    .param p1, "resume"    # Z

    move-object/from16 v8, p0

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->pendingWrite:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    move-object v9, v0

    .line 95
    .local v9, "future":Lorg/apache/sshd/common/channel/IoWriteFutureImpl;
    if-nez v9, :cond_1

    .line 96
    iget-object v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    const-string v1, "doWriteIfPossible({})[resume={}] no pending write future"

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v8, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local p0    # "this":Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->getBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    move-object v10, v0

    .line 103
    .local v10, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    move v11, v0

    .line 104
    .local v11, "total":I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez v11, :cond_9

    .line 105
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->getChannel()Lorg/apache/sshd/common/channel/Channel;

    move-result-object v2

    move-object v12, v2

    .line 106
    .local v12, "channel":Lorg/apache/sshd/common/channel/Channel;
    invoke-interface {v12}, Lorg/apache/sshd/common/channel/Channel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v2

    move-object v13, v2

    .line 107
    .local v13, "remoteWindow":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v13}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v2

    int-to-long v4, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v13}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v14, v2

    .line 108
    .local v14, "length":J
    iget-object v2, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    const-string v3, "doWriteIfPossible({})[resume={}] attempting to write {} out of {}"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-lez v0, :cond_6

    .line 113
    if-eqz p1, :cond_3

    .line 114
    iget-object v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    const-string v1, "Resuming {} write due to more space ({}) available in the remote window"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v8, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    :cond_3
    const-wide/32 v0, 0x7ffffff3

    cmp-long v0, v14, v0

    if-gez v0, :cond_5

    .line 123
    invoke-interface {v12}, Lorg/apache/sshd/common/channel/Channel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    move-object v7, v0

    .line 124
    .local v7, "s":Lorg/apache/sshd/common/session/Session;
    iget-byte v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->cmd:B

    long-to-int v1, v14

    add-int/lit8 v1, v1, 0xc

    invoke-interface {v7, v0, v1}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    move-object v4, v0

    .line 125
    .local v4, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-interface {v12}, Lorg/apache/sshd/common/channel/Channel;->getRecipient()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 126
    iget-byte v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->cmd:B

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_4

    .line 127
    const-wide/16 v0, 0x1

    invoke-virtual {v4, v0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 129
    :cond_4
    invoke-virtual {v4, v14, v15}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 130
    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    long-to-int v2, v14

    invoke-virtual {v4, v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 131
    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v0

    long-to-int v1, v14

    add-int/2addr v0, v1

    invoke-virtual {v10, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 132
    invoke-virtual {v13, v14, v15}, Lorg/apache/sshd/common/channel/Window;->consume(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    move-object/from16 v6, p0

    .line 136
    .local v6, "stream":Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;
    :try_start_2
    iget-object v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

    invoke-interface {v0, v4}, Lorg/apache/sshd/common/io/PacketWriter;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v0

    .line 137
    .local v0, "writeFuture":Lorg/apache/sshd/common/io/IoWriteFuture;
    new-instance v5, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v5

    move-object/from16 v2, p0

    move v3, v11

    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move-object v10, v5

    .end local v4    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v16, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v17, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    move-wide v4, v14

    move-object/from16 v18, v7

    .end local v7    # "s":Lorg/apache/sshd/common/session/Session;
    .local v18, "s":Lorg/apache/sshd/common/session/Session;
    move-object v7, v9

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;-><init>(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;IJLorg/apache/sshd/common/channel/ChannelAsyncOutputStream;Lorg/apache/sshd/common/channel/IoWriteFutureImpl;)V

    invoke-interface {v0, v10}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .end local v0    # "writeFuture":Lorg/apache/sshd/common/io/IoWriteFuture;
    .end local v6    # "stream":Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;
    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v16    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "s":Lorg/apache/sshd/common/session/Session;
    .restart local v4    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v7    # "s":Lorg/apache/sshd/common/session/Session;
    .restart local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v18, v7

    move-object/from16 v17, v10

    .line 184
    .end local v4    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v7    # "s":Lorg/apache/sshd/common/session/Session;
    .end local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v18    # "s":Lorg/apache/sshd/common/session/Session;
    :goto_0
    :try_start_4
    invoke-virtual {v9, v0}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "s":Lorg/apache/sshd/common/session/Session;
    .restart local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_5
    move-object/from16 v17, v10

    .end local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->cmd:B

    invoke-static {v2}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exceeds int boundaries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_6
    move-object/from16 v17, v10

    .end local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    if-nez p1, :cond_7

    .line 187
    iget-object v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    iget-object v0, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    const-string v1, "doWriteIfPossible({}) delaying write until space is available in the remote window"

    invoke-interface {v0, v1, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 186
    :cond_7
    :goto_1
    nop

    .line 191
    .end local v12    # "channel":Lorg/apache/sshd/common/channel/Channel;
    .end local v13    # "remoteWindow":Lorg/apache/sshd/common/channel/Window;
    .end local v14    # "length":J
    :cond_8
    :goto_2
    goto :goto_4

    .line 192
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_9
    move-object/from16 v17, v10

    .end local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v2, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->pendingWrite:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-static {v2, v9, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 193
    .local v2, "nullified":Z
    iget-object v3, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 194
    iget-object v3, v8, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    const-string v4, "doWriteIfPossible({}) current buffer sent - more={}"

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v4, v8, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->setValue(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    .end local v2    # "nullified":Z
    :goto_4
    monitor-exit p0

    return-void

    .line 93
    .end local v9    # "future":Lorg/apache/sshd/common/channel/IoWriteFutureImpl;
    .end local v11    # "total":I
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p1    # "resume":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChannel()Lorg/apache/sshd/common/channel/Channel;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->channelInstance:Lorg/apache/sshd/common/channel/Channel;

    return-object v0
.end method

.method public onWindowExpanded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->doWriteIfPossible(Z)V

    .line 58
    return-void
.end method

.method protected preClose()V
    .locals 5

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->packetWriter:Lorg/apache/sshd/common/io/PacketWriter;

    instance-of v1, v0, Lorg/apache/sshd/common/channel/Channel;

    if-nez v1, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v0}, Lorg/apache/sshd/common/io/PacketWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 80
    const-string v3, "preClose({}) Failed ({}) to pre-close packet writer: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->preClose()V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
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

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->getChannel()Lorg/apache/sshd/common/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->cmd:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->packetWriteId:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;-><init>(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 67
    .local v0, "future":Lorg/apache/sshd/common/channel/IoWriteFutureImpl;
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->pendingWrite:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->doWriteIfPossible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-object v0

    .line 68
    .end local p0    # "this":Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;
    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/sshd/common/io/WritePendingException;

    const-string v2, "No write pending future"

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/io/WritePendingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local v0    # "future":Lorg/apache/sshd/common/channel/IoWriteFutureImpl;
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
