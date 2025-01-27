.class public Lorg/jpos/q2/CLI;
.super Ljava/lang/Object;
.source "CLI.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_PROMPT:Ljava/lang/String; = "q2> "

.field private static final ESCAPED_SEMICOLON:Ljava/lang/String; = "__semicolon__"


# instance fields
.field private cmdInterface:Lorg/jpos/q2/CLICommandInterface;

.field protected ctx:Lorg/jpos/q2/CLIContext;

.field private interactive:Z

.field private keepRunning:Z

.field private line:Ljava/lang/String;

.field private mainHistory:Lorg/jline/reader/History;

.field private prompt:Ljava/lang/String;

.field private q2:Lorg/jpos/q2/Q2;

.field private reader:Lorg/jline/reader/LineReader;

.field private t:Ljava/lang/Thread;

.field private terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/Q2;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "q2"    # Lorg/jpos/q2/Q2;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "rawout"    # Ljava/io/OutputStream;
    .param p4, "line"    # Ljava/lang/String;
    .param p5, "keepRunning"    # Z
    .param p6, "interactive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/CLI;->keepRunning:Z

    .line 36
    iput-boolean v0, p0, Lorg/jpos/q2/CLI;->interactive:Z

    .line 42
    const-string v0, "q2> "

    iput-object v0, p0, Lorg/jpos/q2/CLI;->prompt:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lorg/jpos/q2/CLI;->q2:Lorg/jpos/q2/Q2;

    .line 51
    instance-of v0, p3, Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .local v0, "out":Ljava/io/PrintStream;
    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/jpos/q2/CLI;->buildCLIContext(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jpos/q2/CLIContext;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/CLI;->ctx:Lorg/jpos/q2/CLIContext;

    .line 53
    iput-object p4, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    .line 54
    iput-boolean p5, p0, Lorg/jpos/q2/CLI;->keepRunning:Z

    .line 55
    iput-boolean p6, p0, Lorg/jpos/q2/CLI;->interactive:Z

    .line 56
    new-instance v1, Lorg/jline/reader/impl/history/DefaultHistory;

    invoke-direct {v1}, Lorg/jline/reader/impl/history/DefaultHistory;-><init>()V

    iput-object v1, p0, Lorg/jpos/q2/CLI;->mainHistory:Lorg/jline/reader/History;

    .line 57
    if-eqz p6, :cond_1

    .line 58
    invoke-direct {p0, p2, v0}, Lorg/jpos/q2/CLI;->buildTerminal(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jline/terminal/Terminal;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/CLI;->terminal:Lorg/jline/terminal/Terminal;

    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->getCompletionPrefixes()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/CLI;->mainHistory:Lorg/jline/reader/History;

    invoke-direct {p0, v1, v2}, Lorg/jpos/q2/CLI;->initCmdInterface([Ljava/lang/String;Lorg/jline/reader/History;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/jpos/q2/Q2;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "q2"    # Lorg/jpos/q2/Q2;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "keepRunning"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/jpos/q2/CLI;-><init>(Lorg/jpos/q2/Q2;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;ZZ)V

    .line 47
    return-void
.end method

.method private buildCLIContext(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jpos/q2/CLIContext;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 221
    invoke-static {}, Lorg/jpos/q2/CLIContext;->builder()Lorg/jpos/q2/CLIContext$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p0}, Lorg/jpos/q2/CLIContext$Builder;->cli(Lorg/jpos/q2/CLI;)Lorg/jpos/q2/CLIContext$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p1}, Lorg/jpos/q2/CLIContext$Builder;->in(Ljava/io/InputStream;)Lorg/jpos/q2/CLIContext$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p2}, Lorg/jpos/q2/CLIContext$Builder;->out(Ljava/io/OutputStream;)Lorg/jpos/q2/CLIContext$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lorg/jpos/q2/CLIContext$Builder;->build()Lorg/jpos/q2/CLIContext;

    move-result-object v0

    .line 221
    return-object v0
.end method

.method private buildReader(Lorg/jline/terminal/Terminal;[Ljava/lang/String;Lorg/jline/reader/History;)Lorg/jline/reader/LineReader;
    .locals 3
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "completionPrefixes"    # [Ljava/lang/String;
    .param p3, "history"    # Lorg/jline/reader/History;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {}, Lorg/jline/reader/LineReaderBuilder;->builder()Lorg/jline/reader/LineReaderBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Lorg/jline/reader/LineReaderBuilder;->terminal(Lorg/jline/terminal/Terminal;)Lorg/jline/reader/LineReaderBuilder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p3}, Lorg/jline/reader/LineReaderBuilder;->history(Lorg/jline/reader/History;)Lorg/jline/reader/LineReaderBuilder;

    move-result-object v0

    new-instance v1, Lorg/jpos/q2/CLIPrefixedClassNameCompleter;

    .line 213
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/q2/CLIPrefixedClassNameCompleter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lorg/jline/reader/LineReaderBuilder;->completer(Lorg/jline/reader/Completer;)Lorg/jline/reader/LineReaderBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lorg/jline/reader/LineReaderBuilder;->build()Lorg/jline/reader/LineReader;

    move-result-object v0

    .line 215
    .local v0, "reader":Lorg/jline/reader/LineReader;
    sget-object v1, Lorg/jline/reader/LineReader$Option;->INSERT_TAB:Lorg/jline/reader/LineReader$Option;

    invoke-interface {v0, v1}, Lorg/jline/reader/LineReader;->unsetOpt(Lorg/jline/reader/LineReader$Option;)V

    .line 216
    sget-object v1, Lorg/jline/reader/LineReader$Option;->DISABLE_EVENT_EXPANSION:Lorg/jline/reader/LineReader$Option;

    invoke-interface {v0, v1}, Lorg/jline/reader/LineReader;->setOpt(Lorg/jline/reader/LineReader$Option;)V

    .line 217
    return-object v0
.end method

.method private buildTerminal(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jline/terminal/Terminal;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-static {}, Lorg/jline/terminal/TerminalBuilder;->builder()Lorg/jline/terminal/TerminalBuilder;

    move-result-object v0

    .line 199
    .local v0, "builder":Lorg/jline/terminal/TerminalBuilder;
    invoke-virtual {v0, p1, p2}, Lorg/jline/terminal/TerminalBuilder;->streams(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/jline/terminal/TerminalBuilder;->system(Z)Lorg/jline/terminal/TerminalBuilder;

    .line 200
    invoke-virtual {v0}, Lorg/jline/terminal/TerminalBuilder;->build()Lorg/jline/terminal/Terminal;

    move-result-object v1

    .line 201
    .local v1, "t":Lorg/jline/terminal/Terminal;
    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v2

    .line 202
    .local v2, "attr":Lorg/jline/terminal/Attributes;
    invoke-virtual {v2}, Lorg/jline/terminal/Attributes;->getOutputFlags()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    sget-object v5, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 203
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 202
    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 205
    invoke-interface {v1, v2}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 206
    return-object v1
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lorg/jpos/q2/CLI;->exec(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static exec(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    new-instance v7, Lorg/jpos/q2/CLI;

    invoke-static {}, Lorg/jpos/q2/Q2;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/jpos/q2/CLI;-><init>(Lorg/jpos/q2/Q2;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;ZZ)V

    .line 187
    .local v0, "cli":Lorg/jpos/q2/CLI;
    invoke-virtual {v0}, Lorg/jpos/q2/CLI;->start()V

    .line 188
    invoke-virtual {v0}, Lorg/jpos/q2/CLI;->stop()V

    .line 189
    return-void
.end method

.method private initCmdInterface([Ljava/lang/String;Lorg/jline/reader/History;)V
    .locals 4
    .param p1, "completionPrefixes"    # [Ljava/lang/String;
    .param p2, "history"    # Lorg/jline/reader/History;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->getCompletionPrefixes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    .line 84
    new-instance v0, Lorg/jpos/q2/CLICommandInterface;

    iget-object v1, p0, Lorg/jpos/q2/CLI;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-direct {v0, v1}, Lorg/jpos/q2/CLICommandInterface;-><init>(Lorg/jpos/q2/CLIContext;)V

    iput-object v0, p0, Lorg/jpos/q2/CLI;->cmdInterface:Lorg/jpos/q2/CLICommandInterface;

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 86
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/q2/CLI;->cmdInterface:Lorg/jpos/q2/CLICommandInterface;

    invoke-virtual {v3, v2}, Lorg/jpos/q2/CLICommandInterface;->addPrefix(Ljava/lang/String;)V

    .line 85
    .end local v2    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/jpos/q2/CLI;->cmdInterface:Lorg/jpos/q2/CLICommandInterface;

    const-string v1, "org.jpos.q2.cli.builtin."

    invoke-virtual {v0, v1}, Lorg/jpos/q2/CLICommandInterface;->addPrefix(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/jpos/q2/CLI;->terminal:Lorg/jline/terminal/Terminal;

    if-eqz v0, :cond_2

    .line 90
    invoke-direct {p0, v0, p1, p2}, Lorg/jpos/q2/CLI;->buildReader(Lorg/jline/terminal/Terminal;[Ljava/lang/String;Lorg/jline/reader/History;)Lorg/jline/reader/LineReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/CLI;->reader:Lorg/jline/reader/LineReader;

    .line 91
    iget-object v1, p0, Lorg/jpos/q2/CLI;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->setReader(Lorg/jline/reader/LineReader;)V

    .line 93
    :cond_2
    return-void
.end method


# virtual methods
.method protected getCompletionPrefixes()[Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "org.jpos.q2.cli."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQ2()Lorg/jpos/q2/Q2;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/jpos/q2/CLI;->q2:Lorg/jpos/q2/Q2;

    return-object v0
.end method

.method public getReader()Lorg/jline/reader/LineReader;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/jpos/q2/CLI;->reader:Lorg/jline/reader/LineReader;

    return-object v0
.end method

.method protected handleExit()V
    .locals 0

    .line 75
    return-void
.end method

.method public isInteractive()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lorg/jpos/q2/CLI;->interactive:Z

    return v0
.end method

.method protected markStarted()V
    .locals 0

    .line 69
    return-void
.end method

.method protected markStopped()V
    .locals 0

    .line 67
    return-void
.end method

.method public run()V
    .locals 12

    .line 111
    const-string v0, ":"

    const-string v1, ";"

    const-string v2, "__semicolon__"

    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->running()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v3

    .line 114
    .local v3, "reader":Lorg/jline/reader/LineReader;
    iget-object v4, p0, Lorg/jpos/q2/CLI;->prompt:Ljava/lang/String;

    .line 115
    .local v4, "p":Ljava/lang/String;
    iget-object v5, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 117
    :goto_1
    invoke-interface {v3, v4}, Lorg/jline/reader/LineReader;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .local v7, "s":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 118
    const-string v5, "\\"

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 120
    .end local v7    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    const-string v7, ""

    move-object v4, v7

    .line 121
    iget-object v7, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    if-nez v7, :cond_0

    move-object v7, v5

    goto :goto_2

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    iput-object v7, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    .line 122
    goto :goto_1

    .line 124
    .end local v5    # "s":Ljava/lang/String;
    .restart local v7    # "s":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    if-nez v5, :cond_2

    move-object v5, v7

    goto :goto_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    .line 128
    .end local v7    # "s":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 129
    const-string v7, "\\;"

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    .line 130
    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v7, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;

    invoke-direct {v5, v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v5, "st":Ljava/util/StringTokenizer;
    const/4 v7, 0x0

    .line 132
    .local v7, "exit":Z
    :goto_4
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 133
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/jline/reader/UserInterruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jline/reader/EndOfFileException; {:try_start_0 .. :try_end_0} :catch_2

    .line 135
    .local v8, "n":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lorg/jpos/q2/CLI;->cmdInterface:Lorg/jpos/q2/CLICommandInterface;

    invoke-virtual {v9, v8}, Lorg/jpos/q2/CLICommandInterface;->parseCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "args":[Ljava/lang/String;
    array-length v10, v9

    if-lez v10, :cond_4

    aget-object v10, v9, v6

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 137
    aget-object v10, v9, v6

    aget-object v11, v9, v6

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, "prefixCommand":Ljava/lang/String;
    iget-object v11, p0, Lorg/jpos/q2/CLI;->cmdInterface:Lorg/jpos/q2/CLICommandInterface;

    invoke-virtual {v11, v10}, Lorg/jpos/q2/CLICommandInterface;->execCommand(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 140
    const/4 v7, 0x1

    .line 142
    .end local v10    # "prefixCommand":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lorg/jpos/q2/CLI;->cmdInterface:Lorg/jpos/q2/CLICommandInterface;

    invoke-virtual {v10, v8}, Lorg/jpos/q2/CLICommandInterface;->execCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jline/reader/UserInterruptException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jline/reader/EndOfFileException; {:try_start_1 .. :try_end_1} :catch_2

    .line 145
    .end local v9    # "args":[Ljava/lang/String;
    goto :goto_5

    .line 143
    :catch_0
    move-exception v9

    .line 144
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v10, p0, Lorg/jpos/q2/CLI;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v10, v9}, Lorg/jpos/q2/CLIContext;->printThrowable(Ljava/lang/Throwable;)V

    .line 146
    .end local v8    # "n":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    :goto_5
    goto :goto_4

    .line 147
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/jpos/q2/CLI;->line:Ljava/lang/String;
    :try_end_2
    .catch Lorg/jline/reader/UserInterruptException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/jline/reader/EndOfFileException; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    if-eqz v7, :cond_6

    .line 150
    :try_start_3
    iget-object v6, p0, Lorg/jpos/q2/CLI;->cmdInterface:Lorg/jpos/q2/CLICommandInterface;

    const-string v8, "exit"

    invoke-virtual {v6, v8}, Lorg/jpos/q2/CLICommandInterface;->execCommand(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/jline/reader/UserInterruptException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/jline/reader/EndOfFileException; {:try_start_3 .. :try_end_3} :catch_2

    .line 153
    goto :goto_6

    .line 151
    :catch_1
    move-exception v6

    .line 152
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v8, p0, Lorg/jpos/q2/CLI;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v8, v6}, Lorg/jpos/q2/CLIContext;->printThrowable(Ljava/lang/Throwable;)V

    .line 156
    .end local v5    # "st":Ljava/util/StringTokenizer;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "exit":Z
    :cond_6
    :goto_6
    iget-boolean v5, p0, Lorg/jpos/q2/CLI;->keepRunning:Z
    :try_end_4
    .catch Lorg/jline/reader/UserInterruptException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/jline/reader/EndOfFileException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v5, :cond_7

    .line 157
    goto :goto_7

    .line 162
    .end local v3    # "reader":Lorg/jline/reader/LineReader;
    .end local v4    # "p":Ljava/lang/String;
    :cond_7
    goto/16 :goto_0

    .line 160
    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 165
    :cond_8
    :goto_7
    :try_start_5
    iget-boolean v0, p0, Lorg/jpos/q2/CLI;->keepRunning:Z

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 169
    :cond_9
    goto :goto_8

    .line 167
    :catch_4
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jpos/q2/CLI;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->printThrowable(Ljava/lang/Throwable;)V

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->handleExit()V

    .line 171
    return-void
.end method

.method protected running()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->running()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method setPrompt(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "completionPrefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "q2> "

    :goto_0
    iput-object v0, p0, Lorg/jpos/q2/CLI;->prompt:Ljava/lang/String;

    .line 79
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/jpos/q2/CLI;->mainHistory:Lorg/jline/reader/History;

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/jline/reader/impl/history/DefaultHistory;

    invoke-direct {v0}, Lorg/jline/reader/impl/history/DefaultHistory;-><init>()V

    :goto_1
    invoke-direct {p0, p2, v0}, Lorg/jpos/q2/CLI;->initCmdInterface([Ljava/lang/String;Lorg/jline/reader/History;)V

    .line 80
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->markStarted()V

    .line 97
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jpos/q2/CLI;->t:Ljava/lang/Thread;

    .line 98
    const-string v1, "Q2-CLI"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/jpos/q2/CLI;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method

.method public stop()V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/jpos/q2/CLI;->markStopped()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/CLI;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 108
    return-void
.end method
