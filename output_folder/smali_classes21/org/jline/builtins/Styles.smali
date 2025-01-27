.class public Lorg/jline/builtins/Styles;
.super Ljava/lang/Object;
.source "Styles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Styles$StyleCompiler;
    }
.end annotation


# static fields
.field private static final DEFAULT_HELP_COLORS:Ljava/lang/String; = "ti=1;34:co=1:ar=3:op=33"

.field private static final DEFAULT_LS_COLORS:Ljava/lang/String; = "di=1;91:ex=1;92:ln=1;96:fi="

.field private static final DEFAULT_PRNT_COLORS:Ljava/lang/String; = "th=1;34:rn=1;34:rs=,~grey15:mk=1;34:em=31:vs=32"

.field private static final HELP_COLORS:Ljava/lang/String; = "HELP_COLORS"

.field private static final KEY:Ljava/lang/String; = "([a-z]{2}|\\*\\.[a-zA-Z0-9]+)"

.field private static final LS_COLORS:Ljava/lang/String; = "LS_COLORS"

.field private static final PRNT_COLORS:Ljava/lang/String; = "PRNT_COLORS"

.field private static final STYLE_PATTERN:Ljava/lang/String; = "([a-z]{2}|\\*\\.[a-zA-Z0-9]+)=([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?(,([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?)*(:([a-z]{2}|\\*\\.[a-zA-Z0-9]+)=([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?(,([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?)*)*(:|)"

.field private static final VALUE:Ljava/lang/String; = "([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?"

.field private static final VALUES:Ljava/lang/String; = "([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?(,([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?)*"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static consoleOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-string v0, "([a-z]{2}|\\*\\.[a-zA-Z0-9]+)=([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?(,([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?)*(:([a-z]{2}|\\*\\.[a-zA-Z0-9]+)=([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?(,([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?)*)*(:|)"

    const/4 v1, 0x0

    .line 59
    .local v1, "out":Ljava/lang/String;
    :try_start_0
    const-string v2, "org.jline.console.SystemRegistry"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 60
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/builtins/ConsoleOptionGetter;

    .line 61
    .local v2, "cog":Lorg/jline/builtins/ConsoleOptionGetter;
    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v2, p0}, Lorg/jline/builtins/ConsoleOptionGetter;->consoleOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 63
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 69
    .end local v2    # "cog":Lorg/jline/builtins/ConsoleOptionGetter;
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 70
    :goto_0
    if-nez v1, :cond_1

    .line 71
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const/4 v1, 0x0

    .line 76
    :cond_1
    return-object v1
.end method

.method public static helpStyle()Lorg/jline/utils/StyleResolver;
    .locals 2

    .line 37
    const-string v0, "HELP_COLORS"

    const-string v1, "ti=1;34:co=1:ar=3:op=33"

    invoke-static {v0, v1}, Lorg/jline/builtins/Styles;->style(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/StyleResolver;

    move-result-object v0

    return-object v0
.end method

.method public static isAnsiStylePattern(Ljava/lang/String;)Z
    .locals 1
    .param p0, "style"    # Ljava/lang/String;

    .line 45
    const-string v0, "([a-z]{2}|\\*\\.[a-zA-Z0-9]+)=([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?(,([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?)*(:([a-z]{2}|\\*\\.[a-zA-Z0-9]+)=([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?(,([!~#]?[a-zA-Z0-9]+[a-z0-9-;]*)?)*)*(:|)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$style$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 81
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$style$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 82
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lsStyle()Lorg/jline/utils/StyleResolver;
    .locals 2

    .line 33
    const-string v0, "LS_COLORS"

    const-string v1, "di=1;91:ex=1;92:ln=1;96:fi="

    invoke-static {v0, v1}, Lorg/jline/builtins/Styles;->style(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/StyleResolver;

    move-result-object v0

    return-object v0
.end method

.method public static prntStyle()Lorg/jline/utils/StyleResolver;
    .locals 2

    .line 41
    const-string v0, "PRNT_COLORS"

    const-string v1, "th=1;34:rn=1;34:rs=,~grey15:mk=1;34:em=31:vs=32"

    invoke-static {v0, v1}, Lorg/jline/builtins/Styles;->style(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/StyleResolver;

    move-result-object v0

    return-object v0
.end method

.method private static style(Ljava/lang/String;)Lorg/jline/utils/StyleResolver;
    .locals 4
    .param p0, "style"    # Ljava/lang/String;

    .line 80
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/Styles$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jline/builtins/Styles$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/jline/builtins/Styles$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/jline/builtins/Styles$$ExternalSyntheticLambda1;-><init>()V

    .line 81
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 83
    .local v0, "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/jline/utils/StyleResolver;

    new-instance v2, Lorg/jline/builtins/Styles$StyleCompiler;

    invoke-direct {v2, v0}, Lorg/jline/builtins/Styles$StyleCompiler;-><init>(Ljava/util/Map;)V

    new-instance v3, Lorg/jline/builtins/Nano$NanorcParser$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lorg/jline/builtins/Nano$NanorcParser$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Styles$StyleCompiler;)V

    invoke-direct {v1, v3}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    return-object v1
.end method

.method private static style(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/StyleResolver;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defStyle"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lorg/jline/builtins/Styles;->consoleOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "style":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 51
    move-object v0, p1

    .line 53
    :cond_0
    invoke-static {v0}, Lorg/jline/builtins/Styles;->style(Ljava/lang/String;)Lorg/jline/utils/StyleResolver;

    move-result-object v1

    return-object v1
.end method
