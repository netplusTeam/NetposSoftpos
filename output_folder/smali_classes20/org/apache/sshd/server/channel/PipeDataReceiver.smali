.class public Lorg/apache/sshd/server/channel/PipeDataReceiver;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "PipeDataReceiver.java"

# interfaces
.implements Lorg/apache/sshd/server/channel/ChannelDataReceiver;


# instance fields
.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/PropertyResolver;Lorg/apache/sshd/common/channel/Window;)V
    .locals 5
    .param p1, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "localWindow"    # Lorg/apache/sshd/common/channel/Window;

    .line 42
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;-><init>(Lorg/apache/sshd/common/PropertyResolver;Lorg/apache/sshd/common/channel/Window;)V

    .line 44
    .local v0, "in":Lorg/apache/sshd/common/channel/ChannelPipedInputStream;
    iput-object v0, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->in:Ljava/io/InputStream;

    .line 45
    new-instance v1, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;-><init>(Lorg/apache/sshd/common/channel/ChannelPipedSink;)V

    iput-object v1, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->out:Ljava/io/OutputStream;

    .line 46
    iget-object v1, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;

    iget-object v2, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->out:Ljava/io/OutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->log:Lorg/slf4j/Logger;

    invoke-direct {v1, v2, v3, v4, p1}, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/slf4j/Logger;Lorg/apache/sshd/common/PropertyResolver;)V

    iput-object v1, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->out:Ljava/io/OutputStream;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 58
    return-void
.end method

.method public data(Lorg/apache/sshd/server/channel/ChannelSession;[BII)I
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "buf"    # [B
    .param p3, "start"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getIn()Ljava/io/InputStream;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/server/channel/PipeDataReceiver;->in:Ljava/io/InputStream;

    return-object v0
.end method
