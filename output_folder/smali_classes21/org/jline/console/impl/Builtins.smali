.class public Lorg/jline/console/impl/Builtins;
.super Lorg/jline/console/impl/JlineCommandRegistry;
.source "Builtins.java"

# interfaces
.implements Lorg/jline/console/CommandRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/impl/Builtins$Command;
    }
.end annotation


# instance fields
.field private final configPath:Lorg/jline/builtins/ConfigurationPath;

.field private reader:Lorg/jline/reader/LineReader;

.field private final widgetCreator:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
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
.method public static synthetic $r8$lambda$-cZOO8sAgIJYp42MLkbiHnTGDuU(Lorg/jline/console/impl/Builtins;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->widgetCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1i2-QhczwNH4R5yAfDbpQON90Ko(Lorg/jline/console/impl/Builtins;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->unsetoptCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$71WXqw68F2oxrC9krCjVUELmlY4(Lorg/jline/console/impl/Builtins;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->setoptCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AB2XrpZb-0QCwv9Lg8AR5Ua_SZQ(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->keymap(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BZLrkJXh3JhsmH8UjEbNhZEQKaU(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->widget(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CqOWZaS97TvwiGVTcnHN7enlLyY(Lorg/jline/console/impl/Builtins;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->nanoCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FmZxjZ3Zv-EuX412gvTt-DEyW6Q(Lorg/jline/console/impl/Builtins;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->setvarCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I8l3TFBsqPCyZhPX9DRTbRbYlw4(Lorg/jline/console/impl/Builtins;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->lessCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LNQYwJqlAg67AHWJ-DGoeKkvEA8(Lorg/jline/console/impl/Builtins;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->historyCompleter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UgGwX2TnCzvEdgrzk84Ul9Igco0(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->unsetopt(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UjgzFciAHdkGPzenW0RTCDBlhM4(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->colors(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V3zt4zInwawcW7RLF-O8RDodesk(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->setopt(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W5KQmplUZ-Hpe4k508bPFWUJ_ME(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->ttop(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_LpvuLTXWe5K8GopVO1BXuZw8Xo(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->nano(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ci6fvVzGRpIqovz4Tg-2pHfs7Hs(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->setvar(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dDSLanqTeFggGCo7gU70xNTtHrc(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->history(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dyd2Bkt5deBq9qP8SyAUBT3UE4A(Lorg/jline/console/impl/Builtins;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Lorg/jline/console/impl/Builtins;->allWidgets()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mIJ-7ttRCwPjZPoxmN3r8pEwn7U(Lorg/jline/console/impl/Builtins;Lorg/jline/console/CommandInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/Builtins;->less(Lorg/jline/console/CommandInput;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/jline/builtins/ConfigurationPath;Ljava/util/function/Function;)V
    .locals 2
    .param p1, "workDir"    # Ljava/nio/file/Path;
    .param p2, "configPath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/jline/builtins/ConfigurationPath;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p3, "widgetCreator":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lorg/jline/reader/Widget;>;"
    new-instance v0, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/Path;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2, p3}, Lorg/jline/console/impl/Builtins;-><init>(Ljava/util/Set;Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;Ljava/util/function/Function;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/nio/file/Path;Lorg/jline/builtins/ConfigurationPath;Ljava/util/function/Function;)V
    .locals 1
    .param p2, "workDir"    # Ljava/nio/file/Path;
    .param p3, "configpath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/jline/console/impl/Builtins$Command;",
            ">;",
            "Ljava/nio/file/Path;",
            "Lorg/jline/builtins/ConfigurationPath;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "commands":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/Builtins$Command;>;"
    .local p4, "widgetCreator":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lorg/jline/reader/Widget;>;"
    new-instance v0, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda21;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/jline/console/impl/Builtins;-><init>(Ljava/util/Set;Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;Ljava/util/function/Function;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;Ljava/util/function/Function;)V
    .locals 7
    .param p3, "configpath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/jline/console/impl/Builtins$Command;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/jline/builtins/ConfigurationPath;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "commands":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/Builtins$Command;>;"
    .local p2, "workDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    .local p4, "widgetCreator":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lorg/jline/reader/Widget;>;"
    invoke-direct {p0}, Lorg/jline/console/impl/JlineCommandRegistry;-><init>()V

    .line 71
    iput-object p3, p0, Lorg/jline/console/impl/Builtins;->configPath:Lorg/jline/builtins/ConfigurationPath;

    .line 72
    iput-object p4, p0, Lorg/jline/console/impl/Builtins;->widgetCreator:Ljava/util/function/Function;

    .line 73
    iput-object p2, p0, Lorg/jline/console/impl/Builtins;->workDir:Ljava/util/function/Supplier;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v0, "commandName":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/console/impl/Builtins$Command;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v1, "commandExecute":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/console/impl/Builtins$Command;Lorg/jline/console/CommandMethods;>;"
    if-nez p1, :cond_0

    .line 78
    new-instance v2, Ljava/util/HashSet;

    const-class v3, Lorg/jline/console/impl/Builtins$Command;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v2, "cmds":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/Builtins$Command;>;"
    goto :goto_0

    .line 80
    .end local v2    # "cmds":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/Builtins$Command;>;"
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 82
    .restart local v2    # "cmds":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/console/impl/Builtins$Command;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/console/impl/Builtins$Command;

    .line 83
    .local v4, "c":Lorg/jline/console/impl/Builtins$Command;
    invoke-virtual {v4}, Lorg/jline/console/impl/Builtins$Command;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v4    # "c":Lorg/jline/console/impl/Builtins$Command;
    goto :goto_1

    .line 85
    :cond_1
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->NANO:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda22;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda6;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->LESS:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda7;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda8;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->HISTORY:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda9;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda10;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->WIDGET:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda12;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda13;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->KEYMAP:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda14;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda4;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->SETOPT:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda23;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda24;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda24;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->SETVAR:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda25;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda26;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda26;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->UNSETOPT:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda1;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda2;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->TTOP:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda3;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda4;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v3, Lorg/jline/console/impl/Builtins$Command;->COLORS:Lorg/jline/console/impl/Builtins$Command;

    new-instance v4, Lorg/jline/console/CommandMethods;

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda5;-><init>(Lorg/jline/console/impl/Builtins;)V

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda4;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v4, v5, v6}, Lorg/jline/console/CommandMethods;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, v0, v1}, Lorg/jline/console/impl/Builtins;->registerCommands(Ljava/util/Map;Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;Ljava/util/function/Function;)V
    .locals 1
    .param p2, "configPath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/jline/builtins/ConfigurationPath;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "workDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    .local p3, "widgetCreator":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lorg/jline/reader/Widget;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jline/console/impl/Builtins;-><init>(Ljava/util/Set;Ljava/util/function/Supplier;Lorg/jline/builtins/ConfigurationPath;Ljava/util/function/Function;)V

    .line 67
    return-void
.end method

.method private allWidgets()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v0, "out":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v1}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

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

    .line 195
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v3, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v3}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Widget;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 198
    :cond_0
    return-object v0
.end method

.method private colors(Lorg/jline/console/CommandInput;)V
    .locals 3
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 176
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jline/builtins/Commands;->colors(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private history(Lorg/jline/console/CommandInput;)V
    .locals 5
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/console/impl/Builtins;->workDir:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jline/builtins/Commands;->history(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private historyCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
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

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    invoke-virtual {p0, p1}, Lorg/jline/console/impl/Builtins;->commandOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 224
    .local v1, "optDescs":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$OptDesc;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Completers$OptDesc;

    .line 225
    .local v3, "o":Lorg/jline/builtins/Completers$OptDesc;
    invoke-virtual {v3}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-W"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    invoke-virtual {v3}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    :cond_0
    new-instance v4, Lorg/jline/builtins/Completers$FilesCompleter;

    iget-object v5, p0, Lorg/jline/console/impl/Builtins;->workDir:Ljava/util/function/Supplier;

    invoke-direct {v4, v5}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/util/function/Supplier;)V

    invoke-virtual {v3, v4}, Lorg/jline/builtins/Completers$OptDesc;->setValueCompleter(Lorg/jline/reader/Completer;)V

    .line 229
    .end local v3    # "o":Lorg/jline/builtins/Completers$OptDesc;
    :cond_1
    goto :goto_0

    .line 230
    :cond_2
    new-instance v2, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jline/reader/Completer;

    const/4 v4, 0x0

    sget-object v5, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    aput-object v5, v3, v4

    new-instance v4, Lorg/jline/builtins/Completers$OptionCompleter;

    sget-object v5, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v1, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Lorg/jline/reader/Completer;Ljava/util/Collection;I)V

    aput-object v4, v3, v6

    invoke-direct {v2, v3}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-object v0
.end method

.method private keymap(Lorg/jline/console/CommandInput;)V
    .locals 4
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jline/builtins/Commands;->keymap(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0
    .param p0, "workDir"    # Ljava/nio/file/Path;

    .line 58
    return-object p0
.end method

.method static synthetic lambda$new$1(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0
    .param p0, "workDir"    # Ljava/nio/file/Path;

    .line 62
    return-object p0
.end method

.method private less(Lorg/jline/console/CommandInput;)V
    .locals 7
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->in()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v3

    iget-object v4, p0, Lorg/jline/console/impl/Builtins;->workDir:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jline/console/impl/Builtins;->configPath:Lorg/jline/builtins/ConfigurationPath;

    invoke-static/range {v0 .. v6}, Lorg/jline/builtins/Commands;->less(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;Lorg/jline/builtins/ConfigurationPath;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private lessCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
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

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jline/reader/Completer;

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jline/builtins/Completers$OptionCompleter;

    new-instance v4, Lorg/jline/builtins/Completers$FilesCompleter;

    iget-object v5, p0, Lorg/jline/console/impl/Builtins;->workDir:Ljava/util/function/Supplier;

    invoke-direct {v4, v5}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/util/function/Supplier;)V

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda19;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda19;-><init>(Lorg/jline/console/impl/Builtins;)V

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Lorg/jline/reader/Completer;Ljava/util/function/Function;I)V

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-object v0
.end method

.method private nano(Lorg/jline/console/CommandInput;)V
    .locals 6
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/console/impl/Builtins;->workDir:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jline/console/impl/Builtins;->configPath:Lorg/jline/builtins/ConfigurationPath;

    invoke-static/range {v0 .. v5}, Lorg/jline/builtins/Commands;->nano(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;Lorg/jline/builtins/ConfigurationPath;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private nanoCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
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

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jline/reader/Completer;

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jline/builtins/Completers$OptionCompleter;

    new-instance v4, Lorg/jline/builtins/Completers$FilesCompleter;

    iget-object v5, p0, Lorg/jline/console/impl/Builtins;->workDir:Ljava/util/function/Supplier;

    invoke-direct {v4, v5}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/util/function/Supplier;)V

    new-instance v5, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda19;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda19;-><init>(Lorg/jline/console/impl/Builtins;)V

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Lorg/jline/reader/Completer;Ljava/util/function/Function;I)V

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-object v0
.end method

.method private setopt(Lorg/jline/console/CommandInput;)V
    .locals 4
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jline/builtins/Commands;->setopt(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setoptCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
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

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jline/reader/Completer;

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v4, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda11;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v3, v4}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-object v0
.end method

.method private setvar(Lorg/jline/console/CommandInput;)V
    .locals 4
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jline/builtins/Commands;->setvar(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setvarCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
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

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/jline/reader/Completer;

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v4, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda20;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v3, v4}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-object v0
.end method

.method private ttop(Lorg/jline/console/CommandInput;)V
    .locals 4
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 168
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jline/builtins/TTop;->ttop(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private unsetOptions(Z)Ljava/util/List;
    .locals 10
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/jline/reader/LineReader$Option;->values()[Lorg/jline/reader/LineReader$Option;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 185
    .local v5, "option":Lorg/jline/reader/LineReader$Option;
    iget-object v6, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v6, v5}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v6

    invoke-virtual {v5}, Lorg/jline/reader/LineReader$Option;->isDef()Z

    move-result v7

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-ne p1, v6, :cond_2

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/jline/reader/LineReader$Option;->isDef()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "no-"

    goto :goto_2

    :cond_1
    const-string v7, ""

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/jline/reader/LineReader$Option;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5f

    const/16 v9, 0x2d

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v5    # "option":Lorg/jline/reader/LineReader$Option;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_3
    return-object v0
.end method

.method private unsetopt(Lorg/jline/console/CommandInput;)V
    .locals 4
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jline/builtins/Commands;->unsetopt(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private unsetoptCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
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

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jline/reader/Completer;

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v4, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda18;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v3, v4}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-object v0
.end method

.method private widget(Lorg/jline/console/CommandInput;)V
    .locals 5
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->out()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->err()Ljava/io/PrintStream;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/console/impl/Builtins;->widgetCreator:Ljava/util/function/Function;

    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->args()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jline/builtins/Commands;->widget(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/function/Function;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jline/console/impl/Builtins;->saveException(Ljava/lang/Exception;)V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private widgetCompleter(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
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

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    invoke-virtual {p0, p1}, Lorg/jline/console/impl/Builtins;->commandOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 241
    .local v1, "optDescs":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$OptDesc;>;"
    new-instance v10, Lorg/jline/reader/Candidate;

    const-string v3, "-A"

    const-string v4, "-A"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 242
    .local v2, "aliasOption":Lorg/jline/reader/Candidate;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 243
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jline/builtins/Completers$OptDesc;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/Completers$OptDesc;

    .line 245
    .local v4, "o":Lorg/jline/builtins/Completers$OptDesc;
    invoke-virtual {v4}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 246
    invoke-virtual {v4}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-D"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    new-instance v5, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v6, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda15;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v5, v6}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    invoke-virtual {v4, v5}, Lorg/jline/builtins/Completers$OptDesc;->setValueCompleter(Lorg/jline/reader/Completer;)V

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {v4}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    new-instance v5, Lorg/jline/reader/Candidate;

    invoke-virtual {v4}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Lorg/jline/builtins/Completers$OptDesc;->description()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v5

    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 253
    .end local v4    # "o":Lorg/jline/builtins/Completers$OptDesc;
    :cond_1
    :goto_1
    goto :goto_0

    .line 254
    :cond_2
    new-instance v4, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/jline/reader/Completer;

    sget-object v7, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lorg/jline/builtins/Completers$OptionCompleter;

    sget-object v9, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v10, 0x1

    invoke-direct {v7, v9, v1, v10}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Lorg/jline/reader/Completer;Ljava/util/Collection;I)V

    aput-object v7, v6, v10

    invoke-direct {v4, v6}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v4, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v6, 0x5

    new-array v6, v6, [Lorg/jline/reader/Completer;

    sget-object v7, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    aput-object v7, v6, v8

    new-instance v7, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-array v9, v10, [Lorg/jline/reader/Candidate;

    aput-object v2, v9, v8

    invoke-direct {v7, v9}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>([Lorg/jline/reader/Candidate;)V

    aput-object v7, v6, v10

    new-instance v7, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v8, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda16;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v7, v8}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    aput-object v7, v6, v5

    const/4 v5, 0x3

    new-instance v7, Lorg/jline/reader/impl/completer/StringsCompleter;

    new-instance v8, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda17;

    invoke-direct {v8, p0}, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda17;-><init>(Lorg/jline/console/impl/Builtins;)V

    invoke-direct {v7, v8}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/util/function/Supplier;)V

    aput-object v7, v6, v5

    const/4 v5, 0x4

    sget-object v7, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    aput-object v7, v6, v5

    invoke-direct {v4, v6}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-object v0
.end method


# virtual methods
.method synthetic lambda$setoptCompleter$5$org-jline-console-impl-Builtins()Ljava/util/Collection;
    .locals 1

    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/console/impl/Builtins;->unsetOptions(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setvarCompleter$4$org-jline-console-impl-Builtins()Ljava/util/Collection;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getVariables()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$unsetoptCompleter$6$org-jline-console-impl-Builtins()Ljava/util/Collection;
    .locals 1

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/console/impl/Builtins;->unsetOptions(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$widgetCompleter$2$org-jline-console-impl-Builtins()Ljava/util/Collection;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$widgetCompleter$3$org-jline-console-impl-Builtins()Ljava/util/Collection;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setLineReader(Lorg/jline/reader/LineReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 99
    iput-object p1, p0, Lorg/jline/console/impl/Builtins;->reader:Lorg/jline/reader/LineReader;

    .line 100
    return-void
.end method
