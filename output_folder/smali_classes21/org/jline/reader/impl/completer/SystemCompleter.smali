.class public Lorg/jline/reader/impl/completer/SystemCompleter;
.super Ljava/lang/Object;
.source "SystemCompleter.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private aliasCommand:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private commands:Lorg/jline/reader/impl/completer/StringsCompleter;

.field private compiled:Z

.field private completers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->aliasCommand:Ljava/util/Map;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->compiled:Z

    .line 30
    return-void
.end method

.method private command(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "out":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    move-object v0, p1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->aliasCommand:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->aliasCommand:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 74
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getAliases()Ljava/util/Map;
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

    .line 123
    iget-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->aliasCommand:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p2, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/Completer;

    .line 79
    .local v1, "c":Lorg/jline/reader/Completer;
    invoke-virtual {p0, p1, v1}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Ljava/lang/String;Lorg/jline/reader/Completer;)V

    .line 80
    .end local v1    # "c":Lorg/jline/reader/Completer;
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/String;Lorg/jline/reader/Completer;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "completer"    # Lorg/jline/reader/Completer;

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-boolean v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->compiled:Z

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    instance-of v0, p2, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    if-eqz v0, :cond_1

    .line 98
    move-object v0, p2

    check-cast v0, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/completer/ArgumentCompleter;->setStrictCommand(Z)V

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public add(Ljava/util/List;Lorg/jline/reader/Completer;)V
    .locals 2
    .param p2, "completer"    # Lorg/jline/reader/Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jline/reader/Completer;",
            ")V"
        }
    .end annotation

    .line 84
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Ljava/lang/String;Lorg/jline/reader/Completer;)V

    .line 86
    .end local v1    # "c":Ljava/lang/String;
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public add(Lorg/jline/reader/impl/completer/SystemCompleter;)V
    .locals 5
    .param p1, "other"    # Lorg/jline/reader/impl/completer/SystemCompleter;

    .line 104
    invoke-virtual {p1}, Lorg/jline/reader/impl/completer/SystemCompleter;->isCompiled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    invoke-virtual {p1}, Lorg/jline/reader/impl/completer/SystemCompleter;->getCompleters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Completer;

    .line 109
    .local v3, "c":Lorg/jline/reader/Completer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Ljava/lang/String;Lorg/jline/reader/Completer;)V

    .line 110
    .end local v3    # "c":Lorg/jline/reader/Completer;
    goto :goto_1

    .line 111
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p1}, Lorg/jline/reader/impl/completer/SystemCompleter;->getAliases()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/completer/SystemCompleter;->addAliases(Ljava/util/Map;)V

    .line 113
    return-void

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public addAliases(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "aliasCommand":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->compiled:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->aliasCommand:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 120
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public compile()V
    .locals 6

    .line 127
    iget-boolean v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->compiled:Z

    if-eqz v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "compiledCompleters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    iget-object v1, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 133
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lorg/jline/reader/impl/completer/AggregateCompleter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Lorg/jline/reader/impl/completer/AggregateCompleter;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    :goto_1
    goto :goto_0

    .line 139
    :cond_2
    iput-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    .line 140
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v1, "cmds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->aliasCommand:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 142
    new-instance v2, Lorg/jline/reader/impl/completer/StringsCompleter;

    invoke-direct {v2, v1}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/lang/Iterable;)V

    iput-object v2, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->commands:Lorg/jline/reader/impl/completer/StringsCompleter;

    .line 143
    iput-boolean v3, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->compiled:Z

    .line 144
    return-void
.end method

.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 19
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "commandLine"    # Lorg/jline/reader/ParsedLine;
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

    .line 34
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-boolean v4, v0, Lorg/jline/reader/impl/completer/SystemCompleter;->compiled:Z

    if-eqz v4, :cond_6

    .line 37
    if-eqz v2, :cond_5

    .line 38
    if-eqz v3, :cond_4

    .line 39
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 40
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 41
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 42
    .local v4, "buffer":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 43
    .local v5, "eq":I
    if-gez v5, :cond_0

    .line 44
    iget-object v6, v0, Lorg/jline/reader/impl/completer/SystemCompleter;->commands:Lorg/jline/reader/impl/completer/StringsCompleter;

    invoke-virtual {v6, v1, v2, v3}, Lorg/jline/reader/impl/completer/StringsCompleter;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    goto :goto_1

    .line 45
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v7

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/jline/reader/Parser;->validVariableName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 46
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "curBuf":Ljava/lang/String;
    iget-object v7, v0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 48
    .local v8, "c":Ljava/lang/String;
    new-instance v15, Lorg/jline/reader/Candidate;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/AttributedString;->stripAnsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v9, v15

    move-object v11, v8

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v9, v18

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v8    # "c":Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v4    # "buffer":Ljava/lang/String;
    .end local v5    # "eq":I
    .end local v6    # "curBuf":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_2

    .line 53
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "cmd":Ljava/lang/String;
    invoke-direct {v0, v4}, Lorg/jline/reader/impl/completer/SystemCompleter;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 55
    iget-object v5, v0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    invoke-direct {v0, v4}, Lorg/jline/reader/impl/completer/SystemCompleter;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/reader/Completer;

    invoke-interface {v5, v1, v2, v3}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 59
    .end local v4    # "cmd":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 38
    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 37
    :cond_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 35
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method public getCompleters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->completers:Ljava/util/Map;

    return-object v0
.end method

.method public isCompiled()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/jline/reader/impl/completer/SystemCompleter;->compiled:Z

    return v0
.end method
