.class public Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;
.super Lorg/jpos/q2/CLI;
.source "CliShellFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/ssh/CliShellFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SshCLI"
.end annotation


# instance fields
.field serverSession:Lorg/apache/sshd/server/session/ServerSession;

.field final synthetic this$0:Lorg/jpos/q2/ssh/CliShellFactory;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/ssh/CliShellFactory;Lorg/jpos/q2/Q2;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "this$0"    # Lorg/jpos/q2/ssh/CliShellFactory;
    .param p2, "q2"    # Lorg/jpos/q2/Q2;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "line"    # Ljava/lang/String;
    .param p6, "keepRunning"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->this$0:Lorg/jpos/q2/ssh/CliShellFactory;

    .line 110
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/jpos/q2/CLI;-><init>(Lorg/jpos/q2/Q2;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;ZZ)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    .line 111
    return-void
.end method


# virtual methods
.method protected getCompletionPrefixes()[Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->this$0:Lorg/jpos/q2/ssh/CliShellFactory;

    iget-object v0, v0, Lorg/jpos/q2/ssh/CliShellFactory;->prefixes:[Ljava/lang/String;

    return-object v0
.end method

.method protected handleExit()V
    .locals 3

    .line 130
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    if-eqz v0, :cond_0

    .line 132
    const/16 v1, 0xb

    :try_start_0
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/server/session/ServerSession;->disconnect(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Q2"

    const-string v2, "sshd"

    invoke-static {v1, v2}, Lorg/jpos/util/Log;->getLog(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected markStarted()V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->ctx:Lorg/jpos/q2/CLIContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jpos/q2/CLIContext;->setStopped(Z)V

    .line 123
    return-void
.end method

.method protected markStopped()V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->ctx:Lorg/jpos/q2/CLIContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jpos/q2/CLIContext;->setStopped(Z)V

    .line 119
    return-void
.end method

.method protected running()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v0}, Lorg/jpos/q2/CLIContext;->isStopped()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setServerSession(Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 0
    .param p1, "serverSession"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 140
    iput-object p1, p0, Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    .line 141
    return-void
.end method
