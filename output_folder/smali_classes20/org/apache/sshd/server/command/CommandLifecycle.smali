.class public interface abstract Lorg/apache/sshd/server/command/CommandLifecycle;
.super Ljava/lang/Object;
.source "CommandLifecycle.java"


# virtual methods
.method public abstract destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract start(Lorg/apache/sshd/server/channel/ChannelSession;Lorg/apache/sshd/server/Environment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
