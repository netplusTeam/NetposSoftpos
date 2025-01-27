.class public Lorg/jline/builtins/Completers$Completer;
.super Ljava/lang/Object;
.source "Completers.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Completer"
.end annotation


# instance fields
.field private final environment:Lorg/jline/builtins/Completers$CompletionEnvironment;


# direct methods
.method public constructor <init>(Lorg/jline/builtins/Completers$CompletionEnvironment;)V
    .locals 0
    .param p1, "environment"    # Lorg/jline/builtins/Completers$CompletionEnvironment;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    .line 72
    return-void
.end method

.method private isTrue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 208
    return v0

    .line 209
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 210
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 211
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 212
    return v0

    .line 214
    :cond_2
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 1
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "line"    # Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, p3}, Lorg/jline/builtins/Completers$Completer;->completeCommand(Ljava/util/List;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jline/builtins/Completers$Completer;->tryCompleteArguments(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 80
    :goto_0
    return-void
.end method

.method protected completeCommand(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    invoke-interface {v2}, Lorg/jline/builtins/Completers$CompletionEnvironment;->getCommands()Ljava/util/Set;

    move-result-object v2

    .line 171
    .local v2, "commands":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 172
    .local v4, "command":Ljava/lang/String;
    iget-object v5, v0, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    invoke-interface {v5, v4}, Lorg/jline/builtins/Completers$CompletionEnvironment;->commandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 173
    .local v14, "name":Ljava/lang/String;
    iget-object v5, v0, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    invoke-interface {v5, v14}, Lorg/jline/builtins/Completers$CompletionEnvironment;->resolveCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 174
    .local v15, "resolved":Z
    const-string v5, "_"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 175
    const/4 v5, 0x0

    .line 176
    .local v5, "desc":Ljava/lang/String;
    iget-object v6, v0, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    invoke-interface {v6}, Lorg/jline/builtins/Completers$CompletionEnvironment;->getCompletions()Ljava/util/Map;

    move-result-object v13

    .line 177
    .local v13, "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    if-eqz v13, :cond_2

    .line 178
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 179
    .local v6, "completions":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;"
    if-eqz v6, :cond_2

    .line 180
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/builtins/Completers$CompletionData;

    .line 181
    .local v8, "completion":Lorg/jline/builtins/Completers$CompletionData;
    iget-object v9, v8, Lorg/jline/builtins/Completers$CompletionData;->description:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lorg/jline/builtins/Completers$CompletionData;->options:Ljava/util/List;

    if-nez v9, :cond_0

    iget-object v9, v8, Lorg/jline/builtins/Completers$CompletionData;->argument:Ljava/lang/String;

    if-nez v9, :cond_0

    iget-object v9, v8, Lorg/jline/builtins/Completers$CompletionData;->condition:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 185
    iget-object v5, v8, Lorg/jline/builtins/Completers$CompletionData;->description:Ljava/lang/String;

    .line 187
    .end local v8    # "completion":Lorg/jline/builtins/Completers$CompletionData;
    :cond_0
    goto :goto_1

    .line 180
    :cond_1
    move-object/from16 v16, v5

    goto :goto_2

    .line 190
    .end local v6    # "completions":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;"
    :cond_2
    move-object/from16 v16, v5

    .end local v5    # "desc":Ljava/lang/String;
    .local v16, "desc":Ljava/lang/String;
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, "key":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 192
    new-instance v12, Lorg/jline/reader/Candidate;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x1

    move-object v5, v12

    move-object v6, v4

    move-object v7, v4

    move-object/from16 v9, v16

    move-object/from16 v11, v17

    move-object v0, v12

    move/from16 v12, v18

    invoke-direct/range {v5 .. v12}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    if-eqz v15, :cond_3

    .line 194
    new-instance v0, Lorg/jline/reader/Candidate;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x1

    move-object v6, v0

    move-object v7, v14

    move-object v8, v14

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v18, v13

    .end local v13    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    .local v18, "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    move v13, v5

    invoke-direct/range {v6 .. v13}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 193
    .end local v18    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    .restart local v13    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    :cond_3
    move-object/from16 v18, v13

    .end local v13    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    .restart local v18    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    goto :goto_3

    .line 197
    .end local v18    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    .restart local v13    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    :cond_4
    move-object/from16 v18, v13

    .end local v13    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    .restart local v18    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    new-instance v0, Lorg/jline/reader/Candidate;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v5, v0

    move-object v6, v4

    move-object v7, v4

    move-object/from16 v11, v17

    invoke-direct/range {v5 .. v12}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    if-eqz v15, :cond_5

    .line 199
    new-instance v0, Lorg/jline/reader/Candidate;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object v6, v0

    move-object v7, v14

    move-object v8, v14

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v13}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v4    # "command":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "resolved":Z
    .end local v16    # "desc":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 204
    :cond_6
    return-void
