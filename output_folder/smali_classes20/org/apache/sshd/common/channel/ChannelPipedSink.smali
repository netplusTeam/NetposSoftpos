.class public interface abstract Lorg/apache/sshd/common/channel/ChannelPipedSink;
.super Ljava/lang/Object;
.source "ChannelPipedSink.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# virtual methods
.method public abstract eof()V
.end method

.method public abstract receive([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
