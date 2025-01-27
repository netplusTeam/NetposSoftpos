.class public Lorg/jpos/q2/cli/TMMON;
.super Ljava/lang/Object;
.source "TMMON.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;
.implements Lorg/jpos/transaction/TransactionStatusListener;


# instance fields
.field ansi:Z

.field cli:Lorg/jpos/q2/CLIContext;

.field p:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showTMs(Lorg/jpos/q2/CLIContext;)V
    .locals 7
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;

    .line 80
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getInstance()Lorg/jpos/util/NameRegistrar;

    move-result-object v0

    .line 81
    .local v0, "nr":Lorg/jpos/util/NameRegistrar;
    const/4 v1, 0x0

    .line 82
    .local v1, "maxw":I
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getAsMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    .local v2, "iter":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "available transaction managers:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 86
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 87
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/jpos/transaction/TransactionManager;

    if-eqz v6, :cond_0

    .line 88
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 4
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jpos/q2/cli/TMMON;->p:Ljava/io/PrintStream;

    .line 40
    iput-object p1, p0, Lorg/jpos/q2/cli/TMMON;->cli:Lorg/jpos/q2/CLIContext;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/cli/TMMON;->ansi:Z

    .line 42
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jpos/q2/cli/TMMON;->usage(Lorg/jpos/q2/CLIContext;)V

    .line 44
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 48
    :try_start_0
    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jpos/transaction/TransactionManager;

    if-eqz v2, :cond_1

    .line 50
    move-object v2, v1

    check-cast v2, Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v2, p0}, Lorg/jpos/transaction/TransactionManager;->addListener(Lorg/jpos/transaction/TransactionStatusListener;)V

    goto :goto_1

    .line 52
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not an instance of TransactionManager ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransactionManager \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not found -- ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 46
    .end local v1    # "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->readLine()Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 64
    :try_start_1
    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jpos/transaction/TransactionManager;

    if-eqz v2, :cond_3

    .line 66
    move-object v2, v1

    check-cast v2, Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v2, p0}, Lorg/jpos/transaction/TransactionManager;->removeListener(Lorg/jpos/transaction/TransactionStatusListener;)V
    :try_end_1
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_3
    goto :goto_4

    .line 68
    :catch_1
    move-exception v1

    .line 62
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 72
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public update(Lorg/jpos/transaction/TransactionStatusEvent;)V
    .locals 2
    .param p1, "e"    # Lorg/jpos/transaction/TransactionStatusEvent;

    .line 96
    iget-object v0, p0, Lorg/jpos/q2/cli/TMMON;->cli:Lorg/jpos/q2/CLIContext;

    invoke-virtual {p1}, Lorg/jpos/transaction/TransactionStatusEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public usage(Lorg/jpos/q2/CLIContext;)V
    .locals 1
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;

    .line 75
    const-string v0, "Usage: tmmon [tm-name] [tm-name] ..."

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Lorg/jpos/q2/cli/TMMON;->showTMs(Lorg/jpos/q2/CLIContext;)V

    .line 77
    return-void
.end method
