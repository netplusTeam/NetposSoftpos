.class public Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;
.super Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;
.source "ChannelSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/channel/ChannelSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandCloseable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/server/channel/ChannelSession;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/server/channel/ChannelSession;

    .line 146
    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    .line 147
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic lambda$close$0(Ljava/util/TimerTask;Lorg/apache/sshd/common/future/CloseFuture;)V
    .locals 0
    .param p0, "task"    # Ljava/util/TimerTask;
    .param p1, "future"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 205
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    return-void
.end method


# virtual methods
.method public addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 163
    return-void
.end method

.method public close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    .locals 11
    .param p1, "immediately"    # Z

    .line 172
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 175
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/io/Closeable;

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v2, v2, Lorg/apache/sshd/server/channel/ChannelSession;->receiver:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v2, v2, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataWriter:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly([Ljava/io/Closeable;)Ljava/io/IOException;

    move-result-object v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 177
    .local v2, "debugEnabled":Z
    if-eqz v1, :cond_1

    .line 178
    if-eqz v2, :cond_1

    .line 179
    iget-object v5, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    .line 180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    const/4 v0, 0x3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    .line 179
    const-string v0, "close({})[immediately={}] failed ({}) to close receiver(s): {}"

    invoke-interface {v5, v0, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_1
    new-instance v0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$1;-><init>(Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;)V

    .line 191
    .local v0, "task":Ljava/util/TimerTask;
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    .line 192
    .local v3, "channel":Lorg/apache/sshd/server/channel/ChannelSession;
    sget-wide v4, Lorg/apache/sshd/server/ServerFactoryManager;->DEFAULT_COMMAND_EXIT_TIMEOUT:J

    const-string v6, "command-exit-timeout"

    invoke-static {v3, v6, v4, v5}, Lorg/apache/sshd/common/PropertyResolverUtils;->getLongProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 195
    .local v4, "timeout":J
    if-eqz v2, :cond_2

    .line 196
    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->log:Lorg/slf4j/Logger;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "Wait {} ms for shell to exit cleanly on {}"

    invoke-interface {v6, v8, v7, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    :cond_2
    invoke-virtual {v3}, Lorg/apache/sshd/server/channel/ChannelSession;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v6

    .line 200
    .local v6, "s":Lorg/apache/sshd/common/session/Session;
    nop

    .line 201
    invoke-interface {v6}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v7

    const-string v8, "No factory manager"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/common/FactoryManager;

    .line 202
    .local v7, "manager":Lorg/apache/sshd/common/FactoryManager;
    nop

    .line 203
    invoke-interface {v7}, Lorg/apache/sshd/common/FactoryManager;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    const-string v9, "No scheduling service"

    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/ScheduledExecutorService;

    .line 204
    .local v8, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v0, v4, v5, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 205
    iget-object v9, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v9, v9, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    new-instance v10, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$$ExternalSyntheticLambda0;-><init>(Ljava/util/TimerTask;)V

    invoke-interface {v9, v10}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    goto :goto_1

    .line 173
    .end local v0    # "task":Ljava/util/TimerTask;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "debugEnabled":Z
    .end local v3    # "channel":Lorg/apache/sshd/server/channel/ChannelSession;
    .end local v4    # "timeout":J
    .end local v6    # "s":Lorg/apache/sshd/common/session/Session;
    .end local v7    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v8    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 207
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->isClosed()Z

    move-result v0

    return v0
.end method

.method public removeCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/future/CloseFuture;->removeListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 168
    return-void
.end method
