.class public final Lorg/jline/reader/LineReaderBuilder;
.super Ljava/lang/Object;
.source "LineReaderBuilder.java"


# instance fields
.field appName:Ljava/lang/String;

.field completer:Lorg/jline/reader/Completer;

.field completionMatcher:Lorg/jline/reader/CompletionMatcher;

.field expander:Lorg/jline/reader/Expander;

.field highlighter:Lorg/jline/reader/Highlighter;

.field history:Lorg/jline/reader/History;

.field memoryHistory:Lorg/jline/reader/History;

.field options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/reader/LineReader$Option;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field parser:Lorg/jline/reader/Parser;

.field terminal:Lorg/jline/terminal/Terminal;

.field variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/LineReaderBuilder;->variables:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/LineReaderBuilder;->options:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public static builder()Lorg/jline/reader/LineReaderBuilder;
    .locals 1

    .line 26
    new-instance v0, Lorg/jline/reader/LineReaderBuilder;

    invoke-direct {v0}, Lorg/jline/reader/LineReaderBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appName(Ljava/lang/String;)Lorg/jline/reader/LineReaderBuilder;
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lorg/jline/reader/LineReaderBuilder;->appName:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public build()Lorg/jline/reader/LineReader;
    .locals 6

    .line 113
    iget-object v0, p0, Lorg/jline/reader/LineReaderBuilder;->terminal:Lorg/jline/terminal/Terminal;

    .line 114
    .local v0, "terminal":Lorg/jline/terminal/Terminal;
    if-nez v0, :cond_0

    .line 116
    :try_start_0
    invoke-static {}, Lorg/jline/terminal/TerminalBuilder;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->appName:Ljava/lang/String;

    iget-object v3, p0, Lorg/jline/reader/LineReaderBuilder;->variables:Ljava/util/Map;

    invoke-direct {v1, v0, v2, v3}, Lorg/jline/reader/impl/LineReaderImpl;-><init>(Lorg/jline/terminal/Terminal;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    .local v1, "reader":Lorg/jline/reader/impl/LineReaderImpl;
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->history:Lorg/jline/reader/History;

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->setHistory(Lorg/jline/reader/History;)V

    goto :goto_1

    .line 125
    :cond_1
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->memoryHistory:Lorg/jline/reader/History;

    if-nez v2, :cond_2

    .line 126
    new-instance v2, Lorg/jline/reader/impl/history/DefaultHistory;

    invoke-direct {v2}, Lorg/jline/reader/impl/history/DefaultHistory;-><init>()V

    iput-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->memoryHistory:Lorg/jline/reader/History;

    .line 128
    :cond_2
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->memoryHistory:Lorg/jline/reader/History;

    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->setHistory(Lorg/jline/reader/History;)V

    .line 130
    :goto_1
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->completer:Lorg/jline/reader/Completer;

    if-eqz v2, :cond_3

    .line 131
    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->setCompleter(Lorg/jline/reader/Completer;)V

    .line 133
    :cond_3
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->highlighter:Lorg/jline/reader/Highlighter;

    if-eqz v2, :cond_4

    .line 134
    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->setHighlighter(Lorg/jline/reader/Highlighter;)V

    .line 136
    :cond_4
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->parser:Lorg/jline/reader/Parser;

    if-eqz v2, :cond_5

    .line 137
    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->setParser(Lorg/jline/reader/Parser;)V

    .line 139
    :cond_5
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->expander:Lorg/jline/reader/Expander;

    if-eqz v2, :cond_6

    .line 140
    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->setExpander(Lorg/jline/reader/Expander;)V

    .line 142
    :cond_6
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    if-eqz v2, :cond_7

    .line 143
    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->setCompletionMatcher(Lorg/jline/reader/CompletionMatcher;)V

    .line 145
    :cond_7
    iget-object v2, p0, Lorg/jline/reader/LineReaderBuilder;->options:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 146
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jline/reader/LineReader$Option;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/reader/LineReader$Option;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/jline/reader/impl/LineReaderImpl;->option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;

    .line 147
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jline/reader/LineReader$Option;Ljava/lang/Boolean;>;"
    goto :goto_2

    .line 148
    :cond_8
    return-object v1
.end method

.method public completer(Lorg/jline/reader/Completer;)Lorg/jline/reader/LineReaderBuilder;
    .locals 0
    .param p1, "completer"    # Lorg/jline/reader/Completer;

    .line 77
    iput-object p1, p0, Lorg/jline/reader/LineReaderBuilder;->completer:Lorg/jline/reader/Completer;

    .line 78
    return-object p0
.end method

.method public completionMatcher(Lorg/jline/reader/CompletionMatcher;)Lorg/jline/reader/LineReaderBuilder;
    .locals 0
    .param p1, "completionMatcher"    # Lorg/jline/reader/CompletionMatcher;

    .line 108
    iput-object p1, p0, Lorg/jline/reader/LineReaderBuilder;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    .line 109
    return-object p0
.end method

.method public expander(Lorg/jline/reader/Expander;)Lorg/jline/reader/LineReaderBuilder;
    .locals 0
    .param p1, "expander"    # Lorg/jline/reader/Expander;

    .line 103
    iput-object p1, p0, Lorg/jline/reader/LineReaderBuilder;->expander:Lorg/jline/reader/Expander;

    .line 104
    return-object p0
.end method

.method public highlighter(Lorg/jline/reader/Highlighter;)Lorg/jline/reader/LineReaderBuilder;
    .locals 0
    .param p1, "highlighter"    # Lorg/jline/reader/Highlighter;

    .line 82
    iput-object p1, p0, Lorg/jline/reader/LineReaderBuilder;->highlighter:Lorg/jline/reader/Highlighter;

    .line 83
    return-object p0
.end method

.method public history(Lorg/jline/reader/History;)Lorg/jline/reader/LineReaderBuilder;
    .locals 0
    .param p1, "history"    # Lorg/jline/reader/History;

    .line 72
    iput-object p1, p0, Lorg/jline/reader/LineReaderBuilder;->history:Lorg/jline/reader/History;

    .line 73
    return-object p0
.end method

.method public option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReaderBuilder;
    .locals 2
    .param p1, "option"    # Lorg/jline/reader/LineReader$Option;
    .param p2, "value"    # Z

    .line 67
    iget-object v0, p0, Lorg/jline/reader/LineReaderBuilder;->options:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p0
.end method

.method public parser(Lorg/jline/reader/Parser;)Lorg/jline/reader/LineReaderBuilder;
    .locals 4
    .param p1, "parser"    # Lorg/jline/reader/Parser;

    .line 87
    if-eqz p1, :cond_1

    .line 89
    :try_start_0
    const-string v0, "org.jline.reader.support.parsedline"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 90
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;I)Lorg/jline/reader/ParsedLine;

    move-result-object v0

    instance-of v0, v0, Lorg/jline/reader/CompletingParsedLine;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Parser of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support the CompletingParsedLine interface. Completion with escaped or quoted words won\'t work correctly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 98
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/jline/reader/LineReaderBuilder;->parser:Lorg/jline/reader/Parser;

    .line 99
    return-object p0
.end method

.method public terminal(Lorg/jline/terminal/Terminal;)Lorg/jline/reader/LineReaderBuilder;
    .locals 0
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 45
    iput-object p1, p0, Lorg/jline/reader/LineReaderBuilder;->terminal:Lorg/jline/terminal/Terminal;

    .line 46
    return-object p0
.end method

.method public variable(Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/reader/LineReaderBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/jline/reader/LineReaderBuilder;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object p0
.end method

.method public variables(Ljava/util/Map;)Lorg/jline/reader/LineReaderBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jline/reader/LineReaderBuilder;"
        }
    .end annotation

    .line 55
    .local p1, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/jline/reader/LineReaderBuilder;->variables:Ljava/util/Map;

    .line 56
    .local v0, "old":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lorg/jline/reader/LineReaderBuilder;->variables:Ljava/util/Map;

    .line 57
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    return-object p0
.end method
