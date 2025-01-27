.class public Lorg/apache/sshd/server/shell/ProcessShell;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "ProcessShell.java"

# interfaces
.implements Lorg/apache/sshd/server/shell/InvertedShell;


# instance fields
.field private channel:Lorg/apache/sshd/server/channel/ChannelSession;

.field private cmdValue:Ljava/lang/String;

.field private final command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private err:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

.field private in:Lorg/apache/sshd/server/shell/TtyFilterOutputStream;

.field private out:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

.field private process:Ljava/lang/Process;

.field private session:Lorg/apache/sshd/server/session/ServerSession;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "command":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    const-string v2, "No process shell command(s)"

    invoke-static {p1, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->command:Ljava/util/List;

    .line 69
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->cmdValue:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # [Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/sshd/server/shell/ProcessShell;-><init>(Ljava/util/Collection;)V

    .line 63
    return-void
.end method


# virtual methods
.method public destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .locals 14
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;

    .line 178
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 179
    .local v0, "debugEnabled":Z
    iget-object v1, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    if-eqz v1, :cond_1

    .line 180
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/sshd/server/shell/ProcessShell;->cmdValue:Ljava/lang/String;

    const-string v3, "destroy({}) Destroy process for \'{}\'"

    invoke-interface {v1, v3, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 186
    :cond_1
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/io/Closeable;

    .line 187
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/ProcessShell;->getInputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/ProcessShell;->getOutputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/ProcessShell;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v2}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly([Ljava/io/Closeable;)Ljava/io/IOException;

    move-result-object v2

    .line 188
    .local v2, "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 189
    const/4 v3, 0x4

    if-eqz v0, :cond_2

    .line 190
    iget-object v7, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v4

    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object p0, v8, v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 190
    const-string v9, "destroy({}) {} while destroy streams of \'{}\': {}"

    invoke-interface {v7, v9, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_2
    iget-object v7, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    invoke-virtual {v2}, Ljava/io/IOException;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v7

    .line 196
    .local v7, "suppressed":[Ljava/lang/Throwable;
    invoke-static {v7}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_3

    .line 197
    array-length v8, v7

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 198
    .local v10, "t":Ljava/lang/Throwable;
    iget-object v11, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    new-array v12, v3, [Ljava/lang/Object;

    aput-object p1, v12, v4

    .line 199
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    aput-object p0, v12, v6

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v1

    .line 198
    const-string v13, "destroy({}) Suppressed {} while destroy streams of \'{}\': {}"

    invoke-interface {v11, v13, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .end local v10    # "t":Ljava/lang/Throwable;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 204
    .end local v7    # "suppressed":[Ljava/lang/Throwable;
    :cond_3
    return-void
.end method

.method public exitValue()I
    .locals 2

    .line 164
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/ProcessShell;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 171
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    return v0
.end method

.method public getChannelSession()Lorg/apache/sshd/server/channel/ChannelSession;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->channel:Lorg/apache/sshd/server/channel/ChannelSession;

    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->err:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/OutputStream;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->in:Lorg/apache/sshd/server/shell/TtyFilterOutputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/InputStream;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->out:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    return-object v0
.end method

.method public getServerSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->session:Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->isAlive()Z

    move-result v0

    return v0
.end method

.method protected resolveShellEnvironment(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    .local p1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object p1
.end method

.method protected resolveShellTtyOptions(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 135
    .local p1, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/ProcessShell;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->isPuttyClient(Lorg/apache/sshd/common/session/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p1}, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->resolveShellTtyOptions(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    return-object p1
.end method

.method public setSession(Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 79
    const-string v0, "No server session"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/session/ServerSession;

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->session:Lorg/apache/sshd/server/session/ServerSession;

    .line 80
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Session set after process started"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 81
    return-void
.end method

.method public start(Lorg/apache/sshd/server/channel/ChannelSession;Lorg/apache/sshd/server/Environment;)V
    .locals 10
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "env"    # Lorg/apache/sshd/server/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lorg/apache/sshd/server/shell/ProcessShell;->channel:Lorg/apache/sshd/server/channel/ChannelSession;

    .line 92
    invoke-interface {p2}, Lorg/apache/sshd/server/Environment;->getEnv()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/shell/ProcessShell;->resolveShellEnvironment(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 93
    .local v0, "varsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/server/shell/ProcessShell;->command:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lorg/apache/sshd/server/shell/ProcessShell;->command:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "cmd":Ljava/lang/String;
    const-string v3, "$USER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const-string v3, "USER"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 97
    iget-object v3, p0, Lorg/apache/sshd/server/shell/ProcessShell;->command:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v3, p0, Lorg/apache/sshd/server/shell/ProcessShell;->command:Ljava/util/List;

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/server/shell/ProcessShell;->cmdValue:Ljava/lang/String;

    .line 93
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/ProcessBuilder;

    iget-object v2, p0, Lorg/apache/sshd/server/shell/ProcessShell;->command:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 103
    .local v1, "builder":Ljava/lang/ProcessBuilder;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Map;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-lez v2, :cond_2

    .line 105
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    .line 106
    .local v2, "procEnv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v2    # "procEnv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v4

    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, p0, Lorg/apache/sshd/server/shell/ProcessShell;->cmdValue:Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 108
    const-string v9, "start({}) - Failed ({}) to set environment for command={}: {}"

    invoke-interface {v7, v9, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v7, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    iget-object v7, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/sshd/server/shell/ProcessShell;->cmdValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] failure details"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lorg/apache/sshd/server/shell/ProcessShell;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    .line 118
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v4

    aput-object v4, v5, v3

    .line 117
    const-string v3, "start({}): command=\'{}\', env={}"

    invoke-interface {v2, v3, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    .line 123
    invoke-interface {p2}, Lorg/apache/sshd/server/Environment;->getPtyModes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/server/shell/ProcessShell;->resolveShellTtyOptions(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 124
    .local v2, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;*>;"
    new-instance v3, Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    iget-object v4, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/Map;)V

    iput-object v3, p0, Lorg/apache/sshd/server/shell/ProcessShell;->out:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    .line 125
    new-instance v3, Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    iget-object v4, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/Map;)V

    iput-object v3, p0, Lorg/apache/sshd/server/shell/ProcessShell;->err:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    .line 126
    new-instance v3, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;

    iget-object v4, p0, Lorg/apache/sshd/server/shell/ProcessShell;->process:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/server/shell/ProcessShell;->err:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/sshd/server/shell/TtyFilterInputStream;Ljava/util/Map;)V

    iput-object v3, p0, Lorg/apache/sshd/server/shell/ProcessShell;->in:Lorg/apache/sshd/server/shell/TtyFilterOutputStream;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->cmdValue:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShell;->cmdValue:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
