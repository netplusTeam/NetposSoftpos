.class public Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;
.super Lorg/jline/terminal/impl/AbstractWindowsTerminal;
.source "JnaWinSysTerminal.java"


# static fields
.field private static final consoleIn:Lcom/sun/jna/Pointer;

.field private static final consoleOut:Lcom/sun/jna/Pointer;


# instance fields
.field private final eventsRead:Lcom/sun/jna/ptr/IntByReference;

.field private focus:[C

.field private final inputEvents:[Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;

.field private mouse:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    const/16 v1, -0xa

    invoke-interface {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetStdHandle(I)Lcom/sun/jna/Pointer;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleIn:Lcom/sun/jna/Pointer;

    .line 29
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    const/16 v1, -0xb

    invoke-interface {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetStdHandle(I)Lcom/sun/jna/Pointer;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    return-void
.end method

.method constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .param p5, "codepage"    # I
    .param p6, "nativeSignals"    # Z
    .param p7, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct/range {p0 .. p7}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)V

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->focus:[C

    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->mouse:[C

    .line 203
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->inputEvents:[Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;

    .line 204
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->eventsRead:Lcom/sun/jna/ptr/IntByReference;

    .line 102
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->strings:Ljava/util/Map;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_mouse:Lorg/jline/utils/InfoCmp$Capability;

    const-string v2, "\\E[M"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void

    nop

    :array_0
    .array-data 2
        0x1bs
        0x5bs
        0x20s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1bs
        0x5bs
        0x4ds
        0x20s
        0x20s
        0x20s
    .end array-data
.end method

.method public static createTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ansiPassThrough"    # Z
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .param p4, "codepage"    # I
    .param p5, "nativeSignals"    # Z
    .param p6, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .param p7, "paused"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    if-eqz p2, :cond_2

    .line 34
    if-nez p1, :cond_1

    .line 35
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_CONEMU:Z

    if-eqz v0, :cond_0

    const-string v0, "windows-conemu"

    goto :goto_0

    :cond_0
    const-string v0, "windows"

    .end local p1    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 34
    .end local v0    # "type":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 37
    .end local p1    # "type":Ljava/lang/String;
    .restart local v0    # "type":Ljava/lang/String;
    :goto_1
    new-instance v1, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-direct {v1, v2}, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;-><init>(Lcom/sun/jna/Pointer;)V

    .local v1, "writer":Ljava/io/Writer;
    goto/16 :goto_6

    .line 39
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    move-object v1, v0

    .line 40
    .local v1, "mode":Lcom/sun/jna/ptr/IntByReference;
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-interface {v0, v2, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleMode(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)V

    .line 42
    :try_start_0
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-interface {v0, v2, v3}, Lorg/jline/terminal/impl/jna/win/Kernel32;->SetConsoleMode(Lcom/sun/jna/Pointer;I)V

    .line 43
    if-nez p1, :cond_3

    .line 44
    const-string v0, "windows-vtp"
    :try_end_0
    .catch Lcom/sun/jna/LastErrorException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .end local p1    # "type":Ljava/lang/String;
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_2

    .line 43
    .end local v0    # "type":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_3
    move-object v3, p1

    .line 46
    .end local p1    # "type":Ljava/lang/String;
    .local v3, "type":Ljava/lang/String;
    :goto_2
    :try_start_1
    new-instance v0, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;

    invoke-direct {v0, v2}, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;-><init>(Lcom/sun/jna/Pointer;)V
    :try_end_1
    .catch Lcom/sun/jna/LastErrorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .local v0, "writer":Ljava/io/Writer;
    move-object v1, v0

    move-object v0, v3

    goto :goto_6

    .line 47
    .end local v0    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v3    # "type":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v3, p1

    .line 48
    .end local p1    # "type":Ljava/lang/String;
    .local v0, "e":Lcom/sun/jna/LastErrorException;
    .restart local v3    # "type":Ljava/lang/String;
    :goto_3
    sget-boolean v2, Lorg/jline/utils/OSUtils;->IS_CONEMU:Z

    if-eqz v2, :cond_5

    .line 49
    if-nez v3, :cond_4

    .line 50
    const-string v2, "windows-conemu"

    .end local v3    # "type":Ljava/lang/String;
    .local v2, "type":Ljava/lang/String;
    goto :goto_4

    .line 49
    .end local v2    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .line 52
    .end local v3    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :goto_4
    new-instance v3, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;

    sget-object v4, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-direct {v3, v4}, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;-><init>(Lcom/sun/jna/Pointer;)V

    move-object v0, v2

    move-object v1, v3

    .local v3, "writer":Ljava/io/Writer;
    goto :goto_6

    .line 54
    .end local v2    # "type":Ljava/lang/String;
    .local v3, "type":Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    .line 55
    const-string v2, "windows"

    .end local v3    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_5

    .line 54
    .end local v2    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_6
    move-object v2, v3

    .line 57
    .end local v3    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :goto_5
    new-instance v3, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;

    sget-object v6, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-direct {v5, v6}, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;-><init>(Lcom/sun/jna/Pointer;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v3, v4, v6}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;-><init>(Ljava/io/Writer;Lcom/sun/jna/Pointer;)V

    move-object v0, v2

    move-object v1, v3

    .line 61
    .end local v2    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    .local v1, "writer":Ljava/io/Writer;
    :goto_6
    new-instance v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;

    move-object v4, v2

    move-object v5, v1

    move-object v6, p0

    move-object v7, v0

    move-object v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)V

    .line 63
    .local v2, "terminal":Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;
    if-nez p7, :cond_7

    .line 64
    invoke-virtual {v2}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->resume()V

    .line 66
    :cond_7
    return-object v2
.end method

.method public static isConsoleInput()Z
    .locals 3

    .line 92
    :try_start_0
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 93
    .local v0, "mode":Lcom/sun/jna/ptr/IntByReference;
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleIn:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleMode(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)V
    :try_end_0
    .catch Lcom/sun/jna/LastErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v1, 0x1

    return v1

    .line 95
    .end local v0    # "mode":Lcom/sun/jna/ptr/IntByReference;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lcom/sun/jna/LastErrorException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isConsoleOutput()Z
    .locals 3

    .line 82
    :try_start_0
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 83
    .local v0, "mode":Lcom/sun/jna/ptr/IntByReference;
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleMode(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)V
    :try_end_0
    .catch Lcom/sun/jna/LastErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v1, 0x1

    return v1

    .line 85
    .end local v0    # "mode":Lcom/sun/jna/ptr/IntByReference;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lcom/sun/jna/LastErrorException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isWindowsConsole()Z
    .locals 3

    .line 71
    :try_start_0
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 72
    .local v0, "mode":Lcom/sun/jna/ptr/IntByReference;
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleMode(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)V

    .line 73
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleIn:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleMode(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)V
    :try_end_0
    .catch Lcom/sun/jna/LastErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v1, 0x1

    return v1

    .line 75
    .end local v0    # "mode":Lcom/sun/jna/ptr/IntByReference;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/sun/jna/LastErrorException;
    const/4 v1, 0x0

    return v1
.end method

.method private processFocusEvent(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->focusTracking:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->focus:[C

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/16 v2, 0x49

    goto :goto_0

    :cond_0
    const/16 v2, 0x4f

    :goto_0
    aput-char v2, v0, v1

    .line 163
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->slaveInputPipe:Ljava/io/Writer;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->focus:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    .line 165
    :cond_1
    return-void
.end method

.method private processKeyEvent(Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;)V
    .locals 4
    .param p1, "keyEvent"    # Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-boolean v0, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;->bKeyDown:Z

    iget-short v1, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;->wVirtualKeyCode:S

    iget-object v2, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;->uChar:Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;

    iget-char v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->UnicodeChar:C

    iget v3, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;->dwControlKeyState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->processKeyEvent(ZSCI)V

    .line 156
    return-void
.end method

.method private processMouseEvent(Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;)V
    .locals 10
    .param p1, "mouseEvent"    # Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget v0, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;->dwEventFlags:I

    .line 171
    .local v0, "dwEventFlags":I
    iget v1, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;->dwButtonState:I

    .line 172
    .local v1, "dwButtonState":I
    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    sget-object v3, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    sget-object v3, Lorg/jline/terminal/Terminal$MouseTracking;->Normal:Lorg/jline/terminal/Terminal$MouseTracking;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    if-eq v0, v4, :cond_8

    :cond_0
    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    sget-object v3, Lorg/jline/terminal/Terminal$MouseTracking;->Button:Lorg/jline/terminal/Terminal$MouseTracking;

    if-ne v2, v3, :cond_1

    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    const/4 v2, 0x0

    .line 178
    .local v2, "cb":I
    and-int/lit8 v0, v0, -0x3

    .line 179
    const/4 v3, 0x3

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    .line 180
    or-int/lit8 v2, v2, 0x40

    .line 181
    shr-int/lit8 v6, v1, 0x10

    if-gez v6, :cond_7

    .line 182
    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_2
    const/16 v6, 0x8

    if-ne v0, v6, :cond_3

    .line 185
    return-void

    .line 186
    :cond_3
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_4

    .line 187
    or-int/lit8 v2, v2, 0x0

    goto :goto_0

    .line 188
    :cond_4
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_5

    .line 189
    or-int/2addr v2, v4

    goto :goto_0

    .line 190
    :cond_5
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_6

    .line 191
    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 193
    :cond_6
    or-int/2addr v2, v3

    .line 195
    :cond_7
    :goto_0
    iget-object v6, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;->dwMousePosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v6, v6, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 196
    .local v6, "cx":I
    iget-object v7, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;->dwMousePosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v7, v7, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 197
    .local v7, "cy":I
    iget-object v8, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->mouse:[C

    add-int/lit8 v9, v2, 0x20

    int-to-char v9, v9

    aput-char v9, v8, v3

    .line 198
    add-int/lit8 v3, v6, 0x20

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v8, v5

    .line 199
    const/4 v3, 0x5

    add-int/lit8 v5, v7, 0x20

    add-int/2addr v5, v4

    int-to-char v4, v5

    aput-char v4, v8, v3

    .line 200
    iget-object v3, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->slaveInputPipe:Ljava/io/Writer;

    iget-object v4, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->mouse:[C

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    .line 201
    return-void

    .line 175
    .end local v2    # "cb":I
    .end local v6    # "cx":I
    .end local v7    # "cy":I
    :cond_8
    :goto_1
    return-void
.end method

.method private readConsoleInput(I)Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;
    .locals 6
    .param p1, "dwMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v1, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleIn:Lcom/sun/jna/Pointer;

    invoke-interface {v0, v1, p1}, Lorg/jline/terminal/impl/jna/win/Kernel32;->WaitForSingleObject(Lcom/sun/jna/Pointer;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 208
    return-object v2

    .line 210
    :cond_0
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v3, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->inputEvents:[Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;

    iget-object v4, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->eventsRead:Lcom/sun/jna/ptr/IntByReference;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v3, v5, v4}, Lorg/jline/terminal/impl/jna/win/Kernel32;->ReadConsoleInput(Lcom/sun/jna/Pointer;[Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;ILcom/sun/jna/ptr/IntByReference;)V

    .line 211
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->eventsRead:Lcom/sun/jna/ptr/IntByReference;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 212
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->inputEvents:[Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 214
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getBufferSize()Lorg/jline/terminal/Size;
    .locals 4

    .line 124
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    .line 125
    .local v0, "info":Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleScreenBufferInfo(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)V

    .line 126
    new-instance v1, Lorg/jline/terminal/Size;

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v3, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    invoke-direct {v1, v2, v3}, Lorg/jline/terminal/Size;-><init>(II)V

    return-object v1
.end method

.method protected getConsoleMode()I
    .locals 3

    .line 107
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 108
    .local v0, "mode":Lcom/sun/jna/ptr/IntByReference;
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleIn:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleMode(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)V

    .line 109
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    return v1
.end method

.method public getCursorPosition(Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;
    .locals 4
    .param p1, "discarded"    # Ljava/util/function/IntConsumer;

    .line 220
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    .line 221
    .local v0, "info":Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleScreenBufferInfo(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)V

    .line 222
    new-instance v1, Lorg/jline/terminal/Cursor;

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v3, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    invoke-direct {v1, v2, v3}, Lorg/jline/terminal/Cursor;-><init>(II)V

    return-object v1
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 4

    .line 118
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    .line 119
    .local v0, "info":Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v2, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleOut:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleScreenBufferInfo(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)V

    .line 120
    new-instance v1, Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->windowWidth()I

    move-result v2

    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->windowHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/jline/terminal/Size;-><init>(II)V

    return-object v1
.end method

.method protected processConsoleInput()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->readConsoleInput(I)Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;

    move-result-object v0

    .line 131
    .local v0, "event":Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    return v1

    .line 135
    :cond_0
    iget-short v2, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->EventType:S

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 150
    return v1

    .line 146
    :sswitch_0
    iget-object v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;->FocusEvent:Lorg/jline/terminal/impl/jna/win/Kernel32$FOCUS_EVENT_RECORD;

    iget-boolean v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$FOCUS_EVENT_RECORD;->bSetFocus:Z

    invoke-direct {p0, v1}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->processFocusEvent(Z)V

    .line 147
    return v3

    .line 140
    :sswitch_1
    sget-object v2, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 141
    return v1

    .line 143
    :sswitch_2
    iget-object v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;->MouseEvent:Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;

    invoke-direct {p0, v1}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->processMouseEvent(Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;)V

    .line 144
    return v3

    .line 137
    :sswitch_3
    iget-object v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;->KeyEvent:Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;

    invoke-direct {p0, v1}, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->processKeyEvent(Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;)V

    .line 138
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setConsoleMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 114
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v1, Lorg/jline/terminal/impl/jna/win/JnaWinSysTerminal;->consoleIn:Lcom/sun/jna/Pointer;

    invoke-interface {v0, v1, p1}, Lorg/jline/terminal/impl/jna/win/Kernel32;->SetConsoleMode(Lcom/sun/jna/Pointer;I)V

    .line 115
    return-void
.end method
