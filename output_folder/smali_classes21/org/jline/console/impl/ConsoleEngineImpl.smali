.class public Lorg/jline/console/impl/ConsoleEngineImpl;
.super Lorg/jline/console/impl/JlineCommandRegistry;
.source "ConsoleEngineImpl.java"

# interfaces
.implements Lorg/jline/console/ConsoleEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/impl/ConsoleEngineImpl$AliasValueCompleter;,
        Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;,
        Lorg/jline/console/impl/ConsoleEngineImpl$Command;
    }
.end annotation


# static fields
.field private static final END_HELP:Ljava/lang/String; = "END_HELP"

.field private static final HELP_MAX_SIZE:I = 0x1e

.field private static final OPTION_HELP:[Ljava/lang/String;

.field private static final OPTION_VERBOSE:Ljava/lang/String; = "-v"

.field private static final VAR_CONSOLE_OPTIONS:Ljava/lang/String; = "CONSOLE_OPTIONS"

.field private static final VAR_PATH:Ljava/lang/String; = "PATH"


# instance fields
.field private aliasFile:Ljava/nio/file/Path;

.field private final aliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final engine:Lorg/jline/console/ScriptEngine;

.field private exception:Ljava/lang/Exception;

.field private executing:Z

.field private final pipes:Ljava/util/Map;
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

.field private final printer:Lorg/jline/console/Printer;

.field private reader:Lorg/jline/reader/LineReader;

.field private scriptExtension:Ljava/lang/String;

.field private systemRegistry:Lorg/jline/console/SystemRegistry;

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
.method public static synthetic $r8$lambda$00jljo2QC1hQpDDqTdeW-A6Vkxc(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->unalias(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2Y_3ri8Vqn83E4FxRLHtiOraqLE(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->doc(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$30UskVN8psPZRyuYoe0V1qTmMQk(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->pipe(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$374B1aDVczTE-HkWQZJtZP6wwyY(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->aliascmd(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Al6VfMlnYWQDYJMzvlj_WKNgw_0(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->aliasCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BqO30s3mtGW6AqXYcNz6F9zVMa4(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->del(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Csy6u2aQ-DCfXiPT-X5LGO4mElE(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->prnt(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TP0DGlxnw2adj5B0Gf7LwJhb_io(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->variableReferences()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TkHPYRUA-wkrNvGRh496l5szJYs(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->prntCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aUQZyaMfCXqQxfBI_-aOaihb65A(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->docCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cc-tsmfF_7ZiEJydAQ0L2rvurJQ(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->slurpCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h8w6Rxse9YdD3J3E1c7u5LETRl8(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->docs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kQGSfN10ilh2xbxdysUz_e9kkjc(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->variableCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m7q4b1jcHM6X9ZZPqV4B5gXEyKM(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->scriptNames()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mR8RYUraV78_n92b6ePLTEtpx9w(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->slurpcmd(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$neC2u-XxbyX43wX5nhAUGYv6R5o(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->commandAliasNames()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vGjn2Vn1SvnWlHzpt-9x_zzmrqQ(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->show(Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xNc0V3b3Lrk4ocLHsRlE_aYIzxM(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->unaliasCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-string v0, "-?"

    const-string v1, "--help"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/console/impl/ConsoleEngineImpl;->OPTION_HELP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lorg/jline/console/ScriptEngine;Lorg/jline/console/Printer;Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 7
    .param p2, "engine"    # Lorg/jline/console/ScriptEngine;
    .param p3, "printer"    # Lorg/jline/console/Printer;
    .param p5, "configPath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/jline/console/impl/ConsoleEngineImpl$Command;",
            ">;",
            "Lorg/jline/console/ScriptEngine;",
            "Lorg/jline/console/Printer;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/jline/builtins/ConfigurationPath;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p1, "commands":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/ConsoleEngineImpl$Command;>;"
    .local p4, "workDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Lorg/jline/console/impl/JlineCommandRegistry;-><init>()V

    .line 70
    const-string v0, "jline"

    iput-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->scriptExtension:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->pipes:Ljava/util/Map;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->executing:Z

    .line 88
    iput-object p2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    .line 89
    iput-object p4, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->workDir:Ljava/util/function/Supplier;

    .line 90
    iput-object p3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->printer:Lorg/jline/console/Printer;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "commandName":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/console/impl/ConsoleEngineImpl$Command;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v1, "commandExecute":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/console/impl/ConsoleEngineImpl$Command;Lorg/jline/console/CommandMethods;>;"
    if-nez p1, :cond_0

    .line 95
    new-instance v2, Ljava/util/HashSet;

    const-class v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v2, "cmds":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/ConsoleEngineImpl$Command;>;"
    goto :goto_0

    .line 97
    .end local v2    # "cmds":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/ConsoleEngineImpl$Command;>;"
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 99
    .restart local v2    # "cmds":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/ConsoleEngineImpl$Command;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    .line 100
    .local v4, "c":Lorg/jline/console/impl/ConsoleEngineImpl$Command;
    invoke-virtual {v4}, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v4    # "c":Lorg/jline/console/impl/ConsoleEngineImpl$Command;
    goto :goto_1

    .line 102
    :cond_1
    sget-object v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->DEL:Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda24;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda24;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda6;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->SHOW:Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda7;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda6;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->PRNT:Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda8;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda9;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->SLURP:Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda10;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda11;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->ALIAS:Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda12;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda13;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->UNALIAS:Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda25;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda1;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->DOC:Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda2;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda3;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v3, Lorg/jline/console/impl/ConsoleEngineImpl$Command;->PIPE:Lorg/jline/console/impl/ConsoleEngineImpl$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda4;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda5;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v3, "aliases.json"

    invoke-virtual {p5, v3}, Lorg/jline/builtins/ConfigurationPath;->getUserConfig(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliasFile:Ljava/nio/file/Path;

    .line 111
    if-nez v4, :cond_2

    .line 112
    const/4 v4, 0x1

    invoke-virtual {p5, v3, v4}, Lorg/jline/builtins/ConfigurationPath;->getUserConfig(Ljava/lang/String;Z)Ljava/nio/file/Path;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliasFile:Ljava/nio/file/Path;

    .line 113
    iget-object v4, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-virtual {p0, v3, v4}, Lorg/jline/console/impl/ConsoleEngineImpl;->persist(Ljava/nio/file/Path;Ljava/lang/Object;)V

    goto :goto_2

    .line 115
    :cond_2
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-virtual {p0, v4}, Lorg/jline/console/impl/ConsoleEngineImpl;->slurp(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    :goto_2
    invoke-virtual {p0, v0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->registerCommands(Ljava/util/Map;Ljava/util/Map;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/jline/console/ScriptEngine;Lorg/jline/console/Printer;Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 6
    .param p1, "engine"    # Lorg/jline/console/ScriptEngine;
    .param p2, "printer"    # Lorg/jline/console/Printer;
    .param p4, "configPath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/console/ScriptEngine;",
            "Lorg/jline/console/Printer;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/jline/builtins/ConfigurationPath;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    .local p3, "workDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jline/console/impl/ConsoleEngineImpl;-><init>(Ljava/util/Set;Lorg/jline/console/ScriptEngine;Lorg/jline/console/Printer;Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;)V

    .line 82
    return-void
.end method

.method static synthetic access$100(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/reader/Parser;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;

    .line 51
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lorg/jline/console/impl/ConsoleEngineImpl;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->expandToList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/terminal/Terminal;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;

    .line 51
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/SystemRegistry;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;

    .line 51
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->systemRegistry:Lorg/jline/console/SystemRegistry;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/jline/console/impl/ConsoleEngineImpl;->postProcess(Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/ScriptEngine;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;

    .line 51
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;

    .line 51
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->scriptExtensions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;

    .line 51
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->scriptExtension:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lorg/jline/console/impl/ConsoleEngineImpl;->OPTION_HELP:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->expandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->isNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lorg/jline/console/impl/ConsoleEngineImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->executing:Z

    return p1
.end method

.method private aliasCompleter(Ljava/lang/String;)Ljava/util/List;
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

    .line 1216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v2, Lorg/jline/reader/impl/completer/StringsCompleter;

    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda22;

    invoke-direct {v4, v3}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda22;-><init>(Ljava/util/Map;)V

    invoke-direct {v2, v4}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    new-instance v2, Lorg/jline/console/impl/ConsoleEngineImpl$AliasValueCompleter;

    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/jline/console/impl/ConsoleEngineImpl$AliasValueCompleter;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    new-instance v2, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jline/reader/Completer;

    sget-object v4, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/jline/builtins/Completers$OptionCompleter;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    const/4 v6, 0x1

    invoke-direct {v4, v1, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/List;Ljava/util/function/Function;I)V

    aput-object v4, v3, v6

    invoke-direct {v2, v3}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    return-object v0
.end method

.method private aliascmd(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 13
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 963
    const-string v0, ":-"

    const-string v1, "\\$\\{"

    const-string v2, "%\\{"

    const-string v3, "alias -  create command alias"

    const-string v4, "Usage: alias [ALIAS] [COMMANDLINE]"

    const-string v5, "  -? --help                       Displays command help"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, "usage":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 970
    .local v4, "out":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lorg/jline/console/impl/ConsoleEngineImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v5

    .line 971
    .local v5, "opt":Lorg/jline/builtins/Options;
    invoke-virtual {v5}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    .line 972
    .local v6, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 973
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    move-object v4, v0

    goto/16 :goto_1

    .line 974
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1

    .line 975
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_1

    .line 977
    :cond_1
    const-string v7, " "

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v6, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 978
    .local v7, "alias":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    const/16 v10, 0xa

    if-ge v9, v10, :cond_2

    .line 979
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 980
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\\}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 981
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 978
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 983
    .end local v9    # "j":I
    :cond_2
    const-string v0, "%@"

    const-string v1, "\\$@"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .end local v7    # "alias":Ljava/lang/String;
    .local v0, "alias":Ljava/lang/String;
    const-string v1, "%\\{@}"

    const-string v2, "\\$\\{@\\}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 985
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliasFile:Ljava/nio/file/Path;

    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Lorg/jline/console/impl/ConsoleEngineImpl;->persist(Ljava/nio/file/Path;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    .end local v0    # "alias":Ljava/lang/String;
    .end local v5    # "opt":Lorg/jline/builtins/Options;
    .end local v6    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    goto :goto_2

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 991
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v4
.end method

.method private commandAliasNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->pipes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda18;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 197
    .local v0, "opers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->systemRegistry:Lorg/jline/console/SystemRegistry;

    invoke-interface {v1}, Lorg/jline/console/SystemRegistry;->getPipeNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda19;-><init>(Ljava/util/Set;)V

    .line 199
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;-><init>()V

    .line 200
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 198
    return-object v1
.end method

.method private consoleOption(Ljava/lang/String;)Z
    .locals 5
    .param p1, "option"    # Ljava/lang/String;

    .line 743
    const/4 v0, 0x0

    .line 745
    .local v0, "out":Z
    :try_start_0
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->consoleOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 748
    goto :goto_0

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad CONSOLE_OPTION value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/jline/console/impl/ConsoleEngineImpl;->trace(Ljava/lang/Object;)V

    .line 749
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private consoleOptions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v1, "CONSOLE_OPTIONS"

    invoke-interface {v0, v1}, Lorg/jline/console/ScriptEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0, v1}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    .line 727
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 726
    :goto_0
    return-object v0
.end method

.method private del(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 889
    const-string v0, "del -  delete console variables, methods, classes and imports"

    const-string v1, "Usage: del [var1] ..."

    const-string v2, "  -? --help                       Displays command help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "usage":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    .line 896
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jline/console/ScriptEngine;->del([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    goto :goto_0

    .line 897
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 900
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private doc(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 13
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 1053
    const-string v0, "doc -  open document on browser"

    const-string v1, "Usage: doc [OBJECT]"

    const-string v2, "  -? --help                       Displays command help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, "usage":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->xargs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/jline/console/impl/ConsoleEngineImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    .line 1060
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->xargs()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    .line 1061
    return-object v1

    .line 1063
    :cond_0
    invoke-static {}, Ljava/awt/Desktop;->isDesktopSupported()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_e

    .line 1068
    :try_start_1
    const-string v2, "docs"

    invoke-virtual {p0, v2, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->consoleOption(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1073
    .local v2, "docs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 1074
    if-eqz v2, :cond_d

    .line 1077
    const/4 v3, 0x0

    .line 1078
    .local v3, "done":Z
    :try_start_2
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->xargs()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1079
    .local v4, "arg":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v7, "Document not found: "

    if-eqz v6, :cond_2

    .line 1080
    :try_start_3
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v6

    aget-object v5, v6, v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1081
    .local v5, "address":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1082
    const/4 v3, 0x1

    .line 1083
    invoke-direct {p0, v5}, Lorg/jline/console/impl/ConsoleEngineImpl;->urlExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1084
    invoke-static {}, Ljava/awt/Desktop;->getDesktop()Ljava/awt/Desktop;

    move-result-object v6

    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/awt/Desktop;->browse(Ljava/net/URI;)V

    goto :goto_0

    .line 1086
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "usage":[Ljava/lang/String;
    .end local p1    # "input":Lorg/jline/console/CommandInput;
    throw v6

    .line 1090
    .end local v5    # "address":Ljava/lang/String;
    .restart local v0    # "usage":[Ljava/lang/String;
    .restart local p1    # "input":Lorg/jline/console/CommandInput;
    :cond_2
    :goto_0
    if-nez v3, :cond_c

    .line 1092
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, "([a-z]+\\.)+[A-Z][a-zA-Z]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1093
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .local v5, "name":Ljava/lang/String;
    goto :goto_1

    .line 1095
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 1097
    .restart local v5    # "name":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\."

    const-string v9, "/"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".html"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1098
    const/4 v6, 0x0

    .line 1099
    .local v6, "doc":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1100
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1101
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 1102
    goto :goto_3

    .line 1104
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    goto :goto_2

    .line 1105
    :cond_5
    :goto_3
    if-eqz v6, :cond_b

    .line 1108
    move-object v8, v5

    .line 1109
    .local v8, "url":Ljava/lang/String;
    instance-of v9, v6, Ljava/util/Collection;

    if-eqz v9, :cond_8

    .line 1110
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1111
    .local v10, "o":Ljava/lang/Object;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 1112
    invoke-direct {p0, v8}, Lorg/jline/console/impl/ConsoleEngineImpl;->urlExists(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1113
    invoke-static {}, Ljava/awt/Desktop;->getDesktop()Ljava/awt/Desktop;

    move-result-object v11

    new-instance v12, Ljava/net/URI;

    invoke-direct {v12, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/awt/Desktop;->browse(Ljava/net/URI;)V

    .line 1114
    const/4 v3, 0x1

    .line 1116
    .end local v10    # "o":Ljava/lang/Object;
    :cond_6
    goto :goto_4

    :cond_7
    goto :goto_5

    .line 1118
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1119
    invoke-direct {p0, v8}, Lorg/jline/console/impl/ConsoleEngineImpl;->urlExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1120
    invoke-static {}, Ljava/awt/Desktop;->getDesktop()Ljava/awt/Desktop;

    move-result-object v9

    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/awt/Desktop;->browse(Ljava/net/URI;)V

    .line 1121
    const/4 v3, 0x1

    .line 1124
    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    goto :goto_6

    .line 1125
    :cond_a
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "usage":[Ljava/lang/String;
    .end local p1    # "input":Lorg/jline/console/CommandInput;
    throw v9

    .line 1106
    .end local v8    # "url":Ljava/lang/String;
    .restart local v0    # "usage":[Ljava/lang/String;
    .restart local p1    # "input":Lorg/jline/console/CommandInput;
    :cond_b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No document configuration for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "usage":[Ljava/lang/String;
    .end local p1    # "input":Lorg/jline/console/CommandInput;
    throw v7

    .line 1130
    .end local v2    # "docs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "done":Z
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "doc":Ljava/lang/Object;
    .restart local v0    # "usage":[Ljava/lang/String;
    .restart local p1    # "input":Lorg/jline/console/CommandInput;
    :cond_c
    :goto_6
    goto :goto_7

    .line 1075
    .restart local v2    # "docs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No documents configuration!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "usage":[Ljava/lang/String;
    .end local p1    # "input":Lorg/jline/console/CommandInput;
    throw v3

    .line 1069
    .end local v2    # "docs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "usage":[Ljava/lang/String;
    .restart local p1    # "input":Lorg/jline/console/CommandInput;
    :catch_0
    move-exception v2

    .line 1070
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Bad documents configuration!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1072
    nop

    .end local v0    # "usage":[Ljava/lang/String;
    .end local p1    # "input":Lorg/jline/console/CommandInput;
    throw v3

    .line 1064
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v0    # "usage":[Ljava/lang/String;
    .restart local p1    # "input":Lorg/jline/console/CommandInput;
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Desktop is not supported!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "usage":[Ljava/lang/String;
    .end local p1    # "input":Lorg/jline/console/CommandInput;
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1128
    .restart local v0    # "usage":[Ljava/lang/String;
    .restart local p1    # "input":Lorg/jline/console/CommandInput;
    :catch_1
    move-exception v2

    .line 1129
    .restart local v2    # "e":Ljava/lang/Exception;
    iput-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 1131
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7
    return-object v1
.end method

.method private docCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 8
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

    .line 1258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/jline/reader/Completer;

    sget-object v4, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/jline/builtins/Completers$OptionCompleter;

    new-array v2, v2, [Lorg/jline/reader/Completer;

    new-instance v6, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v7, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda17;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v6, v7}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    aput-object v6, v2, v5

    sget-object v5, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 1260
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v2, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/List;Ljava/util/function/Function;I)V

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    .line 1259
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    return-object v0
.end method

.method private docs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "docs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/jline/console/impl/ConsoleEngineImpl;->consoleOption(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1241
    .local v1, "docs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 1242
    return-object v0

    .line 1244
    :cond_0
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v2}, Lorg/jline/console/ScriptEngine;->find()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1245
    .local v3, "v":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    .end local v3    # "v":Ljava/lang/String;
    goto :goto_0

    .line 1247
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1248
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1249
    .local v3, "d":Ljava/lang/String;
    const-string v4, "\\w+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1250
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    .end local v3    # "d":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1254
    :cond_3
    return-object v0
.end method

.method private error(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 861
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 862
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-static {}, Lorg/jline/builtins/Styles;->prntStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v1

    const-string v2, ".em"

    invoke-virtual {v1, v2}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 863
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->println(Lorg/jline/terminal/Terminal;)V

    .line 864
    return-void
.end method

.method private expandName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 299
    const-string v0, "[a-zA-Z_]+[a-zA-Z0-9_-]*"

    .line 300
    .local v0, "regexVar":Ljava/lang/String;
    move-object v1, p1

    .line 301
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^\\$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 303
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^\\$\\{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "}.*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^\\$\\{("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")}(.*)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 305
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 308
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 311
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private expandToList([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 273
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->expandToList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCodeBlock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .line 319
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCommandLine(Ljava/lang/String;)Z
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 323
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 325
    .local v1, "out":Z
    if-eqz v0, :cond_2

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->hasAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_0
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->systemRegistry:Lorg/jline/console/SystemRegistry;

    invoke-interface {v2, v0}, Lorg/jline/console/SystemRegistry;->hasCommand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    const/4 v1, 0x1

    goto :goto_0

    .line 333
    :cond_1
    new-instance v2, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, p0, v0, v4, v3}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 334
    .local v2, "sf":Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;
    invoke-static {v2}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->access$000(Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    const/4 v1, 0x1

    .line 339
    .end local v2    # "sf":Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;
    :cond_2
    :goto_0
    return v1
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 315
    const-string v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$commandAliasNames$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "p"    # Ljava/lang/String;

    .line 196
    const-string v0, "\\w+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$commandAliasNames$1(Ljava/util/Set;Ljava/util/Map$Entry;)Z
    .locals 2
    .param p0, "opers"    # Ljava/util/Set;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 199
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$scripts$2(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "pathMatcher"    # Ljava/nio/file/PathMatcher;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "f"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 227
    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method private parser()Lorg/jline/reader/Parser;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v0

    return-object v0
.end method

.method private pipe(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 7
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 1013
    const-string v0, "pipe -  create/delete pipe operator"

    const-string v1, "Usage: pipe [OPERATOR] [PREFIX] [POSTFIX]"

    const-string v2, "       pipe --list"

    const-string v3, "       pipe --delete [OPERATOR...]"

    const-string v4, "  -? --help                       Displays command help"

    const-string v5, "  -d --delete                     Delete pipe operators"

    const-string v6, "  -l --list                       List pipe operators"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "usage":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 1024
    .local v1, "opt":Lorg/jline/builtins/Options;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1025
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "delete"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 1026
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1027
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->pipes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/16 :goto_2

    .line 1029
    :cond_0
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1030
    .local v4, "p":Ljava/lang/String;
    iget-object v5, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->pipes:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    nop

    .end local v4    # "p":Ljava/lang/String;
    goto :goto_0

    :cond_1
    goto/16 :goto_2

    .line 1033
    :cond_2
    const-string v3, "list"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 1036
    :cond_3
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    .line 1037
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad number of arguments!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    goto :goto_2

    .line 1038
    :cond_4
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->systemRegistry:Lorg/jline/console/SystemRegistry;

    invoke-interface {v3}, Lorg/jline/console/SystemRegistry;->getPipeNames()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1039
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Reserved pipe operator"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    goto :goto_2

    .line 1041
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v3, "fixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object v4, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->pipes:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1034
    .end local v3    # "fixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    const-string v3, "maxDepth"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->printer:Lorg/jline/console/Printer;

    iget-object v4, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->pipes:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Lorg/jline/console/Printer;->println(Ljava/util/Map;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    .end local v1    # "opt":Lorg/jline/builtins/Options;
    .end local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    goto :goto_3

    .line 1046
    :catch_0
    move-exception v1

    .line 1047
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 1049
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private postProcess(Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;
    .locals 5
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "status":I
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 774
    .local v1, "out":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/jline/reader/Parser;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "consoleVar":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 776
    invoke-direct {p0, v2, p2}, Lorg/jline/console/impl/ConsoleEngineImpl;->saveResult(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    .line 777
    const/4 v1, 0x0

    goto :goto_1

    .line 778
    :cond_1
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "show"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 779
    if-eqz p2, :cond_2

    .line 780
    const-string v3, "_"

    invoke-direct {p0, v3, p2}, Lorg/jline/console/impl/ConsoleEngineImpl;->saveResult(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 782
    :cond_2
    const/4 v0, 0x1

    .line 785
    :cond_3
    :goto_1
    new-instance v3, Lorg/jline/console/ConsoleEngine$ExecutionResult;

    invoke-direct {v3, v0, v1}, Lorg/jline/console/ConsoleEngine$ExecutionResult;-><init>(ILjava/lang/Object;)V

    return-object v3
.end method

.method private prnt(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 904
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->printer:Lorg/jline/console/Printer;

    invoke-interface {v0, p1}, Lorg/jline/console/Printer;->prntCommand(Lorg/jline/console/CommandInput;)Ljava/lang/Exception;

    move-result-object v0

    .line 905
    .local v0, "result":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 906
    iput-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 908
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private prntCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 8
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

    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/jline/reader/Completer;

    sget-object v4, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/jline/builtins/Completers$OptionCompleter;

    new-array v2, v2, [Lorg/jline/reader/Completer;

    new-instance v6, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v7, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda14;

    invoke-direct {v7, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda14;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v6, v7}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    aput-object v6, v2, v5

    sget-object v5, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 1182
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v2, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/List;Ljava/util/function/Function;I)V

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    .line 1181
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    return-object v0
.end method

.method private quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "var"    # Ljava/lang/String;

    .line 343
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :cond_0
    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    :cond_1
    return-object p1

    .line 347
    :cond_2
    const-string v2, "\\\""

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 350
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveResult(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 3
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;

    .line 796
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v1, "_executionResult"

    invoke-interface {v0, v1, p2}, Lorg/jline/console/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    if-eqz p1, :cond_2

    .line 798
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0, p1, p2}, Lorg/jline/console/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 799
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = _executionResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/String;)Ljava/lang/Object;

    .line 804
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v1, "_executionResult ? 0 : 1"

    invoke-interface {v0, v1}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    .local v0, "out":I
    goto :goto_2

    .line 805
    .end local v0    # "out":I
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->trace(Ljava/lang/Object;)V

    .line 807
    const/4 v1, 0x1

    move v0, v1

    .line 809
    .local v0, "out":I
    :goto_2
    return v0
.end method

.method private scriptExtensions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v1}, Lorg/jline/console/ScriptEngine;->getExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 355
    .local v0, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->scriptExtension:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-object v0
.end method

.method private scriptNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->scripts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private show(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 7
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 872
    const-string v0, "show -  list console variables"

    const-string v1, "Usage: show [VARIABLE]"

    const-string v2, "  -? --help                       Displays command help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "usage":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/jline/console/impl/ConsoleEngineImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    .line 879
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 880
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "maxDepth"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->printer:Lorg/jline/console/Printer;

    iget-object v5, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-interface {v5, v4}, Lorg/jline/console/ScriptEngine;->find(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/jline/console/Printer;->println(Ljava/util/Map;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    .line 882
    :catch_0
    move-exception v2

    .line 883
    .local v2, "e":Ljava/lang/Exception;
    iput-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 885
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private slurp(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 959
    .local v0, "encoded":[B
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v2, p3}, Lorg/jline/console/ScriptEngine;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private slurpCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 9
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

    .line 1146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    const-string v1, "slurp"

    invoke-virtual {p0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->commandOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1148
    .local v1, "optDescs":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$OptDesc;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Completers$OptDesc;

    .line 1149
    .local v3, "o":Lorg/jline/builtins/Completers$OptDesc;
    invoke-virtual {v3}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1150
    new-instance v2, Lorg/jline/reader/impl/completer/StringsCompleter;

    iget-object v4, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v4}, Lorg/jline/console/ScriptEngine;->getDeserializationFormats()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v3, v2}, Lorg/jline/builtins/Completers$OptDesc;->setValueCompleter(Lorg/jline/reader/Completer;)V

    .line 1151
    goto :goto_1

    .line 1153
    .end local v3    # "o":Lorg/jline/builtins/Completers$OptDesc;
    :cond_0
    goto :goto_0

    .line 1154
    :cond_1
    :goto_1
    new-instance v2, Lorg/jline/reader/impl/completer/AggregateCompleter;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/jline/reader/Completer;

    new-instance v5, Lorg/jline/builtins/Completers$FilesCompleter;

    iget-object v6, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->workDir:Ljava/util/function/Supplier;

    invoke-direct {v5, v6}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/util/function/Supplier;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v7, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda14;

    invoke-direct {v7, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda14;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v5, v7}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-direct {v2, v4}, Lorg/jline/reader/impl/completer/AggregateCompleter;-><init>([Lorg/jline/reader/Completer;)V

    .line 1156
    .local v2, "argCompleter":Lorg/jline/reader/impl/completer/AggregateCompleter;
    new-instance v4, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    new-array v5, v3, [Lorg/jline/reader/Completer;

    sget-object v8, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    aput-object v8, v5, v6

    new-instance v8, Lorg/jline/builtins/Completers$OptionCompleter;

    new-array v3, v3, [Lorg/jline/reader/Completer;

    aput-object v2, v3, v6

    sget-object v6, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    aput-object v6, v3, v7

    .line 1157
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v8, v3, v1, v7}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/List;Ljava/util/Collection;I)V

    aput-object v8, v5, v7

    invoke-direct {v4, v5}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    .line 1156
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    return-object v0
.end method

.method private slurpcmd(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 9
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 912
    const-string v0, "format"

    const-string v1, "encoding"

    const-string v2, "slurp -  slurp file or string variable context to object"

    const-string v3, "Usage: slurp [OPTIONS] file|variable"

    const-string v4, "  -? --help                       Displays command help"

    const-string v5, "  -e --encoding=ENCODING          Encoding (default UTF-8)"

    const-string v6, "  -f --format=FORMAT              Serialization format"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, "usage":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 921
    .local v3, "out":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->xargs()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/jline/console/impl/ConsoleEngineImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v4

    .line 922
    .local v4, "opt":Lorg/jline/builtins/Options;
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 923
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->argObjects()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 924
    .local v5, "_arg":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 927
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .line 928
    .local v7, "arg":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 929
    .local v1, "encoding":Ljava/nio/charset/Charset;
    :goto_0
    invoke-virtual {v4, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4, v0}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0}, Lorg/jline/console/ScriptEngine;->getSerializationFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 931
    .local v0, "format":Ljava/lang/String;
    :goto_1
    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 932
    .local v6, "path":Ljava/nio/file/Path;
    invoke-interface {v6}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 933
    invoke-direct {p0, v6, v1, v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->slurp(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    goto :goto_2

    .line 935
    :cond_2
    iget-object v8, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v8, v7, v0}, Lorg/jline/console/ScriptEngine;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v8

    .line 939
    .end local v6    # "path":Ljava/nio/file/Path;
    :goto_2
    goto :goto_3

    .line 937
    :catch_0
    move-exception v6

    .line 938
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v8, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v8, v7, v0}, Lorg/jline/console/ScriptEngine;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    goto :goto_3

    .line 925
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "encoding":Ljava/nio/charset/Charset;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "arg":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid parameter type: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "usage":[Ljava/lang/String;
    .end local v3    # "out":Ljava/lang/Object;
    .end local p1    # "input":Lorg/jline/console/CommandInput;
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 943
    .end local v4    # "opt":Lorg/jline/builtins/Options;
    .end local v5    # "_arg":Ljava/lang/Object;
    .restart local v2    # "usage":[Ljava/lang/String;
    .restart local v3    # "out":Ljava/lang/Object;
    .restart local p1    # "input":Lorg/jline/console/CommandInput;
    :cond_4
    :goto_3
    goto :goto_4

    .line 941
    :catch_1
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 944
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v3
.end method

.method private terminal()Lorg/jline/terminal/Terminal;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->systemRegistry:Lorg/jline/console/SystemRegistry;

    invoke-interface {v0}, Lorg/jline/console/SystemRegistry;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    return-object v0
.end method

.method private unalias(Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 5
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 995
    const-string v0, "unalias -  remove command alias"

    const-string v1, "Usage: unalias [ALIAS...]"

    const-string v2, "  -? --help                       Displays command help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "usage":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 1002
    .local v1, "opt":Lorg/jline/builtins/Options;
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1003
    .local v3, "a":Ljava/lang/String;
    iget-object v4, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    nop

    .end local v3    # "a":Ljava/lang/String;
    goto :goto_0

    .line 1005
    :cond_0
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliasFile:Ljava/nio/file/Path;

    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-virtual {p0, v2, v3}, Lorg/jline/console/impl/ConsoleEngineImpl;->persist(Ljava/nio/file/Path;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v1    # "opt":Lorg/jline/builtins/Options;
    goto :goto_1

    .line 1006
    :catch_0
    move-exception v1

    .line 1007
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 1009
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private unaliasCompleter(Ljava/lang/String;)Ljava/util/List;
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

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jline/reader/Completer;

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jline/builtins/Completers$OptionCompleter;

    new-instance v4, Lorg/jline/reader/impl/completer/StringsCompleter;

    iget-object v5, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    .line 1231
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda22;

    invoke-direct {v6, v5}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda22;-><init>(Ljava/util/Map;)V

    invoke-direct {v4, v6}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Lorg/jline/reader/Completer;Ljava/util/function/Function;I)V

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    .line 1230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    return-object v0
.end method

.method private urlExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "weburl"    # Ljava/lang/String;

    .line 1136
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 1138
    .local v2, "huc":Ljava/net/HttpURLConnection;
    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1140
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "huc":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private variableCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .line 1166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v2, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda21;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    return-object v0
.end method

.method private variableReferences()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v1}, Lorg/jline/console/ScriptEngine;->find()Ljava/util/Map;

    move-result-object v1

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

    .line 1174
    .local v2, "v":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    .end local v2    # "v":Ljava/lang/String;
    goto :goto_0

    .line 1176
    :cond_0
    return-object v0
.end method


# virtual methods
.method public consoleOption(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 733
    .local p2, "defval":Ljava/lang/Object;, "TT;"
    move-object v0, p2

    .line 735
    .local v0, "out":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->consoleOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 738
    goto :goto_0

    .line 736
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad CONSOLE_OPTION value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/jline/console/impl/ConsoleEngineImpl;->trace(Ljava/lang/Object;)V

    .line 739
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public execute(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "script"    # Ljava/io/File;
    .param p2, "cmdLine"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 599
    new-instance v0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V

    .line 600
    .local v0, "file":Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;
    invoke-virtual {v0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->execute()Z

    .line 601
    invoke-virtual {v0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->getResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 645
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const/4 v0, 0x0

    return-object v0

    .line 648
    :cond_0
    const/4 v0, 0x0

    .line 649
    .local v0, "out":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 650
    .local v1, "file":Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/jline/reader/Parser;->validCommandName(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 651
    new-instance v2, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 653
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v4, "\\s+"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 655
    new-instance v4, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;

    invoke-direct {v4, p0, v2, p2, p3}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v1, v4

    .line 658
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->execute()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 659
    invoke-virtual {v1}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->getResult()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 661
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 662
    invoke-direct {p0, p2}, Lorg/jline/console/impl/ConsoleEngineImpl;->isCodeBlock(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "\\r?\\n"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    .line 665
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/jline/console/impl/ConsoleEngineImpl;->expandCommandLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 668
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 670
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v2, p2}, Lorg/jline/console/ScriptEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 671
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v2, p2}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 672
    :cond_6
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/jline/reader/Parser;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 673
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v2, p2}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 674
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v3, "_"

    invoke-interface {v2, v3, v0}, Lorg/jline/console/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 676
    :cond_7
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v2, p2}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/String;)Ljava/lang/Object;

    .line 679
    :goto_2
    return-object v0
.end method

.method public executeWidget(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "function"    # Ljava/lang/Object;

    .line 707
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->reader:Lorg/jline/reader/LineReader;

    const-string v2, "_reader"

    invoke-interface {v0, v2, v1}, Lorg/jline/console/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v1, "_widgetFunction"

    invoke-interface {v0, v1, p1}, Lorg/jline/console/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0}, Lorg/jline/console/ScriptEngine;->getEngineName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroovyEngine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v1, "def _buffer() {_reader.getBuffer()}"

    invoke-interface {v0, v1}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/String;)Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v1, "def _widget(w) {_reader.callWidget(w)}"

    invoke-interface {v0, v1}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/String;)Ljava/lang/Object;

    .line 714
    :cond_0
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v1, "_widgetFunction()"

    invoke-interface {v0, v1}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    invoke-virtual {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->purge()V

    .line 720
    nop

    .line 721
    const/4 v0, 0x1

    return v0

    .line 719
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->trace(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    const/4 v1, 0x0

    .line 719
    invoke-virtual {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->purge()V

    .line 717
    return v1

    .line 719
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->purge()V

    .line 720
    throw v0
.end method

.method public expandCommandLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "line"    # Ljava/lang/String;

    .line 607
    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->isCommandLine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v1

    sget-object v2, Lorg/jline/reader/Parser$ParseContext;->COMPLETE:Lorg/jline/reader/Parser$ParseContext;

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v1

    .line 610
    .local v1, "ws":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 611
    .local v2, "idx":I
    if-lez v2, :cond_0

    .line 612
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 615
    .local v4, "argv":[Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 616
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 617
    aget-object v6, v4, v5

    const-string v7, "${"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 618
    const-string v6, "\\$\\{(.*)}"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aget-object v8, v4, v5

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 619
    .local v6, "argvMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 620
    aget-object v8, v4, v5

    aget-object v9, v4, v5

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 622
    .end local v6    # "argvMatcher":Ljava/util/regex/Matcher;
    :cond_1
    goto :goto_1

    :cond_2
    aget-object v6, v4, v5

    const-string v8, "$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 623
    aget-object v6, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_1

    .line 625
    :cond_3
    aget-object v6, v4, v5

    invoke-direct {p0, v6}, Lorg/jline/console/impl/ConsoleEngineImpl;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 615
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 628
    .end local v5    # "i":I
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jline/console/impl/ConsoleEngineImpl;->hasAlias(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jline/console/impl/ConsoleEngineImpl;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 629
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    nop

    .line 630
    .local v3, "cmd":Ljava/lang/String;
    const-class v5, Lorg/jline/console/SystemRegistry;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".get().invoke(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 632
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 635
    .end local v5    # "i":I
    :cond_6
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .end local v1    # "ws":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "idx":I
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "argv":[Ljava/lang/String;
    .local v0, "out":Ljava/lang/String;
    goto :goto_4

    .line 638
    .end local v0    # "out":Ljava/lang/String;
    :cond_7
    move-object v0, p1

    .line 640
    .restart local v0    # "out":Ljava/lang/String;
    :goto_4
    return-object v0
.end method

.method public expandParameters([Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 252
    .local v0, "out":[Ljava/lang/Object;
    const-string v1, "(.*)\\$\\{(.*?)}(/.*)"

    .line 253
    .local v1, "regexPath":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 254
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 256
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 261
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    goto :goto_1

    .line 259
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 261
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    aget-object v3, p1, v2

    const-string v4, "${"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lorg/jline/console/impl/ConsoleEngineImpl;->expandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 263
    :cond_2
    aget-object v3, p1, v2

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lorg/jline/console/impl/ConsoleEngineImpl;->expandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 266
    :cond_3
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    aget-object v4, p1, v2

    invoke-interface {v3, v4}, Lorg/jline/console/ScriptEngine;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 253
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 269
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method

.method public expandToList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 278
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const/4 v1, 0x1

    .line 281
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 282
    .local v3, "param":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 283
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 287
    :cond_1
    invoke-direct {p0, v3}, Lorg/jline/console/impl/ConsoleEngineImpl;->isNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 290
    :cond_2
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lorg/jline/console/impl/ConsoleEngineImpl;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 286
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :goto_3
    const/4 v1, 0x0

    .line 293
    .end local v3    # "param":Ljava/lang/String;
    goto :goto_0

    .line 294
    :cond_5
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNamedPipes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "opers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->pipes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "p":Ljava/lang/String;
    const-string v4, "[a-zA-Z0-9]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 173
    :cond_1
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->systemRegistry:Lorg/jline/console/SystemRegistry;

    invoke-interface {v2}, Lorg/jline/console/SystemRegistry;->getPipeNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 175
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto :goto_2

    .line 179
    :cond_3
    return-object v0
.end method

.method public getPipes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->pipes:Ljava/util/Map;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0, p1}, Lorg/jline/console/ScriptEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0, p1}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exists!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->aliases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVariable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0, p1}, Lorg/jline/console/ScriptEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "session"    # Lorg/jline/console/CommandRegistry$CommandSession;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "out":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jline/console/impl/ConsoleEngineImpl;->hasCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {p0, p2}, Lorg/jline/console/impl/ConsoleEngineImpl;->getCommandMethods(Ljava/lang/String;)Lorg/jline/console/CommandMethods;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/console/CommandMethods;->execute()Ljava/util/function/Function;

    move-result-object v1

    new-instance v2, Lorg/jline/console/CommandInput;

    invoke-direct {v2, p2, p3, p1}, Lorg/jline/console/CommandInput;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/jline/console/CommandRegistry$CommandSession;)V

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 819
    :cond_0
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/String;

    .line 820
    .local v1, "_args":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_2

    .line 821
    aget-object v3, p3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 824
    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 820
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 822
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 826
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;

    const-string v3, ""

    invoke-direct {v2, p0, p2, v3, v1}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 827
    .local v2, "sf":Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;
    invoke-virtual {v2}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->execute()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 828
    invoke-virtual {v2}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 831
    .end local v1    # "_args":[Ljava/lang/String;
    .end local v2    # "sf":Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_4

    .line 834
    return-object v0

    .line 832
    :cond_4
    throw v1
.end method

.method public isExecuting()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->executing:Z

    return v0
.end method

.method synthetic lambda$variableCompleter$3$org-jline-console-impl-ConsoleEngineImpl()Ljava/util/Collection;
    .locals 1

    .line 1167
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0}, Lorg/jline/console/ScriptEngine;->find()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public persist(Ljava/nio/file/Path;Ljava/lang/Object;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "object"    # Ljava/lang/Object;

    .line 949
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0, p1, p2}, Lorg/jline/console/ScriptEngine;->persist(Ljava/nio/file/Path;Ljava/lang/Object;)V

    .line 950
    return-void
.end method

.method public postProcess(Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 790
    new-instance v0, Lorg/jline/console/ConsoleEngine$ExecutionResult;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->saveResult(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/jline/console/ConsoleEngine$ExecutionResult;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public postProcess(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/jline/console/ConsoleEngine$ExecutionResult;
    .locals 6
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "output"    # Ljava/lang/String;

    .line 755
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no-splittedOutput"

    invoke-direct {p0, v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->consoleOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    const-string v0, "\\r?\\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 757
    .local v0, "_output":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jline/reader/Parser;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "consoleVar":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 759
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v3, "output"

    invoke-interface {v2, v3, v0}, Lorg/jline/console/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    :cond_1
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->systemRegistry:Lorg/jline/console/SystemRegistry;

    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->parser()Lorg/jline/reader/Parser;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jline/console/SystemRegistry;->hasCommand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 762
    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    invoke-direct {p0, p1, v2}, Lorg/jline/console/impl/ConsoleEngineImpl;->postProcess(Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    move-result-object v2

    .local v2, "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    goto :goto_4

    .line 764
    .end local v2    # "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :cond_3
    if-nez p2, :cond_4

    move-object v2, v0

    goto :goto_2

    :cond_4
    move-object v2, p2

    .line 765
    .local v2, "_result":Ljava/lang/Object;
    :goto_2
    invoke-direct {p0, v1, v2}, Lorg/jline/console/impl/ConsoleEngineImpl;->saveResult(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    .line 766
    .local v3, "status":I
    new-instance v4, Lorg/jline/console/ConsoleEngine$ExecutionResult;

    if-eqz v1, :cond_5

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    move-object v5, v2

    :goto_3
    invoke-direct {v4, v3, v5}, Lorg/jline/console/ConsoleEngine$ExecutionResult;-><init>(ILjava/lang/Object;)V

    move-object v2, v4

    .line 768
    .end local v3    # "status":I
    .local v2, "out":Lorg/jline/console/ConsoleEngine$ExecutionResult;
    :goto_4
    return-object v2
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 868
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->printer:Lorg/jline/console/Printer;

    invoke-interface {v0, p1}, Lorg/jline/console/Printer;->println(Ljava/lang/Object;)V

    .line 869
    return-void
.end method

.method public purge()V
    .locals 2

    .line 684
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v1, "_*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jline/console/ScriptEngine;->del([Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public putVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0, p1, p2}, Lorg/jline/console/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    return-void
.end method

.method public scriptCompleters()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/jline/reader/Completer;

    new-instance v4, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v5, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda15;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda15;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v4, v5}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/jline/builtins/Completers$OptionCompleter;

    sget-object v6, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    new-instance v7, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;

    invoke-direct {v7, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    const/4 v8, 0x1

    invoke-direct {v4, v6, v7, v8}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Lorg/jline/reader/Completer;Ljava/util/function/Function;I)V

    aput-object v4, v3, v8

    invoke-direct {v1, v3}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    new-array v2, v2, [Lorg/jline/reader/Completer;

    new-instance v3, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v4, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda16;-><init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V

    invoke-direct {v3, v4}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    aput-object v3, v2, v5

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    aput-object v3, v2, v8

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-object v0
.end method

.method public scripts()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 210
    const-string v0, "~"

    const-string v1, "PATH"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v2, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v3, "scripts":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    iget-object v4, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v4, v1}, Lorg/jline/console/ScriptEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 214
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v4, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v6, v1}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 216
    .local v6, "file":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "user.home"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v6

    :goto_1
    move-object v6, v7

    .line 217
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 219
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "dir":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 222
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, "pp":Ljava/lang/String;
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl;->scriptExtensions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 224
    .local v7, "e":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/*."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "regex":Ljava/lang/String;
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "glob:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v9

    .line 226
    .local v9, "pathMatcher":Ljava/nio/file/PathMatcher;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    const v11, 0x7fffffff

    new-instance v12, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda0;

    invoke-direct {v12, v9}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/PathMatcher;)V

    new-array v13, v5, [Ljava/nio/file/FileVisitOption;

    invoke-static {v10, v11, v12, v13}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 227
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;

    invoke-direct {v11, v3}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 228
    .end local v7    # "e":Ljava/lang/String;
    .end local v8    # "regex":Ljava/lang/String;
    .end local v9    # "pathMatcher":Ljava/nio/file/PathMatcher;
    goto :goto_3

    .line 229
    .end local v1    # "pp":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 231
    .end local v4    # "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 232
    .local v1, "p":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "name":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 234
    .local v6, "idx":I
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->scriptExtension:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    nop

    .end local v1    # "p":Ljava/nio/file/Path;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "idx":I
    goto :goto_4

    .line 231
    .end local v3    # "scripts":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    :cond_5
    goto :goto_5

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed reading PATH:"

    invoke-direct {p0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->error(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->trace(Ljava/lang/Object;)V

    .line 244
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    const-string v3, "exception"

    invoke-interface {v1, v3, v0}, Lorg/jline/console/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Ljava/nio/file/InvalidPathException;
    const-string v1, "Failed reading PATH. Invalid path:"

    invoke-direct {p0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->error(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/nio/file/InvalidPathException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->error(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/nio/file/InvalidPathException;
    goto :goto_5

    .line 236
    :catch_2
    move-exception v0

    .line 237
    .local v0, "e":Ljava/nio/file/NoSuchFileException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading PATH. No file found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->error(Ljava/lang/String;)V

    .line 245
    .end local v0    # "e":Ljava/nio/file/NoSuchFileException;
    :goto_5
    nop

    .line 246
    :goto_6
    return-object v2
.end method

.method public setLineReader(Lorg/jline/reader/LineReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 122
    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->reader:Lorg/jline/reader/LineReader;

    .line 123
    return-void
.end method

.method public setScriptExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->scriptExtension:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSystemRegistry(Lorg/jline/console/SystemRegistry;)V
    .locals 0
    .param p1, "systemRegistry"    # Lorg/jline/console/SystemRegistry;

    .line 139
    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->systemRegistry:Lorg/jline/console/SystemRegistry;

    .line 140
    return-void
.end method

.method public slurp(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v1}, Lorg/jline/console/ScriptEngine;->getSerializationFormats()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->slurp(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 838
    move-object v0, p1

    .line 839
    .local v0, "toPrint":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "trace"

    invoke-virtual {p0, v2, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->consoleOption(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 840
    .local v1, "level":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 841
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 842
    const-string v3, "exception"

    const-string v4, "message"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_0
    if-nez v1, :cond_1

    .line 845
    instance-of v3, p1, Ljava/lang/Exception;

    if-nez v3, :cond_3

    .line 846
    const/4 v0, 0x0

    goto :goto_0

    .line 848
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 849
    instance-of v3, p1, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;

    if-eqz v3, :cond_3

    .line 850
    move-object v3, p1

    check-cast v3, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;

    invoke-virtual {v3}, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->rawLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 852
    :cond_2
    if-le v1, v3, :cond_3

    .line 853
    instance-of v3, p1, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;

    if-eqz v3, :cond_3

    .line 854
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 857
    :cond_3
    :goto_0
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl;->printer:Lorg/jline/console/Printer;

    invoke-interface {v3, v2, v0}, Lorg/jline/console/Printer;->println(Ljava/util/Map;Ljava/lang/Object;)V

    .line 858
    return-void
.end method
