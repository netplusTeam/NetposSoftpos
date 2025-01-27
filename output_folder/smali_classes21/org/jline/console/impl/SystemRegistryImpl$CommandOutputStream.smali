.class Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;
.super Ljava/lang/Object;
.source "SystemRegistryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/SystemRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandOutputStream"
.end annotation


# instance fields
.field private commandSession:Lorg/jline/console/CommandRegistry$CommandSession;

.field private final origErr:Ljava/io/PrintStream;

.field private final origOut:Ljava/io/PrintStream;

.field private final origTerminal:Lorg/jline/terminal/Terminal;

.field private output:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field private redirecting:Z

.field private terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method public constructor <init>(Lorg/jline/terminal/Terminal;)V
    .locals 3
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->redirecting:Z

    .line 439
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->origOut:Ljava/io/PrintStream;

    .line 440
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->origErr:Ljava/io/PrintStream;

    .line 441
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->origTerminal:Lorg/jline/terminal/Terminal;

    .line 442
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->terminal:Lorg/jline/terminal/Terminal;

    .line 443
    new-instance v0, Ljava/io/PrintStream;

    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 444
    .local v0, "ps":Ljava/io/PrintStream;
    new-instance v1, Lorg/jline/console/CommandRegistry$CommandSession;

    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->input()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0, v0}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->commandSession:Lorg/jline/console/CommandRegistry$CommandSession;

    .line 445
    return-void
.end method

.method private reset()V
    .locals 4

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 514
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->origOut:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 515
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->origErr:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 516
    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->terminal:Lorg/jline/terminal/Terminal;

    .line 517
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->origTerminal:Lorg/jline/terminal/Terminal;

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->terminal:Lorg/jline/terminal/Terminal;

    .line 518
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 519
    .local v0, "ps":Ljava/io/PrintStream;
    new-instance v1, Lorg/jline/console/CommandRegistry$CommandSession;

    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->input()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, v0}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->commandSession:Lorg/jline/console/CommandRegistry$CommandSession;

    .line 520
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->redirecting:Z

    .line 521
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 493
    iget-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->redirecting:Z

    if-nez v0, :cond_0

    .line 494
    return-void

    .line 497
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->flush()V

    .line 498
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->output:Ljava/lang/String;

    .line 501
    :cond_1
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 505
    :goto_0
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->reset()V

    .line 506
    return-void
.end method

.method public getCommandSession()Lorg/jline/console/CommandRegistry$CommandSession;
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->commandSession:Lorg/jline/console/CommandRegistry$CommandSession;

    return-object v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->output:Ljava/lang/String;

    return-object v0
.end method

.method public isByteOutputStream()Z
    .locals 1

    .line 536
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    return v0
.end method

.method public isRedirecting()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->redirecting:Z

    return v0
.end method

.method public open()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->redirecting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->output:Ljava/lang/String;

    .line 468
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 469
    .local v0, "out":Ljava/io/PrintStream;
    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 470
    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x58

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "input":Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 473
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Lorg/jline/terminal/Attributes;

    invoke-direct {v3}, Lorg/jline/terminal/Attributes;-><init>()V

    .line 474
    .local v3, "attrs":Lorg/jline/terminal/Attributes;
    sget-boolean v4, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 475
    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v3, v4, v5}, Lorg/jline/terminal/Attributes;->setInputFlag(Lorg/jline/terminal/Attributes$InputFlag;Z)V

    .line 478
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/jline/terminal/TerminalBuilder;->builder()Lorg/jline/terminal/TerminalBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 479
    invoke-virtual {v4, v2, v6}, Lorg/jline/terminal/TerminalBuilder;->streams(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v4

    .line 480
    invoke-virtual {v4, v3}, Lorg/jline/terminal/TerminalBuilder;->attributes(Lorg/jline/terminal/Attributes;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v4

    .line 481
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/jline/terminal/TerminalBuilder;->jna(Z)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v4

    .line 482
    invoke-virtual {v4, v6}, Lorg/jline/terminal/TerminalBuilder;->jansi(Z)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v4

    const-string v6, "dumb"

    .line 483
    invoke-virtual {v4, v6}, Lorg/jline/terminal/TerminalBuilder;->type(Ljava/lang/String;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/terminal/TerminalBuilder;->build()Lorg/jline/terminal/Terminal;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->terminal:Lorg/jline/terminal/Terminal;

    .line 484
    new-instance v6, Lorg/jline/console/CommandRegistry$CommandSession;

    invoke-interface {v4}, Lorg/jline/terminal/Terminal;->input()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v4, v7, v0, v0}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    iput-object v6, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->commandSession:Lorg/jline/console/CommandRegistry$CommandSession;

    .line 485
    iput-boolean v5, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->redirecting:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    nop

    .line 490
    return-void

    .line 486
    :catch_0
    move-exception v4

    .line 487
    .local v4, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->reset()V

    .line 488
    throw v4

    .line 465
    .end local v0    # "out":Ljava/io/PrintStream;
    .end local v1    # "input":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "attrs":Lorg/jline/terminal/Attributes;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    return-void
.end method

.method public redirect()V
    .locals 1

    .line 448
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 449
    return-void
.end method

.method public redirect(Ljava/io/File;Z)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 457
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 460
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 461
    return-void
.end method

.method public resetOutput()V
    .locals 1

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandOutputStream;->output:Ljava/lang/String;

    .line 510
    return-void
.end method
