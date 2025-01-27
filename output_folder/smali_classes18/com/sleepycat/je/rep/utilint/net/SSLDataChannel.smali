.class public Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;
.super Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;
.source "SSLDataChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$NullReadChannel;,
        Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    }
.end annotation


# static fields
.field private static final NULL_READ_CHANNEL:Ljava/nio/channels/ReadableByteChannel;


# instance fields
.field private final appRecvBuffer:Ljava/nio/ByteBuffer;

.field private final authenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

.field private volatile channelClosed:Z

.field private final emptyXmitBuffer:Ljava/nio/ByteBuffer;

.field private final hostVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

.field private final netRecvBuffer:Ljava/nio/ByteBuffer;

.field private final netXmitBuffer:Ljava/nio/ByteBuffer;

.field private volatile peerTrusted:Z

.field private final readLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final sslEngine:Ljavax/net/ssl/SSLEngine;

.field private volatile sslInboundClosed:Z

.field private final targetHost:Ljava/lang/String;

.field private volatile wrappedReadChannel:Ljava/nio/channels/ReadableByteChannel;

.field private final writeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$NullReadChannel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$NullReadChannel;-><init>(Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->NULL_READ_CHANNEL:Ljava/nio/channels/ReadableByteChannel;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;Lcom/sleepycat/je/rep/net/SSLAuthenticator;Lcom/sleepycat/je/rep/net/InstanceLogger;)V
    .locals 7
    .param p1, "socketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "sslEngine"    # Ljavax/net/ssl/SSLEngine;
    .param p3, "targetHost"    # Ljava/lang/String;
    .param p4, "hostVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p5, "authenticator"    # Lcom/sleepycat/je/rep/net/SSLAuthenticator;
    .param p6, "logger"    # Lcom/sleepycat/je/rep/net/InstanceLogger;

    .line 170
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;-><init>(Ljava/nio/channels/SocketChannel;)V

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    .line 125
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslInboundClosed:Z

    .line 150
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->peerTrusted:Z

    .line 171
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 172
    iput-object p3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->targetHost:Ljava/lang/String;

    .line 173
    iput-object p5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->authenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    .line 174
    iput-object p4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->hostVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 175
    iput-object p6, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    .line 176
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 179
    .local v0, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    .line 180
    .local v1, "netBufferSize":I
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    .line 183
    .local v2, "appBufferSize":I
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->emptyXmitBuffer:Ljava/nio/ByteBuffer;

    .line 184
    mul-int/lit8 v3, v1, 0x3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    .line 185
    mul-int/lit8 v3, v2, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    .line 186
    mul-int/lit8 v3, v1, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    nop

    .line 192
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 191
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->wrappedReadChannel:Ljava/nio/channels/ReadableByteChannel;

    goto :goto_0

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->wrappedReadChannel:Ljava/nio/channels/ReadableByteChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    nop

    .line 200
    return-void

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get stream from connected socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    .line 593
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->DONE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 636
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 593
    return-object v0

    .line 595
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 611
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 613
    .local v0, "count":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_1

    .line 615
    sget-object v1, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->DONE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 636
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 615
    return-object v1

    .line 618
    :cond_1
    if-eqz v0, :cond_2

    .line 623
    :try_start_4
    sget-object v1, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->AGAIN:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 633
    :try_start_5
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 636
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 623
    return-object v1

    .line 630
    :cond_2
    :try_start_6
    sget-object v1, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 633
    :try_start_7
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 636
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 630
    return-object v1

    .line 633
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 636
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 641
    :cond_3
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->CONTENTION:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    return-object v0
.end method

