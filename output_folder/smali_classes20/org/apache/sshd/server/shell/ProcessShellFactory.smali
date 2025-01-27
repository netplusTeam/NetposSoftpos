.class public Lorg/apache/sshd/server/shell/ProcessShellFactory;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "ProcessShellFactory.java"

# interfaces
.implements Lorg/apache/sshd/server/shell/ShellFactory;


# instance fields
.field private command:Ljava/lang/String;

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShellFactory;->command:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShellFactory;->elements:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 53
    const-string v0, "No command"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShellFactory;->command:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No parsed elements"

    invoke-static {p2, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShellFactory;->elements:Ljava/util/List;

    .line 55
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/String;

    .line 49
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/server/shell/ProcessShellFactory;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected createInvertedShell(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/shell/InvertedShell;
    .locals 3
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;

    .line 87
    new-instance v0, Lorg/apache/sshd/server/shell/ProcessShell;

    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/ProcessShellFactory;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/ProcessShellFactory;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/sshd/server/shell/ProcessShellFactory;->resolveEffectiveCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/server/shell/ProcessShell;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public createShell(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/command/Command;
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/shell/ProcessShellFactory;->createInvertedShell(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/shell/InvertedShell;

    move-result-object v0

    .line 83
    .local v0, "shell":Lorg/apache/sshd/server/shell/InvertedShell;
    new-instance v1, Lorg/apache/sshd/server/shell/InvertedShellWrapper;

    invoke-direct {v1, v0}, Lorg/apache/sshd/server/shell/InvertedShellWrapper;-><init>(Lorg/apache/sshd/server/shell/InvertedShell;)V

    return-object v1
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShellFactory;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShellFactory;->elements:Ljava/util/List;

    return-object v0
.end method

.method protected resolveEffectiveCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "rawCommand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/channel/ChannelSession;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    .local p3, "parsedElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isWin32()Z

    move-result v0

    const-string v1, "No parsed command elements"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 93
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p3, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 97
    :cond_0
    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    .line 98
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p3, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 102
    :cond_1
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "cmdName":Ljava/lang/String;
    const-string v4, "cmd.exe"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 108
    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "/C"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 109
    const-string v3, "No command"

    invoke-static {p2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 108
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public setCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "No command"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShellFactory;->command:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No parsed elements"

    invoke-static {p2, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/sshd/server/shell/ProcessShellFactory;->elements:Ljava/util/List;

    .line 78
    return-void
.end method

.method public varargs setCommand(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/String;

    .line 72
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/server/shell/ProcessShellFactory;->setCommand(Ljava/lang/String;Ljava/util/List;)V

    .line 73
    return-void
.end method
