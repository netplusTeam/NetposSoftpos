.class public Lorg/apache/sshd/server/channel/AsyncDataReceiver;
.super Ljava/lang/Object;
.source "AsyncDataReceiver.java"

# interfaces
.implements Lorg/apache/sshd/server/channel/ChannelDataReceiver;


# instance fields
.field private in:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/channel/Channel;)V
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    invoke-direct {v0, p1}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;-><init>(Lorg/apache/sshd/common/channel/Channel;)V

    iput-object v0, p0, Lorg/apache/sshd/server/channel/AsyncDataReceiver;->in:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    .line 34
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

    .line 48
    iget-object v0, p0, Lorg/apache/sshd/server/channel/AsyncDataReceiver;->in:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 49
    return-void
.end method

.method public data(Lorg/apache/sshd/server/channel/ChannelSession;[BII)I
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "buf"    # [B
    .param p3, "start"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/server/channel/AsyncDataReceiver;->in:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    new-instance v1, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v1, p2, p3, p4}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BII)V

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->write(Lorg/apache/sshd/common/util/Readable;)V

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getIn()Lorg/apache/sshd/common/io/IoInputStream;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/server/channel/AsyncDataReceiver;->in:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    return-object v0
.end method
