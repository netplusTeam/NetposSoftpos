.class public interface abstract Lorg/apache/sshd/server/command/Command;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Lorg/apache/sshd/server/command/CommandLifecycle;


# virtual methods
.method public abstract setErrorStream(Ljava/io/OutputStream;)V
.end method

.method public abstract setExitCallback(Lorg/apache/sshd/server/ExitCallback;)V
.end method

.method public abstract setInputStream(Ljava/io/InputStream;)V
.end method

.method public abstract setOutputStream(Ljava/io/OutputStream;)V
.end method
