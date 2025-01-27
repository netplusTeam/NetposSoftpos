.class public interface abstract Lorg/apache/sshd/server/shell/InvertedShell;
.super Ljava/lang/Object;
.source "InvertedShell.java"

# interfaces
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/server/session/ServerSessionHolder;
.implements Lorg/apache/sshd/server/command/CommandLifecycle;
.implements Lorg/apache/sshd/server/SessionAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/server/session/ServerSession;",
        ">;",
        "Lorg/apache/sshd/server/session/ServerSessionHolder;",
        "Lorg/apache/sshd/server/command/CommandLifecycle;",
        "Lorg/apache/sshd/server/SessionAware;"
    }
.end annotation


# virtual methods
.method public abstract exitValue()I
.end method

.method public abstract getChannelSession()Lorg/apache/sshd/server/channel/ChannelSession;
.end method

.method public abstract getErrorStream()Ljava/io/InputStream;
.end method

.method public abstract getInputStream()Ljava/io/OutputStream;
.end method

.method public abstract getOutputStream()Ljava/io/InputStream;
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 39
    invoke-interface {p0}, Lorg/apache/sshd/server/shell/InvertedShell;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 47
    invoke-interface {p0}, Lorg/apache/sshd/server/shell/InvertedShell;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public abstract isAlive()Z
.end method
