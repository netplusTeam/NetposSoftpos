.class public interface abstract Lorg/apache/sshd/server/shell/ShellFactory;
.super Ljava/lang/Object;
.source "ShellFactory.java"


# virtual methods
.method public abstract createShell(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/command/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
