.class public Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;
.super Ljava/io/OutputStream;
.source "ChannelPipedOutputStream.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# instance fields
.field private final b:[B

.field private closed:Z

.field private final sink:Lorg/apache/sshd/common/channel/ChannelPipedSink;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/channel/ChannelPipedSink;)V
    .locals 1
    .param p1, "sink"    # Lorg/apache/sshd/common/channel/ChannelPipedSink;

    .line 36
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->b:[B

    .line 37
    iput-object p1, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->sink:Lorg/apache/sshd/common/channel/ChannelPipedSink;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->sink:Lorg/apache/sshd/common/channel/ChannelPipedSink;

    invoke-interface {v1}, Lorg/apache/sshd/common/channel/ChannelPipedSink;->eof()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iput-boolean v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->closed:Z

    .line 75
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->closed:Z

    .line 75
    throw v1

    .line 77
    :cond_0
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "flush() Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->b:[B

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->b:[B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->write([BII)V

    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->sink:Lorg/apache/sshd/common/channel/ChannelPipedSink;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/common/channel/ChannelPipedSink;->receive([BII)V

    .line 54
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write(len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Stream has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
