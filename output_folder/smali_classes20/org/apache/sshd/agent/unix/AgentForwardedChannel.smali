.class public Lorg/apache/sshd/agent/unix/AgentForwardedChannel;
.super Lorg/apache/sshd/client/channel/AbstractClientChannel;
.source "AgentForwardedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final socket:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "socket"    # J
    .param p3, "channelType"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p3}, Lorg/apache/sshd/client/channel/AbstractClientChannel;-><init>(Ljava/lang/String;)V

    .line 39
    iput-wide p1, p0, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->socket:J

    .line 40
    return-void
.end method


# virtual methods
.method protected declared-synchronized doOpen()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Async:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Asynchronous streaming isn\'t supported yet on this channel"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 68
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->log:Lorg/slf4j/Logger;

    const/16 v6, 0x5e

    const/4 v7, 0x1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v0, p0, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->invertedIn:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 66
    .end local p0    # "this":Lorg/apache/sshd/agent/unix/AgentForwardedChannel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doWriteData([BIJ)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 81
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v1, "Data length exceeds int boundaries: %d"

    invoke-static {v0, v1, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 82
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v0

    .line 83
    .local v0, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v0, p3, p4}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 85
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->socket:J

    long-to-int v3, p3

    invoke-static {v1, v2, p1, p2, v3}, Lorg/apache/tomcat/jni/Socket;->send(J[BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .local v1, "result":I
    if-ltz v1, :cond_1

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_1
    invoke-static {v1}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->toIOException(I)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v0    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local v1    # "result":I
    .end local p0    # "this":Lorg/apache/sshd/agent/unix/AgentForwardedChannel;
    .end local p1    # "data":[B
    .end local p2    # "off":I
    .end local p3    # "len":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    .line 73
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 74
    invoke-super {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/agent/unix/AgentForwardedChannel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/agent/unix/AgentForwardedChannel;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method synthetic lambda$getInnerCloseable$0$org-apache-sshd-agent-unix-AgentForwardedChannel()V
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->socket:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/Socket;->close(J)I

    return-void
.end method

.method public run()V
    .locals 6

    .line 45
    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 46
    .local v0, "buf":[B
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v2

    .line 48
    .local v2, "invIn":Ljava/io/OutputStream;
    :goto_0
    iget-wide v3, p0, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->socket:J

    array-length v5, v0

    invoke-static {v3, v4, v0, v1, v5}, Lorg/apache/tomcat/jni/Socket;->recv(J[BII)I

    move-result v3

    .line 49
    .local v3, "result":I
    const v4, -0x1117e

    if-ne v3, v4, :cond_0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    if-ltz v3, :cond_1

    .line 55
    invoke-virtual {v2, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 56
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 57
    .end local v3    # "result":I
    goto :goto_0

    .line 52
    .restart local v3    # "result":I
    :cond_1
    invoke-static {v3}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->toIOException(I)Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0    # "buf":[B
    .end local v2    # "invIn":Ljava/io/OutputStream;
    .end local v3    # "result":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->log:Lorg/slf4j/Logger;

    const-string v3, "Processing loop exception"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 62
    nop

    .line 63
    return-void

    .line 61
    :goto_2
    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 62
    throw v0
.end method
