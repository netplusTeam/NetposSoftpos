.class public Lorg/jpos/q2/ssh/CliShellFactory;
.super Ljava/lang/Object;
.source "CliShellFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/Factory;
.implements Lorg/apache/sshd/server/command/CommandFactory;
.implements Lorg/apache/sshd/server/shell/ShellFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/ssh/CliShellFactory$SshCLI;,
        Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/Factory<",
        "Lorg/apache/sshd/server/command/Command;",
        ">;",
        "Lorg/apache/sshd/server/command/CommandFactory;",
        "Lorg/apache/sshd/server/shell/ShellFactory;"
    }
.end annotation


# instance fields
.field prefixes:[Ljava/lang/String;

.field q2:Lorg/jpos/q2/Q2;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/Q2;[Ljava/lang/String;)V
    .locals 0
    .param p1, "q2"    # Lorg/jpos/q2/Q2;
    .param p2, "prefixes"    # [Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jpos/q2/ssh/CliShellFactory;->q2:Lorg/jpos/q2/Q2;

    .line 43
    iput-object p2, p0, Lorg/jpos/q2/ssh/CliShellFactory;->prefixes:[Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/jpos/q2/ssh/CliShellFactory;->create()Lorg/apache/sshd/server/command/Command;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/server/command/Command;
    .locals 2

    .line 47
    new-instance v0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;-><init>(Lorg/jpos/q2/ssh/CliShellFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "command"    # Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;

    invoke-direct {v0, p0, p2}, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;-><init>(Lorg/jpos/q2/ssh/CliShellFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method public createShell(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/command/Command;
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;

    .line 56
    new-instance v0, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jpos/q2/ssh/CliShellFactory$JPosCLIShell;-><init>(Lorg/jpos/q2/ssh/CliShellFactory;Ljava/lang/String;)V

    return-object v0
.end method
