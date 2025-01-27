.class public final Lorg/jline/builtins/InputRC;
.super Ljava/lang/Object;
.source "InputRC.java"


# instance fields
.field private final reader:Lorg/jline/reader/LineReader;


# direct methods
.method private constructor <init>(Lorg/jline/reader/LineReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/jline/builtins/InputRC;->reader:Lorg/jline/reader/LineReader;

    .line 63
    return-void
.end method

.method public static configure(Lorg/jline/reader/LineReader;Ljava/io/InputStream;)V
    .locals 3
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v0, "r":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {p0, v0}, Lorg/jline/builtins/InputRC;->configure(Lorg/jline/reader/LineReader;Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 35
    .end local v0    # "r":Ljava/io/InputStreamReader;
    return-void

    .line 32
    .restart local v0    # "r":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static configure(Lorg/jline/reader/LineReader;Ljava/io/Reader;)V
    .locals 8
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedReader;

    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 42
    .end local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getVariables()Ljava/util/Map;

    move-result-object v1

    const-string v2, "editing-mode"

    const-string v3, "emacs"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "main"

    invoke-interface {p0, v1}, Lorg/jline/reader/LineReader;->setKeyMap(Ljava/lang/String;)Z

    .line 46
    invoke-interface {p0, v2}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "vi"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "viins"

    if-eqz v4, :cond_1

    .line 47
    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/keymap/KeyMap;

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {p0, v2}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/keymap/KeyMap;

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_2
    :goto_1
    new-instance v4, Lorg/jline/builtins/InputRC;

    invoke-direct {v4, p0}, Lorg/jline/builtins/InputRC;-><init>(Lorg/jline/reader/LineReader;)V

    invoke-direct {v4, v0}, Lorg/jline/builtins/InputRC;->parse(Ljava/io/BufferedReader;)V

    .line 52
    invoke-interface {p0, v2}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/keymap/KeyMap;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 54
    :cond_3
    invoke-interface {p0, v2}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/keymap/KeyMap;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_4
    :goto_2
    return-void
.end method

.method public static configure(Lorg/jline/reader/LineReader;Ljava/net/URL;)V
    .locals 3
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 27
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/jline/builtins/InputRC;->configure(Lorg/jline/reader/LineReader;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 29
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 26
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private static getKeyFromName(Ljava/lang/String;)C
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 348
    const-string v0, "DEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Rubout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 350
    :cond_0
    const-string v0, "ESC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Escape"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 352
    :cond_1
    const-string v0, "LFD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "NewLine"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 354
    :cond_2
    const-string v0, "RET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Return"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 356
    :cond_3
    const-string v0, "SPC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Space"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 358
    :cond_4
    const-string v0, "Tab"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    const/16 v0, 0x9

    return v0

    .line 361
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 357
    :cond_6
    :goto_0
    const/16 v0, 0x20

    return v0

    .line 355
    :cond_7
    :goto_1
    const/16 v0, 0xd

    return v0

    .line 353
    :cond_8
    :goto_2
    const/16 v0, 0xa

    return v0

    .line 351
    :cond_9
    :goto_3
    const/16 v0, 0x1b

    return v0

    .line 349
    :cond_a
    :goto_4
    const/16 v0, 0x7f

    return v0
.end method

.method private parse(Ljava/io/BufferedReader;)V
    .locals 17
    .param p1, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    move-object/from16 v1, p0

    const-string v2, "mode="

    const/4 v0, 0x1

    .line 68
    .local v0, "parsing":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 69
    .end local v0    # "parsing":Z
    .local v3, "ifsStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v4, "parsing":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "line":Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 71
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 72
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x23

    if-ne v0, v8, :cond_1

    .line 76
    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    .local v0, "i":I
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x24

    const/16 v10, 0x9

    const/16 v11, 0x20

    if-ne v8, v9, :cond_14

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_3

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_3
    move v8, v0

    .line 87
    .local v8, "s":I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v10, :cond_4

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "cmd":Ljava/lang/String;
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v0, v12, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v11, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_6

    .line 92
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 94
    :cond_6
    move v8, v0

    .line 95
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v0, v12, :cond_7

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v11, :cond_7

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v10, :cond_7

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 98
    :cond_7
    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "args":Ljava/lang/String;
    const-string v11, "if"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 100
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    if-nez v4, :cond_8

    .line 102
    goto/16 :goto_0

    .line 104
    :cond_8
    const-string v11, "term="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto/16 :goto_7

    .line 106
    :cond_9
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 107
    iget-object v11, v1, Lorg/jline/builtins/InputRC;->reader:Lorg/jline/reader/LineReader;

    const-string v12, "editing-mode"

    invoke-interface {v11, v12}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 108
    .local v11, "mode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    move v4, v6

    .line 109
    .end local v11    # "mode":Ljava/lang/String;
    goto/16 :goto_7

    .line 110
    :cond_a
    iget-object v11, v1, Lorg/jline/builtins/InputRC;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v11}, Lorg/jline/reader/LineReader;->getAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    move v4, v6

    goto :goto_7

    .line 112
    :cond_b
    const-string v11, "else"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 113
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_10

    .line 116
    const/4 v11, 0x1

    .line 117
    .local v11, "invert":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 118
    .local v13, "b":Z
    if-nez v13, :cond_c

    .line 119
    const/4 v11, 0x0

    .line 120
    goto :goto_6

    .line 122
    .end local v13    # "b":Z
    :cond_c
    goto :goto_5

    .line 123
    :cond_d
    :goto_6
    if-eqz v11, :cond_f

    .line 124
    if-nez v4, :cond_e

    move v6, v7

    :cond_e
    move v4, v6

    .line 126
    .end local v11    # "invert":Z
    :cond_f
    goto :goto_7

    .line 114
    :cond_10
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "$else found without matching $if"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "ifsStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v4    # "parsing":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local p1    # "br":Ljava/io/BufferedReader;
    throw v11

    .line 126
    .restart local v3    # "ifsStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4    # "parsing":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local p1    # "br":Ljava/io/BufferedReader;
    :cond_11
    const-string v11, "endif"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 127
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_12

    .line 130
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-interface {v3, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v4, v6

    goto :goto_7

    .line 128
    :cond_12
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "endif found without matching $if"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "ifsStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v4    # "parsing":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local p1    # "br":Ljava/io/BufferedReader;
    throw v11

    .line 131
    .restart local v3    # "ifsStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4    # "parsing":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local p1    # "br":Ljava/io/BufferedReader;
    :cond_13
    const-string v11, "include"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 134
    :goto_7
    goto/16 :goto_0

    .line 136
    .end local v8    # "s":I
    .end local v9    # "cmd":Ljava/lang/String;
    .end local v10    # "args":Ljava/lang/String;
    :cond_14
    if-nez v4, :cond_15

    .line 137
    goto/16 :goto_0

    .line 139
    :cond_15
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "i":I
    .local v8, "i":I
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x5c

    const/16 v12, 0x22

    if-ne v0, v12, :cond_1a

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "esc":Z
    :goto_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_19

    .line 145
    if-eqz v0, :cond_16

    .line 146
    const/4 v0, 0x0

    goto :goto_9

    .line 147
    :cond_16
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v9, :cond_17

    .line 148
    const/4 v0, 0x1

    goto :goto_9

    .line 149
    :cond_17
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v12, :cond_18

    .line 150
    goto :goto_a

    .line 141
    :cond_18
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 143
    :cond_19
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing closing quote on line \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "ifsStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v4    # "parsing":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local p1    # "br":Ljava/io/BufferedReader;
    throw v9

    .line 154
    .end local v0    # "esc":Z
    .restart local v3    # "ifsStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4    # "parsing":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local p1    # "br":Ljava/io/BufferedReader;
    :cond_1a
    :goto_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v13, 0x3a

    if-ge v8, v0, :cond_1b

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v13, :cond_1b

    .line 155
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_1b

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_1b

    .line 156
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 158
    :cond_1b
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "keySeq":Ljava/lang/String;
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_1c

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_1c

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3d

    if-ne v13, v14, :cond_1c

    move v13, v7

    goto :goto_b

    :cond_1c
    move v13, v6

    .line 160
    .local v13, "equivalency":Z
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 161
    if-eqz v13, :cond_1d

    .line 162
    add-int/lit8 v8, v8, 0x1

    .line 164
    :cond_1d
    const-string v14, "set"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 167
    :goto_c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_1f

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_1e

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_1f

    .line 168
    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 170
    :cond_1f
    move v9, v8

    .line 171
    .local v9, "s":I
    :goto_d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v8, v12, :cond_20

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v11, :cond_20

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v10, :cond_20

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 174
    :cond_20
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 175
    .local v12, "key":Ljava/lang/String;
    :goto_e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_22

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v11, :cond_21

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v10, :cond_22

    .line 176
    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 178
    :cond_22
    move v9, v8

    .line 179
    :goto_f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_23

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v11, :cond_23

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v10, :cond_23

    .line 180
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 182
    :cond_23
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "val":Ljava/lang/String;
    iget-object v11, v1, Lorg/jline/builtins/InputRC;->reader:Lorg/jline/reader/LineReader;

    invoke-static {v11, v12, v10}, Lorg/jline/builtins/InputRC;->setVar(Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v9    # "s":I
    .end local v10    # "val":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    goto/16 :goto_17

    .line 185
    :cond_24
    :goto_10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_26

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v11, :cond_25

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v10, :cond_26

    .line 186
    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 188
    :cond_26
    move v14, v8

    .line 189
    .local v14, "start":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v7, 0x27

    if-ge v8, v15, :cond_2c

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v7, :cond_27

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v12, :cond_2c

    .line 190
    :cond_27
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "i":I
    .local v15, "i":I
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 191
    .local v8, "delim":C
    const/16 v16, 0x0

    .line 193
    .local v16, "esc":Z
    :goto_11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v15, v7, :cond_28

    .line 194
    goto :goto_12

    .line 196
    :cond_28
    if-eqz v16, :cond_29

    .line 197
    const/4 v7, 0x0

    move/from16 v16, v7

    .end local v16    # "esc":Z
    .local v7, "esc":Z
    goto :goto_13

    .line 198
    .end local v7    # "esc":Z
    .restart local v16    # "esc":Z
    :cond_29
    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_2a

    .line 199
    const/4 v7, 0x1

    move/from16 v16, v7

    .end local v16    # "esc":Z
    .restart local v7    # "esc":Z
    goto :goto_13

    .line 200
    .end local v7    # "esc":Z
    .restart local v16    # "esc":Z
    :cond_2a
    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_2b

    .line 201
    nop

    .line 205
    .end local v8    # "delim":C
    .end local v16    # "esc":Z
    :goto_12
    move v8, v15

    goto :goto_14

    .line 192
    .restart local v8    # "delim":C
    .restart local v16    # "esc":Z
    :cond_2b
    :goto_13
    add-int/lit8 v15, v15, 0x1

    const/16 v7, 0x27

    goto :goto_11

    .line 205
    .end local v15    # "i":I
    .end local v16    # "esc":Z
    .local v8, "i":I
    :cond_2c
    :goto_14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v8, v7, :cond_2d

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v11, :cond_2d

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_2d

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 206
    :cond_2d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "val":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_2e

    .line 208
    invoke-static {v0}, Lorg/jline/builtins/InputRC;->translateQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_16

    .line 211
    :cond_2e
    const/16 v9, 0x2d

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-lez v10, :cond_2f

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_15

    :cond_2f
    move-object v9, v0

    .line 212
    .local v9, "keyName":Ljava/lang/String;
    :goto_15
    invoke-static {v9}, Lorg/jline/builtins/InputRC;->getKeyFromName(Ljava/lang/String;)C

    move-result v10

    .line 213
    .local v10, "key":C
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 214
    const-string v11, ""

    move-object v0, v11

    .line 215
    const-string v11, "meta-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_30

    const-string v11, "m-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 216
    :cond_30
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "\u001b"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 218
    :cond_31
    const-string v11, "control-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_32

    const-string v11, "c-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_32

    const-string v11, "ctrl-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 219
    :cond_32
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    and-int/lit8 v11, v11, 0x1f

    int-to-char v10, v11

    .line 221
    :cond_33
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 223
    .end local v9    # "keyName":Ljava/lang/String;
    .end local v10    # "key":C
    :goto_16
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_35

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-eq v9, v10, :cond_34

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_35

    .line 224
    :cond_34
    iget-object v9, v1, Lorg/jline/builtins/InputRC;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v9}, Lorg/jline/reader/LineReader;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v9

    new-instance v10, Lorg/jline/reader/Macro;

    invoke-static {v7}, Lorg/jline/builtins/InputRC;->translateQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/jline/reader/Macro;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 226
    :cond_35
    iget-object v9, v1, Lorg/jline/builtins/InputRC;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v9}, Lorg/jline/reader/LineReader;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v9

    new-instance v10, Lorg/jline/reader/Reference;

    invoke-direct {v10, v7}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_17

    .line 229
    .end local v0    # "keySeq":Ljava/lang/String;
    .end local v7    # "val":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v13    # "equivalency":Z
    .end local v14    # "start":I
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Unable to parse user configuration: "

    aput-object v8, v7, v6

    const/4 v6, 0x1

    aput-object v0, v7, v6

    invoke-static {v7}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 231
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_17
    goto/16 :goto_0

    .line 233
    :cond_36
    return-void
.end method

.method private static setVar(Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 366
    const-string v0, "keymap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {p0, p2}, Lorg/jline/reader/LineReader;->setKeyMap(Ljava/lang/String;)Z

    .line 368
    return-void

    .line 371
    :cond_0
    invoke-static {}, Lorg/jline/reader/LineReader$Option;->values()[Lorg/jline/reader/LineReader$Option;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 372
    .local v3, "option":Lorg/jline/reader/LineReader$Option;
    invoke-virtual {v3}, Lorg/jline/reader/LineReader$Option;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    const/16 v6, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 373
    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-interface {p0, v3}, Lorg/jline/reader/LineReader;->setOpt(Lorg/jline/reader/LineReader$Option;)V

    goto :goto_1

    .line 375
    :cond_1
    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    invoke-interface {p0, v3}, Lorg/jline/reader/LineReader;->unsetOpt(Lorg/jline/reader/LineReader$Option;)V

    .line 378
    :cond_2
    :goto_1
    return-void

    .line 371
    .end local v3    # "option":Lorg/jline/reader/LineReader$Option;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_4
    invoke-interface {p0, p1, p2}, Lorg/jline/reader/LineReader;->setVariable(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method private static translateQuoted(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "keySeq"    # Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 241
    .local v4, "c":C
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_14

    .line 242
    const-string v5, "\\C-"

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v0, v3, v5, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    const/4 v8, 0x6

    if-nez v5, :cond_1

    const-string v5, "\\M-\\C-"

    invoke-virtual {v0, v3, v5, v6, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v6

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v1

    .line 243
    .local v5, "ctrl":Z
    :goto_2
    const-string v9, "\\M-"

    invoke-virtual {v0, v3, v9, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "\\C-\\M-"

    invoke-virtual {v0, v3, v9, v6, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    move v8, v6

    goto :goto_4

    :cond_3
    :goto_3
    move v8, v1

    .line 244
    .local v8, "meta":Z
    :goto_4
    if-eqz v8, :cond_4

    move v9, v7

    goto :goto_5

    :cond_4
    move v9, v6

    :goto_5
    if-eqz v5, :cond_5

    move v10, v7

    goto :goto_6

    :cond_5
    move v10, v6

    :goto_6
    add-int/2addr v9, v10

    if-nez v8, :cond_6

    if-nez v5, :cond_6

    move v6, v1

    :cond_6
    add-int/2addr v9, v6

    add-int/2addr v3, v9

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_7

    .line 246
    goto/16 :goto_f

    .line 248
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 249
    if-eqz v8, :cond_8

    .line 250
    const-string v6, "\u001b"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_8
    if-eqz v5, :cond_a

    .line 253
    const/16 v6, 0x3f

    if-ne v4, v6, :cond_9

    const/16 v6, 0x7f

    goto :goto_7

    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    and-int/lit8 v6, v6, 0x1f

    int-to-char v6, v6

    :goto_7
    move v4, v6

    .line 255
    :cond_a
    if-nez v8, :cond_13

    if-nez v5, :cond_13

    .line 256
    const/16 v6, 0x10

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_d

    .line 309
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 310
    const/4 v4, 0x0

    .line 311
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    const/4 v9, 0x2

    if-ge v7, v9, :cond_d

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_b

    .line 313
    goto :goto_9

    .line 315
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    .line 316
    .local v9, "k":I
    if-gez v9, :cond_c

    .line 317
    goto :goto_9

    .line 319
    :cond_c
    mul-int/lit8 v10, v4, 0x10

    add-int/2addr v10, v9

    int-to-char v4, v10

    .line 311
    .end local v9    # "k":I
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 321
    .end local v7    # "j":I
    :cond_d
    :goto_9
    and-int/lit16 v6, v4, 0xff

    int-to-char v4, v6

    .line 322
    goto/16 :goto_d

    .line 282
    :sswitch_1
    const/16 v4, 0xb

    .line 283
    goto/16 :goto_d

    .line 324
    :sswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 325
    const/4 v4, 0x0

    .line 326
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_a
    const/4 v9, 0x4

    if-ge v7, v9, :cond_13

    .line 327
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_e

    .line 328
    goto :goto_d

    .line 330
    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    .line 331
    .restart local v9    # "k":I
    if-gez v9, :cond_f

    .line 332
    goto :goto_d

    .line 334
    :cond_f
    mul-int/lit8 v10, v4, 0x10

    add-int/2addr v10, v9

    int-to-char v4, v10

    .line 326
    .end local v9    # "k":I
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 279
    .end local v7    # "j":I
    :sswitch_3
    const/16 v4, 0x9

    .line 280
    goto :goto_d

    .line 276
    :sswitch_4
    const/16 v4, 0xd

    .line 277
    goto :goto_d

    .line 273
    :sswitch_5
    const/16 v4, 0xa

    .line 274
    goto :goto_d

    .line 270
    :sswitch_6
    const/16 v4, 0xc

    .line 271
    goto :goto_d

    .line 267
    :sswitch_7
    const/16 v4, 0x1b

    .line 268
    goto :goto_d

    .line 264
    :sswitch_8
    const/16 v4, 0x7f

    .line 265
    goto :goto_d

    .line 261
    :sswitch_9
    const/16 v4, 0x8

    .line 262
    goto :goto_d

    .line 258
    :sswitch_a
    const/4 v4, 0x7

    .line 259
    goto :goto_d

    .line 285
    :sswitch_b
    const/16 v4, 0x5c

    .line 286
    goto :goto_d

    .line 295
    :sswitch_c
    const/4 v4, 0x0

    .line 296
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_b
    if-ge v6, v7, :cond_12

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_10

    .line 298
    goto :goto_c

    .line 300
    :cond_10
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    .line 301
    .restart local v9    # "k":I
    if-gez v9, :cond_11

    .line 302
    goto :goto_c

    .line 304
    :cond_11
    mul-int/lit8 v10, v4, 0x8

    add-int/2addr v10, v9

    int-to-char v4, v10

    .line 296
    .end local v9    # "k":I
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 306
    .end local v6    # "j":I
    :cond_12
    :goto_c
    and-int/lit16 v6, v4, 0xff

    int-to-char v4, v6

    .line 339
    :cond_13
    :goto_d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    .end local v5    # "ctrl":Z
    .end local v8    # "meta":Z
    goto :goto_e

    .line 341
    :cond_14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .end local v4    # "c":C
    :goto_e
    add-int/2addr v3, v1

    goto/16 :goto_0

    .line 344
    :cond_15
    :goto_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_c
        0x31 -> :sswitch_c
        0x32 -> :sswitch_c
        0x33 -> :sswitch_c
        0x34 -> :sswitch_c
        0x35 -> :sswitch_c
        0x36 -> :sswitch_c
        0x37 -> :sswitch_c
        0x5c -> :sswitch_b
        0x61 -> :sswitch_a
        0x62 -> :sswitch_9
        0x64 -> :sswitch_8
        0x65 -> :sswitch_7
        0x66 -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
