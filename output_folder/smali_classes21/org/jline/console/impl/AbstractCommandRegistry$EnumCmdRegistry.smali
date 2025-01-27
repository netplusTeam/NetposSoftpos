.class Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;
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
    name = "EnumCmdRegistry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;"
    }
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
            "TT;",
            "Lorg/jline/console/CommandMethods;",
            ">;"
        }
    .end annotation
.end field

.field private final commandName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nameCommand:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 135
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    .local p1, "commandName":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/String;>;"
    .local p2, "commandExecute":Ljava/util/Map;, "Ljava/util/Map<TT;Lorg/jline/console/CommandMethods;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->nameCommand:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->aliasCommand:Ljava/util/Map;

    .line 136
    iput-object p1, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->commandName:Ljava/util/Map;

    .line 137
    iput-object p2, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->commandExecute:Ljava/util/Map;

    .line 138
    invoke-direct {p0}, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->doNameCommand()V

    .line 139
    return-void
.end method

.method private doNameCommand()V
    .locals 3

    .line 142
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->commandName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry$$ExternalSyntheticLambda1;-><init>()V

    .line 144
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->nameCommand:Ljava/util/Map;

    .line 145
    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 167
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->nameCommand:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command does not exists!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public command(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Command does not exists!"

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->nameCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->nameCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 199
    .local v0, "out":Ljava/lang/Enum;, "TT;"
    return-object v0

    .line 197
    .end local v0    # "out":Ljava/lang/Enum;, "TT;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic command(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 129
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->command(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
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

    .line 152
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->aliasCommand:Ljava/util/Map;

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

    .line 148
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->nameCommand:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;
    .locals 6

    .line 178
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    new-instance v0, Lorg/jline/reader/impl/completer/SystemCompleter;

    invoke-direct {v0}, Lorg/jline/reader/impl/completer/SystemCompleter;-><init>()V

    .line 179
    .local v0, "out":Lorg/jline/reader/impl/completer/SystemCompleter;
    iget-object v1, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->commandName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/console/CommandMethods;

    invoke-virtual {v4}, Lorg/jline/console/CommandMethods;->compileCompleter()Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Ljava/lang/String;Ljava/util/List;)V

    .line 181
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/String;>;"
    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->aliasCommand:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/completer/SystemCompleter;->addAliases(Ljava/util/Map;)V

    .line 183
    return-object v0
.end method

.method public getCommandMethods(Ljava/lang/String;)Lorg/jline/console/CommandMethods;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 203
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->commandExecute:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->command(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/console/CommandMethods;

    return-object v0
.end method

.method public hasCommand(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 174
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->nameCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->aliasCommand:Ljava/util/Map;

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
    .locals 2
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

    .line 157
    .local p0, "this":Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;, "Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry<TT;>;"
    .local p1, "command":Ljava/lang/Enum;, "TV;"
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->nameCommand:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->commandName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->commandName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-direct {p0}, Lorg/jline/console/impl/AbstractCommandRegistry$EnumCmdRegistry;->doNameCommand()V

    .line 164
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command does not exists!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate command name!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