.end method

.method protected completeCommandArguments(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;Ljava/util/List;)V
    .locals 27
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "line"    # Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$CompletionData;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p4, "completions":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/jline/builtins/Completers$CompletionData;

    .line 96
    .local v6, "completion":Lorg/jline/builtins/Completers$CompletionData;
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->word()Ljava/lang/String;

    move-result-object v0

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 97
    .local v8, "isOption":Z
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v0

    const/4 v9, 0x2

    if-lt v0, v9, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    .line 99
    .local v7, "prevOption":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    .line 100
    .local v17, "key":Ljava/lang/String;
    const/4 v9, 0x1

    .line 101
    .local v9, "conditionValue":Z
    iget-object v0, v6, Lorg/jline/builtins/Completers$CompletionData;->condition:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 102
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .local v10, "res":Ljava/lang/Object;
    :try_start_0
    iget-object v0, v1, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    iget-object v11, v6, Lorg/jline/builtins/Completers$CompletionData;->condition:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v11}, Lorg/jline/builtins/Completers$CompletionEnvironment;->evaluate(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    .line 108
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 109
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-direct {v1, v10}, Lorg/jline/builtins/Completers$Completer;->isTrue(Ljava/lang/Object;)Z

    move-result v9

    move/from16 v18, v9

    goto :goto_3

    .line 101
    .end local v10    # "res":Ljava/lang/Object;
    :cond_1
    move/from16 v18, v9

    .line 111
    .end local v9    # "conditionValue":Z
    .local v18, "conditionValue":Z
    :goto_3
    if-eqz v18, :cond_3

    if-eqz v8, :cond_3

    iget-object v0, v6, Lorg/jline/builtins/Completers$CompletionData;->options:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, v6, Lorg/jline/builtins/Completers$CompletionData;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Ljava/lang/String;

    .line 113
    .local v19, "opt":Ljava/lang/String;
    new-instance v15, Lorg/jline/reader/Candidate;

    iget-object v13, v6, Lorg/jline/builtins/Completers$CompletionData;->description:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x1

    const-string v12, "options"

    move-object v9, v15

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    invoke-direct/range {v9 .. v16}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v9, v20

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v19    # "opt":Ljava/lang/String;
    goto :goto_4

    :cond_2
    goto/16 :goto_e

    .line 115
    :cond_3
    if-nez v8, :cond_c

    if-eqz v7, :cond_c

    iget-object v0, v6, Lorg/jline/builtins/Completers$CompletionData;->argument:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/jline/builtins/Completers$CompletionData;->options:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/jline/builtins/Completers$CompletionData;->options:Ljava/util/List;

    .line 116
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 117
    const/4 v9, 0x0

    .line 119
    .local v9, "res":Ljava/lang/Object;
    :try_start_1
    iget-object v0, v1, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    iget-object v10, v6, Lorg/jline/builtins/Completers$CompletionData;->argument:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v10}, Lorg/jline/builtins/Completers$CompletionEnvironment;->evaluate(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v0

    .line 122
    goto :goto_5

    .line 120
    :catchall_1
    move-exception v0

    .line 123
    :goto_5
    instance-of v0, v9, Lorg/jline/reader/Candidate;

    if-eqz v0, :cond_4

    .line 124
    move-object v0, v9

    check-cast v0, Lorg/jline/reader/Candidate;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 125
    :cond_4
    instance-of v0, v9, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 126
    new-instance v0, Lorg/jline/reader/Candidate;

    move-object/from16 v20, v9

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v9

    check-cast v21, Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 127
    :cond_5
    instance-of v0, v9, Ljava/util/Collection;

    if-eqz v0, :cond_9

    .line 128
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 129
    .local v10, "s":Ljava/lang/Object;
    instance-of v11, v10, Lorg/jline/reader/Candidate;

    if-eqz v11, :cond_6

    .line 130
    move-object v11, v10

    check-cast v11, Lorg/jline/reader/Candidate;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 131
    :cond_6
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 132
    new-instance v11, Lorg/jline/reader/Candidate;

    move-object/from16 v20, v10

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v10

    check-cast v21, Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v19, v11

    invoke-direct/range {v19 .. v26}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v10    # "s":Ljava/lang/Object;
    :cond_7
    :goto_7
    goto :goto_6

    :cond_8
    goto/16 :goto_d

    .line 135
    :cond_9
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .local v10, "l":I
    :goto_8
    if-ge v0, v10, :cond_11

    .line 137
    invoke-static {v9, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    .line 138
    .local v11, "s":Ljava/lang/Object;
    instance-of v12, v11, Lorg/jline/reader/Candidate;

    if-eqz v12, :cond_a

    .line 139
    move-object v12, v11

    check-cast v12, Lorg/jline/reader/Candidate;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 140
    :cond_a
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_b

    .line 141
    new-instance v12, Lorg/jline/reader/Candidate;

    move-object/from16 v20, v11

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v11

    check-cast v21, Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v19, v12

    invoke-direct/range {v19 .. v26}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v11    # "s":Ljava/lang/Object;
    :cond_b
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 145
    .end local v0    # "i":I
    .end local v9    # "res":Ljava/lang/Object;
    .end local v10    # "l":I
    :cond_c
    if-nez v8, :cond_11

    iget-object v0, v6, Lorg/jline/builtins/Completers$CompletionData;->argument:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 146
    const/4 v9, 0x0

    .line 148
    .restart local v9    # "res":Ljava/lang/Object;
    :try_start_2
    iget-object v0, v1, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    iget-object v10, v6, Lorg/jline/builtins/Completers$CompletionData;->argument:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v10}, Lorg/jline/builtins/Completers$CompletionEnvironment;->evaluate(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v9, v0

    .line 151
    goto :goto_a

    .line 149
    :catchall_2
    move-exception v0

    .line 152
    :goto_a
    instance-of v0, v9, Lorg/jline/reader/Candidate;

    if-eqz v0, :cond_d

    .line 153
    move-object v0, v9

    check-cast v0, Lorg/jline/reader/Candidate;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 154
    :cond_d
    instance-of v0, v9, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 155
    new-instance v0, Lorg/jline/reader/Candidate;

    move-object/from16 v20, v9

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v9

    check-cast v21, Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v10, v6, Lorg/jline/builtins/Completers$CompletionData;->description:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v19, v0

    move-object/from16 v23, v10

    invoke-direct/range {v19 .. v26}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 156
    :cond_e
    instance-of v0, v9, Ljava/util/Collection;

    if-eqz v0, :cond_12

    .line 157
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 158
    .local v10, "s":Ljava/lang/Object;
    instance-of v11, v10, Lorg/jline/reader/Candidate;

    if-eqz v11, :cond_f

    .line 159
    move-object v11, v10

    check-cast v11, Lorg/jline/reader/Candidate;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 160
    :cond_f
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_10

    .line 161
    new-instance v11, Lorg/jline/reader/Candidate;

    move-object/from16 v20, v10

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v10

    check-cast v21, Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v12, v6, Lorg/jline/builtins/Completers$CompletionData;->description:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v19, v11

    move-object/from16 v23, v12

    invoke-direct/range {v19 .. v26}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v10    # "s":Ljava/lang/Object;
    :cond_10
    :goto_c
    goto :goto_b

    .line 145
    .end local v9    # "res":Ljava/lang/Object;
    :cond_11
    :goto_d
    nop

    .line 166
    .end local v6    # "completion":Lorg/jline/builtins/Completers$CompletionData;
    .end local v7    # "prevOption":Ljava/lang/String;
    .end local v8    # "isOption":Z
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "conditionValue":Z
    :cond_12
    :goto_e
    goto/16 :goto_0

    .line 167
    :cond_13
    return-void
.end method

.method protected tryCompleteArguments(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 4
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "line"    # Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    invoke-interface {v1, v0}, Lorg/jline/builtins/Completers$CompletionEnvironment;->resolveCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "resolved":Ljava/lang/String;
    iget-object v2, p0, Lorg/jline/builtins/Completers$Completer;->environment:Lorg/jline/builtins/Completers$CompletionEnvironment;

    invoke-interface {v2}, Lorg/jline/builtins/Completers$CompletionEnvironment;->getCompletions()Ljava/util/Map;

    move-result-object v2

    .line 86
    .local v2, "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    if-eqz v2, :cond_0

    .line 87
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 88
    .local v3, "cmd":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;"
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/jline/builtins/Completers$Completer;->completeCommandArguments(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;Ljava/util/List;)V

    .line 92
    .end local v3    # "cmd":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;"
    :cond_0
    return-void
.end method
