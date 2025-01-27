.class public final Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;
.super Lorg/jline/utils/AnsiWriter;
.source "WindowsAnsiWriter.java"


# static fields
.field private static final ANSI_BACKGROUND_COLOR_MAP:[S

.field private static final ANSI_FOREGROUND_COLOR_MAP:[S

.field private static final BACKGROUND_BLACK:S = 0x0s

.field private static final BACKGROUND_CYAN:S = 0x30s

.field private static final BACKGROUND_MAGENTA:S = 0x50s

.field private static final BACKGROUND_WHITE:S = 0x70s

.field private static final BACKGROUND_YELLOW:S = 0x60s

.field private static final FOREGROUND_BLACK:S = 0x0s

.field private static final FOREGROUND_CYAN:S = 0x3s

.field private static final FOREGROUND_MAGENTA:S = 0x5s

.field private static final FOREGROUND_WHITE:S = 0x7s

.field private static final FOREGROUND_YELLOW:S = 0x6s

.field private static final MAX_ESCAPE_SEQUENCE_LENGTH:I = 0x64


# instance fields
.field private bold:Z

.field private final console:Lcom/sun/jna/Pointer;

.field private final info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

.field private negative:Z

.field private final originalColors:S

.field private savedX:S

.field private savedY:S

.field private underline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const/16 v0, 0x8

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->ANSI_FOREGROUND_COLOR_MAP:[S

    .line 62
    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->ANSI_BACKGROUND_COLOR_MAP:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x4s
        0x2s
        0x6s
        0x1s
        0x5s
        0x3s
        0x7s
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x40s
        0x20s
        0x60s
        0x10s
        0x50s
        0x30s
        0x70s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/sun/jna/Pointer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "console"    # Lcom/sun/jna/Pointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lorg/jline/utils/AnsiWriter;-><init>(Ljava/io/Writer;)V

    .line 77
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    .line 83
    const/4 v1, -0x1

    iput-short v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->savedX:S

    .line 84
    iput-short v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->savedY:S

    .line 88
    iput-object p2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    .line 89
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 90
    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    iput-short v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->originalColors:S

    .line 91
    return-void
.end method

.method private applyAttribute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 103
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 105
    .local v0, "attributes":S
    iget-boolean v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->bold:Z

    if-eqz v1, :cond_0

    .line 106
    or-int/lit8 v1, v0, 0x8

    int-to-short v0, v1

    .line 109
    :cond_0
    iget-boolean v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->underline:Z

    if-eqz v1, :cond_1

    .line 110
    or-int/lit16 v1, v0, 0x80

    int-to-short v0, v1

    .line 112
    :cond_1
    iget-boolean v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->negative:Z

    if-eqz v1, :cond_2

    .line 113
    invoke-direct {p0, v0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->invertAttributeColors(S)S

    move-result v0

    .line 115
    :cond_2
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32;->SetConsoleTextAttribute(Lcom/sun/jna/Pointer;S)V

    .line 116
    return-void
.end method

.method private applyCursorPosition()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 130
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v3, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 131
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    invoke-interface {v0, v1, v2}, Lorg/jline/terminal/impl/jna/win/Kernel32;->SetConsoleCursorPosition(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;)V

    .line 132
    return-void
.end method

.method private getConsoleInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 95
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-interface {v0, v1, v2}, Lorg/jline/terminal/impl/jna/win/Kernel32;->GetConsoleScreenBufferInfo(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)V

    .line 96
    iget-boolean v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->negative:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    invoke-direct {p0, v1}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->invertAttributeColors(S)S

    move-result v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 99
    :cond_0
    return-void
.end method

.method private invertAttributeColors(S)S
    .locals 3
    .param p1, "attributes"    # S

    .line 120
    and-int/lit8 v0, p1, 0xf

    .line 121
    .local v0, "fg":I
    shl-int/lit8 v0, v0, 0x4

    .line 122
    and-int/lit16 v1, p1, 0xf0

    .line 123
    .local v1, "bg":I
    shr-int/lit8 v1, v1, 0x4

    .line 124
    const v2, 0xff00

    and-int/2addr v2, p1

    or-int/2addr v2, v0

    or-int/2addr v2, v1

    int-to-short p1, v2

    .line 125
    return p1
.end method


# virtual methods
.method protected processAttributeRest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    and-int/lit16 v1, v1, -0x100

    iget-short v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->originalColors:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->negative:Z

    .line 274
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->bold:Z

    .line 275
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->underline:Z

    .line 276
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 277
    return-void
.end method

.method protected processChangeWindowTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 351
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    invoke-interface {v0, p1}, Lorg/jline/terminal/impl/jna/win/Kernel32;->SetConsoleTitle(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method protected processCursorDown(I)V
    .locals 10
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 211
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 212
    .local v0, "nb":I
    if-eq v0, p1, :cond_0

    .line 213
    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v3, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    add-int/2addr v3, p1

    int-to-short v3, v3

    iput-short v3, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 214
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 216
    :cond_0
    if-lez v0, :cond_1

    .line 217
    new-instance v2, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    iget-object v3, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    invoke-direct {v2, v3}, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;-><init>(Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V

    .line 218
    .local v2, "scroll":Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;
    iput-short v1, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    .line 219
    new-instance v3, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    invoke-direct {v3}, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;-><init>()V

    .line 220
    .local v3, "org":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    iput-short v1, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 221
    neg-int v1, v0

    int-to-short v1, v1

    iput-short v1, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 222
    new-instance v9, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;

    const/16 v1, 0x20

    iget-short v4, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->originalColors:S

    invoke-direct {v9, v1, v4}, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;-><init>(CS)V

    .line 223
    .local v9, "info":Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;
    sget-object v4, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v5, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    move-object v6, v2

    move-object v7, v2

    move-object v8, v3

    invoke-interface/range {v4 .. v9}, Lorg/jline/terminal/impl/jna/win/Kernel32;->ScrollConsoleScreenBuffer(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;)V

    .line 225
    .end local v2    # "scroll":Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;
    .end local v3    # "org":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    .end local v9    # "info":Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;
    :cond_1
    return-void
.end method

.method protected processCursorDownLine(I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 192
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    const/4 v1, 0x0

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 193
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 194
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 195
    return-void
.end method

.method protected processCursorLeft(I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 199
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 200
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 201
    return-void
.end method

.method protected processCursorRight(I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 205
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 206
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 207
    return-void
.end method

.method protected processCursorTo(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 235
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 236
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    add-int/lit8 v1, p2, -0x1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 237
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 238
    return-void
.end method

.method protected processCursorToColumn(I)V
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 242
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    add-int/lit8 v1, p1, -0x1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 243
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 244
    return-void
.end method

.method protected processCursorUp(I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 229
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 230
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 231
    return-void
.end method

.method protected processCursorUpLine(I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 185
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    const/4 v1, 0x0

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 186
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 187
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 188
    return-void
.end method

.method protected processDefaultBackgroundColor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    and-int/lit16 v1, v1, -0xf1

    iget-short v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->originalColors:S

    and-int/lit16 v2, v2, 0xf0

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 268
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 269
    return-void
.end method

.method protected processDefaultTextColor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    and-int/lit8 v1, v1, -0x10

    iget-short v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->originalColors:S

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 263
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 264
    return-void
.end method

.method protected processDeleteLine(I)V
    .locals 8
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 341
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    invoke-direct {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;-><init>(Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V

    .line 342
    .local v0, "scroll":Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;
    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    .line 343
    new-instance v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    invoke-direct {v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;-><init>()V

    .line 344
    .local v1, "org":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    const/4 v2, 0x0

    iput-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 345
    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    sub-int/2addr v2, p1

    int-to-short v2, v2

    iput-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 346
    new-instance v7, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;

    iget-short v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->originalColors:S

    const/16 v3, 0x20

    invoke-direct {v7, v3, v2}, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;-><init>(CS)V

    .line 347
    .local v7, "info":Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;
    sget-object v2, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v3, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Lorg/jline/terminal/impl/jna/win/Kernel32;->ScrollConsoleScreenBuffer(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;)V

    .line 348
    return-void
.end method

.method protected processEraseLine(I)V
    .locals 22
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 164
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 165
    .local v6, "written":Lcom/sun/jna/ptr/IntByReference;
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 167
    :pswitch_0
    new-instance v5, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    invoke-direct {v5, v1, v2}, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;-><init>(SS)V

    .line 168
    .local v5, "leftColCurrRow":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    sget-object v1, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    const/16 v3, 0x20

    iget-object v4, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v4, v4, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v4, v4, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    invoke-interface/range {v1 .. v6}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputCharacter(Lcom/sun/jna/Pointer;CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 169
    sget-object v7, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    iget-object v1, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v9, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    iget-object v1, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v10, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    move-object v11, v5

    move-object v12, v6

    invoke-interface/range {v7 .. v12}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputAttribute(Lcom/sun/jna/Pointer;SILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 170
    goto :goto_0

    .line 172
    .end local v5    # "leftColCurrRow":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    :pswitch_1
    new-instance v15, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    invoke-direct {v15, v1, v2}, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;-><init>(SS)V

    .line 173
    .local v15, "leftColCurrRow2":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    sget-object v11, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v12, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    const/16 v13, 0x20

    iget-object v1, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v14, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    move-object/from16 v16, v6

    invoke-interface/range {v11 .. v16}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputCharacter(Lcom/sun/jna/Pointer;CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 174
    sget-object v16, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v1, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v3, v3, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v15

    move-object/from16 v21, v6

    invoke-interface/range {v16 .. v21}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputAttribute(Lcom/sun/jna/Pointer;SILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 175
    goto :goto_0

    .line 177
    .end local v15    # "leftColCurrRow2":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    :pswitch_2
    iget-object v1, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    sub-int/2addr v1, v2

    .line 178
    .local v1, "lengthToLastCol":I
    sget-object v7, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    const/16 v9, 0x20

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v11, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    move v10, v1

    move-object v12, v6

    invoke-interface/range {v7 .. v12}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputCharacter(Lcom/sun/jna/Pointer;CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 179
    sget-object v7, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v9, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    iget-object v2, v0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v11, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    invoke-interface/range {v7 .. v12}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputAttribute(Lcom/sun/jna/Pointer;SILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 181
    .end local v1    # "lengthToLastCol":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processEraseScreen(I)V
    .locals 14
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 136
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 137
    .local v5, "written":Lcom/sun/jna/ptr/IntByReference;
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 139
    :pswitch_0
    new-instance v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    invoke-direct {v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;-><init>()V

    move-object v12, v1

    .line 140
    .local v12, "topLeft":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    iput-short v0, v12, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 141
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    iput-short v0, v12, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 142
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->height()S

    move-result v0

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    mul-int v13, v0, v1

    .line 143
    .local v13, "screenLength":I
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    const/16 v2, 0x20

    move v3, v13

    move-object v4, v12

    invoke-interface/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputCharacter(Lcom/sun/jna/Pointer;CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 144
    sget-object v6, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v7, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v8, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    move v9, v13

    move-object v10, v12

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputAttribute(Lcom/sun/jna/Pointer;SILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 145
    goto/16 :goto_0

    .line 147
    .end local v12    # "topLeft":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    .end local v13    # "screenLength":I
    :pswitch_1
    new-instance v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    invoke-direct {v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;-><init>()V

    .line 148
    .local v1, "topLeft2":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    iput-short v0, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 149
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    iput-short v0, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 150
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    mul-int/2addr v0, v2

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    add-int/2addr v0, v2

    .line 151
    .local v0, "lengthToCursor":I
    sget-object v6, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v7, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    const/16 v8, 0x20

    move v9, v0

    move-object v10, v1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputCharacter(Lcom/sun/jna/Pointer;CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 152
    sget-object v6, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v7, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v8, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    invoke-interface/range {v6 .. v11}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputAttribute(Lcom/sun/jna/Pointer;SILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 153
    goto :goto_0

    .line 155
    .end local v0    # "lengthToCursor":I
    .end local v1    # "topLeft2":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    :pswitch_2
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Bottom:S

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 157
    .local v0, "lengthToEnd":I
    sget-object v6, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v7, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    const/16 v8, 0x20

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v10, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    move v9, v0

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputCharacter(Lcom/sun/jna/Pointer;CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 158
    sget-object v6, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v7, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v8, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v10, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    invoke-interface/range {v6 .. v11}, Lorg/jline/terminal/impl/jna/win/Kernel32;->FillConsoleOutputAttribute(Lcom/sun/jna/Pointer;SILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V

    .line 160
    .end local v0    # "lengthToEnd":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processInsertLine(I)V
    .locals 8
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 329
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    invoke-direct {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;-><init>(Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V

    .line 330
    .local v0, "scroll":Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;
    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    .line 331
    new-instance v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    invoke-direct {v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;-><init>()V

    .line 332
    .local v1, "org":Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
    const/4 v2, 0x0

    iput-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 333
    iget-object v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v2, v2, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    add-int/2addr v2, p1

    int-to-short v2, v2

    iput-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 334
    new-instance v7, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;

    iget-short v2, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->originalColors:S

    const/16 v3, 0x20

    invoke-direct {v7, v3, v2}, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;-><init>(CS)V

    .line 335
    .local v7, "info":Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;
    sget-object v2, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v3, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->console:Lcom/sun/jna/Pointer;

    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Lorg/jline/terminal/impl/jna/win/Kernel32;->ScrollConsoleScreenBuffer(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;)V

    .line 336
    return-void
.end method

.method protected processRestoreCursorPosition()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-short v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->savedX:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->savedY:S

    if-eq v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 320
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->savedX:S

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 321
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->savedY:S

    iput-short v1, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 322
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 324
    :cond_0
    return-void
.end method

.method protected processSaveCursorPosition()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 312
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    iput-short v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->savedX:S

    .line 313
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

    iget-short v0, v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    iput-short v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->savedY:S

    .line 314
    return-void
.end method

.method protected processSetAttribute(I)V
    .locals 2
    .param p1, "attribute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 304
    :sswitch_0
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->negative:Z

    .line 305
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    goto :goto_0

    .line 295
    :sswitch_1
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->underline:Z

    .line 296
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 297
    goto :goto_0

    .line 286
    :sswitch_2
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->bold:Z

    .line 287
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 288
    goto :goto_0

    .line 300
    :sswitch_3
    iput-boolean v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->negative:Z

    .line 301
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 302
    goto :goto_0

    .line 291
    :sswitch_4
    iput-boolean v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->underline:Z

    .line 292
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 293
    goto :goto_0

    .line 282
    :sswitch_5
    iput-boolean v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->bold:Z

    .line 283
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 284
    nop

    .line 308
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x4 -> :sswitch_4
        0x7 -> :sswitch_3
        0x16 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method protected processSetBackgroundColorExt(I)V
    .locals 5
    .param p1, "paletteIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/jline/utils/Colors;->roundColor(II)I

    move-result v0

    .line 256
    .local v0, "color":I
    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    and-int/lit8 v2, v2, -0x71

    sget-object v3, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->ANSI_BACKGROUND_COLOR_MAP:[S

    and-int/lit8 v4, v0, 0x7

    aget-short v3, v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 257
    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    and-int/lit16 v2, v2, -0x81

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    const/16 v3, 0x80

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 258
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 259
    return-void
.end method

.method protected processSetForegroundColorExt(I)V
    .locals 5
    .param p1, "paletteIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/jline/utils/Colors;->roundColor(II)I

    move-result v0

    .line 249
    .local v0, "color":I
    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    and-int/lit8 v2, v2, -0x8

    sget-object v3, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->ANSI_FOREGROUND_COLOR_MAP:[S

    and-int/lit8 v4, v0, 0x7

    aget-short v3, v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 250
    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->info:Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    and-int/lit8 v2, v2, -0x9

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->wAttributes:S

    .line 251
    invoke-direct {p0}, Lorg/jline/terminal/impl/jna/win/WindowsAnsiWriter;->applyAttribute()V

    .line 252
    return-void
.end method
