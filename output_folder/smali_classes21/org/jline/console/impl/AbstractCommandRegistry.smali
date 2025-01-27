.class public abstract Lorg/jline/console/impl/AbstractCommandRegistry;
.super Ljava/lang/Object;
.source "AbstractCommandRegistry.java"

# interfaces
.implements Lorg/jline/console/CommandRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;,
        Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;,
        Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;
    }
.end annotation


# instance fields
.field private cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    invoke-interface {v0, p1, p2}, Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;->alias(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public commandAliases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    invoke-interface {v0}, Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;->commandAliases()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public commandNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    invoke-interface {v0}, Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;->commandNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    invoke-interface {v0}, Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;->compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;

    move-result-object v0

    return-object v0
.end method

.method public doHelpDesc(Ljava/lang/String;Ljava/util/List;Lorg/jline/console/CmdDesc;)Lorg/jline/console/CmdDesc;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p3, "cmdDesc"    # Lorg/jline/console/CmdDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jline/console/CmdDesc;",
            ")",
            "Lorg/jline/console/CmdDesc;"
        }
    .end annotation

    .line 34
    .local p2, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "mainDesc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 36
    .local v1, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    const-string v3, " -  "

    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\t"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 39
    invoke-virtual {v1, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 41
    :cond_0
    invoke-virtual {v1, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 42
    invoke-virtual {v1}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    move-object v1, v4

    .line 44
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    .line 45
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 46
    :cond_1
    new-instance v2, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v2}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    move-object v1, v2

    .line 47
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    .line 48
    const-string v3, "Usage:"

    invoke-virtual {v1, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 49
    invoke-virtual {p3}, Lorg/jline/console/CmdDesc;->getMainDesc()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/utils/AttributedString;

    .line 50
    .local v5, "as":Lorg/jline/utils/AttributedString;
    invoke-virtual {v1, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 51
    invoke-virtual {v1, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 52
    invoke-virtual {v1}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v6, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v6}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    move-object v1, v6

    .line 54
    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    .line 55
    .end local v5    # "as":Lorg/jline/utils/AttributedString;
    goto :goto_1

    .line 56
    :cond_2
    new-instance v2, Lorg/jline/console/CmdDesc;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lorg/jline/console/CmdDesc;->getOptsDesc()Ljava/util/TreeMap;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/jline/console/CmdDesc;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-object v2
.end method

.method public getCommandMethods(Ljava/lang/String;)Lorg/jline/console/CommandMethods;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    invoke-interface {v0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;->getCommandMethods(Ljava/lang/String;)Lorg/jline/console/CommandMethods;

    move-result-object v0

    return-object v0
.end method

.method public hasCommand(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    invoke-interface {v0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "session"    # Lorg/jline/console/CommandRegistry$CommandSession;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->exception:Ljava/lang/Exception;

    .line 70
    invoke-virtual {p0, p2}, Lorg/jline/console/impl/AbstractCommandRegistry;->getCommandMethods(Ljava/lang/String;)Lorg/jline/console/CommandMethods;

    move-result-object v0

    .line 71
    .local v0, "methods":Lorg/jline/console/CommandMethods;
    invoke-virtual {v0}, Lorg/jline/console/CommandMethods;->execute()Ljava/util/function/Function;

    move-result-object v1

    new-instance v2, Lorg/jline/console/CommandInput;

    invoke-direct {v2, p2, p3, p1}, Lorg/jline/console/CommandInput;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/jline/console/CommandRegistry$CommandSession;)V

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "out":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->exception:Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 75
    return-object v1

    .line 73
    :cond_0
    throw v2
.end method

.method public registerCommands(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CommandMethods;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "commandExecute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CommandMethods;>;"
    new-instance v0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;

    invoke-direct {v0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    .line 65
    return-void
.end method

.method public registerCommands(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TT;",
            "Lorg/jline/console/CommandMethods;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "commandName":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/String;>;"
    .local p2, "commandExecute":Ljava/util/Map;, "Ljava/util/Map<TT;Lorg/jline/console/CommandMethods;>;"
    new-instance v0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;

    invoke-direct {v0, p1, p2}, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    .line 61
    return-void
.end method

.method public registeredCommand(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    invoke-interface {v0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;->command(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 1
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    .local p1, "command":Ljava/lang/Enum;, "TV;"
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->cmdRegistry:Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;

    invoke-interface {v0, p1, p2}, Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;->rename(Ljava/lang/Enum;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public saveException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 79
    iput-object p1, p0, Lorg/jline/console/impl/AbstractCommandRegistry;->exception:Ljava/lang/Exception;

    .line 80
    return-void
.end method
