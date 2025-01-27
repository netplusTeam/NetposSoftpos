.class public abstract Lorg/jline/terminal/impl/AbstractPosixTerminal;
.super Lorg/jline/terminal/impl/AbstractTerminal;
.source "AbstractPosixTerminal.java"


# instance fields
.field protected final originalAttributes:Lorg/jline/terminal/Attributes;

.field protected final pty:Lorg/jline/terminal/spi/Pty;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pty"    # Lorg/jline/terminal/spi/Pty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    sget-object v5, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/AbstractPosixTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pty"    # Lorg/jline/terminal/spi/Pty;
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .param p5, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/jline/terminal/impl/AbstractTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 33
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->pty:Lorg/jline/terminal/spi/Pty;

    .line 35
    invoke-interface {p3}, Lorg/jline/terminal/spi/Pty;->getAttr()Lorg/jline/terminal/Attributes;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->originalAttributes:Lorg/jline/terminal/Attributes;

    .line 36
    return-void
.end method


# virtual methods
.method protected doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-super {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->doClose()V

    .line 76
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->pty:Lorg/jline/terminal/spi/Pty;

    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->originalAttributes:Lorg/jline/terminal/Attributes;

    invoke-interface {v0, v1}, Lorg/jline/terminal/spi/Pty;->setAttr(Lorg/jline/terminal/Attributes;)V

    .line 77
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->pty:Lorg/jline/terminal/spi/Pty;

    invoke-interface {v0}, Lorg/jline/terminal/spi/Pty;->close()V

    .line 78
    return-void
.end method

.method public getAttributes()Lorg/jline/terminal/Attributes;
    .locals 2

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->pty:Lorg/jline/terminal/spi/Pty;

    invoke-interface {v0}, Lorg/jline/terminal/spi/Pty;->getAttr()Lorg/jline/terminal/Attributes;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCursorPosition(Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;
    .locals 1
    .param p1, "discarded"    # Ljava/util/function/IntConsumer;

    .line 82
    invoke-static {p0, p1}, Lorg/jline/terminal/impl/CursorSupport;->getCursorPosition(Lorg/jline/terminal/Terminal;Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPty()Lorg/jline/terminal/spi/Pty;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->pty:Lorg/jline/terminal/spi/Pty;

    return-object v0
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 2

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->pty:Lorg/jline/terminal/spi/Pty;

    invoke-interface {v0}, Lorg/jline/terminal/spi/Pty;->getSize()Lorg/jline/terminal/Size;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAttributes(Lorg/jline/terminal/Attributes;)V
    .locals 2
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->pty:Lorg/jline/terminal/spi/Pty;

    invoke-interface {v0, p1}, Lorg/jline/terminal/spi/Pty;->setAttr(Lorg/jline/terminal/Attributes;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSize(Lorg/jline/terminal/Size;)V
    .locals 2
    .param p1, "size"    # Lorg/jline/terminal/Size;

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPosixTerminal;->pty:Lorg/jline/terminal/spi/Pty;

    invoke-interface {v0, p1}, Lorg/jline/terminal/spi/Pty;->setSize(Lorg/jline/terminal/Size;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
