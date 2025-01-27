.class public Lorg/jline/builtins/Commands;
.super Ljava/lang/Object;
.source "Commands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Commands$Colors;,
        Lorg/jline/builtins/Commands$ReExecute;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colors(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 19
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/builtins/Options$HelpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1038
    const-string v0, "colors -  view 256-color table"

    const-string v1, "Usage: colors [OPTIONS]"

    const-string v2, "  -? --help                     Displays command help"

    const-string v3, "  -c --columns=COLUMNS          Number of columns in name/rgb table"

    const-string v4, "                                COLUMNS = 1, display columns: color, style, ansi and HSL"

    const-string v5, "  -f --find=NAME                Find color names which contains NAME "

    const-string v6, "  -l --lock=STYLE               Lock fore- or background color"

    const-string v7, "  -n --name                     Color name table (default number table)"

    const-string v8, "  -r --rgb                      Use and display rgb value"

    const-string v9, "  -s --small                    View 16-color table (default 256-color)"

    const-string v10, "  -v --view=COLOR               View 24bit color table of COLOR "

    const-string v11, "                                COLOR = <colorName>, <color24bit> or hue<angle>"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 1053
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v3, "help"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1056
    const/4 v3, 0x0

    .line 1057
    .local v3, "style":Ljava/lang/String;
    const-string v4, "lock"

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1058
    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1059
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1060
    const/4 v3, 0x0

    .line 1063
    :cond_0
    new-instance v4, Lorg/jline/builtins/Commands$Colors;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct {v4, v11, v12}, Lorg/jline/builtins/Commands$Colors;-><init>(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;)V

    move-object v13, v4

    .line 1064
    .local v13, "colors":Lorg/jline/builtins/Commands$Colors;
    const-string v4, "view"

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1065
    const-string v4, "rgb"

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v14

    .line 1066
    .local v14, "rgb":Z
    invoke-interface/range {p0 .. p0}, Lorg/jline/terminal/Terminal;->getWidth()I

    move-result v4

    if-eqz v14, :cond_1

    const/16 v5, 0x47

    goto :goto_0

    :cond_1
    const/16 v5, 0x7a

    :goto_0
    if-le v4, v5, :cond_2

    const/4 v4, 0x6

    goto :goto_1

    :cond_2
    const/4 v4, 0x5

    .line 1067
    .local v4, "columns":I
    :goto_1
    const/4 v5, 0x0

    .line 1068
    .local v5, "findName":Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    .line 1069
    .local v6, "nameTable":Z
    const-string v7, "small"

    invoke-virtual {v1, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    .line 1070
    .local v7, "table16":Z
    const-string v8, "find"

    invoke-virtual {v1, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1071
    invoke-virtual {v1, v8}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1072
    const/4 v6, 0x1

    .line 1073
    const/4 v7, 0x0

    .line 1074
    const/4 v4, 0x4

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_2

    .line 1070
    :cond_3
    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    .line 1076
    .end local v5    # "findName":Ljava/lang/String;
    .end local v6    # "nameTable":Z
    .end local v7    # "table16":Z
    .local v15, "findName":Ljava/lang/String;
    .local v16, "nameTable":Z
    .local v17, "table16":Z
    :goto_2
    if-eqz v17, :cond_4

    .line 1077
    add-int/lit8 v4, v4, 0x2

    .line 1079
    :cond_4
    const-string v5, "columns"

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1080
    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    goto :goto_3

    .line 1079
    :cond_5
    move/from16 v18, v4

    .line 1082
    .end local v4    # "columns":I
    .local v18, "columns":I
    :goto_3
    move-object v4, v13

    move/from16 v5, v16

    move v6, v14

    move/from16 v7, v17

    move/from16 v8, v18

    move-object v9, v15

    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Lorg/jline/builtins/Commands$Colors;->printColors(ZZZILjava/lang/String;Ljava/lang/String;)V

    .line 1083
    .end local v14    # "rgb":Z
    .end local v15    # "findName":Ljava/lang/String;
    .end local v16    # "nameTable":Z
    .end local v17    # "table16":Z
    .end local v18    # "columns":I
    goto :goto_4

    .line 1084
    :cond_6
    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4, v3}, Lorg/jline/builtins/Commands$Colors;->printColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :goto_4
    return-void

    .line 1054
    .end local v3    # "style":Ljava/lang/String;
    .end local v13    # "colors":Lorg/jline/builtins/Commands$Colors;
    :cond_7
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v3, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static complete(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 11
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p4, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$CompletionData;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/builtins/Options$HelpException;
        }
    .end annotation

    .line 419
    .local p3, "completions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;>;"
    const-string v0, "complete -  edit command specific tab-completions"

    const-string v1, "Usage: complete"

    const-string v2, "  -? --help                       Displays command help"

    const-string v3, "  -c --command=COMMAND            Command to add completion to"

    const-string v4, "  -d --description=DESCRIPTION    Description of this completions"

    const-string v5, "  -e --erase                      Erase the completions"

    const-string v6, "  -s --short-option=SHORT_OPTION  Posix-style option to complete"

    const-string v7, "  -l --long-option=LONG_OPTION    GNU-style option to complete"

    const-string v8, "  -a --argument=ARGUMENTS         A list of possible arguments"

    const-string v9, "  -n --condition=CONDITION        The completion should only be used if the"

    const-string v10, "                                  specified command has a zero exit status"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 434
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 438
    const-string v2, "command"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "command":Ljava/lang/String;
    const-string v3, "erase"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void

    .line 445
    :cond_0
    new-instance v3, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 446
    .local v3, "cmdCompletions":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;"
    const/4 v4, 0x0

    .line 447
    .local v4, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "short-option"

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 448
    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 449
    .local v6, "op":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 450
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 452
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    .end local v6    # "op":Ljava/lang/String;
    goto :goto_0

    .line 455
    :cond_2
    const-string v5, "long-option"

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 456
    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 457
    .restart local v6    # "op":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 458
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 460
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v6    # "op":Ljava/lang/String;
    goto :goto_1

    .line 463
    :cond_4
    const-string v5, "description"

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v7

    .line 464
    .local v5, "description":Ljava/lang/String;
    :goto_2
    const-string v6, "argument"

    invoke-virtual {v1, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1, v6}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v7

    .line 465
    .local v6, "argument":Ljava/lang/String;
    :goto_3
    const-string v8, "condition"

    invoke-virtual {v1, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1, v8}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, "condition":Ljava/lang/String;
    :cond_7
    new-instance v8, Lorg/jline/builtins/Completers$CompletionData;

    invoke-direct {v8, v4, v5, v6, v7}, Lorg/jline/builtins/Completers$CompletionData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    return-void

    .line 435
    .end local v2    # "command":Ljava/lang/String;
    .end local v3    # "cmdCompletions":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$CompletionData;>;"
    .end local v4    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "argument":Ljava/lang/String;
    .end local v7    # "condition":Ljava/lang/String;
    :cond_8
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static displayValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .line 1005
    if-nez p1, :cond_0

    .line 1006
    const-string v0, "undefined-key"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1007
    :cond_0
    instance-of v0, p1, Lorg/jline/reader/Macro;

    if-eqz v0, :cond_1

    .line 1008
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/Macro;

    invoke-virtual {v0}, Lorg/jline/reader/Macro;->getSequence()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/keymap/KeyMap;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1009
    :cond_1
    instance-of v0, p1, Lorg/jline/reader/Reference;

    if-eqz v0, :cond_2

    .line 1010
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/Reference;

    invoke-virtual {v0}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1012
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    :goto_0
    return-void
.end method

.method private static doSetOpts(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;ZZ)V
    .locals 14
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p4, "match"    # Z
    .param p5, "set"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 967
    .local p3, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 968
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[-_]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 969
    .local v3, "tname":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 970
    const-string v6, "\\*"

    const-string v7, "[a-z]*"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 971
    const-string v6, "\\?"

    const-string v7, "[a-z]"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 973
    :cond_0
    const/4 v6, 0x0

    .line 974
    .local v6, "found":Z
    invoke-static {}, Lorg/jline/reader/LineReader$Option;->values()[Lorg/jline/reader/LineReader$Option;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    .line 975
    .local v10, "option":Lorg/jline/reader/LineReader$Option;
    invoke-virtual {v10}, Lorg/jline/reader/LineReader$Option;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 976
    .local v11, "optName":Ljava/lang/String;
    if-eqz p4, :cond_1

    invoke-virtual {v11, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 977
    :goto_2
    if-eqz p5, :cond_2

    .line 978
    invoke-interface {p0, v10}, Lorg/jline/reader/LineReader;->setOpt(Lorg/jline/reader/LineReader$Option;)V

    goto :goto_3

    .line 980
    :cond_2
    invoke-interface {p0, v10}, Lorg/jline/reader/LineReader;->unsetOpt(Lorg/jline/reader/LineReader$Option;)V

    .line 982
    :goto_3
    const/4 v6, 0x1

    .line 983
    if-nez p4, :cond_6

    .line 984
    goto :goto_6

    .line 986
    :cond_3
    const-string v12, "no"

    new-instance v13, Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_4

    :cond_4
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 987
    :goto_4
    if-eqz p5, :cond_5

    .line 988
    invoke-interface {p0, v10}, Lorg/jline/reader/LineReader;->unsetOpt(Lorg/jline/reader/LineReader$Option;)V

    goto :goto_5

    .line 990
    :cond_5
    invoke-interface {p0, v10}, Lorg/jline/reader/LineReader;->setOpt(Lorg/jline/reader/LineReader$Option;)V

    .line 992
    :goto_5
    if-nez p4, :cond_7

    .line 993
    const/4 v6, 0x1

    goto :goto_6

    .line 974
    .end local v10    # "option":Lorg/jline/reader/LineReader$Option;
    .end local v11    # "optName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 998
    :cond_7
    :goto_6
    if-nez v6, :cond_8

    .line 999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No matching option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 998
    :cond_8
    move-object/from16 v5, p2

    .line 1001
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tname":Ljava/lang/String;
    .end local v6    # "found":Z
    :goto_7
    goto/16 :goto_0

    .line 1002
    :cond_9
    move-object/from16 v5, p2

    return-void
.end method

.method protected static findFiles(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "root"    # Ljava/nio/file/Path;
    .param p1, "files"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    const-string v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    .line 156
    nop

    .line 157
    .local v0, "regex":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "/"

    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 158
    .local v2, "searchRoot":Ljava/nio/file/Path;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    const-string v5, "//"

    const-string v6, "\\\\"

    if-eqz v4, :cond_3

    .line 159
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "sr":Ljava/lang/String;
    :goto_1
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 165
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 166
    .end local v4    # "sr":Ljava/lang/String;
    goto :goto_4

    .line 163
    .restart local v4    # "sr":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 168
    .end local v4    # "sr":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ""

    goto :goto_3

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    move-object v2, p0

    .line 172
    :cond_5
    :goto_4
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "glob:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v3

    .line 173
    .local v3, "pathMatcher":Ljava/nio/file/PathMatcher;
    const v4, 0x7fffffff

    new-instance v5, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda3;-><init>(Ljava/nio/file/PathMatcher;)V

    new-array v1, v1, [Ljava/nio/file/FileVisitOption;

    invoke-static {v2, v4, v5, v1}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static history(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;)V
    .locals 30
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "currentDir"    # Ljava/nio/file/Path;
    .param p4, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "history -  list history of commands"

    const-string v3, "Usage: history [-dnrfEie] [-m match] [first] [last]"

    const-string v4, "       history -ARWI [filename]"

    const-string v5, "       history -s [old=new] [command]"

    const-string v6, "       history --clear"

    const-string v7, "       history --save"

    const-string v8, "  -? --help                       Displays command help"

    const-string v9, "     --clear                      Clear history"

    const-string v10, "     --save                       Save history"

    const-string v11, "  -m match                        If option -m is present the first argument is taken as a pattern"

    const-string v12, "                                  and only the history events matching the pattern will be shown"

    const-string v13, "  -d                              Print timestamps for each event"

    const-string v14, "  -f                              Print full time date stamps in the US format"

    const-string v15, "  -E                              Print full time date stamps in the European format"

    const-string v16, "  -i                              Print full time date stamps in ISO8601 format"

    const-string v17, "  -n                              Suppresses command numbers"

    const-string v18, "  -r                              Reverses the order of the commands"

    const-string v19, "  -A                              Appends the history out to the given file"

    const-string v20, "  -R                              Reads the history from the given file"

    const-string v21, "  -W                              Writes the history out to the given file"

    const-string v22, "  -I                              If added to -R, only the events that are not contained within the internal list are added"

    const-string v23, "                                  If added to -W or -A, only the events that are new since the last incremental operation"

    const-string v24, "                                  to the file are added"

    const-string v25, "  [first] [last]                  These optional arguments may be specified as a number or as a string. A negative number"

    const-string v26, "                                  is used as an offset to the current history event number. A string specifies the most"

    const-string v27, "                                  recent event beginning with the given string."

    const-string v28, "  -e                              Uses the nano editor to edit the commands before executing"

    const-string v29, "  -s                              Re-executes the command without invoking an editor"

    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "usage":[Ljava/lang/String;
    invoke-static {v2}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v3

    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v3

    .line 209
    .local v3, "opt":Lorg/jline/builtins/Options;
    const-string v5, "help"

    invoke-virtual {v3, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 212
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getHistory()Lorg/jline/reader/History;

    move-result-object v5

    .line 213
    .local v5, "history":Lorg/jline/reader/History;
    const/4 v6, 0x1

    .line 214
    .local v6, "done":Z
    const-string v7, "I"

    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    .line 215
    .local v7, "increment":Z
    const-string v8, "clear"

    invoke-virtual {v3, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 216
    invoke-interface {v5}, Lorg/jline/reader/History;->purge()V

    goto/16 :goto_0

    .line 217
    :cond_0
    const-string v8, "save"

    invoke-virtual {v3, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 218
    invoke-interface {v5}, Lorg/jline/reader/History;->save()V

    goto/16 :goto_0

    .line 219
    :cond_1
    const-string v8, "A"

    invoke-virtual {v3, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    .line 220
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    :cond_2
    move-object v8, v10

    .line 221
    .local v8, "file":Ljava/nio/file/Path;
    invoke-interface {v5, v8, v7}, Lorg/jline/reader/History;->append(Ljava/nio/file/Path;Z)V

    .line 222
    .end local v8    # "file":Ljava/nio/file/Path;
    goto :goto_0

    :cond_3
    const-string v8, "R"

    invoke-virtual {v3, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 223
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    :cond_4
    move-object v8, v10

    .line 224
    .restart local v8    # "file":Ljava/nio/file/Path;
    invoke-interface {v5, v8, v7}, Lorg/jline/reader/History;->read(Ljava/nio/file/Path;Z)V

    .line 225
    .end local v8    # "file":Ljava/nio/file/Path;
    goto :goto_0

    :cond_5
    const-string v8, "W"

    invoke-virtual {v3, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 226
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    :cond_6
    move-object v8, v10

    .line 227
    .restart local v8    # "file":Ljava/nio/file/Path;
    invoke-interface {v5, v8, v7}, Lorg/jline/reader/History;->write(Ljava/nio/file/Path;Z)V

    .line 228
    .end local v8    # "file":Ljava/nio/file/Path;
    goto :goto_0

    .line 229
    :cond_7
    const/4 v6, 0x0

    .line 231
    :goto_0
    if-eqz v6, :cond_8

    .line 232
    return-void

    .line 234
    :cond_8
    new-instance v8, Lorg/jline/builtins/Commands$ReExecute;

    invoke-direct {v8, v5, v3}, Lorg/jline/builtins/Commands$ReExecute;-><init>(Lorg/jline/reader/History;Lorg/jline/builtins/Options;)V

    .line 235
    .local v8, "execute":Lorg/jline/builtins/Commands$ReExecute;
    invoke-virtual {v8}, Lorg/jline/builtins/Commands$ReExecute;->getArgId()I

    move-result v10

    .line 237
    .local v10, "argId":I
    const/4 v11, 0x0

    .line 238
    .local v11, "pattern":Ljava/util/regex/Pattern;
    const-string v12, "m"

    invoke-virtual {v3, v12}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v10, :cond_b

    .line 239
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v12, "sb":Ljava/lang/StringBuilder;
    const/16 v13, 0x30

    .line 241
    .local v13, "prev":C
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v14

    add-int/lit8 v15, v10, 0x1

    .end local v10    # "argId":I
    .local v15, "argId":I
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    array-length v14, v10

    :goto_1
    if-ge v9, v14, :cond_a

    aget-char v1, v10, v9

    .line 242
    .local v1, "c":C
    move-object/from16 v17, v2

    .end local v2    # "usage":[Ljava/lang/String;
    .local v17, "usage":[Ljava/lang/String;
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_9

    const/16 v2, 0x5c

    if-eq v13, v2, :cond_9

    const/16 v2, 0x2e

    if-eq v13, v2, :cond_9

    .line 243
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    :cond_9
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    move v13, v1

    .line 241
    .end local v1    # "c":C
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    goto :goto_1

    .line 248
    .end local v17    # "usage":[Ljava/lang/String;
    .restart local v2    # "usage":[Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v2

    .end local v2    # "usage":[Ljava/lang/String;
    .restart local v17    # "usage":[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    move v10, v15

    goto :goto_2

    .line 238
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "prev":C
    .end local v15    # "argId":I
    .end local v17    # "usage":[Ljava/lang/String;
    .restart local v2    # "usage":[Ljava/lang/String;
    .restart local v10    # "argId":I
    :cond_b
    move-object/from16 v17, v2

    .line 250
    .end local v2    # "usage":[Ljava/lang/String;
    .restart local v17    # "usage":[Ljava/lang/String;
    :goto_2
    const-string v1, "r"

    invoke-virtual {v3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_d

    const-string v1, "s"

    invoke-virtual {v3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v10, :cond_c

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    :goto_3
    move v1, v2

    .line 251
    .local v1, "reverse":Z
    :goto_4
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v10, :cond_e

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    add-int/lit8 v12, v10, 0x1

    .end local v10    # "argId":I
    .local v12, "argId":I
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v5, v9}, Lorg/jline/builtins/Commands;->retrieveHistoryId(Lorg/jline/reader/History;Ljava/lang/String;)I

    move-result v9

    move v10, v12

    goto :goto_5

    .end local v12    # "argId":I
    .restart local v10    # "argId":I
    :cond_e
    const/16 v9, -0x11

    .line 252
    .local v9, "firstId":I
    :goto_5
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v10, :cond_f

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v12

    add-int/lit8 v13, v10, 0x1

    .end local v10    # "argId":I
    .local v13, "argId":I
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v5, v10}, Lorg/jline/builtins/Commands;->retrieveHistoryId(Lorg/jline/reader/History;Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    .end local v13    # "argId":I
    .restart local v10    # "argId":I
    :cond_f
    const/4 v12, -0x1

    move v13, v10

    move v10, v12

    .line 253
    .local v10, "lastId":I
    .restart local v13    # "argId":I
    :goto_6
    invoke-interface {v5}, Lorg/jline/reader/History;->first()I

    move-result v12

    invoke-interface {v5}, Lorg/jline/reader/History;->last()I

    move-result v14

    invoke-static {v9, v12, v14}, Lorg/jline/builtins/Commands;->historyId(III)I

    move-result v9

    .line 254
    invoke-interface {v5}, Lorg/jline/reader/History;->first()I

    move-result v12

    invoke-interface {v5}, Lorg/jline/reader/History;->last()I

    move-result v14

    invoke-static {v10, v12, v14}, Lorg/jline/builtins/Commands;->historyId(III)I

    move-result v10

    .line 255
    if-le v9, v10, :cond_11

    .line 256
    move v12, v9

    .line 257
    .local v12, "tmpId":I
    move v9, v10

    .line 258
    move v10, v12

    .line 259
    if-nez v1, :cond_10

    move v14, v2

    goto :goto_7

    :cond_10
    const/4 v14, 0x0

    :goto_7
    move v1, v14

    .line 261
    .end local v12    # "tmpId":I
    :cond_11
    sub-int v12, v10, v9

    add-int/2addr v12, v2

    .line 262
    .local v12, "tot":I
    const/4 v14, 0x0

    .line 263
    .local v14, "listed":I
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getHighlighter()Lorg/jline/reader/Highlighter;

    move-result-object v15

    .line 264
    .local v15, "highlighter":Lorg/jline/reader/Highlighter;
    const/16 v18, 0x0

    .line 265
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jline/reader/History$Entry;>;"
    if-eqz v1, :cond_12

    .line 266
    invoke-interface {v5, v10}, Lorg/jline/reader/History;->reverseIterator(I)Ljava/util/Iterator;

    move-result-object v18

    goto :goto_8

    .line 268
    :cond_12
    invoke-interface {v5, v9}, Lorg/jline/reader/History;->iterator(I)Ljava/util/ListIterator;

    move-result-object v18

    .line 271
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1c

    if-ge v14, v12, :cond_1c

    .line 272
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/jline/reader/History$Entry;

    .line 273
    .local v19, "entry":Lorg/jline/reader/History$Entry;
    add-int/lit8 v14, v14, 0x1

    .line 274
    if-eqz v11, :cond_13

    invoke-interface/range {v19 .. v19}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_13

    .line 275
    move-object/from16 v4, p1

    move/from16 v21, v1

    move-object/from16 v22, v5

    move/from16 v20, v6

    move/from16 v24, v7

    const/16 v16, 0x0

    goto/16 :goto_d

    .line 277
    :cond_13
    invoke-virtual {v8}, Lorg/jline/builtins/Commands$ReExecute;->isExecute()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 278
    invoke-virtual {v8}, Lorg/jline/builtins/Commands$ReExecute;->isEdit()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 279
    invoke-interface/range {v19 .. v19}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/jline/builtins/Commands$ReExecute;->addCommandInFile(Ljava/lang/String;)V

    move-object/from16 v4, p1

    move/from16 v21, v1

    move-object/from16 v22, v5

    move/from16 v20, v6

    move/from16 v24, v7

    const/16 v16, 0x0

    goto/16 :goto_c

    .line 281
    :cond_14
    invoke-interface/range {v19 .. v19}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lorg/jline/builtins/Commands$ReExecute;->addCommandInBuffer(Lorg/jline/reader/LineReader;Ljava/lang/String;)V

    .line 282
    move-object/from16 v4, p1

    move/from16 v21, v1

    move-object/from16 v22, v5

    move/from16 v20, v6

    move/from16 v24, v7

    goto/16 :goto_e

    .line 285
    :cond_15
    new-instance v2, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v2}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 286
    .local v2, "sb":Lorg/jline/utils/AttributedStringBuilder;
    move/from16 v21, v1

    .end local v1    # "reverse":Z
    .local v21, "reverse":Z
    const-string v1, "n"

    invoke-virtual {v3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "  "

    if-nez v1, :cond_16

    .line 287
    invoke-virtual {v2, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 288
    new-instance v1, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda0;-><init>()V

    move-object/from16 v22, v5

    move/from16 v20, v6

    const/4 v5, 0x1

    .end local v5    # "history":Lorg/jline/reader/History;
    .end local v6    # "done":Z
    .local v20, "done":Z
    .local v22, "history":Lorg/jline/reader/History;
    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface/range {v19 .. v19}, Lorg/jline/reader/History$Entry;->index()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v16, 0x0

    aput-object v23, v6, v16

    const-string v5, "%3d"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/jline/utils/AttributedStringBuilder;->styled(Ljava/util/function/Function;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_9

    .line 286
    .end local v20    # "done":Z
    .end local v22    # "history":Lorg/jline/reader/History;
    .restart local v5    # "history":Lorg/jline/reader/History;
    .restart local v6    # "done":Z
    :cond_16
    move-object/from16 v22, v5

    move/from16 v20, v6

    const/16 v16, 0x0

    .line 290
    .end local v5    # "history":Lorg/jline/reader/History;
    .end local v6    # "done":Z
    .restart local v20    # "done":Z
    .restart local v22    # "history":Lorg/jline/reader/History;
    :goto_9
    const-string v1, "d"

    invoke-virtual {v3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "E"

    move/from16 v24, v7

    .end local v7    # "increment":Z
    .local v24, "increment":Z
    const-string v7, "f"

    if-nez v5, :cond_17

    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v3, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "i"

    invoke-virtual {v3, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 291
    :cond_17
    invoke-virtual {v2, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 292
    invoke-virtual {v3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 293
    invoke-interface/range {v19 .. v19}, Lorg/jline/reader/History$Entry;->time()Ljava/time/Instant;

    move-result-object v1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v1

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 294
    invoke-virtual {v1, v5}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v1

    .line 295
    .local v1, "lt":Ljava/time/LocalTime;
    sget-object v5, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v1, v2}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    .line 296
    .end local v1    # "lt":Ljava/time/LocalTime;
    goto :goto_b

    .line 297
    :cond_18
    invoke-interface/range {v19 .. v19}, Lorg/jline/reader/History$Entry;->time()Ljava/time/Instant;

    move-result-object v1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    .line 298
    invoke-virtual {v1, v5}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 297
    invoke-static {v1}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 299
    .local v1, "lt":Ljava/time/LocalDateTime;
    const-string v5, "yyyy-MM-dd hh:mm"

    .line 300
    .local v5, "format":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 301
    const-string v5, "MM/dd/yy hh:mm"

    goto :goto_a

    .line 302
    :cond_19
    invoke-virtual {v3, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 303
    const-string v5, "dd.MM.yyyy hh:mm"

    .line 305
    :cond_1a
    :goto_a
    invoke-static {v5}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    .line 308
    .end local v1    # "lt":Ljava/time/LocalDateTime;
    .end local v5    # "format":Ljava/lang/String;
    :cond_1b
    :goto_b
    invoke-virtual {v2, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 309
    invoke-interface/range {v19 .. v19}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Lorg/jline/reader/Highlighter;->highlight(Lorg/jline/reader/LineReader;Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 310
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jline/utils/AttributedStringBuilder;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    .end local v2    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v19    # "entry":Lorg/jline/reader/History$Entry;
    :goto_c
    nop

    .line 271
    .end local v20    # "done":Z
    .end local v21    # "reverse":Z
    .end local v22    # "history":Lorg/jline/reader/History;
    .end local v24    # "increment":Z
    .local v1, "reverse":Z
    .local v5, "history":Lorg/jline/reader/History;
    .restart local v6    # "done":Z
    .restart local v7    # "increment":Z
    :goto_d
    move-object/from16 v4, p4

    move/from16 v6, v20

    move/from16 v1, v21

    move-object/from16 v5, v22

    move/from16 v7, v24

    const/4 v2, 0x1

    .end local v1    # "reverse":Z
    .end local v5    # "history":Lorg/jline/reader/History;
    .end local v6    # "done":Z
    .end local v7    # "increment":Z
    .restart local v20    # "done":Z
    .restart local v21    # "reverse":Z
    .restart local v22    # "history":Lorg/jline/reader/History;
    .restart local v24    # "increment":Z
    goto/16 :goto_8

    .end local v20    # "done":Z
    .end local v21    # "reverse":Z
    .end local v22    # "history":Lorg/jline/reader/History;
    .end local v24    # "increment":Z
    .restart local v1    # "reverse":Z
    .restart local v5    # "history":Lorg/jline/reader/History;
    .restart local v6    # "done":Z
    .restart local v7    # "increment":Z
    :cond_1c
    move-object/from16 v4, p1

    move/from16 v21, v1

    move-object/from16 v22, v5

    move/from16 v20, v6

    move/from16 v24, v7

    .line 313
    .end local v1    # "reverse":Z
    .end local v5    # "history":Lorg/jline/reader/History;
    .end local v6    # "done":Z
    .end local v7    # "increment":Z
    .restart local v20    # "done":Z
    .restart local v21    # "reverse":Z
    .restart local v22    # "history":Lorg/jline/reader/History;
    .restart local v24    # "increment":Z
    :goto_e
    invoke-virtual {v8, v0}, Lorg/jline/builtins/Commands$ReExecute;->editCommandsAndClose(Lorg/jline/reader/LineReader;)V

    .line 314
    return-void

    .line 210
    .end local v8    # "execute":Lorg/jline/builtins/Commands$ReExecute;
    .end local v9    # "firstId":I
    .end local v10    # "lastId":I
    .end local v11    # "pattern":Ljava/util/regex/Pattern;
    .end local v12    # "tot":I
    .end local v13    # "argId":I
    .end local v14    # "listed":I
    .end local v15    # "highlighter":Lorg/jline/reader/Highlighter;
    .end local v17    # "usage":[Ljava/lang/String;
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jline/reader/History$Entry;>;"
    .end local v20    # "done":Z
    .end local v21    # "reverse":Z
    .end local v22    # "history":Lorg/jline/reader/History;
    .end local v24    # "increment":Z
    .local v2, "usage":[Ljava/lang/String;
    :cond_1d
    move-object/from16 v17, v2

    .end local v2    # "usage":[Ljava/lang/String;
    .restart local v17    # "usage":[Ljava/lang/String;
    new-instance v1, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static historyId(III)I
    .locals 2
    .param p0, "id"    # I
    .param p1, "minId"    # I
    .param p2, "maxId"    # I

    .line 389
    move v0, p0

    .line 390
    .local v0, "out":I
    if-gez p0, :cond_0

    .line 391
    add-int v1, p2, p0

    add-int/lit8 v0, v1, 0x1

    .line 393
    :cond_0
    if-ge v0, p1, :cond_1

    .line 394
    move v0, p1

    goto :goto_0

    .line 395
    :cond_1
    if-le v0, p2, :cond_2

    .line 396
    move v0, p2

    .line 398
    :cond_2
    :goto_0
    return v0
.end method

.method public static keymap(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 29
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/builtins/Options$HelpException;
        }
    .end annotation

    .line 568
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "keymap -  manipulate keymaps"

    const-string v3, "Usage: keymap [options] -l [-L] [keymap ...]"

    const-string v4, "       keymap [options] -d"

    const-string v5, "       keymap [options] -D keymap ..."

    const-string v6, "       keymap [options] -A old-keymap new-keymap"

    const-string v7, "       keymap [options] -N new-keymap [old-keymap]"

    const-string v8, "       keymap [options] -m"

    const-string v9, "       keymap [options] -r in-string ..."

    const-string v10, "       keymap [options] -s in-string out-string ..."

    const-string v11, "       keymap [options] in-string command ..."

    const-string v12, "       keymap [options] [in-string]"

    const-string v13, "  -? --help                       Displays command help"

    const-string v14, "  -A                              Create alias to keymap"

    const-string v15, "  -D                              Delete named keymaps"

    const-string v16, "  -L                              Output in form of keymap commands"

    const-string v17, "  -M (default=main)               Specify keymap to select"

    const-string v18, "  -N                              Create new keymap"

    const-string v19, "  -R                              Interpret in-strings as ranges"

    const-string v20, "  -a                              Select vicmd keymap"

    const-string v21, "  -d                              Delete existing keymaps and reset to default state"

    const-string v22, "  -e                              Select emacs keymap and bind it to main"

    const-string v23, "  -l                              List existing keymap names"

    const-string v24, "  -p                              List bindings which have given key sequence as a a prefix"

    const-string v25, "  -r                              Unbind specified in-strings "

    const-string v26, "  -s                              Bind each in-string to each out-string "

    const-string v27, "  -v                              Select viins keymap and bind it to main"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "usage":[Ljava/lang/String;
    invoke-static {v2}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v3

    .line 597
    .local v3, "opt":Lorg/jline/builtins/Options;
    const-string v5, "help"

    invoke-virtual {v3, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 601
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v5

    .line 603
    .local v5, "keyMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;>;"
    const-string v6, "N"

    invoke-virtual {v3, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    .line 604
    const-string v8, "d"

    invoke-virtual {v3, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    add-int/2addr v7, v9

    .line 605
    const-string v9, "D"

    invoke-virtual {v3, v9}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v10

    add-int/2addr v7, v10

    .line 606
    const-string v10, "l"

    invoke-virtual {v3, v10}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v11

    add-int/2addr v7, v11

    .line 607
    const-string v11, "r"

    invoke-virtual {v3, v11}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    add-int/2addr v7, v12

    .line 608
    const-string v12, "s"

    invoke-virtual {v3, v12}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v13

    add-int/2addr v7, v13

    .line 609
    const-string v13, "A"

    invoke-virtual {v3, v13}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v14

    add-int/2addr v7, v14

    .line 610
    .local v7, "actions":I
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 611
    const-string v6, "keymap: incompatible operation selection options"

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 612
    return-void

    .line 614
    :cond_0
    invoke-virtual {v3, v10}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v10

    const-string v15, "L"

    const-string v14, "\'"

    if-eqz v10, :cond_4

    .line 615
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    .line 617
    .local v6, "commands":Z
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 618
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 619
    .local v9, "arg":Ljava/lang/String;
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jline/keymap/KeyMap;

    .line 620
    .local v10, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-nez v10, :cond_1

    .line 621
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "keymap: no such keymap: `"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 623
    :cond_1
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    .end local v9    # "arg":Ljava/lang/String;
    .end local v10    # "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    :goto_1
    goto :goto_0

    :cond_2
    goto :goto_2

    .line 627
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v8, v9}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 629
    .end local v6    # "commands":Z
    :goto_2
    move-object/from16 v17, v2

    move/from16 v20, v7

    goto/16 :goto_21

    .line 630
    :cond_4
    invoke-virtual {v3, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    const-string v10, "keymap: keymap can not be selected with -N"

    move-object/from16 v17, v2

    .end local v2    # "usage":[Ljava/lang/String;
    .local v17, "usage":[Ljava/lang/String;
    const-string v2, "keymap: no such keymap `"

    const-string v4, "M"

    move/from16 v20, v7

    .end local v7    # "actions":I
    .local v20, "actions":I
    const-string v7, "a"

    const-string v0, "v"

    move-object/from16 v21, v15

    const-string v15, "e"

    if-eqz v6, :cond_b

    .line 631
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 635
    :cond_5
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_6

    .line 636
    const-string v0, "keymap: not enough arguments for -N"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 637
    return-void

    .line 639
    :cond_6
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_7

    .line 640
    const-string v0, "keymap: too many arguments for -N"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    return-void

    .line 643
    :cond_7
    const/4 v0, 0x0

    .line 644
    .local v0, "org":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 645
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/jline/keymap/KeyMap;

    .line 646
    if-nez v0, :cond_8

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 648
    return-void

    .line 651
    :cond_8
    new-instance v2, Lorg/jline/keymap/KeyMap;

    invoke-direct {v2}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 652
    .local v2, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-eqz v0, :cond_9

    .line 653
    invoke-virtual {v0}, Lorg/jline/keymap/KeyMap;->getBoundKeys()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 654
    .local v6, "bound":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/reader/Binding;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7, v8}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 655
    .end local v6    # "bound":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    goto :goto_3

    .line 657
    :cond_9
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .end local v0    # "org":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v2    # "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    goto/16 :goto_21

    .line 632
    :cond_a
    :goto_4
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 633
    return-void

    .line 659
    :cond_b
    invoke-virtual {v3, v13}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 660
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    .line 664
    :cond_c
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_d

    .line 665
    const-string v0, "keymap: not enough arguments for -A"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    return-void

    .line 668
    :cond_d
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_e

    .line 669
    const-string v0, "keymap: too many arguments for -A"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 670
    return-void

    .line 672
    :cond_e
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/keymap/KeyMap;

    .line 673
    .restart local v0    # "org":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-nez v0, :cond_f

    .line 674
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 675
    return-void

    .line 677
    :cond_f
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .end local v0    # "org":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    goto/16 :goto_21

    .line 661
    :cond_10
    :goto_5
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 662
    return-void

    .line 679
    :cond_11
    invoke-virtual {v3, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 680
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    .line 684
    :cond_12
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 685
    const-string v0, "keymap: too many arguments for -d"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 686
    return-void

    .line 688
    :cond_13
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 689
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->defaultKeyMaps()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_21

    .line 681
    :cond_14
    :goto_6
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 682
    return-void

    .line 691
    :cond_15
    invoke-virtual {v3, v9}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 692
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    .line 696
    :cond_16
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_17

    .line 697
    const-string v0, "keymap: not enough arguments for -A"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 698
    return-void

    .line 700
    :cond_17
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 701
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_18

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 703
    return-void

    .line 705
    .end local v4    # "name":Ljava/lang/String;
    :cond_18
    goto :goto_7

    :cond_19
    goto/16 :goto_21

    .line 693
    :cond_1a
    :goto_8
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 694
    return-void

    .line 707
    :cond_1b
    invoke-virtual {v3, v11}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "main"

    const-string v9, "keymap: argument expected: -M"

    const-string v10, "keymap: incompatible keymap selection options"

    if-eqz v6, :cond_2d

    .line 709
    const-string v6, "main"

    .line 710
    .local v6, "keyMapName":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v11

    .line 711
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    add-int/2addr v11, v12

    .line 712
    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    add-int/2addr v11, v12

    .line 713
    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    add-int/2addr v11, v12

    .line 714
    .local v11, "sel":I
    const/4 v12, 0x1

    if-le v11, v12, :cond_1c

    .line 715
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    return-void

    .line 717
    :cond_1c
    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 718
    const-string v6, "vicmd"

    goto :goto_9

    .line 719
    :cond_1d
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 720
    const-string v6, "emacs"

    goto :goto_9

    .line 721
    :cond_1e
    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 722
    const-string v6, "viins"

    goto :goto_9

    .line 723
    :cond_1f
    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 724
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 725
    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    return-void

    .line 728
    :cond_20
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 730
    :cond_21
    :goto_9
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/keymap/KeyMap;

    .line 731
    .local v4, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-nez v4, :cond_22

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    return-void

    .line 736
    :cond_22
    const-string v2, "R"

    invoke-virtual {v3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    .line 737
    .local v2, "range":Z
    const-string v7, "p"

    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    .line 738
    .local v7, "prefix":Z
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 739
    .local v9, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lorg/jline/keymap/KeyMap;->getBoundKeys()Ljava/util/Map;

    move-result-object v10

    .line 740
    .local v10, "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 741
    .local v13, "arg":Ljava/lang/String;
    if-eqz v2, :cond_24

    .line 742
    move/from16 v16, v2

    .end local v2    # "range":Z
    .local v16, "range":Z
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    move-object/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "keyMapName":Ljava/lang/String;
    .local v18, "keyMapName":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 743
    .local v2, "r":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez v2, :cond_23

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keymap: malformed key range `"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    return-void

    .line 747
    :cond_23
    invoke-interface {v9, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 748
    .end local v2    # "r":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v21, v10

    move/from16 v23, v11

    goto :goto_d

    .line 749
    .end local v16    # "range":Z
    .end local v18    # "keyMapName":Ljava/lang/String;
    .local v2, "range":Z
    .restart local v6    # "keyMapName":Ljava/lang/String;
    :cond_24
    move/from16 v16, v2

    move-object/from16 v18, v6

    .end local v2    # "range":Z
    .end local v6    # "keyMapName":Ljava/lang/String;
    .restart local v16    # "range":Z
    .restart local v18    # "keyMapName":Ljava/lang/String;
    invoke-static {v13}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "seq":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    .line 751
    .local v6, "k":Ljava/lang/String;
    if-eqz v7, :cond_25

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_25

    move-object/from16 v21, v10

    .end local v10    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .local v21, "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v23, v11

    .end local v11    # "sel":I
    .local v23, "sel":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_26

    goto :goto_c

    .end local v21    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v23    # "sel":I
    .restart local v10    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .restart local v11    # "sel":I
    :cond_25
    move-object/from16 v21, v10

    move/from16 v23, v11

    .end local v10    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v11    # "sel":I
    .restart local v21    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .restart local v23    # "sel":I
    :goto_c
    if-nez v7, :cond_27

    .line 752
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 753
    :cond_26
    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 755
    .end local v6    # "k":Ljava/lang/String;
    :cond_27
    move-object/from16 v10, v21

    move-object/from16 v6, v22

    move/from16 v11, v23

    goto :goto_b

    .line 750
    .end local v21    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v23    # "sel":I
    .restart local v10    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .restart local v11    # "sel":I
    :cond_28
    move-object/from16 v21, v10

    move/from16 v23, v11

    .line 757
    .end local v2    # "seq":Ljava/lang/String;
    .end local v10    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v11    # "sel":I
    .end local v13    # "arg":Ljava/lang/String;
    .restart local v21    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .restart local v23    # "sel":I
    :goto_d
    move/from16 v2, v16

    move-object/from16 v6, v18

    move-object/from16 v10, v21

    move/from16 v11, v23

    goto/16 :goto_a

    .line 758
    .end local v16    # "range":Z
    .end local v18    # "keyMapName":Ljava/lang/String;
    .end local v21    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v23    # "sel":I
    .local v2, "range":Z
    .local v6, "keyMapName":Ljava/lang/String;
    .restart local v10    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .restart local v11    # "sel":I
    :cond_29
    move/from16 v16, v2

    move-object/from16 v18, v6

    move-object/from16 v21, v10

    move/from16 v23, v11

    .end local v2    # "range":Z
    .end local v6    # "keyMapName":Ljava/lang/String;
    .end local v10    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v11    # "sel":I
    .restart local v16    # "range":Z
    .restart local v18    # "keyMapName":Ljava/lang/String;
    .restart local v21    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .restart local v23    # "sel":I
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 759
    .local v6, "seq":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lorg/jline/keymap/KeyMap;->unbind(Ljava/lang/CharSequence;)V

    .line 760
    .end local v6    # "seq":Ljava/lang/String;
    goto :goto_e

    .line 761
    :cond_2a
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 762
    :cond_2b
    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .end local v4    # "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v7    # "prefix":Z
    .end local v9    # "toRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "range":Z
    .end local v18    # "keyMapName":Ljava/lang/String;
    .end local v21    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v23    # "sel":I
    :cond_2c
    goto/16 :goto_21

    .line 765
    :cond_2d
    invoke-virtual {v3, v12}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_46

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    if-le v6, v11, :cond_2e

    move-object v6, v0

    goto/16 :goto_1c

    .line 821
    :cond_2e
    const-string v6, "main"

    .line 822
    .local v6, "keyMapName":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v11

    .line 823
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    add-int/2addr v11, v12

    .line 824
    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    add-int/2addr v11, v12

    .line 825
    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    add-int/2addr v11, v12

    .line 826
    .restart local v11    # "sel":I
    const/4 v12, 0x1

    if-le v11, v12, :cond_2f

    .line 827
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    return-void

    .line 829
    :cond_2f
    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 830
    const-string v6, "vicmd"

    goto :goto_f

    .line 831
    :cond_30
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 832
    const-string v6, "emacs"

    goto :goto_f

    .line 833
    :cond_31
    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 834
    const-string v6, "viins"

    goto :goto_f

    .line 835
    :cond_32
    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 836
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 837
    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 838
    return-void

    .line 840
    :cond_33
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 842
    :cond_34
    :goto_f
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/keymap/KeyMap;

    .line 843
    .restart local v4    # "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-nez v4, :cond_35

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 845
    return-void

    .line 848
    :cond_35
    const-string v2, "p"

    invoke-virtual {v3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    .line 849
    .local v2, "prefix":Z
    move-object/from16 v7, v21

    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    .line 850
    .local v7, "commands":Z
    if-eqz v2, :cond_36

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_36

    .line 851
    const-string v0, "keymap: option -p requires a prefix string"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 852
    return-void

    .line 854
    :cond_36
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_38

    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_37

    goto :goto_10

    :cond_37
    move/from16 v21, v2

    move-object/from16 v22, v6

    move/from16 v26, v7

    move-object/from16 v2, p1

    move-object v6, v0

    goto/16 :goto_1b

    .line 855
    :cond_38
    :goto_10
    invoke-virtual {v4}, Lorg/jline/keymap/KeyMap;->getBoundKeys()Ljava/util/Map;

    move-result-object v9

    .line 856
    .local v9, "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_39

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    :cond_39
    const/4 v10, 0x0

    .line 857
    .local v10, "seq":Ljava/lang/String;
    :goto_11
    const/4 v12, 0x0

    .line 858
    .local v12, "begin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    const/4 v13, 0x0

    .line 859
    .local v13, "last":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 860
    .local v14, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;>;"
    :goto_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_44

    .line 861
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 862
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    .line 863
    .local v0, "key":Ljava/lang/String;
    if-eqz v10, :cond_3c

    if-eqz v2, :cond_3a

    .line 864
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3a

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3c

    :cond_3a
    if-nez v2, :cond_3b

    .line 865
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3b

    goto :goto_13

    .line 902
    .end local v0    # "key":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    :cond_3b
    move/from16 v21, v2

    move/from16 v26, v7

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v2, p1

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    goto/16 :goto_1a

    .line 866
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    :cond_3c
    :goto_13
    if-nez v12, :cond_3e

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3d

    goto :goto_14

    .line 898
    :cond_3d
    move-object/from16 v12, v18

    .line 899
    move-object v13, v0

    move/from16 v21, v2

    move/from16 v26, v7

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v2, p1

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    goto/16 :goto_1a

    .line 867
    :cond_3e
    :goto_14
    move/from16 v21, v2

    .end local v2    # "prefix":Z
    .local v21, "prefix":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v9

    .end local v9    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .local v23, "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v24, v10

    const/4 v10, 0x1

    .end local v10    # "seq":Ljava/lang/String;
    .local v24, "seq":Ljava/lang/String;
    if-le v9, v10, :cond_3f

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v13, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_15

    :cond_3f
    const-string v9, ""

    :goto_15
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v9, v10

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, "n":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/reader/Binding;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 869
    move-object v9, v0

    move-object/from16 v2, p1

    move/from16 v26, v7

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    .end local v13    # "last":Ljava/lang/String;
    .local v9, "last":Ljava/lang/String;
    goto/16 :goto_19

    .line 872
    .end local v9    # "last":Ljava/lang/String;
    .restart local v13    # "last":Ljava/lang/String;
    :cond_40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v10, " "

    if-eqz v7, :cond_41

    .line 874
    move-object/from16 v25, v2

    .end local v2    # "n":Ljava/lang/String;
    .local v25, "n":Ljava/lang/String;
    const-string v2, "keymap -M "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 873
    .end local v25    # "n":Ljava/lang/String;
    .restart local v2    # "n":Ljava/lang/String;
    :cond_41
    move-object/from16 v25, v2

    .line 878
    .end local v2    # "n":Ljava/lang/String;
    .restart local v25    # "n":Ljava/lang/String;
    :goto_16
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 879
    invoke-static {v13}, Lorg/jline/keymap/KeyMap;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lorg/jline/builtins/Commands;->displayValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 882
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v10, p1

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    .end local v6    # "keyMapName":Ljava/lang/String;
    .local v22, "keyMapName":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move/from16 v26, v7

    move-object v2, v10

    goto :goto_18

    .line 884
    .end local v22    # "keyMapName":Ljava/lang/String;
    .restart local v6    # "keyMapName":Ljava/lang/String;
    :cond_42
    move-object/from16 v2, p1

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    .end local v6    # "keyMapName":Ljava/lang/String;
    .restart local v22    # "keyMapName":Ljava/lang/String;
    if-eqz v7, :cond_43

    .line 885
    move/from16 v26, v7

    .end local v7    # "commands":Z
    .local v26, "commands":Z
    const-string v7, "-R "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 884
    .end local v26    # "commands":Z
    .restart local v7    # "commands":Z
    :cond_43
    move/from16 v26, v7

    .line 887
    .end local v7    # "commands":Z
    .restart local v26    # "commands":Z
    :goto_17
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const-string v7, "-"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-static {v13}, Lorg/jline/keymap/KeyMap;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7}, Lorg/jline/builtins/Commands;->displayValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 892
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 894
    :goto_18
    move-object/from16 v12, v18

    .line 895
    move-object v7, v0

    move-object v9, v7

    .line 897
    .end local v13    # "last":Ljava/lang/String;
    .end local v25    # "n":Ljava/lang/String;
    .local v9, "last":Ljava/lang/String;
    :goto_19
    move-object v13, v9

    .line 902
    .end local v0    # "key":Ljava/lang/String;
    .end local v9    # "last":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .restart local v13    # "last":Ljava/lang/String;
    :goto_1a
    move-object v0, v6

    move/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v7, v26

    goto/16 :goto_12

    .line 860
    .end local v21    # "prefix":Z
    .end local v22    # "keyMapName":Ljava/lang/String;
    .end local v23    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v24    # "seq":Ljava/lang/String;
    .end local v26    # "commands":Z
    .local v2, "prefix":Z
    .restart local v6    # "keyMapName":Ljava/lang/String;
    .restart local v7    # "commands":Z
    .local v9, "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .restart local v10    # "seq":Ljava/lang/String;
    :cond_44
    move/from16 v21, v2

    move-object/from16 v22, v6

    move/from16 v26, v7

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v2, p1

    move-object v6, v0

    .line 904
    .end local v2    # "prefix":Z
    .end local v6    # "keyMapName":Ljava/lang/String;
    .end local v7    # "commands":Z
    .end local v9    # "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v10    # "seq":Ljava/lang/String;
    .end local v12    # "begin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;"
    .end local v13    # "last":Ljava/lang/String;
    .end local v14    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/reader/Binding;>;>;"
    .restart local v21    # "prefix":Z
    .restart local v22    # "keyMapName":Ljava/lang/String;
    .restart local v26    # "commands":Z
    :goto_1b
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {v3, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 905
    :cond_45
    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    .line 765
    .end local v4    # "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v11    # "sel":I
    .end local v21    # "prefix":Z
    .end local v22    # "keyMapName":Ljava/lang/String;
    .end local v26    # "commands":Z
    :cond_46
    move-object v6, v0

    .line 767
    :goto_1c
    const-string v0, "main"

    .line 768
    .local v0, "keyMapName":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v11

    .line 769
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v13

    add-int/2addr v11, v13

    .line 770
    invoke-virtual {v3, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v13

    add-int/2addr v11, v13

    .line 771
    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v13

    add-int/2addr v11, v13

    .line 772
    .restart local v11    # "sel":I
    const/4 v13, 0x1

    if-le v11, v13, :cond_47

    .line 773
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 774
    return-void

    .line 775
    :cond_47
    invoke-virtual {v3, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 776
    const-string v0, "vicmd"

    goto :goto_1d

    .line 777
    :cond_48
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 778
    const-string v0, "emacs"

    goto :goto_1d

    .line 779
    :cond_49
    invoke-virtual {v3, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 780
    const-string v0, "viins"

    goto :goto_1d

    .line 781
    :cond_4a
    invoke-virtual {v3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 782
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 783
    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 784
    return-void

    .line 786
    :cond_4b
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 788
    :cond_4c
    :goto_1d
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/keymap/KeyMap;

    .line 789
    .restart local v4    # "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-nez v4, :cond_4d

    .line 790
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 791
    return-void

    .line 794
    :cond_4d
    const-string v2, "R"

    invoke-virtual {v3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    .line 795
    .local v2, "range":Z
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x2

    rem-int/2addr v7, v9

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4e

    .line 796
    const-string v6, "keymap: even number of arguments required"

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 797
    return-void

    .line 799
    :cond_4e
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1e
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_52

    .line 800
    invoke-virtual {v3, v12}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 801
    new-instance v9, Lorg/jline/reader/Macro;

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v10

    add-int/lit8 v13, v7, 0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jline/reader/Macro;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    .line 802
    :cond_4f
    new-instance v9, Lorg/jline/reader/Reference;

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v10

    add-int/lit8 v13, v7, 0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    :goto_1f
    nop

    .line 803
    .local v9, "bout":Lorg/jline/reader/Binding;
    if-eqz v2, :cond_51

    .line 804
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v10

    .line 805
    .local v10, "r":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez v10, :cond_50

    .line 806
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keymap: malformed key range `"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 807
    return-void

    .line 809
    :cond_50
    invoke-virtual {v4, v9, v10}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/Iterable;)V

    .line 810
    .end local v10    # "r":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_20

    .line 811
    :cond_51
    invoke-virtual {v3}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 812
    .local v10, "in":Ljava/lang/String;
    invoke-virtual {v4, v9, v10}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 799
    .end local v9    # "bout":Lorg/jline/reader/Binding;
    .end local v10    # "in":Ljava/lang/String;
    :goto_20
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1e

    .line 815
    .end local v7    # "i":I
    :cond_52
    invoke-virtual {v3, v15}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    invoke-virtual {v3, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 816
    :cond_53
    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .end local v0    # "keyMapName":Ljava/lang/String;
    .end local v2    # "range":Z
    .end local v4    # "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v11    # "sel":I
    :cond_54
    nop

    .line 908
    :cond_55
    :goto_21
    return-void

    .line 598
    .end local v5    # "keyMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;>;"
    .end local v17    # "usage":[Ljava/lang/String;
    .end local v20    # "actions":I
    .local v2, "usage":[Ljava/lang/String;
    :cond_56
    move-object/from16 v17, v2

    .end local v2    # "usage":[Ljava/lang/String;
    .restart local v17    # "usage":[Ljava/lang/String;
    new-instance v0, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v3}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$complete$1(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$findFiles$0(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "pathMatcher"    # Ljava/nio/file/PathMatcher;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "f"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 173
    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static less(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;)V
    .locals 7
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "err"    # Ljava/io/PrintStream;
    .param p4, "currentDir"    # Ljava/nio/file/Path;
    .param p5, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/jline/builtins/Commands;->less(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;Lorg/jline/builtins/ConfigurationPath;)V

    .line 124
    return-void
.end method

.method public static less(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 16
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "err"    # Ljava/io/PrintStream;
    .param p4, "currentDir"    # Ljava/nio/file/Path;
    .param p5, "argv"    # [Ljava/lang/String;
    .param p6, "configPath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    move-object/from16 v0, p4

    invoke-static {}, Lorg/jline/builtins/Less;->usage()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 131
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v3, "help"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 134
    new-instance v3, Lorg/jline/builtins/Less;

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    invoke-direct {v3, v4, v0, v1, v5}, Lorg/jline/builtins/Less;-><init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;Lorg/jline/builtins/ConfigurationPath;)V

    .line 135
    .local v3, "less":Lorg/jline/builtins/Less;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v6, "sources":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Source;>;"
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const-string v8, "-"

    if-eqz v7, :cond_0

    .line 137
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 140
    .local v9, "arg":Ljava/lang/String;
    const-string v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "user.home"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    move-object v9, v10

    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    new-instance v10, Lorg/jline/builtins/Source$StdInSource;

    move-object/from16 v11, p1

    invoke-direct {v10, v11}, Lorg/jline/builtins/Source$StdInSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 143
    :cond_2
    move-object/from16 v11, p1

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 148
    :cond_3
    new-instance v10, Lorg/jline/builtins/Source$URLSource;

    invoke-interface {v0, v9}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    invoke-interface {v12}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v12

    invoke-direct {v10, v12, v9}, Lorg/jline/builtins/Source$URLSource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 144
    :cond_4
    :goto_2
    invoke-static {v0, v9}, Lorg/jline/builtins/Commands;->findFiles(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/file/Path;

    .line 145
    .local v12, "p":Ljava/nio/file/Path;
    new-instance v13, Lorg/jline/builtins/Source$URLSource;

    invoke-interface {v12}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v14

    invoke-interface {v12}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/jline/builtins/Source$URLSource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v12    # "p":Ljava/nio/file/Path;
    goto :goto_3

    :cond_5
    nop

    .line 150
    .end local v9    # "arg":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 151
    :cond_6
    move-object/from16 v11, p1

    invoke-virtual {v3, v6}, Lorg/jline/builtins/Less;->run(Ljava/util/List;)V

    .line 152
    return-void

    .line 132
    .end local v3    # "less":Lorg/jline/builtins/Less;
    .end local v6    # "sources":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Source;>;"
    :cond_7
    move-object/from16 v4, p0

    move-object/from16 v11, p1

    move-object/from16 v5, p6

    new-instance v3, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static nano(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;)V
    .locals 6
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "currentDir"    # Ljava/nio/file/Path;
    .param p4, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/jline/builtins/Commands;->nano(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;Lorg/jline/builtins/ConfigurationPath;)V

    .line 105
    return-void
.end method

.method public static nano(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/nio/file/Path;[Ljava/lang/String;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 3
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "currentDir"    # Ljava/nio/file/Path;
    .param p4, "argv"    # [Ljava/lang/String;
    .param p5, "configPath"    # Lorg/jline/builtins/ConfigurationPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-static {}, Lorg/jline/builtins/Nano;->usage()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v0

    .line 112
    .local v0, "opt":Lorg/jline/builtins/Options;
    const-string v1, "help"

    invoke-virtual {v0, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lorg/jline/builtins/Nano;

    invoke-direct {v1, p0, p3, v0, p5}, Lorg/jline/builtins/Nano;-><init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;Lorg/jline/builtins/ConfigurationPath;)V

    .line 116
    .local v1, "edit":Lorg/jline/builtins/Nano;
    invoke-virtual {v0}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Nano;->open(Ljava/util/List;)V

    .line 117
    invoke-virtual {v1}, Lorg/jline/builtins/Nano;->run()V

    .line 118
    return-void

    .line 113
    .end local v1    # "edit":Lorg/jline/builtins/Nano;
    :cond_0
    new-instance v1, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v0}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static retrieveHistoryId(Lorg/jline/reader/History;Ljava/lang/String;)I
    .locals 5
    .param p0, "history"    # Lorg/jline/reader/History;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 403
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-interface {p0}, Lorg/jline/reader/History;->iterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 406
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jline/reader/History$Entry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/History$Entry;

    .line 408
    .local v2, "entry":Lorg/jline/reader/History$Entry;
    invoke-interface {v2}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    invoke-interface {v2}, Lorg/jline/reader/History$Entry;->index()I

    move-result v3

    return v3

    .line 411
    .end local v2    # "entry":Lorg/jline/reader/History$Entry;
    :cond_0
    goto :goto_0

    .line 412
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "history: event not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static setopt(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 10
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/builtins/Options$HelpException;
        }
    .end annotation

    .line 914
    const-string v0, "setopt -  set options"

    const-string v1, "Usage: setopt [-m] option ..."

    const-string v2, "       setopt"

    const-string v3, "  -? --help                       Displays command help"

    const-string v4, "  -m                              Use pattern matching"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 922
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 925
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 926
    invoke-static {}, Lorg/jline/reader/LineReader$Option;->values()[Lorg/jline/reader/LineReader$Option;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 927
    .local v5, "option":Lorg/jline/reader/LineReader$Option;
    invoke-interface {p0, v5}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v6

    invoke-virtual {v5}, Lorg/jline/reader/LineReader$Option;->isDef()Z

    move-result v7

    if-eq v6, v7, :cond_1

    .line 928
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/jline/reader/LineReader$Option;->isDef()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "no-"

    goto :goto_1

    :cond_0
    const-string v7, ""

    :goto_1
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

    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 926
    .end local v5    # "option":Lorg/jline/reader/LineReader$Option;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 933
    :cond_2
    const-string v2, "m"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    .line 934
    .local v2, "match":Z
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v2

    invoke-static/range {v3 .. v8}, Lorg/jline/builtins/Commands;->doSetOpts(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;ZZ)V

    .line 936
    .end local v2    # "match":Z
    :cond_3
    return-void

    .line 923
    :cond_4
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static setvar(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 6
    .param p0, "lineReader"    # Lorg/jline/reader/LineReader;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/builtins/Options$HelpException;
        }
    .end annotation

    .line 1017
    const-string v0, "setvar -  set lineReader variable value"

    const-string v1, "Usage: setvar [variable] [value]"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 1023
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1026
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1027
    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getVariables()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1028
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1029
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1030
    :cond_1
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1031
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 1033
    :cond_2
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lorg/jline/reader/LineReader;->setVariable(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1035
    :goto_1
    return-void

    .line 1024
    :cond_3
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static tmux(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;[Ljava/lang/String;)V
    .locals 6
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p6, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/terminal/Terminal;",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/terminal/Terminal;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    .local p3, "getter":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Object;>;"
    .local p4, "setter":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Object;>;"
    .local p5, "runner":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/terminal/Terminal;>;"
    const-string v0, "tmux -  terminal multiplexer"

    const-string v1, "Usage: tmux [command]"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p6}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 74
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    array-length v2, p6

    if-nez v2, :cond_1

    .line 79
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    .line 80
    .local v2, "instance":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 81
    const-string v3, "tmux: can\'t run tmux inside itself"

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v3, Lorg/jline/builtins/Tmux;

    invoke-direct {v3, p0, p2, p5}, Lorg/jline/builtins/Tmux;-><init>(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/util/function/Consumer;)V

    .line 84
    .local v3, "tmux":Lorg/jline/builtins/Tmux;
    invoke-interface {p4, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 86
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Lorg/jline/builtins/Tmux;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-interface {p4, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 89
    nop

    .line 91
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "tmux":Lorg/jline/builtins/Tmux;
    :goto_0
    goto :goto_1

    .line 88
    .restart local v2    # "instance":Ljava/lang/Object;
    .restart local v3    # "tmux":Lorg/jline/builtins/Tmux;
    :catchall_0
    move-exception v5

    invoke-interface {p4, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 89
    throw v5

    .line 92
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "tmux":Lorg/jline/builtins/Tmux;
    :cond_1
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    .line 93
    .restart local v2    # "instance":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 94
    move-object v3, v2

    check-cast v3, Lorg/jline/builtins/Tmux;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lorg/jline/builtins/Tmux;->execute(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    goto :goto_1

    .line 96
    :cond_2
    const-string v3, "tmux: no instance running"

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    .end local v2    # "instance":Ljava/lang/Object;
    :goto_1
    return-void

    .line 75
    :cond_3
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static unsetopt(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 10
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/builtins/Options$HelpException;
        }
    .end annotation

    .line 942
    const-string v0, "unsetopt -  unset options"

    const-string v1, "Usage: unsetopt [-m] option ..."

    const-string v2, "       unsetopt"

    const-string v3, "  -? --help                       Displays command help"

    const-string v4, "  -m                              Use pattern matching"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 950
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 953
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 954
    invoke-static {}, Lorg/jline/reader/LineReader$Option;->values()[Lorg/jline/reader/LineReader$Option;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 955
    .local v5, "option":Lorg/jline/reader/LineReader$Option;
    invoke-interface {p0, v5}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v6

    invoke-virtual {v5}, Lorg/jline/reader/LineReader$Option;->isDef()Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 956
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/jline/reader/LineReader$Option;->isDef()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "no-"

    goto :goto_1

    :cond_0
    const-string v7, ""

    :goto_1
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

    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 954
    .end local v5    # "option":Lorg/jline/reader/LineReader$Option;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 961
    :cond_2
    const-string v2, "m"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    .line 962
    .local v2, "match":Z
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v2

    invoke-static/range {v3 .. v8}, Lorg/jline/builtins/Commands;->doSetOpts(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;ZZ)V

    .line 964
    .end local v2    # "match":Z
    :cond_3
    return-void

    .line 951
    :cond_4
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static widget(Lorg/jline/reader/LineReader;Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/function/Function;[Ljava/lang/String;)V
    .locals 16
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p4, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    .local p3, "widgetCreator":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lorg/jline/reader/Widget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "widget -  manipulate widgets"

    const-string v4, "Usage: widget -N new-widget [function-name]"

    const-string v5, "       widget -D widget ..."

    const-string v6, "       widget -A old-widget new-widget"

    const-string v7, "       widget -U string ..."

    const-string v8, "       widget -l [options]"

    const-string v9, "  -? --help                       Displays command help"

    const-string v10, "  -A                              Create alias to widget"

    const-string v11, "  -N                              Create new widget"

    const-string v12, "  -D                              Delete widgets"

    const-string v13, "  -U                              Push characters to the stack"

    const-string v14, "  -l                              List user-defined widgets"

    const-string v15, "  -a                              With -l, list all widgets"

    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "usage":[Ljava/lang/String;
    invoke-static {v3}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v4

    .line 488
    .local v4, "opt":Lorg/jline/builtins/Options;
    const-string v6, "help"

    invoke-virtual {v4, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 492
    const-string v6, "N"

    invoke-virtual {v4, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    .line 493
    const-string v8, "D"

    invoke-virtual {v4, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    add-int/2addr v7, v9

    .line 494
    const-string v9, "U"

    invoke-virtual {v4, v9}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v10

    add-int/2addr v7, v10

    .line 495
    const-string v10, "l"

    invoke-virtual {v4, v10}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v11

    add-int/2addr v7, v11

    .line 496
    const-string v11, "A"

    invoke-virtual {v4, v11}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v12

    add-int/2addr v7, v12

    .line 497
    .local v7, "actions":I
    const/4 v12, 0x1

    if-le v7, v12, :cond_0

    .line 498
    const-string v6, "widget: incompatible operation selection options"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 499
    return-void

    .line 501
    :cond_0
    invoke-virtual {v4, v10}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v10

    const-string v13, "."

    if-eqz v10, :cond_5

    .line 502
    new-instance v6, Ljava/util/TreeSet;

    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 503
    .local v6, "ws":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const-string v8, "a"

    invoke-virtual {v4, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 504
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 505
    .local v9, "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 506
    .local v11, "s":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/reader/Widget;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 507
    .end local v11    # "s":Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v9    # "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 510
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 511
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 512
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jline/reader/Widget;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 513
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    .end local v10    # "s":Ljava/lang/String;
    :cond_3
    :goto_2
    goto :goto_1

    .line 516
    .end local v6    # "ws":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v15, p3

    goto/16 :goto_7

    .line 517
    :cond_5
    invoke-virtual {v4, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x2

    const/4 v14, 0x0

    if-eqz v6, :cond_9

    .line 518
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v12, :cond_6

    .line 519
    const-string v6, "widget: not enough arguments for -N"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 520
    return-void

    .line 522
    :cond_6
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_7

    .line 523
    const-string v6, "widget: too many arguments for -N"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    return-void

    .line 526
    :cond_7
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 527
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v10, :cond_8

    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v8, v6

    .line 528
    .local v8, "func":Ljava/lang/String;
    :goto_3
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v9

    move-object/from16 v15, p3

    invoke-interface {v15, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jline/reader/Widget;

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "func":Ljava/lang/String;
    goto/16 :goto_7

    :cond_9
    move-object/from16 v15, p3

    invoke-virtual {v4, v8}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 530
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 531
    .local v8, "name":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_4

    :cond_a
    goto/16 :goto_7

    .line 533
    :cond_b
    invoke-virtual {v4, v11}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 534
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v10, :cond_c

    .line 535
    const-string v6, "widget: not enough arguments for -A"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    return-void

    .line 538
    :cond_c
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_d

    .line 539
    const-string v6, "widget: too many arguments for -A"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    return-void

    .line 542
    :cond_d
    const/4 v6, 0x0

    .line 543
    .local v6, "org":Lorg/jline/reader/Widget;
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 544
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getBuiltinWidgets()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Lorg/jline/reader/Widget;

    goto :goto_5

    .line 546
    :cond_e
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Lorg/jline/reader/Widget;

    .line 548
    :goto_5
    if-nez v6, :cond_f

    .line 549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widget: no such widget `"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 550
    return-void

    .line 552
    :cond_f
    invoke-interface/range {p0 .. p0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .end local v6    # "org":Lorg/jline/reader/Widget;
    goto :goto_7

    .line 554
    :cond_10
    invoke-virtual {v4, v9}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 555
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 556
    .local v8, "arg":Ljava/lang/String;
    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lorg/jline/reader/LineReader;->runMacro(Ljava/lang/String;)V

    .line 557
    .end local v8    # "arg":Ljava/lang/String;
    goto :goto_6

    :cond_11
    goto :goto_7

    .line 559
    :cond_12
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v12, :cond_13

    .line 560
    invoke-virtual {v4}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v6}, Lorg/jline/reader/LineReader;->callWidget(Ljava/lang/String;)V

    .line 562
    :cond_13
    :goto_7
    return-void

    .line 489
    .end local v7    # "actions":I
    :cond_14
    move-object/from16 v15, p3

    new-instance v6, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v4}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
