.class public Lorg/jline/console/impl/SystemRegistryImpl;
.super Ljava/lang/Object;
.source "SystemRegistryImpl.java"

# interfaces
.implements Lorg/jline/console/SystemRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;,
        Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;,
        Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;,
        Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;,
        Lorg/jline/console/impl/SystemRegistryImpl$CommandData;,
        Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;,
        Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;,
        Lorg/jline/console/impl/SystemRegistryImpl$Pipe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BUILTIN_REGISTRIES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
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

.field private commandGroups:Z

.field private final commandInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private commandRegistries:[Lorg/jline/console/CommandRegistry;

.field private final configPath:Lorg/jline/builtins/ConfigurationPath;

.field private consoleId:Ljava/lang/Integer;

.field private final customAggregateCompleter:Lorg/jline/reader/impl/completer/AggregateCompleter;

.field private final customSystemCompleter:Lorg/jline/reader/impl/completer/SystemCompleter;

.field private exception:Ljava/lang/Exception;

.field private names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

.field private final outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

.field private final parser:Lorg/jline/reader/Parser;

.field private final pipeName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/console/impl/SystemRegistryImpl$Pipe;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scriptDescription:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CmdLine;",
            "Lorg/jline/console/CmdDesc;",
            ">;"
        }
    .end annotation
.end field

.field private scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

