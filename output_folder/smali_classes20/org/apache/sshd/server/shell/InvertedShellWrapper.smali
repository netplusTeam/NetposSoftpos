.class public Lorg/apache/sshd/server/shell/InvertedShellWrapper;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "InvertedShellWrapper.java"

# interfaces
.implements Lorg/apache/sshd/server/command/Command;
.implements Lorg/apache/sshd/server/SessionAware;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_PUMP_SLEEP_TIME:J = 0x1L

.field public static final PUMP_SLEEP_TIME:Ljava/lang/String; = "inverted-shell-wrapper-pump-sleep"


# instance fields
.field private final bufferSize:I

.field private callback:Lorg/apache/sshd/server/ExitCallback;

.field private err:Ljava/io/OutputStream;

.field private final executor:Ljava/util/concurrent/Executor;

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private pumpSleepTime:J

.field private final shell:Lorg/apache/sshd/server/shell/InvertedShell;

.field private shellErr:Ljava/io/InputStream;

.field private shellIn:Ljava/io/OutputStream;

.field private shellOut:Ljava/io/InputStream;

.field private shutdownExecutor:Z


# direct methods
.method public constructor <init>(Lorg/apache/sshd/server/shell/InvertedShell;)V
    .locals 1
    .param p1, "shell"    # Lorg/apache/sshd/server/shell/InvertedShell;

    .line 90
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/server/shell/InvertedShellWrapper;-><init>(Lorg/apache/sshd/server/shell/InvertedShell;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/server/shell/InvertedShell;I)V
    .locals 2
    .param p1, "shell"    # Lorg/apache/sshd/server/shell/InvertedShell;
    .param p2, "bufferSize"    # I

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/sshd/server/shell/InvertedShellWrapper;-><init>(Lorg/apache/sshd/server/shell/InvertedShell;Ljava/util/concurrent/Executor;ZI)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/server/shell/InvertedShell;Ljava/util/concurrent/Executor;ZI)V
    .locals 6
    .param p1, "shell"    # Lorg/apache/sshd/server/shell/InvertedShell;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "shutdownExecutor"    # Z
    .param p4, "bufferSize"    # I

    .line 112
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 80
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->pumpSleepTime:J

    .line 113
    const-string v0, "No shell"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/shell/InvertedShell;

    iput-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    .line 114
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shell[0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newSingleThreadExecutor(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 115
    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p4, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    int-to-long v3, p4

    const-string v5, "Copy buffer size too small: %d"

    invoke-static {v0, v5, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 116
    iput p4, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->bufferSize:I

    .line 117
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    iput-boolean v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shutdownExecutor:Z

    .line 118
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .locals 11
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    .local v0, "debugEnabled":Z
    const/4 v1, 0x0

    .line 162
    .local v1, "err":Ljava/lang/Throwable;
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_1
    iget-object v6, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v6, p1}, Lorg/apache/sshd/server/shell/InvertedShell;->destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v6

    .line 164
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v7, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    const-string v8, "destroy({}) failed ({}) to destroy shell: {}"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object p0, v9, v4

    .line 165
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 164
    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v7, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "destroy("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") shell destruction failure details"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local p0    # "this":Lorg/apache/sshd/server/shell/InvertedShellWrapper;
    :cond_0
    invoke-static {v1, v6}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    move-object v1, v7

    .line 172
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-boolean v6, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shutdownExecutor:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->executor:Ljava/util/concurrent/Executor;

    instance-of v7, v6, Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_2

    .line 174
    :try_start_3
    check-cast v6, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    goto :goto_1

    .line 175
    :catch_0
    move-exception v6

    .line 176
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v7, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    const-string v8, "destroy({}) failed ({}) to shut down executor: {}"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 177
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 176
    invoke-interface {v7, v8, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-eqz v0, :cond_1

    .line 179
    iget-object v2, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroy("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") executor shutdown failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :cond_1
    invoke-static {v1, v6}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    move-object v1, v2

    .line 185
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 186
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_3

    .line 187
    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 189
    :cond_3
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    :cond_4
    monitor-exit p0

    return-void

    .line 158
    .end local v0    # "debugEnabled":Z
    .end local v1    # "err":Ljava/lang/Throwable;
    .end local p1    # "channel":Lorg/apache/sshd/server/channel/ChannelSession;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected pumpStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 246
    .local v0, "available":I
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 247
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 248
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 249
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 250
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 251
    const/4 v1, 0x1

    return v1

    .line 248
    .end local v2    # "len":I
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 254
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 253
    :cond_2
    :goto_0
    nop

    .line 256
    :goto_1
    return v1
.end method

.method protected pumpStreams()V
    .locals 7

    .line 199
    :try_start_0
    iget v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->bufferSize:I

    new-array v0, v0, [B

    .line 200
    .local v0, "buffer":[B
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shellIn:Ljava/io/OutputStream;

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->pumpStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    goto :goto_0

    .line 203
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shellOut:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->pumpStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shellErr:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->err:Ljava/io/OutputStream;

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->pumpStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v1}, Lorg/apache/sshd/server/shell/InvertedShell;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shellOut:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shellErr:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_3

    .line 215
    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->callback:Lorg/apache/sshd/server/ExitCallback;

    iget-object v2, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v2}, Lorg/apache/sshd/server/shell/InvertedShell;->exitValue()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/sshd/server/ExitCallback;->onExit(I)V

    .line 216
    return-void

    .line 222
    :cond_3
    iget-wide v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->pumpSleepTime:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    .end local v0    # "buffer":[B
    :catchall_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 227
    .local v1, "debugEnabled":Z
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v2}, Lorg/apache/sshd/server/shell/InvertedShell;->getChannelSession()Lorg/apache/sshd/server/channel/ChannelSession;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/sshd/server/shell/InvertedShell;->destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    goto :goto_1

    .line 228
    :catchall_1
    move-exception v2

    .line 229
    .local v2, "err":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 229
    const-string v5, "pumpStreams({}) failed ({}) to destroy shell: {}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    if-eqz v1, :cond_4

    .line 232
    iget-object v3, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pumpStreams("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") shell destruction failure details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .end local v2    # "err":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v2}, Lorg/apache/sshd/server/shell/InvertedShell;->exitValue()I

    move-result v2

    .line 237
    .local v2, "exitValue":I
    if-eqz v1, :cond_5

    .line 238
    iget-object v3, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while pumping the streams (exit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    :cond_5
    iget-object v3, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->callback:Lorg/apache/sshd/server/ExitCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/apache/sshd/server/ExitCallback;->onExit(ILjava/lang/String;)V

    .line 242
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "debugEnabled":Z
    .end local v2    # "exitValue":I
    return-void
.end method

.method public setErrorStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/OutputStream;

    .line 132
    iput-object p1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->err:Ljava/io/OutputStream;

    .line 133
    return-void
.end method

.method public setExitCallback(Lorg/apache/sshd/server/ExitCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/apache/sshd/server/ExitCallback;

    .line 137
    iput-object p1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->callback:Lorg/apache/sshd/server/ExitCallback;

    .line 138
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 122
    iput-object p1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->in:Ljava/io/InputStream;

    .line 123
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 127
    iput-object p1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->out:Ljava/io/OutputStream;

    .line 128
    return-void
.end method

.method public setSession(Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 142
    const-string v0, "inverted-shell-wrapper-pump-sleep"

    const-wide/16 v1, 0x1

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/sshd/server/session/ServerSession;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->pumpSleepTime:J

    .line 143
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid inverted-shell-wrapper-pump-sleep: %d"

    invoke-static {v2, v3, v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 144
    iget-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v0, p1}, Lorg/apache/sshd/server/shell/InvertedShell;->setSession(Lorg/apache/sshd/server/session/ServerSession;)V

    .line 145
    return-void
.end method

.method public declared-synchronized start(Lorg/apache/sshd/server/channel/ChannelSession;Lorg/apache/sshd/server/Environment;)V
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "env"    # Lorg/apache/sshd/server/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/server/shell/InvertedShell;->start(Lorg/apache/sshd/server/channel/ChannelSession;Lorg/apache/sshd/server/Environment;)V

    .line 151
    iget-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v0}, Lorg/apache/sshd/server/shell/InvertedShell;->getInputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shellIn:Ljava/io/OutputStream;

    .line 152
    iget-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v0}, Lorg/apache/sshd/server/shell/InvertedShell;->getOutputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shellOut:Ljava/io/InputStream;

    .line 153
    iget-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-interface {v0}, Lorg/apache/sshd/server/shell/InvertedShell;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shellErr:Ljava/io/InputStream;

    .line 154
    iget-object v0, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/apache/sshd/server/shell/InvertedShellWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/sshd/server/shell/InvertedShellWrapper$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/server/shell/InvertedShellWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 149
    .end local p0    # "this":Lorg/apache/sshd/server/shell/InvertedShellWrapper;
    .end local p1    # "channel":Lorg/apache/sshd/server/channel/ChannelSession;
    .end local p2    # "env":Lorg/apache/sshd/server/Environment;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/server/shell/InvertedShellWrapper;->shell:Lorg/apache/sshd/server/shell/InvertedShell;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