.method private processAnyHandshakes(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    .locals 4
    .param p1, "isClosing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    :goto_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->processOneHandshake(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    move-result-object v0

    .line 869
    .local v0, "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 879
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown HSProcStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 871
    :pswitch_0
    goto :goto_0

    .line 877
    :pswitch_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processOneHandshake(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    .locals 7
    .param p1, "isClosing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "readCount":I
    sget-object v1, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->DONE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 897
    .local v1, "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    const/4 v2, 0x0

    .line 899
    .local v2, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 1029
    :pswitch_0
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->DONE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 993
    :pswitch_1
    if-eqz p1, :cond_0

    .line 994
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1001
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->CONTENTION:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1004
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1007
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->emptyXmitBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1009
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1010
    nop

    .line 1012
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v4, :cond_2

    .line 1019
    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1021
    :goto_0
    goto/16 :goto_3

    .line 1020
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1023
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    move-result-object v1

    .line 1025
    goto/16 :goto_3

    .line 1009
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 918
    :pswitch_2
    const/4 v3, 0x0

    .line 922
    .local v3, "unwrapped":Z
    :try_start_2
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1

    .line 924
    goto :goto_1

    .line 923
    :catch_1
    move-exception v4

    .line 930
    :goto_1
    if-eqz p1, :cond_3

    .line 937
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4

    if-nez v4, :cond_4

    .line 938
    sget-object v4, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->CONTENTION:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v4

    .line 941
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 944
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lez v4, :cond_5

    .line 945
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 946
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    .line 947
    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    move-object v2, v4

    .line 948
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 949
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_5

    .line 950
    const/4 v3, 0x1

    .line 954
    :cond_5
    if-nez v3, :cond_7

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v4

    if-nez v4, :cond_7

    .line 966
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readFromChannel()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v4

    .line 967
    if-gez v0, :cond_6

    .line 969
    :try_start_4
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    .line 970
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslInboundClosed:Z
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 973
    goto :goto_2

    .line 971
    :catch_2
    move-exception v4

    .line 976
    :cond_6
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 977
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    .line 978
    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    move-object v2, v4

    .line 979
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 982
    :cond_7
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 983
    nop

    .line 986
    .end local v3    # "unwrapped":Z
    goto :goto_3

    .line 982
    .restart local v3    # "unwrapped":Z
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 913
    .end local v3    # "unwrapped":Z
    :pswitch_3
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->runDelegatedTasks()V

    .line 914
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->AGAIN:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 905
    :pswitch_4
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->DONE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1036
    :goto_3
    if-eqz v2, :cond_f

    .line 1037
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_b

    .line 1042
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1043
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->hostVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_b

    .line 1044
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->targetHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 1046
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    .line 1045
    invoke-interface {v3, v4, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->peerTrusted:Z

    .line 1047
    iget-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->peerTrusted:Z

    if-eqz v3, :cond_8

    .line 1048
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "SSL host verifier reports that connection target is valid"

    invoke-interface {v3, v4, v5}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    .line 1052
    :cond_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "SSL host verifier reports that connection target is NOT valid"

    invoke-interface {v3, v4, v5}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1055
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Server identity could not be verified"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1060
    :cond_9
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->authenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    if-eqz v3, :cond_b

    .line 1061
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 1062
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sleepycat/je/rep/net/SSLAuthenticator;->isTrusted(Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->peerTrusted:Z

    .line 1063
    iget-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->peerTrusted:Z

    if-eqz v3, :cond_a

    .line 1064
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "SSL authenticator reports that channel is trusted"

    invoke-interface {v3, v4, v5}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    .line 1068
    :cond_a
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "SSL authenticator reports that channel is NOT trusted"

    invoke-interface {v3, v4, v5}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1076
    :cond_b
    :goto_4
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_6

    .line 1117
    :pswitch_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1119
    :try_start_6
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1121
    goto :goto_5

    .line 1120
    :catch_3
    move-exception v3

    .line 1123
    :cond_c
    :goto_5
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->DONE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1098
    :pswitch_6
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_d

    .line 1100
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->APP_WAIT:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1102
    :cond_d
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$net$DataChannel$FlushStatus:[I

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 1113
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown flush status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1104
    :pswitch_7
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1109
    :pswitch_8
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1107
    :pswitch_9
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->AGAIN:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1111
    :pswitch_a
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->CONTENTION:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1083
    :pswitch_b
    if-lez v0, :cond_e

    .line 1084
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->AGAIN:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1086
    :cond_e
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->SO_WAIT_READ:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    .line 1134
    :cond_f
    :goto_6
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->AGAIN:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private readFromChannel()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->wrappedReadChannel:Ljava/nio/channels/ReadableByteChannel;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private runDelegatedTasks()V
    .locals 2

    .line 1144
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    move-object v1, v0

    .local v1, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 1145
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1147
    :cond_0
    return-void
.end method

.method private transfer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)I
    .locals 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "transferred":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    add-int v2, p3, p4

    if-ge v1, v2, :cond_1

    .line 813
    aget-object v2, p2, v1

    .line 814
    .local v2, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 816
    .local v3, "space":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 818
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 819
    .local v4, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 820
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 821
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 822
    add-int/2addr v0, v3

    .line 823
    .end local v4    # "slice":Ljava/nio/ByteBuffer;
    nop

    .line 812
    .end local v2    # "dst":Ljava/nio/ByteBuffer;
    .end local v3    # "space":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    .restart local v2    # "dst":Ljava/nio/ByteBuffer;
    .restart local v3    # "space":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v0, v4

    .line 825
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 829
    .end local v1    # "i":I
    .end local v2    # "dst":Ljava/nio/ByteBuffer;
    .end local v3    # "space":I
    :cond_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 647
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->ensureCloseForBlocking()V

    .line 649
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    move-result-object v1

    .line 650
    .local v1, "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    sget-object v2, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->CONTENTION:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "Concurrent operations during close"

    if-eq v1, v2, :cond_3

    .line 655
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 657
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->processAnyHandshakes(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    move-result-object v2

    .local v2, "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    goto :goto_0

    .line 658
    .end local v2    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslInboundClosed:Z

    if-eqz v2, :cond_1

    .line 659
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->processOneHandshake(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    move-result-object v2

    .restart local v2    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    goto :goto_0

    .line 661
    .end local v2    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :cond_1
    sget-object v2, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->DONE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 663
    .restart local v2    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :goto_0
    sget-object v4, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->CONTENTION:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v2, v4, :cond_2

    .line 668
    .end local v1    # "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    .end local v2    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 676
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    throw v1

    .line 669
    :catch_0
    move-exception v1

    .line 676
    :goto_1
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    .line 677
    nop

    .line 678
    nop

    .line 679
    return-void

    .line 664
    .restart local v1    # "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    .restart local v2    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 651
    .end local v2    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 667
    .end local v1    # "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :catchall_1
    move-exception v1

    .line 668
    :try_start_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 676
    :catchall_2
    move-exception v1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    throw v1

    .line 669
    :catch_1
    move-exception v2

    .line 676
    :goto_2
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    .line 677
    nop

    .line 676
    throw v1
.end method

.method public closeAsync()Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    const-string v0, "Unexpected exception: "

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->ensureCloseAsyncForNonBlocking()V

    .line 686
    const/4 v2, 0x1

    .line 687
    .local v2, "continueFlush":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 688
    nop

    .line 689
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    move-result-object v3

    .line 690
    .local v3, "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    sget-object v4, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$net$DataChannel$FlushStatus:[I

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 704
    new-instance v4, Ljava/lang/AssertionError;

    goto :goto_2

    .line 701
    :pswitch_0
    const/4 v2, 0x0

    .line 702
    goto :goto_1

    .line 698
    :pswitch_1
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    iput-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    .line 698
    return-object v0

    .line 696
    :pswitch_2
    nop

    .line 707
    .end local v3    # "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :goto_1
    goto :goto_0

    .line 692
    .restart local v3    # "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :pswitch_3
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Concurrent write or flush operation during close async"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 704
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown flush status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 709
    .end local v3    # "fstatus":Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    :cond_0
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->DONE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 710
    .local v3, "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 711
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 712
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->processAnyHandshakes(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    move-result-object v4

    move-object v3, v4

    goto :goto_3

    .line 713
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslInboundClosed:Z

    if-eqz v4, :cond_2

    .line 714
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->processOneHandshake(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    move-result-object v4

    move-object v3, v4

    .line 718
    :cond_2
    :goto_3
    sget-object v4, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 746
    new-instance v4, Ljava/lang/AssertionError;

    goto :goto_4

    .line 744
    :pswitch_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 738
    :pswitch_5
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    iput-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    .line 738
    return-object v0

    .line 736
    :pswitch_6
    :try_start_2
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->SO_WAIT_READ:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 771
    iput-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    .line 736
    return-object v0

    .line 732
    :pswitch_7
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 733
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->processAnyHandshakes(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    move-result-object v4

    move-object v3, v4

    .line 734
    goto :goto_3

    .line 723
    :pswitch_8
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V

    .line 724
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->DONE:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 771
    iput-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    .line 724
    return-object v0

    .line 720
    :pswitch_9
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Concurrent operations during close async."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 746
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown handshake process status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 750
    .end local v2    # "continueFlush":Z
    .end local v3    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :catchall_0
    move-exception v2

    .line 752
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 760
    :try_start_6
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_5

    .line 762
    instance-of v3, v2, Ljava/lang/Error;

    if-nez v3, :cond_4

    .line 764
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_3

    .line 765
    move-object v0, v2

    check-cast v0, Ljava/io/IOException;

    :goto_5
    throw v0

    .line 767
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 768
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    throw v3

    .line 763
    :cond_4
    move-object v0, v2

    check-cast v0, Ljava/lang/Error;

    :goto_7
    throw v0

    .line 761
    :cond_5
    move-object v0, v2

    check-cast v0, Ljava/lang/RuntimeException;

    :goto_8
    throw v0

    .line 760
    :catchall_1
    move-exception v3

    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_8

    .line 762
    instance-of v3, v2, Ljava/lang/Error;

    if-nez v3, :cond_7

    .line 764
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_6

    .line 765
    move-object v0, v2

    check-cast v0, Ljava/io/IOException;

    goto :goto_5

    .line 767
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 768
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 763
    :cond_7
    move-object v0, v2

    check-cast v0, Ljava/lang/Error;

    goto :goto_7

    .line 761
    :cond_8
    move-object v0, v2

    check-cast v0, Ljava/lang/RuntimeException;

    goto :goto_8

    .line 753
    :catch_0
    move-exception v3

    .line 760
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_b

    .line 762
    instance-of v3, v2, Ljava/lang/Error;

    if-nez v3, :cond_a

    .line 764
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_9

    .line 765
    move-object v0, v2

    check-cast v0, Ljava/io/IOException;

    goto :goto_5

    .line 767
    :cond_9
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 768
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 763
    :cond_a
    move-object v0, v2

    check-cast v0, Ljava/lang/Error;

    goto :goto_7

    .line 761
    :cond_b
    move-object v0, v2

    check-cast v0, Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    .line 771
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public closeForcefully()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 780
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    .line 783
    nop

    .line 784
    return-void

    .line 782
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    throw v1
.end method

.method public declared-synchronized configureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->isBlocking()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 210
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->NULL_READ_CHANNEL:Ljava/nio/channels/ReadableByteChannel;

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->wrappedReadChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 219
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 220
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 223
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 222
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->wrappedReadChannel:Ljava/nio/channels/ReadableByteChannel;

    goto :goto_0

    .line 225
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->wrappedReadChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 227
    :goto_0
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->configuredBlocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 208
    .end local p1    # "block":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public flush()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    const/4 v0, 0x0

    return v0

    .line 791
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public isTrustCapable()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->authenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->peerTrusted:Z

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "toFill"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "toFill"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 279
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 11
    .param p1, "toFill"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 286
    if-ltz p2, :cond_12

    if-ltz p3, :cond_12

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_12

    .line 292
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    if-nez v0, :cond_11

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "toFillRemaining":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 302
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_0
    if-gtz v0, :cond_1

    .line 305
    const-wide/16 v1, 0x0

    return-wide v1

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 324
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->transfer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 326
    .local v1, "count":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 327
    int-to-long v2, v1

    .line 330
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 327
    return-wide v2

    .line 330
    .end local v1    # "count":I
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    nop

    .line 333
    const/4 v1, 0x0

    .line 335
    .local v1, "readCount":I
    :goto_1
    const-wide/16 v2, -0x1

    if-nez v1, :cond_e

    .line 336
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 337
    return-wide v2

    .line 340
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->processAnyHandshakes(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    move-result-object v4

    .line 343
    .local v4, "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 345
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-lez v5, :cond_5

    .line 346
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 347
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v5, p1, p2, p3}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->transfer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)I

    move-result v5

    move v1, v5

    .line 349
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_4

    :cond_5
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 354
    nop

    .line 356
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v6, :cond_a

    .line 358
    const/4 v5, 0x0

    .line 359
    .local v5, "progress":Z
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 361
    :try_start_2
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-lez v6, :cond_7

    .line 366
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 367
    .local v6, "initialPos":I
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 368
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->appRecvBuffer:Ljava/nio/ByteBuffer;

    .line 369
    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v7

    .line 370
    .local v7, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 372
    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 373
    .local v8, "updatedPos":I
    if-eq v8, v6, :cond_6

    .line 375
    const/4 v5, 0x1

    .line 378
    :cond_6
    sget-object v9, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 390
    :pswitch_0
    iget-object v9, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v9}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/Socket;->shutdownInput()V

    .line 391
    goto :goto_2

    .line 386
    :pswitch_1
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    .end local v0    # "toFillRemaining":I
    .end local v1    # "readCount":I
    .end local v4    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    .end local v5    # "progress":Z
    .end local p1    # "toFill":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v2

    .line 398
    .end local v6    # "initialPos":I
    .end local v7    # "engineResult":Ljavax/net/ssl/SSLEngineResult;
    .end local v8    # "updatedPos":I
    .restart local v0    # "toFillRemaining":I
    .restart local v1    # "readCount":I
    .restart local v4    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    .restart local v5    # "progress":Z
    .restart local p1    # "toFill":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_7
    :goto_2
    :pswitch_2
    if-nez v5, :cond_9

    .line 399
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readFromChannel()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    .local v6, "count":I
    if-gez v6, :cond_8

    .line 402
    move v1, v6

    goto :goto_3

    .line 403
    :cond_8
    if-nez v6, :cond_9

    .line 409
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .end local v6    # "count":I
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 410
    nop

    .line 411
    .end local v5    # "progress":Z
    nop

    .line 465
    .end local v4    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    goto/16 :goto_1

    .line 409
    .restart local v4    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    .restart local v5    # "progress":Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 421
    .end local v5    # "progress":Z
    :cond_a
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 427
    goto/16 :goto_1

    .line 431
    :cond_b
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->APP_WAIT:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    if-ne v4, v5, :cond_c

    .line 436
    goto/16 :goto_1

    .line 460
    :cond_c
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->AGAIN:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    if-eq v4, v5, :cond_d

    goto :goto_4

    .line 461
    :cond_d
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 353
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 467
    .end local v4    # "pstatus":Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    :cond_e
    :goto_4
    if-gez v1, :cond_f

    .line 472
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    .line 473
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslInboundClosed:Z

    .line 476
    :cond_f
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 477
    return-wide v2

    .line 480
    :cond_10
    int-to-long v2, v1

    return-wide v2

    .line 330
    .end local v1    # "readCount":I
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 293
    .end local v0    # "toFillRemaining":I
    :cond_11
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 289
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "toSend"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 485
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "toSend"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 490
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 5
    .param p1, "toSend"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 497
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_5

    .line 503
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->channelClosed:Z

    if-nez v0, :cond_4

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "toSendRemaining":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 509
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 512
    const-wide/16 v1, 0x0

    return-wide v1

    .line 514
    :cond_1
    move v1, v0

    .line 520
    .local v1, "toSendTotal":I
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 523
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 525
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->netXmitBuffer:Ljava/nio/ByteBuffer;

    .line 526
    invoke-virtual {v2, p1, p2, p3, v3}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 528
    .local v2, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v3

    sub-int/2addr v0, v3

    .line 530
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 544
    :pswitch_0
    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "Attempt to write to a closed SSL Channel"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v0    # "toSendRemaining":I
    .end local v1    # "toSendTotal":I
    .end local p1    # "toSend":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v3

    .line 537
    .restart local v0    # "toSendRemaining":I
    .restart local v1    # "toSendTotal":I
    .restart local p1    # "toSend":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :pswitch_1
    goto :goto_1

    .line 541
    :pswitch_2
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    .end local v0    # "toSendRemaining":I
    .end local v1    # "toSendTotal":I
    .end local p1    # "toSend":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .end local v2    # "engineResult":Ljavax/net/ssl/SSLEngineResult;
    .restart local v0    # "toSendRemaining":I
    .restart local v1    # "toSendTotal":I
    .restart local p1    # "toSend":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    nop

    .line 554
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->processAnyHandshakes(Z)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 555
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->flush_internal()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 557
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_2

    .line 562
    :cond_3
    sub-int v2, v1, v0

    int-to-long v2, v2

    return-wide v2

    .line 551
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 504
    .end local v0    # "toSendRemaining":I
    .end local v1    # "toSendTotal":I
    :cond_4
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 500
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