.field private final subcommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CommandRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final workDir:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$F3sd-pMbfA-wNL7t6QOk9e5sIi0(Lorg/jline/console/impl/SystemRegistryImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->subcommand(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N9LEDsw-ljNQHOvLejHOEGqnNuk(Lorg/jline/console/impl/SystemRegistryImpl;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->registryNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SXOu-shqMkTFZel0rlZXlLbzFW0(Lorg/jline/console/impl/SystemRegistryImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->exitCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Wc8Ihf9W0EqFNBM-2J_o0sh4TD4(Lorg/jline/console/impl/SystemRegistryImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->emptyCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X8NrpwEx6vzMxT8aiSjbPB6-YEI(Lorg/jline/console/impl/SystemRegistryImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->exit(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cqd-66a7L4hNYCkR_b2fB9mJA0Y(Lorg/jline/console/impl/SystemRegistryImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->help(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j1yIqwoS-Sk_SixwCO9XpkOUXfY(Lorg/jline/console/impl/SystemRegistryImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->helpCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mAbH2G2ljiX9iN5OgLSCwfGqJ9k(Lorg/jline/console/impl/SystemRegistryImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->commandOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 56
    nop

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/jline/console/impl/Builtins;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/jline/console/impl/ConsoleEngineImpl;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jline/console/impl/SystemRegistryImpl;->BUILTIN_REGISTRIES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/Parser;Lorg/jline/terminal/Terminal;Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 4
    .param p1, "parser"    # Lorg/jline/reader/Parser;
    .param p2, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p4, "configPath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/Parser;",
            "Lorg/jline/terminal/Terminal;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/jline/builtins/ConfigurationPath;",
            ")V"
        }
    .end annotation

    .line 81
    .local p3, "workDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandExecute:Ljava/util/Map;

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfos:Ljava/util/Map;

    .line 73
    new-instance v2, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-direct {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;-><init>()V

    iput-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    .line 74
    new-instance v2, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-direct {v2, p0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    iput-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    .line 76
    new-instance v2, Lorg/jline/reader/impl/completer/SystemCompleter;

    invoke-direct {v2}, Lorg/jline/reader/impl/completer/SystemCompleter;-><init>()V

    iput-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->customSystemCompleter:Lorg/jline/reader/impl/completer/SystemCompleter;

    .line 77
    new-instance v2, Lorg/jline/reader/impl/completer/AggregateCompleter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3}, Lorg/jline/reader/impl/completer/AggregateCompleter;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->customAggregateCompleter:Lorg/jline/reader/impl/completer/AggregateCompleter;

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandGroups:Z

    .line 82
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    .line 83
    iput-object p3, p0, Lorg/jline/console/impl/SystemRegistryImpl;->workDir:Ljava/util/function/Supplier;

    .line 84
    iput-object p4, p0, Lorg/jline/console/impl/SystemRegistryImpl;->configPath:Lorg/jline/builtins/ConfigurationPath;

    .line 85
    new-instance v2, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-direct {v2, p2}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;-><init>(Lorg/jline/terminal/Terminal;)V

    iput-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    .line 86
    sget-object v2, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->FLIP:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    const-string v3, "|;"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v2, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    const-string v3, "|"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v2, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->AND:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    const-string v3, "&&"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v2, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    const-string v3, "||"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lorg/jline/console/CommandMethods;

    new-instance v2, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda3;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    new-instance v3, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda4;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    invoke-direct {v0, v2, v3}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    const-string v2, "exit"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lorg/jline/console/CommandMethods;

    new-instance v2, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda5;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    new-instance v3, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda6;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    invoke-direct {v0, v2, v3}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    const-string v2, "help"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private _compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;
    .locals 14

    .line 263
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    invoke-static {v0}, Lorg/jline/console/CommandRegistry;->aggregateCompleters([Lorg/jline/console/CommandRegistry;)Lorg/jline/reader/impl/completer/SystemCompleter;

    move-result-object v0

    .line 264
    .local v0, "out":Lorg/jline/reader/impl/completer/SystemCompleter;
    new-instance v1, Lorg/jline/reader/impl/completer/SystemCompleter;

    invoke-direct {v1}, Lorg/jline/reader/impl/completer/SystemCompleter;-><init>()V

    .line 265
    .local v1, "local":Lorg/jline/reader/impl/completer/SystemCompleter;
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandExecute:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    .local v3, "command":Ljava/lang/String;
    iget-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 267
    iget-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/console/CommandRegistry;

    invoke-interface {v4}, Lorg/jline/console/CommandRegistry;->compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/reader/impl/completer/SystemCompleter;->getCompleters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 268
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/reader/Completer;

    .line 269
    .local v7, "cc":Lorg/jline/reader/Completer;
    instance-of v8, v7, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    if-eqz v8, :cond_1

    .line 272
    move-object v8, v7

    check-cast v8, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    invoke-virtual {v8}, Lorg/jline/reader/impl/completer/ArgumentCompleter;->getCompleters()Ljava/util/List;

    move-result-object v8

    .line 273
    .local v8, "cmps":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    sget-object v9, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 274
    new-instance v9, Lorg/jline/reader/impl/completer/StringsCompleter;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v12, v10

    invoke-direct {v9, v12}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>([Ljava/lang/String;)V

    invoke-interface {v8, v11, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v11

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/reader/Completer;

    .line 276
    .local v9, "last":Lorg/jline/reader/Completer;
    instance-of v10, v9, Lorg/jline/builtins/Completers$OptionCompleter;

    if-eqz v10, :cond_0

    .line 277
    move-object v10, v9

    check-cast v10, Lorg/jline/builtins/Completers$OptionCompleter;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v10, v12}, Lorg/jline/builtins/Completers$OptionCompleter;->setStartPos(I)V

    .line 278
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-interface {v8, v10, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    new-instance v10, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    invoke-direct {v10, v8}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v10}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Ljava/lang/String;Lorg/jline/reader/Completer;)V

    .line 281
    .end local v7    # "cc":Lorg/jline/reader/Completer;
    .end local v8    # "cmps":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    .end local v9    # "last":Lorg/jline/reader/Completer;
    goto :goto_2

    .line 270
    .restart local v7    # "cc":Lorg/jline/reader/Completer;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 282
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    .end local v7    # "cc":Lorg/jline/reader/Completer;
    :cond_2
    goto :goto_1

    :cond_3
    goto :goto_3

    .line 284
    :cond_4
    iget-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandExecute:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/console/CommandMethods;

    invoke-virtual {v4}, Lorg/jline/console/CommandMethods;->compileCompleter()Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Ljava/lang/String;Ljava/util/List;)V

    .line 286
    .end local v3    # "command":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 287
    :cond_5
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->customSystemCompleter:Lorg/jline/reader/impl/completer/SystemCompleter;

    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Lorg/jline/reader/impl/completer/SystemCompleter;)V

    .line 288
    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Lorg/jline/reader/impl/completer/SystemCompleter;)V

    .line 289
    invoke-virtual {v0}, Lorg/jline/reader/impl/completer/SystemCompleter;->compile()V

    .line 290
    return-object v0
.end method

.method static synthetic access$300(Lorg/jline/console/impl/SystemRegistryImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/SystemRegistryImpl;

    .line 56
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jline/console/impl/SystemRegistryImpl;)Lorg/jline/reader/Parser;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/SystemRegistryImpl;

    .line 56
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jline/console/impl/SystemRegistryImpl;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/SystemRegistryImpl;

    .line 56
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    return-object v0
.end method

.method private commandDescription(Lorg/jline/console/CommandRegistry;)Lorg/jline/console/CmdDesc;
    .locals 8
    .param p1, "subreg"    # Lorg/jline/console/CommandRegistry;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v0, "main":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/utils/AttributedString;>;>;"
    invoke-static {}, Lorg/jline/builtins/Styles;->helpStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v2

    .line 339
    .local v2, "helpStyle":Lorg/jline/utils/StyleResolver;
    new-instance v3, Ljava/util/TreeSet;

    invoke-interface {p1}, Lorg/jline/console/CommandRegistry;->commandNames()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 340
    .local v4, "sc":Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/jline/console/CommandRegistry;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 341
    .local v5, "info":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v2, v7}, Lorg/jline/builtins/Options$HelpException;->highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;Z)Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    nop

    .line 344
    .end local v4    # "sc":Ljava/lang/String;
    .end local v5    # "info":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 345
    :cond_1
    new-instance v3, Lorg/jline/console/CmdDesc;

    const-string v4, ""

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lorg/jline/console/ArgDesc;->doArgNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lorg/jline/console/CmdDesc;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-object v3
.end method

.method private commandOptions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;"
        }
    .end annotation

    .line 1567
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "--help"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->localExecute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    goto :goto_0

    .line 1571
    :catch_0
    move-exception v1

    .line 1572
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(Ljava/lang/Exception;)V

    .line 1574
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 1568
    :catch_1
    move-exception v1

    .line 1569
    .local v1, "e":Lorg/jline/builtins/Options$HelpException;
    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .line 1570
    invoke-virtual {v1}, Lorg/jline/builtins/Options$HelpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/console/impl/JlineCommandRegistry;->compileCommandOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private commandSession()Lorg/jline/console/CommandRegistry$CommandSession;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->getCommandSession()Lorg/jline/console/CommandRegistry$CommandSession;

    move-result-object v0

    return-object v0
.end method

.method private compileCommandLine(Ljava/lang/String;)Ljava/util/List;
    .locals 36
    .param p1, "commandLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jline/console/impl/SystemRegistryImpl$CommandData;",
            ">;"
        }
    .end annotation

    .line 631
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/impl/SystemRegistryImpl$CommandData;>;"
    new-instance v2, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;

    iget-object v3, v0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    invoke-direct {v2, v3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;-><init>(Lorg/jline/reader/Parser;)V

    .line 633
    .local v2, "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parse(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v12

    .line 635
    .local v12, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Lorg/jline/console/ConsoleEngine;->getPipes()Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_0
    move-object v13, v4

    .line 636
    .local v13, "customPipes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v0, v12, v13, v2}, Lorg/jline/console/impl/SystemRegistryImpl;->replacePipeAliases(Lorg/jline/console/ConsoleEngine;Ljava/util/Map;Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;)V

    .line 637
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v4

    .line 638
    .local v4, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->line()Ljava/lang/String;

    move-result-object v5

    .line 639
    .local v5, "nextRawLine":Ljava/lang/String;
    const/4 v14, 0x0

    .line 641
    .local v14, "first":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 642
    .local v15, "pipes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 643
    .local v16, "pipeSource":Ljava/lang/String;
    const/16 v17, 0x0

    .line 644
    .local v17, "rawLine":Ljava/lang/String;
    const/16 v18, 0x0

    .line 645
    .local v18, "pipeResult":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->command()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jline/console/impl/SystemRegistryImpl;->isCommandAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 646
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->variable()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->command()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->replaceCommandAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parse(Ljava/lang/String;)V

    .line 647
    invoke-direct {v0, v12, v13, v2}, Lorg/jline/console/impl/SystemRegistryImpl;->replacePipeAliases(Lorg/jline/console/ConsoleEngine;Ljava/util/Map;Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;)V

    .line 648
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->line()Ljava/lang/String;

    move-result-object v5

    .line 649
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v4

    move-object v11, v4

    move-object/from16 v19, v5

    goto :goto_1

    .line 645
    :cond_1
    move-object v11, v4

    move-object/from16 v19, v5

    .line 651
    .end local v4    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "nextRawLine":Ljava/lang/String;
    .local v11, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "nextRawLine":Ljava/lang/String;
    :goto_1
    iget-object v4, v0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v4, v11}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->hasPipes(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 652
    new-instance v10, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->variable()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v20, 0x0

    const-string v21, ""

    move-object v4, v10

    move-object v5, v2

    move-object/from16 v7, v19

    move-object/from16 v22, v10

    move/from16 v10, v20

    move-object/from16 v20, v11

    .end local v11    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v11, v21

    invoke-direct/range {v4 .. v11}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;-><init>(Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;)V

    move-object/from16 v4, v22

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v2

    move-object/from16 v23, v12

    move-object/from16 v11, v20

    goto/16 :goto_1e

    .line 651
    .end local v20    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v20, v11

    .end local v11    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, v19

    .line 658
    .end local v19    # "nextRawLine":Ljava/lang/String;
    .end local v20    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "nextRawLine":Ljava/lang/String;
    .restart local v11    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    iget-object v5, v0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 659
    .local v5, "rawCommand":Ljava/lang/String;
    invoke-static {v5}, Lorg/jline/console/ConsoleEngine;->plainCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "command":Ljava/lang/String;
    iget-object v7, v0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Lorg/jline/reader/Parser;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, "variable":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/jline/console/impl/SystemRegistryImpl;->isCommandAlias(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 662
    invoke-direct {v0, v7, v6, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->replaceCommandAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parse(Ljava/lang/String;)V

    .line 663
    invoke-direct {v0, v12, v13, v2}, Lorg/jline/console/impl/SystemRegistryImpl;->replacePipeAliases(Lorg/jline/console/ConsoleEngine;Ljava/util/Map;Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;)V

    .line 664
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->rawCommand()Ljava/lang/String;

    move-result-object v5

    .line 665
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->command()Ljava/lang/String;

    move-result-object v6

    .line 666
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v8

    .line 667
    .end local v11    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    move-object v11, v6

    move-object v10, v8

    move/from16 v19, v14

    move-object v14, v5

    goto :goto_3

    .line 661
    .end local v8    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v10, v11

    move/from16 v19, v14

    move-object v14, v5

    move-object v11, v6

    .line 669
    .end local v5    # "rawCommand":Ljava/lang/String;
    .end local v6    # "command":Ljava/lang/String;
    .local v10, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "command":Ljava/lang/String;
    .local v14, "rawCommand":Ljava/lang/String;
    .local v19, "first":I
    :goto_3
    iget-object v5, v0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v5, v11}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->isConsoleScript(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, ":"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 670
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Commands must be used in pipes with colon prefix!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 672
    :cond_5
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 673
    .local v5, "last":I
    const/4 v6, 0x0

    .line 674
    .local v6, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 675
    .local v8, "append":Z
    const/4 v9, 0x0

    .line 676
    .local v9, "pipeStart":Z
    const/16 v20, 0x0

    .line 677
    .local v20, "skipPipe":Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    .line 681
    .local v22, "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v21, v19

    move/from16 v3, v21

    .local v3, "i":I
    :goto_5
    move-object/from16 v21, v4

    .end local v4    # "nextRawLine":Ljava/lang/String;
    .local v21, "nextRawLine":Ljava/lang/String;
    const-string v4, "\\w+"

    move-object/from16 v23, v12

    .end local v12    # "consoleEngine":Lorg/jline/console/ConsoleEngine;
    .local v23, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    if-ge v3, v5, :cond_18

    .line 682
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v12, v24

    check-cast v12, Ljava/lang/String;

    move/from16 v24, v8

    .end local v8    # "append":Z
    .local v24, "append":Z
    const-string v8, ">"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move/from16 v25, v9

    .end local v9    # "pipeStart":Z
    .local v25, "pipeStart":Z
    const-string v9, ">>"

    if-nez v12, :cond_16

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v27, v2

    move-object/from16 v28, v6

    move-object/from16 v26, v14

    move-object/from16 v12, v22

    move-object/from16 v22, v11

    goto/16 :goto_c

    .line 691
    :cond_6
    iget-object v12, v0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-nez v12, :cond_7

    .line 692
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v12, v22

    .end local v22    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v2

    move-object/from16 v28, v6

    move-object/from16 v22, v11

    move-object/from16 v26, v14

    goto/16 :goto_6

    .line 693
    .end local v12    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v12, v22

    .end local v22    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v26, v14

    .end local v14    # "rawCommand":Ljava/lang/String;
    .local v26, "rawCommand":Ljava/lang/String;
    move-object/from16 v14, v22

    check-cast v14, Ljava/lang/String;

    move-object/from16 v22, v11

    .end local v11    # "command":Ljava/lang/String;
    .local v22, "command":Ljava/lang/String;
    iget-object v11, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    move-object/from16 v27, v2

    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .local v27, "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    sget-object v2, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->FLIP:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "_pipe"

    if-eqz v2, :cond_9

    .line 694
    if-nez v7, :cond_8

    if-nez v6, :cond_8

    if-nez v18, :cond_8

    iget-object v2, v0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 697
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    move v5, v3

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 700
    move v2, v5

    move-object/from16 v28, v6

    move-object v3, v7

    move-object/from16 v14, v18

    goto/16 :goto_d

    .line 695
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 701
    :cond_9
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v14, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    move-object/from16 v28, v6

    .end local v6    # "file":Ljava/io/File;
    .local v28, "file":Ljava/io/File;
    sget-object v6, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 702
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "^.*[^a-zA-Z0-9 ].*$"

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_a

    .line 722
    :cond_a
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v14, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 723
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v14, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->AND:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    .line 741
    :cond_b
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v21

    move-object/from16 v11, v22

    move/from16 v8, v24

    move/from16 v9, v25

    move-object/from16 v14, v26

    move-object/from16 v2, v27

    move-object/from16 v6, v28

    move-object/from16 v22, v12

    move-object/from16 v12, v23

    goto/16 :goto_5

    .line 724
    :cond_c
    :goto_7
    if-nez v7, :cond_10

    if-eqz v16, :cond_d

    goto/16 :goto_8

    .line 726
    :cond_d
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 727
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 728
    :cond_e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    invoke-interface {v15, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 729
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->setPipe(Ljava/lang/String;)V

    .line 730
    const/4 v2, 0x1

    move/from16 v20, v2

    move/from16 v9, v25

    .end local v20    # "skipPipe":Z
    .local v2, "skipPipe":Z
    goto :goto_9

    .line 732
    .end local v2    # "skipPipe":Z
    .restart local v20    # "skipPipe":Z
    :cond_f
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    .end local v16    # "pipeSource":Ljava/lang/String;
    .local v2, "pipeSource":Ljava/lang/String;
    move-object v6, v7

    .line 735
    .end local v18    # "pipeResult":Ljava/lang/String;
    .local v6, "pipeResult":Ljava/lang/String;
    move-object v7, v2

    .line 736
    const/4 v8, 0x1

    move-object/from16 v16, v2

    move-object/from16 v18, v6

    move v9, v8

    .end local v25    # "pipeStart":Z
    .local v8, "pipeStart":Z
    goto :goto_9

    .line 725
    .end local v2    # "pipeSource":Ljava/lang/String;
    .end local v6    # "pipeResult":Ljava/lang/String;
    .end local v8    # "pipeStart":Z
    .restart local v16    # "pipeSource":Ljava/lang/String;
    .restart local v18    # "pipeResult":Ljava/lang/String;
    .restart local v25    # "pipeStart":Z
    :cond_10
    :goto_8
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v25

    .line 738
    .end local v25    # "pipeStart":Z
    .restart local v9    # "pipeStart":Z
    :goto_9
    move v5, v3

    .line 739
    move v2, v5

    move-object v3, v7

    move/from16 v25, v9

    move-object/from16 v14, v18

    goto/16 :goto_d

    .line 703
    .end local v9    # "pipeStart":Z
    .restart local v25    # "pipeStart":Z
    :cond_11
    :goto_a
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 704
    .local v2, "pipe":Ljava/lang/String;
    iget-object v6, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v8, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 705
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v5, :cond_13

    .line 708
    add-int/lit8 v6, v3, 0x1

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    .line 709
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v13, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_b

    .line 710
    :cond_12
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown or illegal pipe name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 706
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Pipe is NULL!"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 713
    :cond_14
    :goto_b
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    move v5, v3

    .line 715
    if-nez v16, :cond_15

    .line 716
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 717
    move-object/from16 v18, v7

    .line 718
    move-object/from16 v7, v16

    .line 719
    const/4 v9, 0x1

    move v2, v5

    move-object v3, v7

    move/from16 v25, v9

    move-object/from16 v14, v18

    .end local v25    # "pipeStart":Z
    .restart local v9    # "pipeStart":Z
    goto :goto_d

    .line 715
    .end local v9    # "pipeStart":Z
    .restart local v25    # "pipeStart":Z
    :cond_15
    move v2, v5

    move-object v3, v7

    move-object/from16 v14, v18

    goto :goto_d

    .line 682
    .end local v12    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "rawCommand":Ljava/lang/String;
    .end local v27    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .end local v28    # "file":Ljava/io/File;
    .local v2, "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .local v6, "file":Ljava/io/File;
    .restart local v11    # "command":Ljava/lang/String;
    .restart local v14    # "rawCommand":Ljava/lang/String;
    .local v22, "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    move-object/from16 v27, v2

    move-object/from16 v28, v6

    move-object/from16 v26, v14

    move-object/from16 v12, v22

    move-object/from16 v22, v11

    .line 683
    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "command":Ljava/lang/String;
    .end local v14    # "rawCommand":Ljava/lang/String;
    .restart local v12    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "command":Ljava/lang/String;
    .restart local v26    # "rawCommand":Ljava/lang/String;
    .restart local v27    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v28    # "file":Ljava/io/File;
    :goto_c
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 685
    .end local v24    # "append":Z
    .local v8, "append":Z
    add-int/lit8 v2, v3, 0x1

    if-ge v2, v5, :cond_17

    .line 688
    add-int/lit8 v2, v3, 0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/jline/console/impl/SystemRegistryImpl;->redirectFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 689
    .end local v28    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    add-int/lit8 v5, v3, 0x1

    .line 690
    move v2, v5

    move-object/from16 v28, v6

    move-object v3, v7

    move/from16 v24, v8

    move-object/from16 v14, v18

    goto :goto_d

    .line 686
    .end local v6    # "file":Ljava/io/File;
    .restart local v28    # "file":Ljava/io/File;
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 681
    .end local v12    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "pipeStart":Z
    .end local v26    # "rawCommand":Ljava/lang/String;
    .end local v27    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .end local v28    # "file":Ljava/io/File;
    .restart local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "pipeStart":Z
    .restart local v11    # "command":Ljava/lang/String;
    .restart local v14    # "rawCommand":Ljava/lang/String;
    .local v22, "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v27, v2

    move-object/from16 v28, v6

    move/from16 v24, v8

    move/from16 v25, v9

    move-object/from16 v26, v14

    move-object/from16 v12, v22

    move-object/from16 v22, v11

    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "append":Z
    .end local v9    # "pipeStart":Z
    .end local v11    # "command":Ljava/lang/String;
    .end local v14    # "rawCommand":Ljava/lang/String;
    .restart local v12    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "command":Ljava/lang/String;
    .restart local v24    # "append":Z
    .restart local v25    # "pipeStart":Z
    .restart local v26    # "rawCommand":Ljava/lang/String;
    .restart local v27    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v28    # "file":Ljava/io/File;
    move v2, v5

    move-object v3, v7

    move-object/from16 v14, v18

    .line 744
    .end local v5    # "last":I
    .end local v7    # "variable":Ljava/lang/String;
    .end local v18    # "pipeResult":Ljava/lang/String;
    .local v2, "last":I
    .local v3, "variable":Ljava/lang/String;
    .local v14, "pipeResult":Ljava/lang/String;
    :goto_d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_19

    .line 745
    const-string v5, "END_PIPE"

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 746
    :cond_19
    if-eqz v20, :cond_1a

    .line 747
    add-int/lit8 v4, v2, 0x1

    .line 748
    .end local v19    # "first":I
    .local v4, "first":I
    move-object/from16 v33, v10

    move-object/from16 v18, v14

    move v14, v4

    move-object/from16 v4, v21

    goto/16 :goto_1d

    .line 753
    .end local v4    # "first":I
    .restart local v19    # "first":I
    :cond_1a
    :goto_e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, " "

    if-lt v2, v5, :cond_1c

    if-lez v19, :cond_1b

    goto :goto_f

    .line 754
    :cond_1b
    invoke-virtual/range {v27 .. v27}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->line()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    .line 753
    :cond_1c
    :goto_f
    invoke-static {v6, v12}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 754
    :goto_10
    nop

    .line 755
    .local v5, "subLine":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1d

    .line 756
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v10, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v7

    .line 758
    :cond_1d
    const/4 v7, 0x1

    .line 759
    .local v7, "done":Z
    const/4 v8, 0x0

    .line 760
    .local v8, "statement":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v9

    .line 761
    .local v11, "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1e

    .line 762
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v18, v7

    const/4 v7, 0x1

    .end local v7    # "done":Z
    .local v18, "done":Z
    invoke-interface {v12, v7, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    .line 761
    .end local v18    # "done":Z
    .restart local v7    # "done":Z
    :cond_1e
    move/from16 v18, v7

    const/4 v7, 0x1

    .line 764
    .end local v7    # "done":Z
    .restart local v18    # "done":Z
    :goto_11
    if-nez v17, :cond_23

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v7, :cond_1f

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    move-object/from16 v9, v22

    goto/16 :goto_13

    .line 796
    :cond_1f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v7, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->FLIP:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    if-eqz v25, :cond_20

    move-object/from16 v9, v22

    goto :goto_12

    .line 803
    :cond_20
    move-object/from16 v9, v22

    .end local v22    # "command":Ljava/lang/String;
    .local v9, "command":Ljava/lang/String;
    invoke-direct {v0, v9, v5, v15, v11}, Lorg/jline/console/impl/SystemRegistryImpl;->flipArgument(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v5

    move/from16 v22, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v16

    move-object/from16 v16, v4

    .end local v17    # "rawLine":Ljava/lang/String;
    .local v4, "rawLine":Ljava/lang/String;
    goto/16 :goto_1b

    .line 796
    .end local v4    # "rawLine":Ljava/lang/String;
    .end local v9    # "command":Ljava/lang/String;
    .restart local v17    # "rawLine":Ljava/lang/String;
    .restart local v22    # "command":Ljava/lang/String;
    :cond_21
    move-object/from16 v9, v22

    .line 797
    .end local v22    # "command":Ljava/lang/String;
    .restart local v9    # "command":Ljava/lang/String;
    :goto_12
    const-string v4, "="

    if-eqz v25, :cond_22

    if-eqz v14, :cond_22

    .line 798
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 800
    :cond_22
    invoke-direct {v0, v9, v5, v15, v11}, Lorg/jline/console/impl/SystemRegistryImpl;->flipArgument(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 801
    .end local v17    # "rawLine":Ljava/lang/String;
    .local v6, "rawLine":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v5

    move/from16 v22, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v16

    move-object/from16 v16, v4

    .end local v6    # "rawLine":Ljava/lang/String;
    .restart local v4    # "rawLine":Ljava/lang/String;
    goto/16 :goto_1b

    .line 764
    .end local v4    # "rawLine":Ljava/lang/String;
    .end local v9    # "command":Ljava/lang/String;
    .restart local v17    # "rawLine":Ljava/lang/String;
    .restart local v22    # "command":Ljava/lang/String;
    :cond_23
    move-object/from16 v9, v22

    .line 765
    .end local v22    # "command":Ljava/lang/String;
    .restart local v9    # "command":Ljava/lang/String;
    :goto_13
    const/4 v7, 0x0

    .line 766
    .end local v18    # "done":Z
    .restart local v7    # "done":Z
    if-nez v17, :cond_24

    .line 767
    move-object/from16 v17, v16

    move/from16 v18, v7

    move-object/from16 v7, v17

    goto :goto_14

    .line 766
    :cond_24
    move/from16 v18, v7

    move-object/from16 v7, v17

    .line 769
    .end local v17    # "rawLine":Ljava/lang/String;
    .local v7, "rawLine":Ljava/lang/String;
    .restart local v18    # "done":Z
    :goto_14
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v22, v8

    .end local v8    # "statement":Z
    .local v22, "statement":Z
    add-int/lit8 v8, v17, -0x2

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v13, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 770
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 771
    .local v8, "fixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v29, v9

    .end local v9    # "command":Ljava/lang/String;
    .local v29, "command":Ljava/lang/String;
    add-int/lit8 v9, v17, -0x2

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 772
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 773
    .local v4, "idx":I
    if-lez v4, :cond_25

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_15

    :cond_25
    const-string v6, ""

    :goto_15
    move-object v5, v6

    .line 775
    .end local v4    # "idx":I
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 776
    iget-object v6, v0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v6, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/jline/console/ConsoleEngine;->expandCommandLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    :cond_27
    move-object v6, v5

    :goto_16
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 777
    const/4 v6, 0x1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 778
    const/4 v4, 0x1

    move v8, v4

    .end local v22    # "statement":Z
    .local v4, "statement":Z
    goto :goto_17

    .line 769
    .end local v4    # "statement":Z
    .end local v8    # "fixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "command":Ljava/lang/String;
    .restart local v9    # "command":Ljava/lang/String;
    .restart local v22    # "statement":Z
    :cond_28
    move-object/from16 v29, v9

    const/4 v6, 0x1

    .end local v9    # "command":Ljava/lang/String;
    .restart local v29    # "command":Ljava/lang/String;
    move/from16 v8, v22

    .line 780
    .end local v22    # "statement":Z
    .local v8, "statement":Z
    :goto_17
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v9, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v6, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->FLIP:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, " = "

    if-nez v4, :cond_2a

    .line 781
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v9, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    move-object/from16 v17, v5

    .end local v5    # "subLine":Ljava/lang/String;
    .local v17, "subLine":Ljava/lang/String;
    sget-object v5, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->AND:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 782
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v9, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_18

    :cond_29
    move-object v4, v7

    move/from16 v7, v18

    goto :goto_19

    .line 780
    .end local v17    # "subLine":Ljava/lang/String;
    .restart local v5    # "subLine":Ljava/lang/String;
    :cond_2a
    move-object/from16 v17, v5

    .line 783
    .end local v5    # "subLine":Ljava/lang/String;
    .restart local v17    # "subLine":Ljava/lang/String;
    :cond_2b
    :goto_18
    const/4 v4, 0x1

    .line 784
    .end local v18    # "done":Z
    .local v4, "done":Z
    const/16 v16, 0x0

    .line 785
    if-eqz v3, :cond_2c

    .line 786
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v7, v4

    move-object v4, v5

    .end local v7    # "rawLine":Ljava/lang/String;
    .local v5, "rawLine":Ljava/lang/String;
    goto :goto_19

    .line 785
    .end local v5    # "rawLine":Ljava/lang/String;
    .restart local v7    # "rawLine":Ljava/lang/String;
    :cond_2c
    move-object/from16 v35, v7

    move v7, v4

    move-object/from16 v4, v35

    .line 789
    .local v4, "rawLine":Ljava/lang/String;
    .local v7, "done":Z
    :goto_19
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2e

    if-eqz v28, :cond_2d

    goto :goto_1a

    :cond_2d
    move/from16 v18, v7

    move/from16 v22, v8

    move-object/from16 v30, v16

    move-object/from16 v16, v4

    goto :goto_1b

    .line 790
    :cond_2e
    :goto_1a
    const/4 v7, 0x1

    .line 791
    const/16 v16, 0x0

    .line 792
    if-eqz v14, :cond_2f

    .line 793
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v18, v7

    move/from16 v22, v8

    move-object/from16 v30, v16

    move-object/from16 v16, v4

    goto :goto_1b

    .line 792
    :cond_2f
    move/from16 v18, v7

    move/from16 v22, v8

    move-object/from16 v30, v16

    move-object/from16 v16, v4

    .line 805
    .end local v4    # "rawLine":Ljava/lang/String;
    .end local v7    # "done":Z
    .end local v8    # "statement":Z
    .local v16, "rawLine":Ljava/lang/String;
    .restart local v18    # "done":Z
    .restart local v22    # "statement":Z
    .local v30, "pipeSource":Ljava/lang/String;
    :goto_1b
    if-eqz v18, :cond_32

    .line 809
    new-instance v9, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v31, v4

    check-cast v31, Ljava/lang/String;

    move-object v4, v9

    move-object/from16 v5, v27

    move/from16 v6, v22

    move-object/from16 v7, v16

    move-object v8, v3

    move-object/from16 v32, v3

    move-object v3, v9

    .end local v3    # "variable":Ljava/lang/String;
    .local v32, "variable":Ljava/lang/String;
    move-object/from16 v9, v28

    move-object/from16 v33, v10

    .end local v10    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v33, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v10, v24

    move-object/from16 v34, v11

    .end local v11    # "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v34, "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v11, v31

    invoke-direct/range {v4 .. v11}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;-><init>(Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v6, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->AND:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 811
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v5, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 812
    :cond_30
    const/4 v3, 0x0

    .line 813
    .end local v30    # "pipeSource":Ljava/lang/String;
    .local v3, "pipeSource":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v30, v3

    move-object v14, v4

    .line 815
    .end local v3    # "pipeSource":Ljava/lang/String;
    .restart local v30    # "pipeSource":Ljava/lang/String;
    :cond_31
    const/16 v16, 0x0

    goto :goto_1c

    .line 805
    .end local v32    # "variable":Ljava/lang/String;
    .end local v33    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "variable":Ljava/lang/String;
    .restart local v10    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_32
    move-object/from16 v32, v3

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    .line 817
    .end local v3    # "variable":Ljava/lang/String;
    .end local v10    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "variable":Ljava/lang/String;
    .restart local v33    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1c
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v18, v14

    move-object/from16 v17, v16

    move-object/from16 v4, v21

    move-object/from16 v16, v30

    move v14, v3

    .line 818
    .end local v12    # "_words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "first":I
    .end local v20    # "skipPipe":Z
    .end local v21    # "nextRawLine":Ljava/lang/String;
    .end local v22    # "statement":Z
    .end local v24    # "append":Z
    .end local v25    # "pipeStart":Z
    .end local v26    # "rawCommand":Ljava/lang/String;
    .end local v28    # "file":Ljava/io/File;
    .end local v29    # "command":Ljava/lang/String;
    .end local v30    # "pipeSource":Ljava/lang/String;
    .end local v32    # "variable":Ljava/lang/String;
    .end local v34    # "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "nextRawLine":Ljava/lang/String;
    .local v14, "first":I
    .local v16, "pipeSource":Ljava/lang/String;
    .local v17, "rawLine":Ljava/lang/String;
    .local v18, "pipeResult":Ljava/lang/String;
    :goto_1d
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    if-lt v14, v3, :cond_33

    move-object/from16 v19, v4

    move-object/from16 v11, v33

    .line 820
    .end local v2    # "last":I
    .end local v4    # "nextRawLine":Ljava/lang/String;
    .end local v33    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "nextRawLine":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 818
    .end local v11    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "nextRawLine":Ljava/lang/String;
    .restart local v2    # "last":I
    .restart local v4    # "nextRawLine":Ljava/lang/String;
    .restart local v33    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    move-object/from16 v3, p1

    move-object/from16 v12, v23

    move-object/from16 v2, v27

    move-object/from16 v11, v33

    goto/16 :goto_2
.end method

.method private doCommandInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1362
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " "

    :goto_0
    return-object v0
.end method

.method private emptyCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation

    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "rawLine"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1112
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    invoke-interface {v0, p1}, Lorg/jline/reader/Parser;->validCommandName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1116
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->isLocalCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/jline/console/ConsoleEngine;->expandParameters([Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/jline/console/impl/SystemRegistryImpl;->localExecute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "out":Ljava/lang/Object;
    goto :goto_2

    .line 1119
    .end local v0    # "out":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->registryId(Ljava/lang/String;)I

    move-result v0

    .line 1120
    .local v0, "id":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 1121
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v1

    invoke-interface {v1, p3}, Lorg/jline/console/ConsoleEngine;->expandParameters([Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p3

    .line 1122
    .local v1, "_args":[Ljava/lang/Object;
    :goto_1
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v3}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->getCommandSession()Lorg/jline/console/CommandRegistry$CommandSession;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lorg/jline/console/CommandRegistry;->invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1123
    .local v1, "out":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_2

    .end local v1    # "out":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v1, p1}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->hasScript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1124
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lorg/jline/console/ConsoleEngine;->execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 1129
    .local v0, "out":Ljava/lang/Object;
    :goto_2
    return-object v0

    .line 1126
    .local v0, "id":I
    :cond_4
    new-instance v1, Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1113
    .end local v0    # "id":I
    :cond_5
    new-instance v0, Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private exit(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 8
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 1499
    const-string v0, "exit -  exit from app/script"

    const-string v1, "Usage: exit [OBJECT]"

    const-string v2, "  -? --help                       Displays command help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, "usage":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 1506
    .local v1, "opt":Lorg/jline/builtins/Options;
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v2

    .line 1507
    .local v2, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 1509
    :try_start_1
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/jline/console/ConsoleEngine;->expandParameters([Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    .line 1510
    .local v3, "ret":[Ljava/lang/Object;
    const-string v5, "_return"

    array-length v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v4, v3, v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-interface {v2, v5, v4}, Lorg/jline/console/ConsoleEngine;->putVariable(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1513
    .end local v3    # "ret":[Ljava/lang/Object;
    goto :goto_1

    .line 1511
    :catch_0
    move-exception v3

    .line 1512
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0, v3}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(Ljava/lang/Exception;)V

    .line 1515
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    new-instance v3, Lorg/jline/reader/EndOfFileException;

    invoke-direct {v3}, Lorg/jline/reader/EndOfFileException;-><init>()V

    iput-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1518
    .end local v1    # "opt":Lorg/jline/builtins/Options;
    .end local v2    # "consoleEngine":Lorg/jline/console/ConsoleEngine;
    goto :goto_2

    .line 1516
    :catch_1
    move-exception v1

    .line 1517
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .line 1519
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private exitCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation

    .line 1609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jline/reader/Completer;

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jline/builtins/Completers$OptionCompleter;

    sget-object v4, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    new-instance v5, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda2;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Lorg/jline/reader/Completer;Ljava/util/function/Function;I)V

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    return-object v0
.end method

.method private flipArgument(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "subLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 986
    .local p3, "pipes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "arglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v2, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->FLIP:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    invoke-virtual {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->isCommandOrScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "$"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 988
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_pipe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "out":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 993
    .end local v1    # "out":Ljava/lang/String;
    :cond_2
    move-object v1, p2

    .line 995
    .restart local v1    # "out":Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method private help(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 12
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 1378
    iget-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandGroups:Z

    if-eqz v0, :cond_0

    const-string v1, "nogroups"

    goto :goto_0

    :cond_0
    const-string v1, "groups"

    .line 1379
    .local v1, "groupsOption":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "     --nogroups                   Commands are not grouped by registries"

    goto :goto_1

    .line 1380
    :cond_1
    const-string v0, "     --groups                     Commands are grouped by registries"

    :goto_1
    nop

    .line 1381
    .local v0, "groupsHelp":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "help -  command help"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Usage: help [TOPIC...]"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v6, "  -? --help                       Displays command help"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    const-string v6, "  -i --info                       List commands with a short command info"

    aput-object v6, v2, v3

    .line 1388
    .local v2, "usage":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/jline/console/impl/SystemRegistryImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v3

    .line 1389
    .local v3, "opt":Lorg/jline/builtins/Options;
    const/4 v6, 0x0

    .line 1390
    .local v6, "doTopic":Z
    iget-boolean v7, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandGroups:Z

    .line 1391
    .local v7, "cg":Z
    const/4 v8, 0x0

    .line 1392
    .local v8, "info":Z
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v9, v5, :cond_2

    .line 1394
    :try_start_1
    const-string v5, "--help"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1395
    .local v5, "args":[Ljava/lang/String;
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1396
    .local v9, "command":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v4, v5, v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v9, v4, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1399
    .end local v5    # "args":[Ljava/lang/String;
    .end local v9    # "command":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1400
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    iput-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 1397
    :catch_1
    move-exception v4

    .line 1398
    .local v4, "e":Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;
    const/4 v6, 0x1

    .line 1401
    .end local v4    # "e":Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;
    :goto_2
    goto :goto_3

    .line 1403
    :cond_2
    const/4 v6, 0x1

    .line 1404
    invoke-virtual {v3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1405
    if-nez v7, :cond_3

    move v4, v5

    :cond_3
    move v7, v4

    .line 1407
    :cond_4
    const-string v4, "info"

    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1408
    const/4 v8, 0x1

    .line 1411
    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 1412
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, v7, v8}, Lorg/jline/console/impl/SystemRegistryImpl;->helpTopic(Ljava/util/List;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1416
    .end local v3    # "opt":Lorg/jline/builtins/Options;
    .end local v6    # "doTopic":Z
    .end local v7    # "cg":Z
    .end local v8    # "info":Z
    :cond_6
    goto :goto_4

    .line 1414
    :catch_2
    move-exception v3

    .line 1415
    .local v3, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .line 1417
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v3, 0x0

    return-object v3
.end method

.method private helpCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation

    .line 1599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v2, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v3, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda7;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    invoke-direct {v2, v3}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    sget-object v2, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    new-instance v2, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jline/reader/Completer;

    sget-object v4, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/jline/builtins/Completers$OptionCompleter;

    new-instance v5, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda2;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    const/4 v6, 0x1

    invoke-direct {v4, v1, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/List;Ljava/util/function/Function;I)V

    aput-object v4, v3, v6

    invoke-direct {v2, v3}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    return-object v0
.end method

.method private helpTopic(Ljava/util/List;ZZ)V
    .locals 15
    .param p2, "commandGroups"    # Z
    .param p3, "info"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1421
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->commandNames()Ljava/util/Set;

    move-result-object v2

    .line 1422
    .local v2, "commands":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, v0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v3}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->getScripts()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1423
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v4

    invoke-interface {v4}, Lorg/jline/terminal/Terminal;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    .line 1424
    .local v3, "withInfo":Z
    :goto_1
    new-instance v4, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    .line 1425
    .local v4, "max":I
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 1426
    .local v6, "builtinCommands":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 1427
    .local v7, "systemCommands":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1428
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1429
    .local v8, "ordered":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 1430
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1431
    .local v10, "c":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 1432
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, ""

    goto :goto_3

    :cond_2
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1433
    .local v12, "cmdInfo":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v10, v12, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommandInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1434
    .end local v10    # "c":Ljava/lang/String;
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "cmdInfo":Ljava/lang/String;
    goto :goto_2

    :cond_3
    goto :goto_4

    .line 1436
    :cond_4
    invoke-direct {p0, v8, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommands(Ljava/util/Collection;I)V

    .line 1438
    .end local v8    # "ordered":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :goto_4
    goto/16 :goto_10

    .line 1439
    :cond_5
    iget-object v8, v0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    array-length v9, v8

    move v10, v5

    :goto_5
    if-ge v10, v9, :cond_7

    aget-object v11, v8, v10

    .line 1440
    .local v11, "r":Lorg/jline/console/CommandRegistry;
    invoke-direct {p0, v11}, Lorg/jline/console/impl/SystemRegistryImpl;->isBuiltinRegistry(Lorg/jline/console/CommandRegistry;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1441
    invoke-interface {v11}, Lorg/jline/console/CommandRegistry;->commandNames()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1442
    .local v13, "c":Ljava/lang/String;
    invoke-virtual {p0, v13}, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-direct {p0, v14}, Lorg/jline/console/impl/SystemRegistryImpl;->doCommandInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    .end local v13    # "c":Ljava/lang/String;
    goto :goto_6

    .line 1439
    .end local v11    # "r":Lorg/jline/console/CommandRegistry;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1446
    :cond_7
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->localCommandNames()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1447
    .local v9, "c":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/jline/console/impl/SystemRegistryImpl;->doCommandInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const/4 v10, 0x0

    iput-object v10, v0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .line 1449
    .end local v9    # "c":Ljava/lang/String;
    goto :goto_7

    .line 1450
    :cond_8
    const-string v8, "System"

    invoke-direct {p0, v1, v8}, Lorg/jline/console/impl/SystemRegistryImpl;->isInTopics(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1451
    invoke-direct {p0, v8}, Lorg/jline/console/impl/SystemRegistryImpl;->printHeader(Ljava/lang/String;)V

    .line 1452
    if-eqz v3, :cond_a

    .line 1453
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1454
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v10, v11, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommandInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1455
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    :cond_9
    goto :goto_9

    .line 1457
    :cond_a
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommands(Ljava/util/Collection;I)V

    .line 1460
    :cond_b
    :goto_9
    const-string v8, "Builtins"

    invoke-direct {p0, v1, v8}, Lorg/jline/console/impl/SystemRegistryImpl;->isInTopics(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v6}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 1461
    invoke-direct {p0, v8}, Lorg/jline/console/impl/SystemRegistryImpl;->printHeader(Ljava/lang/String;)V

    .line 1462
    if-eqz v3, :cond_d

    .line 1463
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1464
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v10, v11, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommandInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1465
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_a

    :cond_c
    goto :goto_b

    .line 1467
    :cond_d
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommands(Ljava/util/Collection;I)V

    .line 1470
    :cond_e
    :goto_b
    iget-object v8, v0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    array-length v9, v8

    :goto_c
    if-ge v5, v9, :cond_13

    aget-object v10, v8, v5

    .line 1471
    .local v10, "r":Lorg/jline/console/CommandRegistry;
    invoke-direct {p0, v10}, Lorg/jline/console/impl/SystemRegistryImpl;->isBuiltinRegistry(Lorg/jline/console/CommandRegistry;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-interface {v10}, Lorg/jline/console/CommandRegistry;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v1, v11}, Lorg/jline/console/impl/SystemRegistryImpl;->isInTopics(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Lorg/jline/console/CommandRegistry;->commandNames()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1472
    goto :goto_e

    .line 1474
    :cond_f
    new-instance v11, Ljava/util/TreeSet;

    invoke-interface {v10}, Lorg/jline/console/CommandRegistry;->commandNames()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1475
    .local v11, "cmds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {v10}, Lorg/jline/console/CommandRegistry;->name()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lorg/jline/console/impl/SystemRegistryImpl;->printHeader(Ljava/lang/String;)V

    .line 1476
    if-eqz v3, :cond_11

    .line 1477
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1478
    .restart local v13    # "c":Ljava/lang/String;
    invoke-virtual {p0, v13}, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-direct {p0, v14}, Lorg/jline/console/impl/SystemRegistryImpl;->doCommandInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommandInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1479
    .end local v13    # "c":Ljava/lang/String;
    goto :goto_d

    :cond_10
    goto :goto_e

    .line 1481
    :cond_11
    invoke-direct {p0, v11, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommands(Ljava/util/Collection;I)V

    .line 1470
    .end local v10    # "r":Lorg/jline/console/CommandRegistry;
    .end local v11    # "cmds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_12
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1484
    :cond_13
    iget-object v5, v0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v5, :cond_16

    const-string v5, "Scripts"

    invoke-direct {p0, v1, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->isInTopics(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, v0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v8}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->getScripts()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_16

    .line 1485
    invoke-direct {p0, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->printHeader(Ljava/lang/String;)V

    .line 1486
    if-eqz v3, :cond_15

    .line 1487
    iget-object v5, v0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v5}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->getScripts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1488
    .local v8, "c":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/jline/console/impl/SystemRegistryImpl;->doCommandInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommandInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1489
    .end local v8    # "c":Ljava/lang/String;
    goto :goto_f

    :cond_14
    goto :goto_10

    .line 1491
    :cond_15
    iget-object v5, v0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v5}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->getScripts()Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->printCommands(Ljava/util/Collection;I)V

    .line 1495
    :cond_16
    :goto_10
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v5

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->flush()V

    .line 1496
    return-void
.end method

.method private isBuiltinRegistry(Lorg/jline/console/CommandRegistry;)Z
    .locals 6
    .param p1, "registry"    # Lorg/jline/console/CommandRegistry;

    .line 1308
    sget-object v0, Lorg/jline/console/impl/SystemRegistryImpl;->BUILTIN_REGISTRIES:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1309
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 1310
    const/4 v0, 0x1

    return v0

    .line 1308
    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1313
    :cond_1
    return v2
.end method

.method private isInTopics(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1366
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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

.method private isLocalCommand(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandExecute:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private localCommandDescription(Ljava/lang/String;)Lorg/jline/console/CmdDesc;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 306
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->isLocalCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "--help"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->localExecute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(Ljava/lang/Exception;)V

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 311
    :catch_1
    move-exception v1

    .line 312
    .local v1, "e":Lorg/jline/builtins/Options$HelpException;
    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .line 313
    invoke-virtual {v1}, Lorg/jline/builtins/Options$HelpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/console/impl/JlineCommandRegistry;->compileCommandDescription(Ljava/lang/String;)Lorg/jline/console/CmdDesc;

    move-result-object v0

    return-object v0

    .line 307
    .end local v1    # "e":Lorg/jline/builtins/Options$HelpException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private localCommandInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/console/CommandRegistry;

    invoke-direct {p0, v0}, Lorg/jline/console/impl/SystemRegistryImpl;->registryHelp(Lorg/jline/console/CommandRegistry;)V

    goto :goto_0

    .line 185
    :cond_0
    const-string v0, "--help"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jline/console/impl/SystemRegistryImpl;->localExecute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(Ljava/lang/Exception;)V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Lorg/jline/builtins/Options$HelpException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .line 189
    invoke-virtual {v0}, Lorg/jline/builtins/Options$HelpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/console/impl/JlineCommandRegistry;->compileCommandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private localCommandNames()Ljava/util/Set;
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
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandExecute:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private localExecute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 409
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->isLocalCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandExecute:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/console/CommandMethods;

    invoke-virtual {v0}, Lorg/jline/console/CommandMethods;->execute()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lorg/jline/console/CommandInput;

    .line 413
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->commandSession()Lorg/jline/console/CommandRegistry$CommandSession;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/jline/console/CommandInput;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/jline/console/CommandRegistry$CommandSession;)V

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    .local v0, "out":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 417
    return-object v0

    .line 415
    :cond_0
    throw v1

    .line 410
    .end local v0    # "out":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;
    .locals 3
    .param p1, "usage"    # [Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/builtins/Options$HelpException;
        }
    .end annotation

    .line 1370
    invoke-static {p1}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v0

    .line 1371
    .local v0, "opt":Lorg/jline/builtins/Options;
    const-string v1, "help"

    invoke-virtual {v0, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1374
    return-object v0

    .line 1372
    :cond_0
    new-instance v1, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v0}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private postProcess(Lorg/jline/console/impl/SystemRegistryImpl$CommandData;ZLorg/jline/console/ConsoleEngine;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;
    .locals 5
    .param p1, "cmd"    # Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    .param p2, "statement"    # Z
    .param p3, "consoleEngine"    # Lorg/jline/console/ConsoleEngine;
    .param p4, "result"    # Ljava/lang/Object;

    .line 1219
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1220
    const/4 v0, 0x1

    .line 1221
    .local v0, "status":I
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1222
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1223
    .local v1, "delta":J
    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 1225
    .end local v1    # "delta":J
    :cond_1
    new-instance v1, Lorg/jline/console/ConsoleEngine$ExecutionResult;

    invoke-direct {v1, v0, p4}, Lorg/jline/console/ConsoleEngine$ExecutionResult;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    .line 1226
    .local v0, "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    goto :goto_2

    .end local v0    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :cond_2
    if-nez p2, :cond_3

    .line 1227
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->close()V

    .line 1228
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->rawLine()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->getOutput()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, p4, v1}, Lorg/jline/console/ConsoleEngine;->postProcess(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    .restart local v0    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    goto :goto_2

    .line 1229
    .end local v0    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :cond_3
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->variable()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1230
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->variable()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/jline/console/ConsoleEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1231
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->variable()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/jline/console/ConsoleEngine;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/jline/console/ConsoleEngine;->postProcess(Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    .restart local v0    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    goto :goto_1

    .line 1233
    .end local v0    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :cond_4
    invoke-interface {p3, p4}, Lorg/jline/console/ConsoleEngine;->postProcess(Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    .line 1235
    .restart local v0    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :goto_1
    new-instance v1, Lorg/jline/console/ConsoleEngine$ExecutionResult;

    invoke-virtual {v0}, Lorg/jline/console/ConsoleEngine$ExecutionResult;->status()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jline/console/ConsoleEngine$ExecutionResult;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    .line 1237
    .end local v0    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :cond_5
    invoke-interface {p3, p4}, Lorg/jline/console/ConsoleEngine;->postProcess(Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    .line 1239
    .restart local v0    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :goto_2
    return-object v0
.end method

.method private printCommandInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 1325
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    add-int/lit8 v2, p3, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 1326
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1327
    invoke-static {}, Lorg/jline/builtins/Options$HelpException;->defaultStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v2

    const-string v3, ".co"

    invoke-virtual {v2, v3}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1328
    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1329
    invoke-virtual {v0, p2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1330
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 1331
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1332
    return-void
.end method

.method private printCommands(Ljava/util/Collection;I)V
    .locals 14
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1335
    .local p1, "commands":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    add-int/lit8 v6, p2, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 1336
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v2, 0x0

    .line 1337
    .local v2, "col":I
    const-string v6, "\t"

    invoke-virtual {v0, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1338
    add-int/2addr v2, v3

    .line 1339
    const/4 v8, 0x0

    .line 1340
    .local v8, "done":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1341
    .local v10, "c":Ljava/lang/String;
    invoke-static {}, Lorg/jline/builtins/Options$HelpException;->defaultStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v11

    const-string v12, ".co"

    invoke-virtual {v11, v12}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1342
    invoke-virtual {v0, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1343
    add-int v2, v2, p2

    .line 1344
    add-int v11, v2, p2

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v12

    invoke-interface {v12}, Lorg/jline/terminal/Terminal;->getWidth()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 1345
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v11

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1346
    new-instance v11, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v11}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    new-array v12, v1, [Ljava/lang/Integer;

    aput-object v4, v12, v5

    add-int/lit8 v13, p2, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 1347
    const/4 v2, 0x0

    .line 1348
    invoke-virtual {v0, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1349
    add-int/2addr v2, v3

    .line 1350
    const/4 v8, 0x1

    goto :goto_1

    .line 1352
    :cond_0
    const/4 v8, 0x0

    .line 1354
    .end local v10    # "c":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1355
    :cond_1
    if-nez v8, :cond_2

    .line 1356
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1358
    :cond_2
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->flush()V

    .line 1359
    return-void
.end method

.method private printHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 1317
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 1318
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1319
    invoke-static {}, Lorg/jline/builtins/Options$HelpException;->defaultStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v1

    const-string v2, ".ti"

    invoke-virtual {v1, v2}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1320
    const-string v1, ":"

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1321
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1322
    return-void
.end method

.method private redirectFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 825
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "NUL"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "out":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 828
    .end local v0    # "out":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    .restart local v0    # "out":Ljava/io/File;
    :goto_1
    return-object v0
.end method

.method private registryHelp(Lorg/jline/console/CommandRegistry;)V
    .locals 9
    .param p1, "registry"    # Lorg/jline/console/CommandRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    .local v0, "tabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    invoke-interface {p1}, Lorg/jline/console/CommandRegistry;->commandNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1527
    .local v2, "max":I
    add-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    new-instance v3, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v3}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v3

    .line 1529
    .local v3, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const-string v4, " -  "

    invoke-virtual {v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1530
    invoke-interface {p1}, Lorg/jline/console/CommandRegistry;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1531
    const-string v4, " registry"

    invoke-virtual {v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1532
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1533
    const/4 v5, 0x1

    .line 1534
    .local v5, "first":Z
    new-instance v6, Ljava/util/TreeSet;

    invoke-interface {p1}, Lorg/jline/console/CommandRegistry;->commandNames()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1535
    .local v7, "c":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1536
    const-string v8, "Summary:"

    invoke-virtual {v3, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1537
    const/4 v5, 0x0

    .line 1539
    :cond_0
    const-string v8, "\t"

    invoke-virtual {v3, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1540
    invoke-virtual {v3, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1541
    invoke-virtual {v3, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1542
    invoke-interface {p1, v7}, Lorg/jline/console/CommandRegistry;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1543
    invoke-virtual {v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1544
    .end local v7    # "c":Ljava/lang/String;
    goto :goto_0

    .line 1545
    :cond_1
    new-instance v1, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v3}, Lorg/jline/utils/AttributedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registryId(Ljava/lang/String;)I
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1617
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/jline/console/CommandRegistry;->hasCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    return v0

    .line 1616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1621
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private registryNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "System"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    const-string v1, "Builtins"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1582
    const-string v1, "Scripts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_0
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1585
    .local v4, "r":Lorg/jline/console/CommandRegistry;
    invoke-direct {p0, v4}, Lorg/jline/console/impl/SystemRegistryImpl;->isBuiltinRegistry(Lorg/jline/console/CommandRegistry;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1586
    invoke-interface {v4}, Lorg/jline/console/CommandRegistry;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    .end local v4    # "r":Lorg/jline/console/CommandRegistry;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1589
    :cond_2
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->commandNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1590
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v1}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->getScripts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1591
    return-object v0
.end method

.method private replaceCommandAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "rawLine"    # Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    .line 556
    .local v0, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    if-eqz v0, :cond_1

    .line 557
    const-string v1, "(\\b|$)"

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2}, Lorg/jline/console/ConsoleEngine;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 558
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, p2}, Lorg/jline/console/ConsoleEngine;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 556
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private replacePipeAlias(Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p1, "ap"    # Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .param p2, "pipeAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 562
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "customPipes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    .line 563
    .local v0, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    if-eqz v0, :cond_6

    .line 564
    move-object v1, p2

    .line 565
    .local v1, "alias":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\s\\$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\$\\{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(|:-.*)}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "j":I
    :cond_0
    invoke-interface {v0, p3}, Lorg/jline/console/ConsoleEngine;->expandToList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\$\\{@}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-interface {v0, p3}, Lorg/jline/console/ConsoleEngine;->expandToList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\$@"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    const-string v2, "\\s+\\$\\d\\b"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    const-string v2, "\\s+\\$\\{\\d+}"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    const-string v2, "\\$\\{\\d+}"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    const-string v2, "\\$\\{\\d+:-(.*?)}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 575
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    const-string v3, "$1"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    :cond_1
    invoke-virtual {p1, v1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parse(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v3

    .line 580
    .local v3, "ws":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 582
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v8, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x20

    if-eqz v6, :cond_4

    .line 583
    add-int/lit8 v6, v5, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v6}, Lorg/jline/console/ConsoleEngine;->hasAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 584
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 585
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v6}, Lorg/jline/console/ConsoleEngine;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, "innerPipe":Ljava/lang/String;
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_2

    iget-object v7, p0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->access$000(Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 587
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 589
    :cond_2
    invoke-direct {p0, p1, v6, p3, p4}, Lorg/jline/console/impl/SystemRegistryImpl;->replacePipeAlias(Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .end local v6    # "innerPipe":Ljava/lang/String;
    goto :goto_3

    .line 591
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 594
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 597
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 563
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "ws":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private replacePipeAliases(Lorg/jline/console/ConsoleEngine;Ljava/util/Map;Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;)V
    .locals 9
    .param p1, "consoleEngine"    # Lorg/jline/console/ConsoleEngine;
    .param p3, "ap"    # Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/console/ConsoleEngine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;",
            ")V"
        }
    .end annotation

    .line 601
    .local p2, "customPipes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v0

    .line 602
    .local v0, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v2, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 605
    .local v2, "trace":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 606
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v6, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_2

    .line 607
    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/jline/console/ConsoleEngine;->hasAlias(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 608
    const/4 v2, 0x1

    .line 609
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v4, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Lorg/jline/console/ConsoleEngine;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, "pipeAlias":Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->access$000(Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 612
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 614
    :cond_0
    invoke-direct {p0, p3, v5, v4, p2}, Lorg/jline/console/impl/SystemRegistryImpl;->replacePipeAlias(Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .end local v4    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pipeAlias":Ljava/lang/String;
    goto :goto_2

    .line 616
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 619
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 622
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parse(Ljava/lang/String;)V

    .line 623
    if-eqz v2, :cond_4

    .line 624
    invoke-virtual {p3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->line()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/jline/console/ConsoleEngine;->trace(Ljava/lang/Object;)V

    .line 627
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "trace":Z
    :cond_4
    return-void
.end method

.method private subcommand(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 7
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 1549
    const/4 v0, 0x0

    .line 1551
    .local v0, "out":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->command()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/console/CommandRegistry;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Lorg/jline/console/CommandRegistry;->hasCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1552
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->command()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/console/CommandRegistry;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->session()Lorg/jline/console/CommandRegistry$CommandSession;

    move-result-object v2

    .line 1553
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    .line 1554
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->xargs()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->xargs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->xargs()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    invoke-static {v3, v6, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1555
    :cond_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 1552
    :goto_0
    invoke-interface {v1, v2, v4, v3}, Lorg/jline/console/CommandRegistry;->invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1557
    :cond_1
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->command()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/console/CommandRegistry;

    invoke-direct {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->registryHelp(Lorg/jline/console/CommandRegistry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_1
    goto :goto_2

    .line 1559
    :catch_0
    move-exception v1

    .line 1560
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .line 1562
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private trace(Lorg/jline/console/impl/SystemRegistryImpl$CommandData;)V
    .locals 4
    .param p1, "commandData"    # Lorg/jline/console/impl/SystemRegistryImpl$CommandData;

    .line 1251
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jline/console/ConsoleEngine;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 1254
    :cond_0
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1255
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->rawLine()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->println(Lorg/jline/terminal/Terminal;)V

    .line 1257
    .end local v0    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :goto_0
    return-void
.end method


# virtual methods
.method public addCompleter(Lorg/jline/reader/Completer;)V
    .locals 2
    .param p1, "completer"    # Lorg/jline/reader/Completer;

    .line 245
    instance-of v0, p1, Lorg/jline/reader/impl/completer/SystemCompleter;

    if-eqz v0, :cond_1

    .line 246
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/impl/completer/SystemCompleter;

    .line 247
    .local v0, "sc":Lorg/jline/reader/impl/completer/SystemCompleter;
    invoke-virtual {v0}, Lorg/jline/reader/impl/completer/SystemCompleter;->isCompiled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->customAggregateCompleter:Lorg/jline/reader/impl/completer/AggregateCompleter;

    invoke-virtual {v1}, Lorg/jline/reader/impl/completer/AggregateCompleter;->getCompleters()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->customSystemCompleter:Lorg/jline/reader/impl/completer/SystemCompleter;

    invoke-virtual {v1, v0}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Lorg/jline/reader/impl/completer/SystemCompleter;)V

    .line 252
    .end local v0    # "sc":Lorg/jline/reader/impl/completer/SystemCompleter;
    :goto_0
    goto :goto_1

    .line 253
    :cond_1
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->customAggregateCompleter:Lorg/jline/reader/impl/completer/AggregateCompleter;

    invoke-virtual {v0}, Lorg/jline/reader/impl/completer/AggregateCompleter;->getCompleters()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_1
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .line 1243
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->close()V

    .line 1244
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->resetOutput()V

    .line 1245
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/console/ConsoleEngine;->purge()V

    .line 1248
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1300
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->save()V

    .line 1301
    return-void
.end method

.method public commandAliases()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 155
    .local v4, "r":Lorg/jline/console/CommandRegistry;
    invoke-interface {v4}, Lorg/jline/console/CommandRegistry;->commandAliases()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 154
    .end local v4    # "r":Lorg/jline/console/CommandRegistry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-object v0
.end method

.method public commandDescription(Ljava/util/List;)Lorg/jline/console/CmdDesc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jline/console/CmdDesc;"
        }
    .end annotation

    .line 322
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/jline/console/CmdDesc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jline/console/CmdDesc;-><init>(Z)V

    .line 323
    .local v0, "out":Lorg/jline/console/CmdDesc;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "command":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->registryId(Ljava/lang/String;)I

    move-result v2

    .line 325
    .local v2, "id":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 326
    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lorg/jline/console/CommandRegistry;->commandDescription(Ljava/util/List;)Lorg/jline/console/CmdDesc;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v3, v1}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->hasScript(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/jline/console/ConsoleEngine;->commandDescription(Ljava/util/List;)Lorg/jline/console/CmdDesc;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->isLocalCommand(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    invoke-direct {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->localCommandDescription(Ljava/lang/String;)Lorg/jline/console/CmdDesc;

    move-result-object v0

    .line 332
    :cond_2
    :goto_0
    return-object v0
.end method

.method public commandDescription(Lorg/jline/console/CmdLine;)Lorg/jline/console/CmdDesc;
    .locals 7
    .param p1, "line"    # Lorg/jline/console/CmdLine;

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "out":Lorg/jline/console/CmdDesc;
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    invoke-virtual {p1}, Lorg/jline/console/CmdLine;->getArgs()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "cmd":Ljava/lang/String;
    sget-object v2, Lorg/jline/console/impl/SystemRegistryImpl$1;->$SwitchMap$org$jline$console$CmdLine$DescriptionType:[I

    invoke-virtual {p1}, Lorg/jline/console/CmdLine;->getDescriptionType()Lorg/jline/console/CmdLine$DescriptionType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/console/CmdLine$DescriptionType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 384
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->isCommandOrScript(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 385
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptDescription:Ljava/util/function/Function;

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jline/console/CmdDesc;

    goto/16 :goto_3

    .line 358
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl;->isCommandOrScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {p1}, Lorg/jline/console/CmdLine;->getArgs()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->hasPipes(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 359
    invoke-virtual {p1}, Lorg/jline/console/CmdLine;->getArgs()Ljava/util/List;

    move-result-object v2

    .line 360
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 361
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 362
    .local v3, "c":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/console/CommandRegistry;

    invoke-interface {v5, v3}, Lorg/jline/console/CommandRegistry;->hasCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    iget-object v5, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/console/CommandRegistry;

    invoke-direct {p0, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->commandDescription(Lorg/jline/console/CommandRegistry;)Lorg/jline/console/CmdDesc;

    move-result-object v0

    goto :goto_2

    .line 363
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    const-string v5, "help"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    const/4 v0, 0x0

    goto :goto_2

    .line 365
    :cond_3
    if-eqz v3, :cond_4

    .line 366
    iget-object v5, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/console/CommandRegistry;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/jline/console/CommandRegistry;->commandDescription(Ljava/util/List;)Lorg/jline/console/CmdDesc;

    move-result-object v0

    goto :goto_2

    .line 368
    :cond_4
    iget-object v5, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/console/CommandRegistry;

    invoke-direct {p0, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->commandDescription(Lorg/jline/console/CommandRegistry;)Lorg/jline/console/CmdDesc;

    move-result-object v0

    .line 373
    :goto_2
    if-eqz v0, :cond_5

    .line 374
    invoke-virtual {v0, v4}, Lorg/jline/console/CmdDesc;->setSubcommand(Z)V

    .line 376
    .end local v3    # "c":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 377
    :cond_6
    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0, v2}, Lorg/jline/console/impl/SystemRegistryImpl;->commandDescription(Ljava/util/List;)Lorg/jline/console/CmdDesc;

    move-result-object v0

    .line 389
    .end local v2    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public commandInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->registryId(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, "id":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 201
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfos:Ljava/util/Map;

    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lorg/jline/console/CommandRegistry;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandInfos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    goto :goto_0

    .line 205
    :cond_1
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v2, p1}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->hasScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/jline/console/ConsoleEngine;->commandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 207
    :cond_2
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->isLocalCommand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->localCommandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 210
    :cond_3
    :goto_0
    return-object v1
.end method

.method public commandNames()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 140
    .local v0, "out":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 141
    .local v4, "r":Lorg/jline/console/CommandRegistry;
    invoke-interface {v4}, Lorg/jline/console/CommandRegistry;->commandNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 140
    .end local v4    # "r":Lorg/jline/console/CommandRegistry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->localCommandNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 144
    return-object v0
.end method

.method public compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use method completer() to retrieve Completer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public completer()Lorg/jline/reader/Completer;
    .locals 5

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->_compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->customAggregateCompleter:Lorg/jline/reader/impl/completer/AggregateCompleter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/console/ConsoleEngine;->scriptCompleters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    new-instance v1, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;

    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->workDir:Ljava/util/function/Supplier;

    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    iget-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-direct {v1, v2, v3, v4}, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;-><init>(Ljava/util/function/Supplier;Ljava/util/Map;Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;)V

    invoke-virtual {v1}, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->doCompleter()Lorg/jline/reader/Completer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    new-instance v1, Lorg/jline/reader/impl/completer/AggregateCompleter;

    invoke-direct {v1, v0}, Lorg/jline/reader/impl/completer/AggregateCompleter;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public consoleEngine()Lorg/jline/console/ConsoleEngine;
    .locals 2

    .line 1304
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    check-cast v0, Lorg/jline/console/ConsoleEngine;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public consoleOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "out":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/jline/console/ConsoleEngine;->consoleOption(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    :cond_0
    return-object v0
.end method

.method public execute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 17
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1134
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p1

    goto/16 :goto_c

    .line 1137
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 1138
    .local v3, "start":J
    const/4 v0, 0x0

    .line 1139
    .local v0, "out":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1140
    .local v5, "statement":Z
    const/4 v6, 0x0

    .line 1141
    .local v6, "postProcessed":Z
    const/4 v7, 0x0

    .line 1142
    .local v7, "errorCount":I
    iget-object v8, v1, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v8}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->refresh()V

    .line 1143
    invoke-direct/range {p0 .. p1}, Lorg/jline/console/impl/SystemRegistryImpl;->compileCommandLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1144
    .local v8, "cmds":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/impl/SystemRegistryImpl$CommandData;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v9

    .line 1145
    .local v9, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v7

    move v7, v6

    move v6, v5

    move-object v5, v0

    .end local v0    # "out":Ljava/lang/Object;
    .local v5, "out":Ljava/lang/Object;
    .local v6, "statement":Z
    .local v7, "postProcessed":Z
    .local v11, "errorCount":I
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;

    .line 1146
    .local v14, "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->isConsoleScript(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1147
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Console script output cannot be redirected!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->close()V

    .line 1151
    if-eqz v9, :cond_3

    invoke-interface {v9}, Lorg/jline/console/ConsoleEngine;->isExecuting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1152
    invoke-direct {v1, v14}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(Lorg/jline/console/impl/SystemRegistryImpl$CommandData;)V

    .line 1154
    :cond_3
    iput-object v2, v1, Lorg/jline/console/impl/SystemRegistryImpl;->exception:Ljava/lang/Exception;

    .line 1155
    const/4 v6, 0x0

    .line 1156
    const/4 v7, 0x0

    .line 1157
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->variable()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1158
    :cond_4
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1159
    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->append()Z

    move-result v2

    invoke-virtual {v0, v15, v2}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->redirect(Ljava/io/File;Z)V

    goto :goto_2

    .line 1160
    :cond_5
    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1161
    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->redirect()V

    .line 1163
    :cond_6
    :goto_2
    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->open()V
    :try_end_0
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    :cond_7
    const/4 v2, 0x0

    .line 1167
    .local v2, "consoleScript":Z
    :try_start_1
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->rawLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->args()[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v0, v15, v13}, Lorg/jline/console/impl/SystemRegistryImpl;->execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    .line 1173
    goto :goto_3

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;
    if-eqz v9, :cond_11

    .line 1172
    const/4 v2, 0x1

    .line 1174
    .end local v0    # "e":Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;
    :goto_3
    if-eqz v9, :cond_10

    .line 1175
    if-eqz v2, :cond_b

    .line 1176
    :try_start_2
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->hasScript(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v6, v0

    .line 1177
    if-eqz v6, :cond_a

    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->isByteOutputStream()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1178
    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->close()V

    .line 1180
    :cond_a
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->rawLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->args()[Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v0, v13, v15}, Lorg/jline/console/ConsoleEngine;->execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    .line 1182
    :cond_b
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe()Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v15, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe()Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v15, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->AND:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1183
    :cond_c
    invoke-direct {v1, v14, v6, v9, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->postProcess(Lorg/jline/console/impl/SystemRegistryImpl$CommandData;ZLorg/jline/console/ConsoleEngine;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    .line 1184
    .local v0, "er":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    const/4 v7, 0x1

    .line 1185
    invoke-virtual {v0}, Lorg/jline/console/ConsoleEngine$ExecutionResult;->result()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Lorg/jline/console/ConsoleEngine;->println(Ljava/lang/Object;)V

    .line 1186
    const/4 v5, 0x0

    .line 1187
    invoke-virtual {v0}, Lorg/jline/console/ConsoleEngine$ExecutionResult;->status()I

    move-result v13

    if-nez v13, :cond_d

    const/4 v13, 0x1

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    .line 1188
    .local v13, "success":Z
    :goto_6
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe()Ljava/lang/String;

    move-result-object v15

    iget-object v12, v1, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    move-object/from16 v16, v0

    .end local v0    # "er":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    .local v16, "er":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    sget-object v0, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v13, :cond_f

    .line 1189
    :cond_e
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v15, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->AND:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_10

    if-nez v13, :cond_10

    .line 1205
    :cond_f
    if-nez v7, :cond_16

    if-eqz v9, :cond_16

    .line 1206
    invoke-direct {v1, v14, v6, v9, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->postProcess(Lorg/jline/console/impl/SystemRegistryImpl$CommandData;ZLorg/jline/console/ConsoleEngine;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/console/ConsoleEngine$ExecutionResult;->result()Ljava/lang/Object;

    move-result-object v5

    goto :goto_a

    .line 1205
    .end local v2    # "consoleScript":Z
    .end local v13    # "success":Z
    .end local v16    # "er":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :cond_10
    if-nez v7, :cond_14

    if-eqz v9, :cond_14

    .line 1206
    goto :goto_7

    .line 1170
    .local v0, "e":Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;
    .restart local v2    # "consoleScript":Z
    :cond_11
    nop

    .end local v3    # "start":J
    .end local v5    # "out":Ljava/lang/Object;
    .end local v6    # "statement":Z
    .end local v7    # "postProcessed":Z
    .end local v8    # "cmds":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/impl/SystemRegistryImpl$CommandData;>;"
    .end local v9    # "consoleEngine":Lorg/jline/console/ConsoleEngine;
    .end local v11    # "errorCount":I
    .end local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    .end local p1    # "line":Ljava/lang/String;
    :try_start_3
    throw v0
    :try_end_3
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1205
    .end local v0    # "e":Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;
    .end local v2    # "consoleScript":Z
    .restart local v3    # "start":J
    .restart local v5    # "out":Ljava/lang/Object;
    .restart local v6    # "statement":Z
    .restart local v7    # "postProcessed":Z
    .restart local v8    # "cmds":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/impl/SystemRegistryImpl$CommandData;>;"
    .restart local v9    # "consoleEngine":Lorg/jline/console/ConsoleEngine;
    .restart local v11    # "errorCount":I
    .restart local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    .restart local p1    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 1196
    :catch_1
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v11, v11, 0x1

    .line 1198
    :try_start_4
    invoke-virtual {v14}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe()Ljava/lang/String;

    move-result-object v2

    iget-object v12, v1, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    sget-object v13, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1199
    invoke-virtual {v1, v0}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1200
    const/4 v2, 0x1

    .line 1205
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "postProcessed":Z
    .local v2, "postProcessed":Z
    if-nez v2, :cond_12

    if-eqz v9, :cond_12

    .line 1206
    invoke-direct {v1, v14, v6, v9, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->postProcess(Lorg/jline/console/impl/SystemRegistryImpl$CommandData;ZLorg/jline/console/ConsoleEngine;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/console/ConsoleEngine$ExecutionResult;->result()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    move v7, v2

    .end local v5    # "out":Ljava/lang/Object;
    .local v0, "out":Ljava/lang/Object;
    goto :goto_8

    .line 1209
    .end local v0    # "out":Ljava/lang/Object;
    .end local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    .restart local v5    # "out":Ljava/lang/Object;
    :cond_12
    move v7, v2

    goto :goto_8

    .line 1202
    .end local v2    # "postProcessed":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "postProcessed":Z
    .restart local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    :cond_13
    nop

    .end local v3    # "start":J
    .end local v5    # "out":Ljava/lang/Object;
    .end local v6    # "statement":Z
    .end local v7    # "postProcessed":Z
    .end local v8    # "cmds":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/impl/SystemRegistryImpl$CommandData;>;"
    .end local v9    # "consoleEngine":Lorg/jline/console/ConsoleEngine;
    .end local v11    # "errorCount":I
    .end local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    .end local p1    # "line":Ljava/lang/String;
    :try_start_5
    throw v0

    .line 1194
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "start":J
    .restart local v5    # "out":Ljava/lang/Object;
    .restart local v6    # "statement":Z
    .restart local v7    # "postProcessed":Z
    .restart local v8    # "cmds":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/impl/SystemRegistryImpl$CommandData;>;"
    .restart local v9    # "consoleEngine":Lorg/jline/console/ConsoleEngine;
    .restart local v11    # "errorCount":I
    .restart local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    .restart local p1    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1195
    .local v0, "e":Lorg/jline/builtins/Options$HelpException;
    invoke-virtual {v1, v0}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1205
    .end local v0    # "e":Lorg/jline/builtins/Options$HelpException;
    if-nez v7, :cond_14

    if-eqz v9, :cond_14

    .line 1206
    :goto_7
    invoke-direct {v1, v14, v6, v9, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->postProcess(Lorg/jline/console/impl/SystemRegistryImpl$CommandData;ZLorg/jline/console/ConsoleEngine;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/console/ConsoleEngine$ExecutionResult;->result()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    .line 1209
    .end local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    :cond_14
    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1205
    .restart local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    :goto_9
    if-nez v7, :cond_15

    if-eqz v9, :cond_15

    .line 1206
    invoke-direct {v1, v14, v6, v9, v5}, Lorg/jline/console/impl/SystemRegistryImpl;->postProcess(Lorg/jline/console/impl/SystemRegistryImpl$CommandData;ZLorg/jline/console/ConsoleEngine;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/console/ConsoleEngine$ExecutionResult;->result()Ljava/lang/Object;

    move-result-object v5

    .line 1208
    :cond_15
    throw v0

    .line 1210
    .end local v14    # "cmd":Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
    :cond_16
    :goto_a
    if-nez v11, :cond_17

    .line 1211
    iget-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->extractNames(Ljava/lang/String;)V

    goto :goto_b

    .line 1210
    :cond_17
    move-object/from16 v2, p1

    .line 1213
    :goto_b
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v10, "execute: "

    const/4 v12, 0x0

    aput-object v10, v0, v12

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v12, v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v0, v12

    const/4 v10, 0x2

    const-string v12, " msec"

    aput-object v12, v0, v10

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 1214
    return-object v5

    .line 1134
    .end local v3    # "start":J
    .end local v5    # "out":Ljava/lang/Object;
    .end local v6    # "statement":Z
    .end local v7    # "postProcessed":Z
    .end local v8    # "cmds":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/impl/SystemRegistryImpl$CommandData;>;"
    .end local v9    # "consoleEngine":Lorg/jline/console/ConsoleEngine;
    .end local v11    # "errorCount":I
    :cond_18
    move-object/from16 v2, p1

    .line 1135
    :goto_c
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPipeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public groupCommandsInHelp(Z)Lorg/jline/console/impl/SystemRegistryImpl;
    .locals 0
    .param p1, "commandGroups"    # Z

    .line 223
    iput-boolean p1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandGroups:Z

    .line 224
    return-object p0
.end method

.method public hasCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->registryId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->isLocalCommand(Ljava/lang/String;)Z

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

.method public initialize(Ljava/io/File;)V
    .locals 1
    .param p1, "script"    # Ljava/io/File;

    .line 128
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jline/console/ConsoleEngine;->execute(Ljava/io/File;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(Ljava/lang/Exception;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "out":Ljava/lang/Object;
    invoke-static {p1}, Lorg/jline/console/ConsoleEngine;->plainCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 396
    if-nez p2, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    move-object p2, v1

    .line 397
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->registryId(Ljava/lang/String;)I

    move-result v1

    .line 398
    .local v1, "id":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 399
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    aget-object v2, v2, v1

    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->commandSession()Lorg/jline/console/CommandRegistry$CommandSession;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lorg/jline/console/CommandRegistry;->invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 400
    :cond_1
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->isLocalCommand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    invoke-direct {p0, p1, p2}, Lorg/jline/console/impl/SystemRegistryImpl;->localExecute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 402
    :cond_2
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 403
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v2

    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->commandSession()Lorg/jline/console/CommandRegistry$CommandSession;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lorg/jline/console/ConsoleEngine;->invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 405
    :cond_3
    :goto_1
    return-object v0
.end method

.method public isCommandAlias(Ljava/lang/String;)Z
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .line 543
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 544
    return v1

    .line 546
    :cond_0
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    .line 547
    .local v0, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    invoke-interface {v2, p1}, Lorg/jline/reader/Parser;->validCommandName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, p1}, Lorg/jline/console/ConsoleEngine;->hasAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    invoke-interface {v0, p1}, Lorg/jline/console/ConsoleEngine;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    .line 551
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v2, v1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->isPipe(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 548
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1
.end method

.method public isCommandOrScript(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 238
    invoke-virtual {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    invoke-virtual {v0, p1}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->hasScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCommandOrScript(Lorg/jline/reader/ParsedLine;)Z
    .locals 3
    .param p1, "line"    # Lorg/jline/reader/ParsedLine;

    .line 233
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->parser:Lorg/jline/reader/Parser;

    invoke-interface {p1}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/console/impl/SystemRegistryImpl;->isCommandOrScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/String;Lorg/jline/console/CommandRegistry;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "subcommandRegistry"    # Lorg/jline/console/CommandRegistry;

    .line 176
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->subcommands:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandExecute:Ljava/util/Map;

    new-instance v1, Lorg/jline/console/CommandMethods;

    new-instance v2, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda0;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    new-instance v3, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda1;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;)V

    invoke-direct {v1, v2, v3}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public rename(Lorg/jline/console/impl/SystemRegistryImpl$Pipe;Ljava/lang/String;)V
    .locals 1
    .param p1, "pipe"    # Lorg/jline/console/impl/SystemRegistryImpl$Pipe;
    .param p2, "name"    # Ljava/lang/String;

    .line 95
    const-string v0, "/w+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->pipeName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public varargs setCommandRegistries([Lorg/jline/console/CommandRegistry;)V
    .locals 3
    .param p1, "commandRegistries"    # [Lorg/jline/console/CommandRegistry;

    .line 108
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandRegistries:[Lorg/jline/console/CommandRegistry;

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 110
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/jline/console/ConsoleEngine;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->consoleId:Ljava/lang/Integer;

    .line 115
    aget-object v1, p1, v0

    check-cast v1, Lorg/jline/console/ConsoleEngine;

    invoke-interface {v1, p0}, Lorg/jline/console/ConsoleEngine;->setSystemRegistry(Lorg/jline/console/SystemRegistry;)V

    .line 116
    new-instance v1, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    aget-object v2, p1, v0

    check-cast v2, Lorg/jline/console/ConsoleEngine;

    invoke-direct {v1, v2}, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;-><init>(Lorg/jline/console/ConsoleEngine;)V

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptStore:Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;

    .line 117
    new-instance v1, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl;->configPath:Lorg/jline/builtins/ConfigurationPath;

    invoke-direct {v1, p0, v2}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;Lorg/jline/builtins/ConfigurationPath;)V

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    goto :goto_1

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 119
    :cond_1
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/jline/console/SystemRegistry;

    if-nez v1, :cond_2

    .line 109
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 123
    .end local v0    # "i":I
    :cond_3
    invoke-static {p0}, Lorg/jline/console/SystemRegistry;->add(Lorg/jline/console/SystemRegistry;)V

    .line 124
    return-void
.end method

.method public setGroupCommandsInHelp(Z)V
    .locals 0
    .param p1, "commandGroups"    # Z

    .line 219
    iput-boolean p1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->commandGroups:Z

    .line 220
    return-void
.end method

.method public setScriptDescription(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CmdLine;",
            "Lorg/jline/console/CmdDesc;",
            ">;)V"
        }
    .end annotation

    .line 349
    .local p1, "scriptDescription":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/jline/console/CmdLine;Lorg/jline/console/CmdDesc;>;"
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl;->scriptDescription:Ljava/util/function/Function;

    .line 350
    return-void
.end method

.method public terminal()Lorg/jline/terminal/Terminal;
    .locals 1

    .line 421
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->commandSession()Lorg/jline/console/CommandRegistry$CommandSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/console/CommandRegistry$CommandSession;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 1261
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl;->outputStream:Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->close()V

    .line 1262
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    .line 1263
    .local v0, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    if-eqz v0, :cond_1

    .line 1264
    instance-of v1, p1, Lorg/jline/builtins/Options$HelpException;

    if-nez v1, :cond_0

    .line 1265
    const-string v1, "exception"

    invoke-interface {v0, v1, p1}, Lorg/jline/console/ConsoleEngine;->putVariable(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1267
    :cond_0
    invoke-interface {v0, p1}, Lorg/jline/console/ConsoleEngine;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 1269
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->trace(ZLjava/lang/Exception;)V

    .line 1271
    :goto_0
    return-void
.end method

.method public trace(ZLjava/lang/Exception;)V
    .locals 6
    .param p1, "stack"    # Z
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1275
    instance-of v0, p2, Lorg/jline/builtins/Options$HelpException;

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/jline/builtins/Styles;->helpStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jline/builtins/Options$HelpException;->highlight(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedString;->print(Lorg/jline/terminal/Terminal;)V

    goto/16 :goto_1

    .line 1277
    :cond_0
    instance-of v0, p2, Lorg/jline/console/impl/SystemRegistryImpl$UnknownCommandException;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1278
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1279
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v3, v1}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1280
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1281
    .end local v0    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 1282
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1284
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1285
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v2}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1286
    .local v2, "asb":Lorg/jline/utils/AttributedStringBuilder;
    if-eqz v0, :cond_3

    .line 1287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1288
    .local v3, "m":Ljava/lang/String;
    sget-object v4, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1289
    .end local v3    # "m":Ljava/lang/String;
    goto :goto_0

    .line 1290
    :cond_3
    sget-object v3, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v3, v1}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    const-string v4, "Caught exception: "

    invoke-virtual {v2, v4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1291
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1293
    :goto_0
    invoke-virtual {v2}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1294
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Stack: "

    aput-object v5, v3, v4

    aput-object p2, v3, v1

    invoke-static {v3}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 1296
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :goto_1
    return-void
.end method
