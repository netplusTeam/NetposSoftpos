.class public abstract Lorg/jline/console/impl/JlineCommandRegistry;
.super Lorg/jline/console/impl/AbstractCommandRegistry;
.source "JlineCommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/jline/console/impl/AbstractCommandRegistry;-><init>()V

    .line 37
    return-void
.end method

.method public static compileCommandDescription(Ljava/lang/String;)Lorg/jline/console/CmdDesc;
    .locals 15
    .param p0, "helpMessage"    # Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "main":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/utils/AttributedString;>;>;"
    const/4 v2, 0x0

    .line 147
    .local v2, "prevOpt":Ljava/lang/String;
    const/4 v3, 0x0

    .line 148
    .local v3, "mainDone":Z
    new-instance v4, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;-><init>(Ljava/lang/String;Z)V

    .line 149
    .local v4, "hl":Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;
    invoke-virtual {v4}, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->lines()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_5

    aget-object v9, v5, v8

    .line 150
    .local v9, "s":Ljava/lang/String;
    const-string v10, "^\\s+-.*$"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "  "

    if-eqz v10, :cond_1

    .line 151
    const/4 v3, 0x1

    .line 152
    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 153
    .local v10, "ind":I
    if-lez v10, :cond_0

    .line 154
    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "o":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "d":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 157
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 158
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/jline/console/impl/JlineCommandRegistry;->highlightComment(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v10    # "ind":I
    .end local v11    # "o":Ljava/lang/String;
    .end local v12    # "d":Ljava/lang/String;
    :cond_0
    goto :goto_1

    :cond_1
    const-string v10, "^[\\s]{20}.*$"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 162
    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 163
    .restart local v10    # "ind":I
    if-lez v10, :cond_2

    .line 164
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/jline/console/impl/JlineCommandRegistry;->highlightComment(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v10    # "ind":I
    :cond_2
    goto :goto_1

    .line 167
    :cond_3
    const/4 v2, 0x0

    .line 169
    :goto_1
    if-nez v3, :cond_4

    .line 170
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/jline/builtins/Options$HelpException;->defaultStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v11

    invoke-virtual {v4}, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->subcommands()Z

    move-result v12

    invoke-static {v10, v11, v12}, Lorg/jline/builtins/Options$HelpException;->highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;Z)Lorg/jline/utils/AttributedString;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v9    # "s":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 173
    :cond_5
    new-instance v5, Lorg/jline/console/CmdDesc;

    const-string v6, ""

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/console/ArgDesc;->doArgNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v0, v6, v1}, Lorg/jline/console/CmdDesc;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-object v5
.end method

