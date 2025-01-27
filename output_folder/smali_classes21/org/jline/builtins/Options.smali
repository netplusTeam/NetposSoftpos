.class public Lorg/jline/builtins/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Options$HelpException;
    }
.end annotation


# static fields
.field private static final GROUP_ARG_1:I = 0x4

.field private static final GROUP_DEFAULT:I = 0x6

.field private static final GROUP_LONG_OPT_1:I = 0x3

.field private static final GROUP_LONG_OPT_2:I = 0x5

.field private static final GROUP_SHORT_OPT_1:I = 0x1

.field private static final GROUP_SHORT_OPT_2:I = 0x2

.field public static final NL:Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final parser:Ljava/util/regex/Pattern;

.field private static final regex:Ljava/lang/String; = "(?x)\\s*(?:-([^-]))?(?:,?\\s*-(\\w))?(?:,?\\s*--(\\w[\\w-]*)(=\\w+)?)?(?:,?\\s*--(\\w[\\w-]*))?.*?(?:\\(default=(.*)\\))?\\s*"

.field private static final uname:Ljava/util/regex/Pattern;


# instance fields
.field private args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defArgs:[Ljava/lang/String;

.field private final defOpts:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private final gspec:[Ljava/lang/String;

.field private final optAlias:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optArg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final optName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private optionsFirst:Z

.field private final spec:[Ljava/lang/String;

.field private stopOnBadOption:Z

.field private final unmodifiableOptArg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final unmodifiableOptSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private usageIndex:I

.field private usageName:Ljava/lang/String;

.field private final xargs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/Options;->NL:Ljava/lang/String;

    .line 69
    const-string v0, "(?x)\\s*(?:-([^-]))?(?:,?\\s*-(\\w))?(?:,?\\s*--(\\w[\\w-]*)(=\\w+)?)?(?:,?\\s*--(\\w[\\w-]*))?.*?(?:\\(default=(.*)\\))?\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/Options;->parser:Ljava/util/regex/Pattern;

    .line 70
    const-string v0, "^Usage:\\s+(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/Options;->uname:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;Lorg/jline/builtins/Options;Ljava/util/function/Function;)V
    .locals 8
    .param p1, "spec"    # [Ljava/lang/String;
    .param p2, "gspec"    # [Ljava/lang/String;
    .param p3, "opt"    # Lorg/jline/builtins/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lorg/jline/builtins/Options;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p4, "env":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Options;->optName:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Options;->optAlias:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/builtins/Options;->args:Ljava/util/List;

    .line 83
    const-string v1, "unknown"

    iput-object v1, p0, Lorg/jline/builtins/Options;->usageName:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/builtins/Options;->usageIndex:I

    .line 90
    iput-object v0, p0, Lorg/jline/builtins/Options;->error:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lorg/jline/builtins/Options;->optionsFirst:Z

    .line 93
    iput-boolean v1, p0, Lorg/jline/builtins/Options;->stopOnBadOption:Z

    .line 263
    iput-object p2, p0, Lorg/jline/builtins/Options;->gspec:[Ljava/lang/String;

    .line 265
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 266
    iput-object p1, p0, Lorg/jline/builtins/Options;->spec:[Ljava/lang/String;

    goto :goto_1

    .line 269
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    if-eqz p2, :cond_1

    move-object v3, p2

    goto :goto_0

    :cond_1
    iget-object v3, p3, Lorg/jline/builtins/Options;->gspec:[Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/jline/builtins/Options;->spec:[Ljava/lang/String;

    .line 275
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v2, "myOptSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v3, "myOptArg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v2, v3}, Lorg/jline/builtins/Options;->parseSpec(Ljava/util/Map;Ljava/util/Map;)V

    .line 280
    if-eqz p3, :cond_6

    .line 281
    iget-object v4, p3, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 282
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 283
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_2

    .line 286
    :cond_3
    iget-object v4, p3, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 287
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 288
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    goto :goto_3

    .line 291
    :cond_5
    invoke-direct {p3}, Lorg/jline/builtins/Options;->reset()V

    .line 294
    :cond_6
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Options;->unmodifiableOptSet:Ljava/util/Map;

    .line 295
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Options;->unmodifiableOptArg:Ljava/util/Map;

    .line 297
    if-eqz p4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jline/builtins/Options;->usageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_OPTS"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_7
    iput-object v0, p0, Lorg/jline/builtins/Options;->defOpts:Ljava/lang/String;

    .line 298
    if-eqz v0, :cond_8

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    new-array v0, v1, [Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lorg/jline/builtins/Options;->defArgs:[Ljava/lang/String;

    .line 299
    return-void
.end method

.method private addArg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "arg":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 191
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lorg/jline/builtins/Options;
    .locals 2
    .param p0, "optSpec"    # Ljava/lang/String;

    .line 104
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/Options$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jline/builtins/Options$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;Ljava/util/function/Function;)Lorg/jline/builtins/Options;

    move-result-object v0

    return-object v0
.end method

.method public static compile(Ljava/lang/String;Ljava/util/function/Function;)Lorg/jline/builtins/Options;
    .locals 1
    .param p0, "optSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jline/builtins/Options;"
        }
    .end annotation

    .line 108
    .local p1, "env":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;Ljava/util/function/Function;)Lorg/jline/builtins/Options;

    move-result-object v0

    return-object v0
.end method

.method public static compile([Ljava/lang/String;)Lorg/jline/builtins/Options;
    .locals 3
    .param p0, "optSpec"    # [Ljava/lang/String;

    .line 96
    new-instance v0, Lorg/jline/builtins/Options;

    new-instance v1, Lorg/jline/builtins/Options$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jline/builtins/Options$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lorg/jline/builtins/Options;-><init>([Ljava/lang/String;[Ljava/lang/String;Lorg/jline/builtins/Options;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static compile([Ljava/lang/String;Ljava/util/function/Function;)Lorg/jline/builtins/Options;
    .locals 2
    .param p0, "optSpec"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jline/builtins/Options;"
        }
    .end annotation

    .line 100
    .local p1, "env":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jline/builtins/Options;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, p1}, Lorg/jline/builtins/Options;-><init>([Ljava/lang/String;[Ljava/lang/String;Lorg/jline/builtins/Options;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static compile([Ljava/lang/String;Lorg/jline/builtins/Options;)Lorg/jline/builtins/Options;
    .locals 3
    .param p0, "optSpec"    # [Ljava/lang/String;
    .param p1, "gopt"    # Lorg/jline/builtins/Options;

    .line 112
    new-instance v0, Lorg/jline/builtins/Options;

    new-instance v1, Lorg/jline/builtins/Options$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jline/builtins/Options$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Lorg/jline/builtins/Options;-><init>([Ljava/lang/String;[Ljava/lang/String;Lorg/jline/builtins/Options;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static compile([Ljava/lang/String;[Ljava/lang/String;)Lorg/jline/builtins/Options;
    .locals 3
    .param p0, "optSpec"    # [Ljava/lang/String;
    .param p1, "gspec"    # [Ljava/lang/String;

    .line 116
    new-instance v0, Lorg/jline/builtins/Options;

    new-instance v1, Lorg/jline/builtins/Options$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jline/builtins/Options$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/jline/builtins/Options;-><init>([Ljava/lang/String;[Ljava/lang/String;Lorg/jline/builtins/Options;Ljava/util/function/Function;)V

    return-object v0
.end method

.method private parseSpec(Ljava/util/Map;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p1, "myOptSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local p2, "myOptArg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 306
    .local v3, "index":I
    iget-object v4, v0, Lorg/jline/builtins/Options;->spec:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    .line 316
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 306
    :goto_0
    if-ge v6, v5, :cond_b

    aget-object v8, v4, v6

    .line 307
    .local v8, "line":Ljava/lang/String;
    sget-object v9, Lorg/jline/builtins/Options;->parser:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 309
    .local v9, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_9

    .line 310
    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, "opt":Ljava/lang/String;
    if-eqz v10, :cond_0

    move-object v12, v10

    goto :goto_1

    :cond_0
    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, "name":Ljava/lang/String;
    :goto_1
    if-eqz v12, :cond_2

    .line 314
    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 316
    invoke-interface {v1, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 315
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duplicate option in spec: --"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    :cond_2
    :goto_2
    const/4 v13, 0x6

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    if-eqz v14, :cond_3

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_3
    move-object v13, v15

    .line 320
    .local v13, "dflt":Ljava/lang/String;
    :goto_3
    const/4 v14, 0x4

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 321
    invoke-interface {v2, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_4
    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 324
    .local v11, "opt2":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 325
    iget-object v14, v0, Lorg/jline/builtins/Options;->optAlias:Ljava/util/Map;

    invoke-interface {v14, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-interface {v1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const/4 v14, 0x4

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 328
    invoke-interface {v2, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_5
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    const/4 v15, 0x2

    if-ge v14, v15, :cond_9

    .line 332
    if-nez v14, :cond_6

    const/4 v15, 0x1

    :cond_6
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 333
    .local v15, "sopt":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 334
    iget-object v1, v0, Lorg/jline/builtins/Options;->optName:Ljava/util/Map;

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 336
    iget-object v1, v0, Lorg/jline/builtins/Options;->optName:Ljava/util/Map;

    invoke-interface {v1, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 335
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate option in spec: -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    .end local v15    # "sopt":Ljava/lang/String;
    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_4

    .line 341
    .end local v10    # "opt":Ljava/lang/String;
    .end local v11    # "opt2":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "dflt":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_9
    iget-object v1, v0, Lorg/jline/builtins/Options;->usageName:Ljava/lang/String;

    const-string v10, "unknown"

    invoke-static {v1, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 342
    sget-object v1, Lorg/jline/builtins/Options;->uname:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 343
    .local v1, "u":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 344
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lorg/jline/builtins/Options;->usageName:Ljava/lang/String;

    .line 345
    iput v3, v0, Lorg/jline/builtins/Options;->usageIndex:I

    .line 349
    .end local v1    # "u":Ljava/util/regex/Matcher;
    :cond_a
    nop

    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "m":Ljava/util/regex/Matcher;
    add-int/lit8 v3, v3, 0x1

    .line 306
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 351
    :cond_b
    return-void
.end method

.method private reset()V
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    iget-object v0, p0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    iget-object v1, p0, Lorg/jline/builtins/Options;->unmodifiableOptSet:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 356
    iget-object v0, p0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 357
    iget-object v0, p0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    iget-object v1, p0, Lorg/jline/builtins/Options;->unmodifiableOptArg:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 358
    iget-object v0, p0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/builtins/Options;->args:Ljava/util/List;

    .line 360
    iput-object v0, p0, Lorg/jline/builtins/Options;->error:Ljava/lang/String;

    .line 361
    return-void
.end method


# virtual methods
.method public argObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    return-object v0
.end method

.method public args()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/jline/builtins/Options;->args:Ljava/util/List;

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Options;->args:Ljava/util/List;

    .line 220
    iget-object v0, p0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, "arg":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jline/builtins/Options;->args:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v3, "null"

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v1    # "arg":Ljava/lang/Object;
    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Options;->args:Ljava/util/List;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 196
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Options;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option not String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
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

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Options;->getObjectList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, "o":Ljava/lang/Object;
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 171
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "option not String: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getNumber(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 203
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "option \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Options;->getObjectList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 138
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "option not defined with argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObjectList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 163
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-object v1

    .line 151
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option not defined with argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isSet(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "option not defined in spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/util/List;)Lorg/jline/builtins/Options;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lorg/jline/builtins/Options;"
        }
    .end annotation

    .line 368
    .local p1, "argv":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;Z)Lorg/jline/builtins/Options;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/util/List;Z)Lorg/jline/builtins/Options;
    .locals 17
    .param p2, "skipArg0"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;Z)",
            "Lorg/jline/builtins/Options;"
        }
    .end annotation

    .line 379
    .local p1, "argv":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Options;->reset()V

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, v0, Lorg/jline/builtins/Options;->defArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v3, p2

    .end local p2    # "skipArg0":Z
    .local v3, "skipArg0":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 384
    .local v4, "arg":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 385
    const/4 v3, 0x0

    .line 386
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/jline/builtins/Options;->usageName:Ljava/lang/String;

    goto :goto_1

    .line 389
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v4    # "arg":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 393
    :cond_1
    const/4 v2, 0x0

    .line 394
    .local v2, "needArg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 395
    .local v4, "needOpt":Ljava/lang/String;
    const/4 v5, 0x0

    .line 397
    .local v5, "endOpt":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "--"

    const/4 v9, 0x1

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 398
    .local v7, "oarg":Ljava/lang/Object;
    if-nez v7, :cond_2

    const-string v10, "null"

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 400
    .local v10, "arg":Ljava/lang/String;
    :goto_3
    if-eqz v5, :cond_3

    .line 401
    iget-object v8, v0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    goto/16 :goto_c

    .line 403
    :cond_3
    if-eqz v2, :cond_4

    .line 404
    invoke-direct {v0, v2, v7}, Lorg/jline/builtins/Options;->addArg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    const/4 v2, 0x0

    .line 406
    const/4 v4, 0x0

    move-object/from16 v16, v1

    goto/16 :goto_c

    .line 408
    :cond_4
    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v9, :cond_5

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    move-object/from16 v16, v1

    goto/16 :goto_b

    .line 414
    :cond_7
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 415
    const/4 v5, 0x1

    move-object/from16 v16, v1

    goto/16 :goto_c

    .line 416
    :cond_8
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v12, "\'"

    if-eqz v8, :cond_12

    .line 417
    const-string v8, "="

    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 418
    .local v8, "eq":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_9

    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 419
    .local v13, "value":Ljava/lang/String;
    :goto_4
    const/4 v14, 0x2

    if-ne v8, v11, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    goto :goto_5

    :cond_a
    move v11, v8

    :goto_5
    invoke-virtual {v10, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 420
    .local v11, "name":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v14, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v15, v0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v15, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 423
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 426
    :cond_b
    iget-object v15, v0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    .line 427
    .local v9, "k":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 428
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v9    # "k":Ljava/lang/String;
    :cond_c
    const/4 v9, 0x1

    goto :goto_6

    .line 432
    :cond_d
    :goto_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    const-string v15, "option \'--"

    packed-switch v9, :pswitch_data_0

    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\' is ambiguous: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jline/builtins/Options;->usageError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 434
    :pswitch_0
    const/4 v9, 0x0

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 435
    .end local v11    # "name":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    iget-object v11, v0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v11, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v11, v0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 437
    if-eqz v13, :cond_e

    .line 438
    invoke-direct {v0, v9, v13}, Lorg/jline/builtins/Options;->addArg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 440
    :cond_e
    move-object v2, v9

    goto :goto_8

    .line 442
    :cond_f
    if-nez v13, :cond_10

    goto :goto_8

    .line 443
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "\' doesn\'t allow an argument"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jline/builtins/Options;->usageError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 448
    .end local v9    # "name":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    :pswitch_1
    iget-boolean v9, v0, Lorg/jline/builtins/Options;->stopOnBadOption:Z

    if-eqz v9, :cond_11

    .line 449
    const/4 v5, 0x1

    .line 450
    iget-object v9, v0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    nop

    .line 459
    .end local v8    # "eq":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .end local v14    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8
    move-object/from16 v16, v1

    goto/16 :goto_c

    .line 454
    .restart local v8    # "eq":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    .restart local v14    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid option \'--"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jline/builtins/Options;->usageError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 461
    .end local v8    # "eq":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .end local v14    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_9
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_17

    .line 462
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 463
    .local v9, "c":Ljava/lang/String;
    iget-object v13, v0, Lorg/jline/builtins/Options;->optName:Ljava/util/Map;

    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 464
    iget-object v13, v0, Lorg/jline/builtins/Options;->optName:Ljava/util/Map;

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 465
    .local v13, "name":Ljava/lang/String;
    iget-object v14, v0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    move-object/from16 v16, v1

    const/4 v15, 0x1

    .end local v1    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v16, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v1, v0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 467
    add-int/lit8 v1, v8, 0x1

    .line 468
    .local v1, "k":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v1, v11, :cond_13

    .line 469
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v13, v11}, Lorg/jline/builtins/Options;->addArg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 472
    :cond_13
    move-object v4, v9

    .line 473
    move-object v2, v13

    .line 475
    goto :goto_c

    .line 477
    .end local v1    # "k":I
    .end local v13    # "name":Ljava/lang/String;
    :cond_14
    goto :goto_a

    .line 479
    .end local v16    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_15
    move-object/from16 v16, v1

    .end local v1    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v16    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v1, v0, Lorg/jline/builtins/Options;->stopOnBadOption:Z

    if-eqz v1, :cond_16

    .line 480
    iget-object v1, v0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    const/4 v1, 0x1

    move v5, v1

    .line 461
    .end local v9    # "c":Ljava/lang/String;
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    goto :goto_9

    .line 484
    .restart local v9    # "c":Ljava/lang/String;
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid option \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/builtins/Options;->usageError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 461
    .end local v9    # "c":Ljava/lang/String;
    .end local v16    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_17
    move-object/from16 v16, v1

    .end local v1    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v16    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_c

    .line 408
    .end local v8    # "i":I
    .end local v16    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_18
    move-object/from16 v16, v1

    .line 409
    .end local v1    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v16    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_b
    iget-boolean v1, v0, Lorg/jline/builtins/Options;->optionsFirst:Z

    if-eqz v1, :cond_19

    .line 410
    const/4 v5, 0x1

    .line 411
    :cond_19
    iget-object v1, v0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v7    # "oarg":Ljava/lang/Object;
    .end local v10    # "arg":Ljava/lang/String;
    :goto_c
    move-object/from16 v1, v16

    goto/16 :goto_2

    .line 491
    .end local v16    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1a
    move-object/from16 v16, v1

    .end local v1    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v16    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1c

    .line 492
    if-eqz v4, :cond_1b

    move-object v1, v4

    goto :goto_d

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "name":Ljava/lang/String;
    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "option \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' requires an argument"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jline/builtins/Options;->usageError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 497
    .end local v1    # "name":Ljava/lang/String;
    :cond_1c
    iget-object v1, v0, Lorg/jline/builtins/Options;->optAlias:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 498
    .local v6, "alias":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 499
    iget-object v7, v0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v7, v0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 501
    iget-object v7, v0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 498
    :cond_1d
    const/4 v9, 0x1

    .line 503
    :cond_1e
    :goto_f
    iget-object v7, v0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v7, v0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .end local v6    # "alias":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_e

    .line 507
    :cond_1f
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;
    .locals 1
    .param p1, "argv"    # [Ljava/lang/Object;

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;Z)Lorg/jline/builtins/Options;

    move-result-object v0

    return-object v0
.end method

.method public parse([Ljava/lang/Object;Z)Lorg/jline/builtins/Options;
    .locals 2
    .param p1, "argv"    # [Ljava/lang/Object;
    .param p2, "skipArg0"    # Z

    .line 372
    if-eqz p1, :cond_0

    .line 375
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;Z)Lorg/jline/builtins/Options;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argv is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptionsFirst(Z)Lorg/jline/builtins/Options;
    .locals 0
    .param p1, "optionsFirst"    # Z

    .line 125
    iput-boolean p1, p0, Lorg/jline/builtins/Options;->optionsFirst:Z

    .line 126
    return-object p0
.end method

.method public setStopOnBadOption(Z)Lorg/jline/builtins/Options;
    .locals 0
    .param p1, "stopOnBadOption"    # Z

    .line 120
    iput-boolean p1, p0, Lorg/jline/builtins/Options;->stopOnBadOption:Z

    .line 121
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/Options;->optSet:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nArg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/Options;->optArg:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nargs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/Options;->xargs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usage()Ljava/lang/String;
    .locals 5

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 236
    .local v1, "index":I
    iget-object v2, p0, Lorg/jline/builtins/Options;->error:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    sget-object v2, Lorg/jline/builtins/Options;->NL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v1, p0, Lorg/jline/builtins/Options;->usageIndex:I

    .line 242
    :cond_0
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jline/builtins/Options;->spec:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 243
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    sget-object v3, Lorg/jline/builtins/Options;->NL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public usage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "err"    # Ljava/io/PrintStream;

    .line 229
    invoke-virtual {p0}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public usageError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jline/builtins/Options;->usageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Options;->error:Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/jline/builtins/Options;->error:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
