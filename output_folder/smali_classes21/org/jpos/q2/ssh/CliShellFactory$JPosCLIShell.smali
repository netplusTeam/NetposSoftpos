.class public Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;
.super Ljava/lang/Object;
.source "CliShellFactory.java"

# interfaces
.implements Lorg/apache/sshd/server/command/Command;
.implements Lorg/apache/sshd/server/SessionAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/ssh/CliShellFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JPosCLIShell"
.end annotation


# instance fields
.field args:Ljava/lang/String;

.field cli:Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;

.field err:Ljava/io/OutputStream;

.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field serverSession:Lorg/apache/sshd/server/session/ServerSession;

.field final synthetic this$0:Lorg/jpos/q2/ssh/CliShellFactory;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/ssh/CliShellFactory;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lorg/jpos/q2/ssh/CliShellFactory;
    .param p2, "args"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->this$0:Lorg/jpos/q2/ssh/CliShellFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->cli:Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;

    .line 82
    iput-object p2, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->args:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;

    .line 100
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->cli:Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->stop()V

    .line 103
    :cond_0
    return-void
.end method

.method public setErrorStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/OutputStream;

    .line 75
    iput-object p1, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->err:Ljava/io/OutputStream;

    .line 76
    return-void
.end method

.method public setExitCallback(Lorg/apache/sshd/server/ExitCallback;)V
    .locals 0
    .param p1, "exitCallback"    # Lorg/apache/sshd/server/ExitCallback;

    .line 79
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 67
    iput-object p1, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->in:Ljava/io/InputStream;

    .line 68
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 71
    iput-object p1, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->out:Ljava/io/OutputStream;

    .line 72
    return-void
.end method

.method public setSession(Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 0
    .param p1, "serverSession"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 86
    iput-object p1, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    .line 87
    return-void
.end method

.method public start(Lorg/apache/sshd/server/channel/ChannelSession;Lorg/apache/sshd/server/Environment;)V
    .locals 8
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "env"    # Lorg/apache/sshd/server/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v7, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;

    iget-object v1, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->this$0:Lorg/jpos/q2/ssh/CliShellFactory;

    iget-object v2, v1, Lorg/jpos/q2/ssh/CliShellFactory;->q2:Lorg/jpos/q2/Q2;

    iget-object v5, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->args:Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->in:Ljava/io/InputStream;

    :goto_0
    move-object v3, v0

    iget-object v4, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->out:Ljava/io/OutputStream;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;-><init>(Lorg/jpos/q2/ssh/CliShellFactory;Lorg/jpos/q2/Q2;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    iput-object v7, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->cli:Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    invoke-virtual {v7, v0}, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->setServerSession(Lorg/apache/sshd/server/session/ServerSession;)V

    .line 93
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;->cli:Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;

    invoke-virtual {v0}, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not start"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
