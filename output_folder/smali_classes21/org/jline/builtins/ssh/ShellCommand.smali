.class public Lorg/jline/builtins/ssh/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"

# interfaces
.implements Lorg/apache/sshd/server/command/Command;
.implements Lorg/apache/sshd/server/SessionAware;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private callback:Lorg/apache/sshd/server/ExitCallback;

.field private final command:Ljava/lang/String;

.field private env:Lorg/apache/sshd/server/Environment;

.field private err:Ljava/io/OutputStream;

.field private final execute:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/ssh/Ssh$ExecuteParams;",
            ">;"
        }
    .end annotation
.end field

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private session:Lorg/apache/sshd/server/session/ServerSession;


# direct methods
.method public static synthetic $r8$lambda$m3XyQ-_NNmATOptXW03q4kKoKe0(Lorg/jline/builtins/ssh/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lorg/jline/builtins/ssh/ShellCommand;->run()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lorg/jline/builtins/ssh/ShellCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/ssh/ShellCommand;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/ssh/Ssh$ExecuteParams;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "execute":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/builtins/ssh/Ssh$ExecuteParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellCommand;->execute:Ljava/util/function/Consumer;

    .line 39
    iput-object p2, p0, Lorg/jline/builtins/ssh/ShellCommand;->command:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private run()V
    .locals 14

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "exitStatus":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    iget-object v5, p0, Lorg/jline/builtins/ssh/ShellCommand;->execute:Ljava/util/function/Consumer;

    new-instance v13, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;

    iget-object v7, p0, Lorg/jline/builtins/ssh/ShellCommand;->command:Ljava/lang/String;

    iget-object v6, p0, Lorg/jline/builtins/ssh/ShellCommand;->env:Lorg/apache/sshd/server/Environment;

    invoke-interface {v6}, Lorg/apache/sshd/server/Environment;->getEnv()Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Lorg/jline/builtins/ssh/ShellCommand;->session:Lorg/apache/sshd/server/session/ServerSession;

    iget-object v10, p0, Lorg/jline/builtins/ssh/ShellCommand;->in:Ljava/io/InputStream;

    iget-object v11, p0, Lorg/jline/builtins/ssh/ShellCommand;->out:Ljava/io/OutputStream;

    iget-object v12, p0, Lorg/jline/builtins/ssh/ShellCommand;->err:Ljava/io/OutputStream;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;-><init>(Ljava/lang/String;Ljava/util/Map;Lorg/apache/sshd/server/session/ServerSession;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-interface {v5, v13}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    new-array v4, v4, [Ljava/io/Closeable;

    iget-object v5, p0, Lorg/jline/builtins/ssh/ShellCommand;->in:Ljava/io/InputStream;

    aput-object v5, v4, v3

    iget-object v3, p0, Lorg/jline/builtins/ssh/ShellCommand;->out:Ljava/io/OutputStream;

    aput-object v3, v4, v2

    iget-object v2, p0, Lorg/jline/builtins/ssh/ShellCommand;->err:Ljava/io/OutputStream;

    aput-object v2, v4, v1

    invoke-static {v4}, Lorg/jline/builtins/ssh/ShellFactoryImpl;->close([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_3

    .line 71
    :catch_0
    move-exception v5

    .line 72
    .local v5, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x1

    .line 73
    :try_start_1
    sget-object v6, Lorg/jline/builtins/ssh/ShellCommand;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Unable to start shell"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 76
    .local v6, "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v7, p0, Lorg/jline/builtins/ssh/ShellCommand;->err:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 77
    iget-object v7, p0, Lorg/jline/builtins/ssh/ShellCommand;->err:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .end local v6    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 78
    :catch_1
    move-exception v6

    .line 82
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_1
    new-array v4, v4, [Ljava/io/Closeable;

    iget-object v5, p0, Lorg/jline/builtins/ssh/ShellCommand;->in:Ljava/io/InputStream;

    aput-object v5, v4, v3

    iget-object v3, p0, Lorg/jline/builtins/ssh/ShellCommand;->out:Ljava/io/OutputStream;

    aput-object v3, v4, v2

    iget-object v2, p0, Lorg/jline/builtins/ssh/ShellCommand;->err:Ljava/io/OutputStream;

    aput-object v2, v4, v1

    invoke-static {v4}, Lorg/jline/builtins/ssh/ShellFactoryImpl;->close([Ljava/io/Closeable;)V

    .line 83
    :goto_2
    iget-object v1, p0, Lorg/jline/builtins/ssh/ShellCommand;->callback:Lorg/apache/sshd/server/ExitCallback;

    invoke-interface {v1, v0}, Lorg/apache/sshd/server/ExitCallback;->onExit(I)V

    .line 84
    nop

    .line 85
    return-void

    .line 82
    :goto_3
    new-array v4, v4, [Ljava/io/Closeable;

    iget-object v6, p0, Lorg/jline/builtins/ssh/ShellCommand;->in:Ljava/io/InputStream;

    aput-object v6, v4, v3

    iget-object v3, p0, Lorg/jline/builtins/ssh/ShellCommand;->out:Ljava/io/OutputStream;

    aput-object v3, v4, v2

    iget-object v2, p0, Lorg/jline/builtins/ssh/ShellCommand;->err:Ljava/io/OutputStream;

    aput-object v2, v4, v1

    invoke-static {v4}, Lorg/jline/builtins/ssh/ShellFactoryImpl;->close([Ljava/io/Closeable;)V

    .line 83
    iget-object v1, p0, Lorg/jline/builtins/ssh/ShellCommand;->callback:Lorg/apache/sshd/server/ExitCallback;

    invoke-interface {v1, v0}, Lorg/apache/sshd/server/ExitCallback;->onExit(I)V

    .line 84
    throw v5
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 88
    return-void
.end method

.method public setErrorStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/OutputStream;

    .line 51
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellCommand;->err:Ljava/io/OutputStream;

    .line 52
    return-void
.end method

.method public setExitCallback(Lorg/apache/sshd/server/ExitCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/apache/sshd/server/ExitCallback;

    .line 55
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellCommand;->callback:Lorg/apache/sshd/server/ExitCallback;

    .line 56
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 43
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellCommand;->in:Ljava/io/InputStream;

    .line 44
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 47
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellCommand;->out:Ljava/io/OutputStream;

    .line 48
    return-void
.end method

.method public setSession(Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 59
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellCommand;->session:Lorg/apache/sshd/server/session/ServerSession;

    .line 60
    return-void
.end method

.method public start(Lorg/apache/sshd/server/Environment;)V
    .locals 2
    .param p1, "env"    # Lorg/apache/sshd/server/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellCommand;->env:Lorg/apache/sshd/server/Environment;

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jline/builtins/ssh/ShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/jline/builtins/ssh/ShellCommand$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/ssh/ShellCommand;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method
