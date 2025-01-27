.class Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;
.super Ljava/lang/Object;
.source "TerminalBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/TerminalBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TerminalBuilderSupport"
.end annotation


# instance fields
.field private consoleOutput:Z

.field private jansiSupport:Lorg/jline/terminal/spi/JansiSupport;

.field private jnaSupport:Lorg/jline/terminal/spi/JnaSupport;

.field private pty:Lorg/jline/terminal/spi/Pty;


# direct methods
.method constructor <init>(ZZ)V
    .locals 7
    .param p1, "jna"    # Z
    .param p2, "jansi"    # Z

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jansiSupport:Lorg/jline/terminal/spi/JansiSupport;

    .line 532
    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jnaSupport:Lorg/jline/terminal/spi/JnaSupport;

    .line 533
    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->pty:Lorg/jline/terminal/spi/Pty;

    .line 537
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 539
    :try_start_0
    const-class v4, Lorg/jline/terminal/spi/JnaSupport;

    invoke-static {v4}, Lorg/jline/terminal/TerminalBuilder;->access$000(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/terminal/spi/JnaSupport;

    iput-object v4, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jnaSupport:Lorg/jline/terminal/spi/JnaSupport;

    .line 540
    invoke-interface {v4}, Lorg/jline/terminal/spi/JnaSupport;->isConsoleOutput()Z

    move-result v4

    iput-boolean v4, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->consoleOutput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    goto :goto_0

    .line 541
    :catchall_0
    move-exception v4

    .line 542
    .local v4, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jnaSupport:Lorg/jline/terminal/spi/JnaSupport;

    .line 543
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "jnaSupport.isConsoleOutput(): "

    aput-object v6, v5, v1

    aput-object v4, v5, v3

    invoke-static {v5}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 546
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 548
    :try_start_1
    const-class v4, Lorg/jline/terminal/spi/JansiSupport;

    invoke-static {v4}, Lorg/jline/terminal/TerminalBuilder;->access$000(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/terminal/spi/JansiSupport;

    iput-object v4, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jansiSupport:Lorg/jline/terminal/spi/JansiSupport;

    .line 549
    invoke-interface {v4}, Lorg/jline/terminal/spi/JansiSupport;->isConsoleOutput()Z

    move-result v4

    iput-boolean v4, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->consoleOutput:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 553
    goto :goto_1

    .line 550
    :catchall_1
    move-exception v4

    .line 551
    .restart local v4    # "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jansiSupport:Lorg/jline/terminal/spi/JansiSupport;

    .line 552
    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "jansiSupport.isConsoleOutput(): "

    aput-object v5, v0, v1

    aput-object v4, v0, v3

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 555
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jnaSupport:Lorg/jline/terminal/spi/JnaSupport;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jansiSupport:Lorg/jline/terminal/spi/JansiSupport;

    if-nez v0, :cond_2

    .line 557
    :try_start_2
    invoke-static {}, Lorg/jline/terminal/impl/ExecPty;->current()Lorg/jline/terminal/spi/Pty;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->pty:Lorg/jline/terminal/spi/Pty;

    .line 558
    iput-boolean v3, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->consoleOutput:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 561
    goto :goto_2

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "ExecPty.current(): "

    aput-object v4, v2, v1

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public getExecPty()Lorg/jline/terminal/spi/Pty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->pty:Lorg/jline/terminal/spi/Pty;

    if-nez v0, :cond_0

    .line 599
    invoke-static {}, Lorg/jline/terminal/impl/ExecPty;->current()Lorg/jline/terminal/spi/Pty;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->pty:Lorg/jline/terminal/spi/Pty;

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->pty:Lorg/jline/terminal/spi/Pty;

    return-object v0
.end method

.method public getJansiSupport()Lorg/jline/terminal/spi/JansiSupport;
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jansiSupport:Lorg/jline/terminal/spi/JansiSupport;

    return-object v0
.end method

.method public getJnaSupport()Lorg/jline/terminal/spi/JnaSupport;
    .locals 1

    .line 590
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jnaSupport:Lorg/jline/terminal/spi/JnaSupport;

    return-object v0
.end method

.method public hasJansiSupport()Z
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jansiSupport:Lorg/jline/terminal/spi/JansiSupport;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJnaSupport()Z
    .locals 1

    .line 582
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jnaSupport:Lorg/jline/terminal/spi/JnaSupport;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConsoleInput()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->pty:Lorg/jline/terminal/spi/Pty;

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x1

    return v0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->hasJnaSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jnaSupport:Lorg/jline/terminal/spi/JnaSupport;

    invoke-interface {v0}, Lorg/jline/terminal/spi/JnaSupport;->isConsoleInput()Z

    move-result v0

    return v0

    .line 574
    :cond_1
    invoke-virtual {p0}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->hasJansiSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->jansiSupport:Lorg/jline/terminal/spi/JansiSupport;

    invoke-interface {v0}, Lorg/jline/terminal/spi/JansiSupport;->isConsoleInput()Z

    move-result v0

    return v0

    .line 577
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isConsoleOutput()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->consoleOutput:Z

    return v0
.end method
