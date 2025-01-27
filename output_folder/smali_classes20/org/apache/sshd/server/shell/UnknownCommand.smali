.class public Lorg/apache/sshd/server/shell/UnknownCommand;
.super Ljava/lang/Object;
.source "UnknownCommand.java"

# interfaces
.implements Lorg/apache/sshd/server/command/Command;
.implements Ljava/lang/Runnable;


# instance fields
.field private callback:Lorg/apache/sshd/server/ExitCallback;

.field private final command:Ljava/lang/String;

.field private err:Ljava/io/OutputStream;

.field private in:Ljava/io/InputStream;

.field private final message:Ljava/lang/String;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "No command"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->command:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->message:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .locals 0
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;

    .line 113
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 123
    return v0

    .line 125
    :cond_0
    if-ne p1, p0, :cond_1

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 129
    return v0

    .line 132
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/UnknownCommand;->getCommand()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/apache/sshd/server/shell/UnknownCommand;

    invoke-virtual {v1}, Lorg/apache/sshd/server/shell/UnknownCommand;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/UnknownCommand;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/UnknownCommand;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "errorMessage":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->err:Ljava/io/OutputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 90
    iget-object v1, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->err:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->err:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 93
    nop

    .line 96
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->err:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 93
    nop

    .end local v0    # "errorMessage":Ljava/lang/String;
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .restart local v0    # "errorMessage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 98
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->callback:Lorg/apache/sshd/server/ExitCallback;

    if-eqz v1, :cond_0

    .line 99
    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lorg/apache/sshd/server/ExitCallback;->onExit(ILjava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setErrorStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/OutputStream;

    .line 76
    iput-object p1, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->err:Ljava/io/OutputStream;

    .line 77
    return-void
.end method

.method public setExitCallback(Lorg/apache/sshd/server/ExitCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/apache/sshd/server/ExitCallback;

    .line 81
    iput-object p1, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->callback:Lorg/apache/sshd/server/ExitCallback;

    .line 82
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 66
    iput-object p1, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->in:Ljava/io/InputStream;

    .line 67
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 71
    iput-object p1, p0, Lorg/apache/sshd/server/shell/UnknownCommand;->out:Ljava/io/OutputStream;

    .line 72
    return-void
.end method

.method public start(Lorg/apache/sshd/server/channel/ChannelSession;Lorg/apache/sshd/server/Environment;)V
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "env"    # Lorg/apache/sshd/server/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/UnknownCommand;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
