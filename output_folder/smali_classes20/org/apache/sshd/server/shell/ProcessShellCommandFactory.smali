.class public Lorg/apache/sshd/server/shell/ProcessShellCommandFactory;
.super Ljava/lang/Object;
.source "ProcessShellCommandFactory.java"

# interfaces
.implements Lorg/apache/sshd/server/command/CommandFactory;


# static fields
.field public static final FACTORY_NAME:Ljava/lang/String; = "shell-command"

.field public static final INSTANCE:Lorg/apache/sshd/server/shell/ProcessShellCommandFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/sshd/server/shell/ProcessShellCommandFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/shell/ProcessShellCommandFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/shell/ProcessShellCommandFactory;->INSTANCE:Lorg/apache/sshd/server/shell/ProcessShellCommandFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public createCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/apache/sshd/server/shell/ProcessShellFactory;

    invoke-static {p2}, Lorg/apache/sshd/server/command/CommandFactory;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/apache/sshd/server/shell/ProcessShellFactory;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 49
    .local v0, "factory":Lorg/apache/sshd/server/shell/ShellFactory;
    invoke-interface {v0, p1}, Lorg/apache/sshd/server/shell/ShellFactory;->createShell(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/command/Command;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "shell-command"

    return-object v0
.end method
