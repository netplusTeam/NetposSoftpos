.class Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;
.super Ljava/lang/Object;
.source "AbstractCommandRegistry.java"

# interfaces
.implements Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/AbstractCommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameCmdRegistry"
.end annotation


# instance fields
.field private final aliasCommand:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final commandExecute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CommandMethods;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
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

    .line 212
    .local p1, "commandExecute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CommandMethods;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->aliasCommand:Ljava/util/Map;

    .line 213
    iput-object p1, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->commandExecute:Ljava/util/Map;

    .line 214
    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command does not exists!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic command(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public command(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    return-object p1

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 254
    :cond_1
    const/4 v0, 0x0

    return-object v0
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

    .line 221
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->aliasCommand:Ljava/util/Map;

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

    .line 217
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;
    .locals 4

    .line 240
    new-instance v0, Lorg/jline/reader/impl/completer/SystemCompleter;

    invoke-direct {v0}, Lorg/jline/reader/impl/completer/SystemCompleter;-><init>()V

    .line 241
    .local v0, "out":Lorg/jline/reader/impl/completer/SystemCompleter;
    iget-object v1, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    .local v2, "c":Ljava/lang/String;
    iget-object v3, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/console/CommandMethods;

    invoke-virtual {v3}, Lorg/jline/console/CommandMethods;->compileCompleter()Ljava/util/function/Function;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Ljava/lang/String;Ljava/util/List;)V

    .line 243
    .end local v2    # "c":Ljava/lang/String;
    goto :goto_0

    .line 244
    :cond_0
    iget-object v1, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/completer/SystemCompleter;->addAliases(Ljava/util/Map;)V

    .line 245
    return-object v0
.end method

.method public getCommandMethods(Ljava/lang/String;)Lorg/jline/console/CommandMethods;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/console/CommandMethods;

    return-object v0
.end method

.method public hasCommand(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$NameCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

    .line 225
    .local p1, "command":Ljava/lang/Enum;, "TV;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
