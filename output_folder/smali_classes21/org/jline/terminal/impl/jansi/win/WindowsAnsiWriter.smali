.class public final Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;
.super Lorg/jline/utils/AnsiWriter;
.source "WindowsAnsiWriter.java"


# static fields
.field private static final ANSI_BACKGROUND_COLOR_MAP:[S

.field private static final ANSI_FOREGROUND_COLOR_MAP:[S

.field private static final BACKGROUND_BLACK:S

.field private static final BACKGROUND_CYAN:S

.field private static final BACKGROUND_MAGENTA:S

.field private static final BACKGROUND_WHITE:S

.field private static final BACKGROUND_YELLOW:S

.field private static final FOREGROUND_BLACK:S

.field private static final FOREGROUND_CYAN:S

.field private static final FOREGROUND_MAGENTA:S

.field private static final FOREGROUND_WHITE:S

.field private static final FOREGROUND_YELLOW:S

.field private static final console:J


# instance fields
.field private bold:Z

.field private final info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

.field private negative:Z

.field private final originalColors:S

.field private savedX:S

.field private savedY:S

.field private underline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 38
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_OUTPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    sput-wide v0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    .line 41
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_RED:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_GREEN:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->FOREGROUND_YELLOW:S

    .line 42
    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_BLUE:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_RED:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    sput-short v1, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->FOREGROUND_MAGENTA:S

    .line 43
    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_BLUE:S

    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_GREEN:S

    or-int/2addr v2, v3

    int-to-short v2, v2

    sput-short v2, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->FOREGROUND_CYAN:S

    .line 44
    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_RED:S

    sget-short v4, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_GREEN:S

    or-int/2addr v3, v4

    sget-short v4, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_BLUE:S

    or-int/2addr v3, v4

    int-to-short v3, v3

    sput-short v3, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->FOREGROUND_WHITE:S

    .line 47
    sget-short v4, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_RED:S

    sget-short v5, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_GREEN:S

    or-int/2addr v4, v5

    int-to-short v4, v4

    sput-short v4, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->BACKGROUND_YELLOW:S

    .line 48
    sget-short v5, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_BLUE:S

    sget-short v6, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_RED:S

    or-int/2addr v5, v6

    int-to-short v5, v5

    sput-short v5, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->BACKGROUND_MAGENTA:S

    .line 49
    sget-short v6, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_BLUE:S

    sget-short v7, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_GREEN:S

    or-int/2addr v6, v7

    int-to-short v6, v6

    sput-short v6, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->BACKGROUND_CYAN:S

    .line 50
    sget-short v7, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_RED:S

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_GREEN:S

    or-int/2addr v7, v8

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_BLUE:S

    or-int/2addr v7, v8

    int-to-short v7, v7

    sput-short v7, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->BACKGROUND_WHITE:S

    .line 52
    const/16 v8, 0x8

    new-array v9, v8, [S

    const/4 v10, 0x0

    aput-short v10, v9, v10

    sget-short v11, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_RED:S

    const/4 v12, 0x1

    aput-short v11, v9, v12

    sget-short v11, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_GREEN:S

    const/4 v13, 0x2

    aput-short v11, v9, v13

    const/4 v11, 0x3

    aput-short v0, v9, v11

    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_BLUE:S

    const/4 v14, 0x4

    aput-short v0, v9, v14

    const/4 v0, 0x5

    aput-short v1, v9, v0

    const/4 v1, 0x6

    aput-short v2, v9, v1

    const/4 v2, 0x7

    aput-short v3, v9, v2

    sput-object v9, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->ANSI_FOREGROUND_COLOR_MAP:[S

    .line 63
    new-array v3, v8, [S

    aput-short v10, v3, v10

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_RED:S

    aput-short v8, v3, v12

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_GREEN:S

    aput-short v8, v3, v13

    aput-short v4, v3, v11

    sget-short v4, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_BLUE:S

    aput-short v4, v3, v14

    aput-short v5, v3, v0

    aput-short v6, v3, v1

    aput-short v7, v3, v2

    sput-object v3, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->ANSI_BACKGROUND_COLOR_MAP:[S

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lorg/jline/utils/AnsiWriter;-><init>(Ljava/io/Writer;)V

    .line 74
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    .line 80
    const/4 v1, -0x1

    iput-short v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->savedX:S

    .line 81
    iput-short v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->savedY:S

    .line 85
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 86
    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    iput-short v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    .line 87
    return-void
.end method

.method private applyAttribute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 101
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 103
    .local v0, "attributes":S
    iget-boolean v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->bold:Z

    if-eqz v1, :cond_0

    .line 104
    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_INTENSITY:S

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 107
    :cond_0
    iget-boolean v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->underline:Z

    if-eqz v1, :cond_1

    .line 108
    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_INTENSITY:S

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 110
    :cond_1
    iget-boolean v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->negative:Z

    if-eqz v1, :cond_2

    .line 111
    invoke-direct {p0, v0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->invertAttributeColors(S)S

    move-result v0

    .line 113
    :cond_2
    sget-wide v1, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    invoke-static {v1, v2, v0}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleTextAttribute(JS)I

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    return-void

    .line 114
    :cond_3
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private applyCursorPosition()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 130
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 131
    sget-wide v0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleCursorPosition(JLorg/fusesource/jansi/internal/Kernel32$COORD;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getConsoleInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 91
    sget-wide v0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleScreenBufferInfo(JLorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->negative:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    invoke-direct {p0, v1}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->invertAttributeColors(S)S

    move-result v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 97
    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get the screen info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 299
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit16 v1, v1, -0x100

    iget-short v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->negative:Z

    .line 301
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->bold:Z

    .line 302
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->underline:Z

    .line 303
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 304
    return-void
.end method

.method protected processChangeWindowTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 392
    invoke-static {p1}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleTitle(Ljava/lang/String;)I

    .line 393
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

    .line 226
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 227
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 228
    .local v0, "nb":I
    if-eq v0, p1, :cond_0

    .line 229
    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v3, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/2addr v3, p1

    int-to-short v3, v3

    iput-short v3, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 230
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 232
    :cond_0
    if-lez v0, :cond_1

    .line 233
    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->copy()Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    move-result-object v2

    .line 234
    .local v2, "scroll":Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    iput-short v1, v2, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    .line 235
    new-instance v3, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v3}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v9, v3

    .line 236
    .local v9, "org":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v9, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 237
    neg-int v1, v0

    int-to-short v1, v1

    iput-short v1, v9, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 238
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;-><init>()V

    .line 239
    .local v1, "info":Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;
    const/16 v3, 0x20

    iput-char v3, v1, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->unicodeChar:C

    .line 240
    iget-short v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    iput-short v3, v1, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->attributes:S

    .line 241
    sget-wide v3, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    move-object v5, v2

    move-object v6, v2

    move-object v7, v9

    move-object v8, v1

    invoke-static/range {v3 .. v8}, Lorg/fusesource/jansi/internal/Kernel32;->ScrollConsoleScreenBuffer(JLorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$COORD;Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;)I

    .line 243
    .end local v1    # "info":Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;
    .end local v2    # "scroll":Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    .end local v9    # "org":Lorg/fusesource/jansi/internal/Kernel32$COORD;
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

    .line 204
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 205
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    const/4 v1, 0x0

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 206
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 207
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 208
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

    .line 212
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 213
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 214
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 215
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

    .line 219
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 220
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 221
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 222
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

    .line 254
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 255
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 256
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    add-int/lit8 v1, p2, -0x1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 257
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 258
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

    .line 262
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 263
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    add-int/lit8 v1, p1, -0x1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 264
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 265
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

    .line 247
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 248
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 249
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 250
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

    .line 197
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 198
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    const/4 v1, 0x0

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 199
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 200
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 201
    return-void
.end method

.method protected processDefaultBackgroundColor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit16 v1, v1, -0xf1

    iget-short v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    and-int/lit16 v2, v2, 0xf0

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 293
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_INTENSITY:S

    not-int v2, v2

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 294
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 295
    return-void
.end method

.method protected processDefaultTextColor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit8 v1, v1, -0x10

    iget-short v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 286
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_INTENSITY:S

    not-int v2, v2

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 287
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 288
    return-void
.end method

.method protected processDeleteLine(I)V
    .locals 9
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 377
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->copy()Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    move-result-object v0

    .line 378
    .local v0, "scroll":Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    .line 379
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v7, v1

    .line 380
    .local v7, "org":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    const/4 v1, 0x0

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 381
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 382
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;-><init>()V

    move-object v8, v1

    .line 383
    .local v8, "info":Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;
    iget-short v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    iput-short v1, v8, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->attributes:S

    .line 384
    const/16 v1, 0x20

    iput-char v1, v8, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->unicodeChar:C

    .line 385
    sget-wide v1, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    move-object v3, v0

    move-object v4, v0

    move-object v5, v7

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->ScrollConsoleScreenBuffer(JLorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$COORD;Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    return-void

    .line 386
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected processEraseLine(I)V
    .locals 10
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 173
    .local v0, "written":[I
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 175
    :pswitch_0
    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v7

    .line 176
    .local v7, "leftColCurrRow":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 177
    sget-wide v8, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    iget-short v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    move-wide v1, v8

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 178
    const/16 v3, 0x20

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    move-wide v1, v8

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 179
    goto :goto_0

    .line 181
    .end local v7    # "leftColCurrRow":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    :pswitch_1
    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v7

    .line 182
    .local v7, "leftColCurrRow2":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 183
    sget-wide v8, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    iget-short v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    move-wide v1, v8

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 184
    const/16 v3, 0x20

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    move-wide v1, v8

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 185
    goto :goto_0

    .line 187
    .end local v7    # "leftColCurrRow2":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    :pswitch_2
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    sub-int v7, v1, v2

    .line 188
    .local v7, "lengthToLastCol":I
    sget-wide v8, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    iget-short v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v5

    move-wide v1, v8

    move v4, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 189
    const/16 v3, 0x20

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v5

    move-wide v1, v8

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 190
    nop

    .line 194
    .end local v7    # "lengthToLastCol":I
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
    .locals 11
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 140
    .local v0, "written":[I
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 142
    :pswitch_0
    new-instance v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v7, v2

    .line 143
    .local v7, "topLeft":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 144
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 145
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->height()S

    move-result v1

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    mul-int v8, v1, v2

    .line 146
    .local v8, "screenLength":I
    sget-wide v9, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    iget-short v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    move-wide v1, v9

    move v4, v8

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 147
    const/16 v3, 0x20

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 148
    goto/16 :goto_0

    .line 150
    .end local v7    # "topLeft":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    .end local v8    # "screenLength":I
    :pswitch_1
    new-instance v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v7, v2

    .line 151
    .local v7, "topLeft2":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 152
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 153
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    add-int v8, v1, v2

    .line 155
    .local v8, "lengthToCursor":I
    sget-wide v9, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    iget-short v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    move-wide v1, v9

    move v4, v8

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 156
    const/16 v3, 0x20

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 157
    goto :goto_0

    .line 159
    .end local v7    # "topLeft2":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    .end local v8    # "lengthToCursor":I
    :pswitch_2
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->bottom:S

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iget-object v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    sub-int/2addr v2, v3

    add-int v7, v1, v2

    .line 161
    .local v7, "lengthToEnd":I
    sget-wide v8, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    iget-short v3, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v5

    move-wide v1, v8

    move v4, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 162
    const/16 v3, 0x20

    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v5

    move-wide v1, v8

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 163
    nop

    .line 167
    .end local v7    # "lengthToEnd":I
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
    .locals 9
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 361
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->copy()Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    move-result-object v0

    .line 362
    .local v0, "scroll":Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    .line 363
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v7, v1

    .line 364
    .local v7, "org":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    const/4 v1, 0x0

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 365
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 366
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;-><init>()V

    move-object v8, v1

    .line 367
    .local v8, "info":Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;
    iget-short v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->originalColors:S

    iput-short v1, v8, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->attributes:S

    .line 368
    const/16 v1, 0x20

    iput-char v1, v8, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->unicodeChar:C

    .line 369
    sget-wide v1, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->console:J

    move-object v3, v0

    move-object v4, v0

    move-object v5, v7

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->ScrollConsoleScreenBuffer(JLorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$COORD;Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    return-void

    .line 370
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected processRestoreCursorPosition()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-short v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->savedX:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->savedY:S

    if-eq v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 352
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->savedX:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 353
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->savedY:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 354
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyCursorPosition()V

    .line 356
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

    .line 342
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->getConsoleInfo()V

    .line 343
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iput-short v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->savedX:S

    .line 344
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iput-short v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->savedY:S

    .line 345
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

    .line 308
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 332
    :sswitch_0
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->negative:Z

    .line 333
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 334
    goto :goto_0

    .line 323
    :sswitch_1
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->underline:Z

    .line 324
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 325
    goto :goto_0

    .line 314
    :sswitch_2
    iput-boolean v0, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->bold:Z

    .line 315
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 316
    goto :goto_0

    .line 328
    :sswitch_3
    iput-boolean v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->negative:Z

    .line 329
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 330
    goto :goto_0

    .line 319
    :sswitch_4
    iput-boolean v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->underline:Z

    .line 320
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 321
    goto :goto_0

    .line 310
    :sswitch_5
    iput-boolean v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->bold:Z

    .line 311
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 312
    nop

    .line 338
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

    .line 277
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/jline/utils/Colors;->roundColor(II)I

    move-result v0

    .line 278
    .local v0, "color":I
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit8 v2, v2, -0x71

    sget-object v3, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->ANSI_BACKGROUND_COLOR_MAP:[S

    and-int/lit8 v4, v0, 0x7

    aget-short v3, v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 279
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_INTENSITY:S

    not-int v3, v3

    and-int/2addr v2, v3

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_INTENSITY:S

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 280
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 281
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

    .line 269
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/jline/utils/Colors;->roundColor(II)I

    move-result v0

    .line 270
    .local v0, "color":I
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit8 v2, v2, -0x8

    sget-object v3, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->ANSI_FOREGROUND_COLOR_MAP:[S

    and-int/lit8 v4, v0, 0x7

    aget-short v3, v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 271
    iget-object v1, p0, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v2, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_INTENSITY:S

    not-int v3, v3

    and-int/2addr v2, v3

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_INTENSITY:S

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 272
    invoke-direct {p0}, Lorg/jline/terminal/impl/jansi/win/WindowsAnsiWriter;->applyAttribute()V

    .line 273
    return-void
.end method
