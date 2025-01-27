.class public Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;
.super Lorg/jline/terminal/impl/AbstractWindowsTerminal;
.source "JansiWinSysTerminal.java"


# static fields
.field private static final consoleIn:J

.field private static final consoleOut:J


# instance fields
.field private focus:[C

.field private mouse:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_OUTPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    sput-wide v0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->consoleOut:J

    .line 42
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_INPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    sput-wide v0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->consoleIn:J

    return-void
.end method

.method constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 1
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

    .line 100
    invoke-direct/range {p0 .. p7}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)V

    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->focus:[C

    .line 172
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->mouse:[C

    .line 101
    return-void

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

.method public static createTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;
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

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 47
    .local v0, "mode":[I
    const-string v1, "Failed to get console mode: "

    if-eqz p2, :cond_2

    .line 48
    if-nez p1, :cond_1

    .line 49
    sget-boolean v2, Lorg/jline/utils/OSUtils;->IS_CONEMU:Z

    if-eqz v2, :cond_0

    const-string v2, "windows-conemu"

    goto :goto_0

    :cond_0
    const-string v2, "windows"

    .end local p1    # "type":Ljava/lang/String;
    .local v2, "type":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 48
    .end local v2    # "type":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 51
    .end local p1    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :goto_1
    new-instance v3, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;

    invoke-direct {v3}, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;-><init>()V

    .local v3, "writer":Ljava/io/Writer;
    goto :goto_5

    .line 53
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_2
    sget-wide v2, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->consoleOut:J

    invoke-static {v2, v3, v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleMode(J[I)I

    move-result v4

    if-eqz v4, :cond_a

    .line 56
    const/4 v4, 0x0

    aget v4, v0, v4

    or-int/lit8 v4, v4, 0x4

    invoke-static {v2, v3, v4}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleMode(JI)I

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    if-nez p1, :cond_3

    .line 58
    const-string v2, "windows-vtp"

    .end local p1    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_2

    .line 57
    .end local v2    # "type":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_3
    move-object v2, p1

    .line 60
    .end local p1    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :goto_2
    new-instance v3, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;

    invoke-direct {v3}, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;-><init>()V

    .restart local v3    # "writer":Ljava/io/Writer;
    goto :goto_5

    .line 61
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_4
    sget-boolean v2, Lorg/jline/utils/OSUtils;->IS_CONEMU:Z

    if-eqz v2, :cond_6

    .line 62
    if-nez p1, :cond_5

    .line 63
    const-string v2, "windows-conemu"

    .end local p1    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_3

    .line 62
    .end local v2    # "type":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_5
    move-object v2, p1

    .line 65
    .end local p1    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :goto_3
    new-instance v3, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;

    invoke-direct {v3}, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;-><init>()V

    .restart local v3    # "writer":Ljava/io/Writer;
    goto :goto_5

    .line 67
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_6
    if-nez p1, :cond_7

    .line 68
    const-string v2, "windows"

    .end local p1    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_4

    .line 67
    .end local v2    # "type":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_7
    move-object v2, p1

    .line 70
    .end local p1    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :goto_4
    new-instance v3, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;

    invoke-direct {v5}, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;-><init>()V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v3, v4}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;-><init>(Ljava/io/Writer;)V

    .line 73
    .restart local v3    # "writer":Ljava/io/Writer;
    :goto_5
    sget-wide v4, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->consoleIn:J

    invoke-static {v4, v5, v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleMode(J[I)I

    move-result v4

    if-eqz v4, :cond_9

    .line 76
    new-instance v1, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;

    move-object v4, v1

    move-object v5, v3

    move-object v6, p0

    move-object v7, v2

    move-object v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)V

    .line 78
    .local v1, "terminal":Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;
    if-nez p7, :cond_8

    .line 79
    invoke-virtual {v1}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->resume()V

    .line 81
    :cond_8
    return-object v1

    .line 74
    .end local v1    # "terminal":Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;
    :cond_9
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local p1    # "type":Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getErrorMessage(I)Ljava/lang/String;
    .locals 10
    .param p0, "errorCode"    # I

    .line 231
    const/16 v8, 0xa0

    .line 232
    .local v8, "bufferSize":I
    new-array v9, v8, [B

    .line 233
    .local v9, "data":[B
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->FORMAT_MESSAGE_FROM_SYSTEM:I

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v3, p0

    move-object v5, v9

    move v6, v8

    invoke-static/range {v0 .. v7}, Lorg/fusesource/jansi/internal/Kernel32;->FormatMessageW(IJII[BI[J)I

    .line 234
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, v9, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLastErrorMessage()Ljava/lang/String;
    .locals 2

    .line 226
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32;->GetLastError()I

    move-result v0

    .line 227
    .local v0, "errorCode":I
    invoke-static {v0}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isConsoleInput()Z
    .locals 4

    .line 95
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 96
    .local v1, "mode":[I
    sget-wide v2, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->consoleIn:J

    invoke-static {v2, v3, v1}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleMode(J[I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isConsoleOutput()Z
    .locals 4

    .line 90
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 91
    .local v1, "mode":[I
    sget-wide v2, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->consoleOut:J

    invoke-static {v2, v3, v1}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleMode(J[I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWindowsConsole()Z
    .locals 4

    .line 85
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 86
    .local v1, "mode":[I
    sget-wide v2, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->consoleOut:J

    invoke-static {v2, v3, v1}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleMode(J[I)I

    move-result v2

    if-eqz v2, :cond_0

    sget-wide v2, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->consoleIn:J

    invoke-static {v2, v3, v1}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleMode(J[I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processFocusEvent(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->focusTracking:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->focus:[C

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/16 v2, 0x49

    goto :goto_0

    :cond_0
    const/16 v2, 0x4f

    :goto_0
    aput-char v2, v0, v1

    .line 168
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->slaveInputPipe:Ljava/io/Writer;

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->focus:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    .line 170
    :cond_1
    return-void
.end method

.method private processMouseEvent(Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;)V
    .locals 8
    .param p1, "mouseEvent"    # Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget v0, p1, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->eventFlags:I

    .line 176
    .local v0, "dwEventFlags":I
    iget v1, p1, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->buttonState:I

    .line 177
    .local v1, "dwButtonState":I
    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    sget-object v3, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    sget-object v3, Lorg/jline/terminal/Terminal$MouseTracking;->Normal:Lorg/jline/terminal/Terminal$MouseTracking;

    if-ne v2, v3, :cond_0

    sget v2, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->MOUSE_MOVED:I

    if-eq v0, v2, :cond_8

    :cond_0
    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    sget-object v3, Lorg/jline/terminal/Terminal$MouseTracking;->Button:Lorg/jline/terminal/Terminal$MouseTracking;

    if-ne v2, v3, :cond_1

    sget v2, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->MOUSE_MOVED:I

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    .line 182
    :cond_1
    const/4 v2, 0x0

    .line 183
    .local v2, "cb":I
    sget v3, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->DOUBLE_CLICK:I

    not-int v3, v3

    and-int/2addr v0, v3

    .line 184
    sget v3, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->MOUSE_WHEELED:I

    const/4 v4, 0x3

    if-ne v0, v3, :cond_2

    .line 185
    or-int/lit8 v2, v2, 0x40

    .line 186
    shr-int/lit8 v3, v1, 0x10

    if-gez v3, :cond_7

    .line 187
    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_2
    sget v3, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->MOUSE_HWHEELED:I

    if-ne v0, v3, :cond_3

    .line 190
    return-void

    .line 191
    :cond_3
    sget v3, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->FROM_LEFT_1ST_BUTTON_PRESSED:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 192
    or-int/lit8 v2, v2, 0x0

    goto :goto_0

    .line 193
    :cond_4
    sget v3, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->RIGHTMOST_BUTTON_PRESSED:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_5

    .line 194
    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_5
    sget v3, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->FROM_LEFT_2ND_BUTTON_PRESSED:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_6

    .line 196
    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 198
    :cond_6
    or-int/2addr v2, v4

    .line 200
    :cond_7
    :goto_0
    iget-object v3, p1, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->mousePosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 201
    .local v3, "cx":I
    iget-object v5, p1, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->mousePosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v5, v5, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 202
    .local v5, "cy":I
    iget-object v6, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->mouse:[C

    add-int/lit8 v7, v2, 0x20

    int-to-char v7, v7

    aput-char v7, v6, v4

    .line 203
    const/4 v4, 0x4

    add-int/lit8 v7, v3, 0x20

    add-int/lit8 v7, v7, 0x1

    int-to-char v7, v7

    aput-char v7, v6, v4

    .line 204
    const/4 v4, 0x5

    add-int/lit8 v7, v5, 0x20

    add-int/lit8 v7, v7, 0x1

    int-to-char v7, v7

    aput-char v7, v6, v4

    .line 205
    iget-object v4, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->slaveInputPipe:Ljava/io/Writer;

    iget-object v6, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->mouse:[C

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write([C)V

    .line 206
    return-void

    .line 180
    .end local v2    # "cb":I
    .end local v3    # "cx":I
    .end local v5    # "cy":I
    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public disableScrolling()V
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->strings:Ljava/util/Map;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->insert_line:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->strings:Ljava/util/Map;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->parm_insert_line:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->strings:Ljava/util/Map;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->delete_line:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->strings:Ljava/util/Map;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->parm_delete_line:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public getBufferSize()Lorg/jline/terminal/Size;
    .locals 6

    .line 128
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_OUTPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    .line 129
    .local v0, "outputHandle":J
    new-instance v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v2}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    .line 130
    .local v2, "info":Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleScreenBufferInfo(JLorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)I

    .line 131
    new-instance v3, Lorg/jline/terminal/Size;

    iget-object v4, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v4, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iget-object v5, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v5, v5, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    invoke-direct {v3, v4, v5}, Lorg/jline/terminal/Size;-><init>(II)V

    return-object v3
.end method

.method protected getConsoleMode()I
    .locals 4

    .line 105
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_INPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    .line 106
    .local v0, "console":J
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 107
    .local v2, "mode":[I
    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleMode(J[I)I

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const/4 v3, -0x1

    return v3

    .line 110
    :cond_0
    const/4 v3, 0x0

    aget v3, v2, v3

    return v3
.end method

.method public getCursorPosition(Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;
    .locals 7
    .param p1, "discarded"    # Ljava/util/function/IntConsumer;

    .line 210
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    .line 211
    .local v0, "info":Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
    sget v1, Lorg/fusesource/jansi/internal/Kernel32;->STD_OUTPUT_HANDLE:I

    invoke-static {v1}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v1

    .line 212
    .local v1, "console":J
    invoke-static {v1, v2, v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleScreenBufferInfo(JLorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    new-instance v3, Lorg/jline/terminal/Cursor;

    iget-object v4, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v4, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iget-object v5, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v5, v5, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    invoke-direct {v3, v4, v5}, Lorg/jline/terminal/Cursor;-><init>(II)V

    return-object v3

    .line 213
    :cond_0
    new-instance v3, Ljava/io/IOError;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get the cursor position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 6

    .line 120
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_OUTPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    .line 121
    .local v0, "outputHandle":J
    new-instance v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v2}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    .line 122
    .local v2, "info":Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleScreenBufferInfo(JLorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)I

    .line 123
    new-instance v3, Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->windowWidth()I

    move-result v4

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->windowHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/jline/terminal/Size;-><init>(II)V

    return-object v3
.end method

.method protected processConsoleInput()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_INPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    .line 137
    .local v0, "console":J
    sget v2, Lorg/fusesource/jansi/internal/Kernel32;->INVALID_HANDLE_VALUE:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/16 v2, 0x64

    .line 138
    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->WaitForSingleObject(JI)I

    move-result v2

    if-nez v2, :cond_5

    .line 139
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/fusesource/jansi/internal/Kernel32;->readConsoleInputHelper(JIZ)[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;

    move-result-object v2

    .line 144
    .local v2, "events":[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    const/4 v4, 0x0

    .line 145
    .local v4, "flush":Z
    array-length v5, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, v2, v3

    .line 146
    .local v6, "event":Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    iget-short v7, v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->eventType:S

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->KEY_EVENT:S

    if-ne v7, v8, :cond_0

    .line 147
    iget-object v7, v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->keyEvent:Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;

    .line 148
    .local v7, "keyEvent":Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;
    iget-boolean v8, v7, Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;->keyDown:Z

    iget-short v9, v7, Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;->keyCode:S

    iget-char v10, v7, Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;->uchar:C

    iget v11, v7, Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;->controlKeyState:I

    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->processKeyEvent(ZSCI)V

    .line 149
    const/4 v4, 0x1

    .line 150
    .end local v7    # "keyEvent":Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;
    goto :goto_1

    :cond_0
    iget-short v7, v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->eventType:S

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->WINDOW_BUFFER_SIZE_EVENT:S

    if-ne v7, v8, :cond_1

    .line 151
    sget-object v7, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v7}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    goto :goto_1

    .line 152
    :cond_1
    iget-short v7, v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->eventType:S

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->MOUSE_EVENT:S

    if-ne v7, v8, :cond_2

    .line 153
    iget-object v7, v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->mouseEvent:Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;

    invoke-direct {p0, v7}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->processMouseEvent(Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;)V

    .line 154
    const/4 v4, 0x1

    goto :goto_1

    .line 155
    :cond_2
    iget-short v7, v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->eventType:S

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->FOCUS_EVENT:S

    if-ne v7, v8, :cond_3

    .line 156
    iget-object v7, v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->focusEvent:Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;

    iget-boolean v7, v7, Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;->setFocus:Z

    invoke-direct {p0, v7}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->processFocusEvent(Z)V

    .line 145
    .end local v6    # "event":Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_4
    return v4

    .line 141
    .end local v2    # "events":[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    .end local v4    # "flush":Z
    :cond_5
    return v3
.end method

.method protected setConsoleMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 115
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_INPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    .line 116
    .local v0, "console":J
    invoke-static {v0, v1, p1}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleMode(JI)I

    .line 117
    return-void
.end method
