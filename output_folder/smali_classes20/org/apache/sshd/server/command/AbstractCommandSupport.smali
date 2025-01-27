.class public abstract Lorg/apache/sshd/server/command/AbstractCommandSupport;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractCommandSupport.java"

# interfaces
.implements Lorg/apache/sshd/server/command/Command;
.implements Ljava/lang/Runnable;
.implements Lorg/apache/sshd/common/util/threads/ExecutorServiceCarrier;
.implements Lorg/apache/sshd/server/SessionAware;
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/server/session/ServerSessionHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;",
        "Lorg/apache/sshd/server/command/Command;",
        "Ljava/lang/Runnable;",
        "Lorg/apache/sshd/common/util/threads/ExecutorServiceCarrier;",
        "Lorg/apache/sshd/server/SessionAware;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/server/session/ServerSession;",
        ">;",
        "Lorg/apache/sshd/server/session/ServerSessionHolder;"
    }
.end annotation


# instance fields
.field protected callback:Lorg/apache/sshd/server/ExitCallback;

.field protected cbCalled:Z

.field protected cmdFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field protected volatile cmdRunner:Ljava/lang/Thread;

.field protected final command:Ljava/lang/String;

.field protected environment:Lorg/apache/sshd/server/Environment;

.field protected err:Ljava/io/OutputStream;

.field protected executorService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

.field protected in:Ljava/io/InputStream;

.field protected out:Ljava/io/OutputStream;

.field protected serverSession:Lorg/apache/sshd/server/session/ServerSession;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 63
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->command:Ljava/lang/String;

    .line 66
    if-nez p2, :cond_1

    .line 67
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    const/16 v1, 0x5f

    .line 69
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 70
    .local v0, "poolName":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newSingleThreadExecutor(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->executorService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 71
    .end local v0    # "poolName":Ljava/lang/String;
    goto :goto_1

    .line 72
    :cond_1
    iput-object p2, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->executorService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 74
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .locals 9
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 169
    .local v0, "debugEnabled":Z
    iget-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cmdFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cmdRunner:Ljava/lang/Thread;

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v1, v6, :cond_0

    .line 172
    iget-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cmdFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    .line 174
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 175
    iget-object v6, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v3

    aput-object p0, v7, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "destroy({})[{}] - cancel pending future={}"

    invoke-interface {v6, v8, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cmdFuture:Ljava/util/concurrent/Future;

    .line 181
    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v6

    .line 182
    .local v6, "executors":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->isShutdown()Z

    move-result v7

    if-nez v7, :cond_1

    .line 183
    invoke-interface {v6}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v7

    .line 184
    .local v7, "runners":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Runnable;>;"
    if-eqz v0, :cond_1

    .line 185
    iget-object v8, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p0, v4, v5

    .line 186
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 185
    const-string v2, "destroy({})[{}] - shutdown executor service - runners count={}"

    invoke-interface {v8, v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    .end local v7    # "runners":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Runnable;>;"
    :cond_1
    iput-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->executorService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 190
    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Lorg/apache/sshd/server/Environment;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->environment:Lorg/apache/sshd/server/Environment;

    return-object v0
.end method

.method public getErrorStream()Ljava/io/OutputStream;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->err:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->executorService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    return-object v0
.end method

.method public getExitCallback()Lorg/apache/sshd/server/ExitCallback;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->callback:Lorg/apache/sshd/server/ExitCallback;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getServerSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method protected getStartedCommandFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cmdFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method synthetic lambda$start$0$org-apache-sshd-server-command-AbstractCommandSupport()V
    .locals 1

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cmdRunner:Ljava/lang/Thread;

    .line 155
    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->run()V

    .line 156
    return-void
.end method

.method protected onExit(I)V
    .locals 1
    .param p1, "exitValue"    # I

    .line 193
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->onExit(ILjava/lang/String;)V

    .line 194
    return-void
.end method

.method protected onExit(ILjava/lang/String;)V
    .locals 9
    .param p1, "exitValue"    # I
    .param p2, "exitMessage"    # Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    .line 198
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-boolean v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cbCalled:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object p0, v5, v6

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    aput-object p2, v5, v2

    .line 200
    const-string v2, "onExit({})[{}] ignore exitValue={}, message={} - already called"

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->getExitCallback()Lorg/apache/sshd/server/ExitCallback;

    move-result-object v1

    .line 208
    .local v1, "cb":Lorg/apache/sshd/server/ExitCallback;
    :try_start_0
    iget-object v7, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    iget-object v7, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    const-string v8, "onExit({})[{}] exiting - value={}, message={}"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object p0, v5, v6

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    aput-object p2, v5, v2

    .line 209
    invoke-interface {v7, v8, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_2
    invoke-interface {v1, p1, p2}, Lorg/apache/sshd/server/ExitCallback;->onExit(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iput-boolean v6, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cbCalled:Z

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :catchall_0
    move-exception v2

    iput-boolean v6, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cbCalled:Z

    .line 215
    throw v2
.end method

.method public setErrorStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/OutputStream;

    .line 124
    iput-object p1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->err:Ljava/io/OutputStream;

    .line 125
    return-void
.end method

.method public setExitCallback(Lorg/apache/sshd/server/ExitCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/apache/sshd/server/ExitCallback;

    .line 133
    iput-object p1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->callback:Lorg/apache/sshd/server/ExitCallback;

    .line 134
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 106
    iput-object p1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->in:Ljava/io/InputStream;

    .line 107
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 115
    iput-object p1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->out:Ljava/io/OutputStream;

    .line 116
    return-void
.end method

.method public setSession(Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 92
    iput-object p1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    .line 93
    return-void
.end method

.method public start(Lorg/apache/sshd/server/channel/ChannelSession;Lorg/apache/sshd/server/Environment;)V
    .locals 4
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "env"    # Lorg/apache/sshd/server/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iput-object p2, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->environment:Lorg/apache/sshd/server/Environment;

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    const-string v1, "start({}) starting runner for command={}"

    iget-object v2, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->command:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    .line 153
    .local v0, "executors":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    new-instance v1, Lorg/apache/sshd/server/command/AbstractCommandSupport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/server/command/AbstractCommandSupport;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->cmdFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "executors":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    nop

    .line 163
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to start command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/server/command/AbstractCommandSupport;->command:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
