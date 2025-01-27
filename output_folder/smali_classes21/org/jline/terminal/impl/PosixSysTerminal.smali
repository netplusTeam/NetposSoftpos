.class public Lorg/jline/terminal/impl/PosixSysTerminal;
.super Lorg/jline/terminal/impl/AbstractPosixTerminal;
.source "PosixSysTerminal.java"


# instance fields
.field protected final closer:Lorg/jline/utils/ShutdownHooks$Task;

.field protected final input:Lorg/jline/utils/NonBlockingInputStream;

.field protected final nativeHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/terminal/Terminal$Signal;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final output:Ljava/io/OutputStream;

.field protected final reader:Lorg/jline/utils/NonBlockingReader;

.field protected final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;ZLorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pty"    # Lorg/jline/terminal/spi/Pty;
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .param p5, "nativeSignals"    # Z
    .param p6, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/AbstractPosixTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->nativeHandlers:Ljava/util/Map;

    .line 40
    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixSysTerminal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/jline/terminal/spi/Pty;->getSlaveInput()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jline/utils/NonBlocking;->nonBlocking(Ljava/lang/String;Ljava/io/InputStream;)Lorg/jline/utils/NonBlockingInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    .line 41
    invoke-interface {p3}, Lorg/jline/terminal/spi/Pty;->getSlaveOutput()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->output:Ljava/io/OutputStream;

    .line 42
    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixSysTerminal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixSysTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/jline/utils/NonBlocking;->nonBlocking(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/jline/utils/NonBlockingReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    .line 43
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixSysTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->writer:Ljava/io/PrintWriter;

    .line 44
    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixSysTerminal;->parseInfoCmp()V

    .line 45
    if-eqz p5, :cond_1

    .line 46
    invoke-static {}, Lorg/jline/terminal/Terminal$Signal;->values()[Lorg/jline/terminal/Terminal$Signal;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 47
    .local v3, "signal":Lorg/jline/terminal/Terminal$Signal;
    sget-object v4, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    if-ne p6, v4, :cond_0

    .line 48
    iget-object v4, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->nativeHandlers:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jline/utils/Signals;->registerDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 50
    :cond_0
    iget-object v4, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->nativeHandlers:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3}, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda0;-><init>(Lorg/jline/terminal/impl/PosixSysTerminal;Lorg/jline/terminal/Terminal$Signal;)V

    invoke-static {v5, v6}, Lorg/jline/utils/Signals;->register(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v3    # "signal":Lorg/jline/terminal/Terminal$Signal;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda1;-><init>(Lorg/jline/terminal/impl/PosixSysTerminal;)V

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->closer:Lorg/jline/utils/ShutdownHooks$Task;

    .line 55
    invoke-static {v0}, Lorg/jline/utils/ShutdownHooks;->add(Lorg/jline/utils/ShutdownHooks$Task;)Lorg/jline/utils/ShutdownHooks$Task;

    .line 56
    return-void
.end method


# virtual methods
.method protected doClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->closer:Lorg/jline/utils/ShutdownHooks$Task;

    invoke-static {v0}, Lorg/jline/utils/ShutdownHooks;->remove(Lorg/jline/utils/ShutdownHooks$Task;)V

    .line 92
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->nativeHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 93
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jline/terminal/Terminal$Signal;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v2}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jline/utils/Signals;->unregister(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jline/terminal/Terminal$Signal;Ljava/lang/Object;>;"
    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0}, Lorg/jline/terminal/impl/AbstractPosixTerminal;->doClose()V

    .line 97
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingReader;->shutdown()V

    .line 98
    return-void
.end method

.method public handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;
    .locals 3
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;
    .param p2, "handler"    # Lorg/jline/terminal/Terminal$SignalHandler;

    .line 60
    invoke-super {p0, p1, p2}, Lorg/jline/terminal/impl/AbstractPosixTerminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v0

    .line 61
    .local v0, "prev":Lorg/jline/terminal/Terminal$SignalHandler;
    if-eq v0, p2, :cond_1

    .line 62
    sget-object v1, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    if-ne p2, v1, :cond_0

    .line 63
    invoke-virtual {p1}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/utils/Signals;->registerDefault(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda2;-><init>(Lorg/jline/terminal/impl/PosixSysTerminal;Lorg/jline/terminal/Terminal$Signal;)V

    invoke-static {v1, v2}, Lorg/jline/utils/Signals;->register(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 68
    :cond_1
    :goto_0
    return-object v0
.end method

.method public input()Ljava/io/InputStream;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    return-object v0
.end method

.method synthetic lambda$handle$1$org-jline-terminal-impl-PosixSysTerminal(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 65
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/PosixSysTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method

.method synthetic lambda$new$0$org-jline-terminal-impl-PosixSysTerminal(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 50
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/PosixSysTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method

.method public output()Ljava/io/OutputStream;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public reader()Lorg/jline/utils/NonBlockingReader;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    return-object v0
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method
