.class public interface abstract Lorg/apache/sshd/client/channel/ClientChannel;
.super Ljava/lang/Object;
.source "ClientChannel.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/Channel;
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/client/channel/ClientChannel$Streaming;
    }
.end annotation


# direct methods
.method public static validateCommandExitStatusCode(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "exitStatus"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 136
    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/rmi/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote command failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/rmi/ServerException;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/rmi/ServerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/rmi/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 137
    :cond_1
    new-instance v0, Ljava/rmi/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No exit status returned for command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/rmi/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getAsyncErr()Lorg/apache/sshd/common/io/IoInputStream;
.end method

.method public abstract getAsyncIn()Lorg/apache/sshd/common/io/IoOutputStream;
.end method

.method public abstract getAsyncOut()Lorg/apache/sshd/common/io/IoInputStream;
.end method

.method public abstract getChannelState()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChannelType()Ljava/lang/String;
.end method

.method public getClientSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 52
    invoke-interface {p0}, Lorg/apache/sshd/client/channel/ClientChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSession;

    return-object v0
.end method

.method public abstract getExitSignal()Ljava/lang/String;
.end method

.method public abstract getExitStatus()Ljava/lang/Integer;
.end method

.method public abstract getInvertedErr()Ljava/io/InputStream;
.end method

.method public abstract getInvertedIn()Ljava/io/OutputStream;
.end method

.method public abstract getInvertedOut()Ljava/io/InputStream;
.end method

.method public abstract getStreaming()Lorg/apache/sshd/client/channel/ClientChannel$Streaming;
.end method

.method public abstract open()Lorg/apache/sshd/client/future/OpenFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setErr(Ljava/io/OutputStream;)V
.end method

.method public abstract setIn(Ljava/io/InputStream;)V
.end method

.method public abstract setOut(Ljava/io/OutputStream;)V
.end method

.method public abstract setStreaming(Lorg/apache/sshd/client/channel/ClientChannel$Streaming;)V
.end method

.method public abstract waitFor(Ljava/util/Collection;J)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;J)",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;"
        }
    .end annotation
.end method