.method public static compileCommandInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "helpMessage"    # Ljava/lang/String;
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

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 211
    .local v1, "first":Z
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/jline/console/impl/JlineCommandRegistry;->helpLines(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 212
    .local v5, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :goto_1
    const/4 v1, 0x0

    .line 211
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_1
    return-object v0
.end method

.method public static compileCommandOptions(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p0, "helpMessage"    # Ljava/lang/String;
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

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$OptDesc;>;"
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/jline/console/impl/JlineCommandRegistry;->helpLines(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 179
    .local v6, "s":Ljava/lang/String;
    const-string v7, "^\\s+-.*$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 180
    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 181
    .local v7, "ind":I
    if-lez v7, :cond_4

    .line 182
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "op":[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "d":Ljava/lang/String;
    const/4 v10, 0x0

    .line 185
    .local v10, "so":Ljava/lang/String;
    const/4 v11, 0x0

    .line 186
    .local v11, "lo":Ljava/lang/String;
    array-length v12, v8

    if-ne v12, v1, :cond_1

    .line 187
    aget-object v12, v8, v4

    const-string v13, "--"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 188
    aget-object v11, v8, v4

    goto :goto_1

    .line 190
    :cond_0
    aget-object v10, v8, v4

    goto :goto_1

    .line 193
    :cond_1
    aget-object v10, v8, v4

    .line 194
    aget-object v11, v8, v1

    .line 196
    :goto_1
    const/4 v12, 0x0

    .line 197
    .local v12, "hasValue":Z
    if-eqz v11, :cond_2

    const-string v13, "="

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 198
    const/4 v12, 0x1

    .line 199
    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v11, v13, v4

    .line 201
    :cond_2
    new-instance v13, Lorg/jline/builtins/Completers$OptDesc;

    if-eqz v12, :cond_3

    sget-object v14, Lorg/jline/builtins/Completers$AnyCompleter;->INSTANCE:Lorg/jline/builtins/Completers$AnyCompleter;

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    invoke-direct {v13, v10, v11, v9, v14}, Lorg/jline/builtins/Completers$OptDesc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "ind":I
    .end local v8    # "op":[Ljava/lang/String;
    .end local v9    # "d":Ljava/lang/String;
    .end local v10    # "so":Ljava/lang/String;
    .end local v11    # "lo":Ljava/lang/String;
    .end local v12    # "hasValue":Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 205
    :cond_5
    return-object v0
.end method

.method private static helpLines(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1
    .param p0, "helpMessage"    # Ljava/lang/String;
    .param p1, "body"    # Z

    .line 109
    new-instance v0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;

    invoke-direct {v0, p0, p1}, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->lines()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static highlightComment(Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p0, "comment"    # Ljava/lang/String;

    .line 105
    invoke-static {}, Lorg/jline/builtins/Options$HelpException;->defaultStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jline/builtins/Options$HelpException;->highlightComment(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commandDescription(Ljava/util/List;)Lorg/jline/console/CmdDesc;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jline/console/CmdDesc;"
        }
    .end annotation

    .line 60
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 62
    .local v1, "command":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v2, Lorg/jline/console/CommandRegistry$CommandSession;

    invoke-direct {v2}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "--help"

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v1, v3}, Lorg/jline/console/impl/JlineCommandRegistry;->invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 68
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JlineCommandRegistry.commandDescription() method must be overridden in class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Lorg/jline/builtins/Options$HelpException;
    invoke-virtual {v0}, Lorg/jline/builtins/Options$HelpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jline/console/impl/JlineCommandRegistry;->compileCommandDescription(Ljava/lang/String;)Lorg/jline/console/CmdDesc;

    move-result-object v2

    return-object v2
.end method

.method public commandInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "--help"

    aput-object v3, v2, v1

    .line 42
    .local v2, "args":[Ljava/lang/Object;
    const-string v3, "help"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    new-array v3, v1, [Ljava/lang/Object;

    move-object v2, v3

    .line 45
    :cond_0
    new-instance v3, Lorg/jline/console/CommandRegistry$CommandSession;

    invoke-direct {v3}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>()V

    invoke-virtual {p0, v3, p1, v2}, Lorg/jline/console/impl/JlineCommandRegistry;->invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    nop

    .line 55
    .end local v2    # "args":[Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JlineCommandRegistry.commandInfo() method must be overridden in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error while getting command info"

    aput-object v4, v3, v1

    aput-object v2, v3, v0

    invoke-static {v3}, Lorg/jline/utils/Log;->info([Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lorg/jline/utils/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 46
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Lorg/jline/builtins/Options$HelpException;
    invoke-virtual {v0}, Lorg/jline/builtins/Options$HelpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/console/impl/JlineCommandRegistry;->compileCommandInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public commandOptions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 74
    :try_start_0
    new-instance v0, Lorg/jline/console/CommandRegistry$CommandSession;

    invoke-direct {v0}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "--help"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lorg/jline/console/impl/JlineCommandRegistry;->invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jline/builtins/Options$HelpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 80
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Lorg/jline/builtins/Options$HelpException;
    invoke-virtual {v0}, Lorg/jline/builtins/Options$HelpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/console/impl/JlineCommandRegistry;->compileCommandOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public defaultCompleter(Ljava/lang/String;)Ljava/util/List;
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

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    new-instance v1, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jline/reader/Completer;

    sget-object v3, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jline/builtins/Completers$OptionCompleter;

    sget-object v4, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    new-instance v5, Lorg/jline/console/impl/JlineCommandRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/jline/console/impl/JlineCommandRegistry$$ExternalSyntheticLambda0;-><init>(Lorg/jline/console/impl/JlineCommandRegistry;)V

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Lorg/jline/reader/Completer;Ljava/util/function/Function;I)V

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;
    .locals 3
    .param p1, "usage"    # [Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/builtins/Options$HelpException;
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v0

    .line 95
    .local v0, "opt":Lorg/jline/builtins/Options;
    const-string v1, "help"

    invoke-virtual {v0, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    return-object v0

    .line 96
    :cond_0
    new-instance v1, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v0}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
