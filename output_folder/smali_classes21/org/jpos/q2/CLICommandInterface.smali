.class public Lorg/jpos/q2/CLICommandInterface;
.super Ljava/lang/Object;
.source "CLICommandInterface.java"


# instance fields
.field ctx:Lorg/jpos/q2/CLIContext;

.field prefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jpos/q2/CLIContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/CLICommandInterface;->prefixes:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    .line 40
    return-void
.end method

.method private getCommand(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 91
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lorg/jpos/q2/CLICommandInterface;->prefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public execCommand(Ljava/lang/String;)V
    .locals 13
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lorg/jpos/q2/CLICommandInterface;->parseCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "args":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 52
    .local v2, "verbatimCmd":Ljava/lang/String;
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "command":Ljava/lang/String;
    move-object v4, v3

    .line 55
    .local v4, "className":Ljava/lang/String;
    iget-object v5, p0, Lorg/jpos/q2/CLICommandInterface;->prefixes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 56
    .local v6, "prefix":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    :cond_1
    :try_start_0
    invoke-direct {p0, v4}, Lorg/jpos/q2/CLICommandInterface;->getCommand(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .local v7, "cmd":Ljava/lang/Object;
    if-eqz v7, :cond_5

    .line 63
    const/16 v8, 0x20

    :try_start_1
    invoke-static {p1, v8}, Lorg/jpos/iso/ISOUtil;->unPadLeft(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v1

    .line 64
    instance-of v8, v7, Lorg/jpos/q2/CLISubSystem;

    if-eqz v8, :cond_2

    .line 65
    move-object v8, v7

    check-cast v8, Lorg/jpos/q2/CLISubSystem;

    .line 66
    .local v8, "ss":Lorg/jpos/q2/CLISubSystem;
    iget-object v9, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v9}, Lorg/jpos/q2/CLIContext;->getCLI()Lorg/jpos/q2/CLI;

    move-result-object v9

    iget-object v10, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-interface {v8, v10, v0}, Lorg/jpos/q2/CLISubSystem;->getPrompt(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-interface {v8, v11, v0}, Lorg/jpos/q2/CLISubSystem;->getCompletionPrefixes(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/jpos/q2/CLI;->setPrompt(Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    .end local v8    # "ss":Lorg/jpos/q2/CLISubSystem;
    :cond_2
    instance-of v8, v7, Lorg/jpos/q2/CLICommand;

    if-eqz v8, :cond_3

    .line 69
    move-object v8, v7

    check-cast v8, Lorg/jpos/q2/CLICommand;

    iget-object v9, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-interface {v8, v9, v0}, Lorg/jpos/q2/CLICommand;->exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_3
    instance-of v8, v7, Lorg/jpos/q2/Command;

    if-eqz v8, :cond_4

    .line 71
    iget-object v8, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v8}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v8

    invoke-interface {v8}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v8

    .line 72
    .local v8, "t":Lorg/jline/terminal/Terminal;
    move-object v9, v7

    check-cast v9, Lorg/jpos/q2/Command;

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->input()Ljava/io/InputStream;

    move-result-object v10

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v11

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12, v0}, Lorg/jpos/q2/Command;->exec(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 74
    .end local v8    # "t":Lorg/jline/terminal/Terminal;
    :cond_4
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v8

    .line 76
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v9, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v9, v8}, Lorg/jpos/q2/CLIContext;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 81
    .end local v7    # "cmd":Ljava/lang/Object;
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v5, v1}, Lorg/jpos/q2/CLIContext;->printThrowable(Ljava/lang/Throwable;)V

    .line 83
    goto :goto_3

    .line 79
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 84
    :cond_5
    :goto_2
    nop

    .line 85
    .end local v6    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 86
    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/jpos/q2/CLICommandInterface;->ctx:Lorg/jpos/q2/CLIContext;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid command \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public getPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/jpos/q2/CLICommandInterface;->prefixes:Ljava/util/List;

    return-object v0
.end method

.method public parseCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "matchList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "[^\\s\"\']+|\"([^\"]*)\"|\'([^\']*)\'"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 101
    .local v1, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 102
    .local v2, "regexMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 105
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 108
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 115
    .local v3, "args":[Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    return-object v3
.end method
