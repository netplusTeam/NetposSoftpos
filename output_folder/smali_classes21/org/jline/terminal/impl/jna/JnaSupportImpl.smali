.class public Lorg/jline/terminal/impl/jna/JnaSupportImpl;
.super Ljava/lang/Object;
.source "JnaSupportImpl.java"

# interfaces
.implements Lorg/jline/terminal/spi/JnaSupport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public current()Lorg/jline/terminal/spi/Pty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {}, Lorg/jline/terminal/impl/jna/JnaNativePty;->current()Lorg/jline/terminal/impl/jna/JnaNativePty;

    move-result-object v0

    return-object v0
.end method

.method public isConsoleInput()Z
    .locals 1

    .line 60
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_CYGWIN:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_MSYSTEM:Z

    if-nez v0, :cond_1

    .line 62
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->isConsoleInput()Z

    move-result v0

    return v0

    .line 65
    :cond_0
    invoke-static {}, Lorg/jline/terminal/impl/jna/JnaNativePty;->isConsoleInput()Z

    move-result v0

    return v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isConsoleOutput()Z
    .locals 1

    .line 50
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_CYGWIN:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_MSYSTEM:Z

    if-nez v0, :cond_1

    .line 52
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->isConsoleOutput()Z

    move-result v0

    return v0

    .line 55
    :cond_0
    invoke-static {}, Lorg/jline/terminal/impl/jna/JnaNativePty;->isConsoleOutput()Z

    move-result v0

    return v0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isWindowsConsole()Z
    .locals 1

    .line 45
    invoke-static {}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->isWindowsConsole()Z

    move-result v0

    return v0
.end method

.method public open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/spi/Pty;
    .locals 1
    .param p1, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p2, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-static {p1, p2}, Lorg/jline/terminal/impl/jna/JnaNativePty;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jna/JnaNativePty;

    move-result-object v0

    return-object v0
.end method

.method public winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "ansiPassThrough"    # Z
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .param p5, "codepage"    # I
    .param p6, "nativeSignals"    # Z
    .param p7, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/jline/terminal/impl/jna/JnaSupportImpl;->winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/Terminal;

    move-result-object v0

    return-object v0
.end method

.method public winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/Terminal;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "ansiPassThrough"    # Z
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .param p5, "codepage"    # I
    .param p6, "nativeSignals"    # Z
    .param p7, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .param p8, "paused"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-static/range {p1 .. p8}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->createTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;

    move-result-object v0

    return-object v0
.end method
