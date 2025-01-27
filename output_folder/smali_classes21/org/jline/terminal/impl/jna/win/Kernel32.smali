.class interface abstract Lorg/jline/terminal/impl/jna/win/Kernel32;
.super Ljava/lang/Object;
.source "Kernel32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$FOCUS_EVENT_RECORD;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$MENU_EVENT_RECORD;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$WINDOW_BUFFER_SIZE_RECORD;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_CURSOR_INFO;,
        Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;
    }
.end annotation


# static fields
.field public static final BACKGROUND_BLUE:I = 0x10

.field public static final BACKGROUND_GREEN:I = 0x20

.field public static final BACKGROUND_INTENSITY:I = 0x80

.field public static final BACKGROUND_RED:I = 0x40

.field public static final DOUBLE_CLICK:I = 0x2

.field public static final ENABLE_ECHO_INPUT:I = 0x4

.field public static final ENABLE_EXTENDED_FLAGS:I = 0x80

.field public static final ENABLE_INSERT_MODE:I = 0x20

.field public static final ENABLE_LINE_INPUT:I = 0x2

.field public static final ENABLE_MOUSE_INPUT:I = 0x10

.field public static final ENABLE_PROCESSED_INPUT:I = 0x1

.field public static final ENABLE_QUICK_EDIT_MODE:I = 0x40

.field public static final ENABLE_WINDOW_INPUT:I = 0x8

.field public static final FOREGROUND_BLUE:I = 0x1

.field public static final FOREGROUND_GREEN:I = 0x2

.field public static final FOREGROUND_INTENSITY:I = 0x8

.field public static final FOREGROUND_RED:I = 0x4

.field public static final FROM_LEFT_1ST_BUTTON_PRESSED:I = 0x1

.field public static final FROM_LEFT_2ND_BUTTON_PRESSED:I = 0x4

.field public static final FROM_LEFT_3RD_BUTTON_PRESSED:I = 0x8

.field public static final FROM_LEFT_4TH_BUTTON_PRESSED:I = 0x10

.field public static final INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

.field public static final INVALID_HANDLE_VALUE:Lcom/sun/jna/Pointer;

.field public static final LEFT_ALT_PRESSED:I = 0x2

.field public static final LEFT_CTRL_PRESSED:I = 0x8

.field public static final MOUSE_HWHEELED:I = 0x8

.field public static final MOUSE_MOVED:I = 0x1

.field public static final MOUSE_WHEELED:I = 0x4

.field public static final RIGHTMOST_BUTTON_PRESSED:I = 0x2

.field public static final RIGHT_ALT_PRESSED:I = 0x1

.field public static final RIGHT_CTRL_PRESSED:I = 0x4

.field public static final SHIFT_PRESSED:I = 0x10

.field public static final STD_ERROR_HANDLE:I = -0xc

.field public static final STD_INPUT_HANDLE:I = -0xa

.field public static final STD_OUTPUT_HANDLE:I = -0xb


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const-class v0, Lorg/jline/terminal/impl/jna/win/Kernel32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->UNICODE_OPTIONS:Ljava/util/Map;

    const-string v2, "kernel32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/impl/jna/win/Kernel32;

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    .line 24
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/sun/jna/Pointer;->createConstant(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INVALID_HANDLE_VALUE:Lcom/sun/jna/Pointer;

    return-void
.end method


# virtual methods
.method public abstract AllocConsole()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract FillConsoleOutputAttribute(Lcom/sun/jna/Pointer;SILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract FillConsoleOutputCharacter(Lcom/sun/jna/Pointer;CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract FreeConsole()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract GetConsoleCP()I
.end method

.method public abstract GetConsoleCursorInfo(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_CURSOR_INFO$ByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract GetConsoleMode(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract GetConsoleScreenBufferInfo(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract GetConsoleWindow()Lcom/sun/jna/Pointer;
.end method

.method public abstract GetNumberOfConsoleInputEvents(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract GetStdHandle(I)Lcom/sun/jna/Pointer;
.end method

.method public abstract ReadConsoleInput(Lcom/sun/jna/Pointer;[Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;ILcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract ReadConsoleOutput(Lcom/sun/jna/Pointer;[Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract ReadConsoleOutputA(Lcom/sun/jna/Pointer;[Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract ReadConsoleOutputCharacter(Lcom/sun/jna/Pointer;[CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract ReadConsoleOutputCharacterA(Lcom/sun/jna/Pointer;[BILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract ScrollConsoleScreenBuffer(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleCP(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleCtrlHandler(Lcom/sun/jna/Pointer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleCursorInfo(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_CURSOR_INFO;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleCursorPosition(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleMode(Lcom/sun/jna/Pointer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleOutputCP(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleScreenBufferSize(Lcom/sun/jna/Pointer;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleTextAttribute(Lcom/sun/jna/Pointer;S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleTitle(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract SetConsoleWindowInfo(Lcom/sun/jna/Pointer;ZLorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract WaitForSingleObject(Lcom/sun/jna/Pointer;I)I
.end method

.method public abstract WriteConsoleOutput(Lcom/sun/jna/Pointer;[Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract WriteConsoleOutputA(Lcom/sun/jna/Pointer;[Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract WriteConsoleOutputCharacter(Lcom/sun/jna/Pointer;[CILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract WriteConsoleOutputCharacterA(Lcom/sun/jna/Pointer;[BILorg/jline/terminal/impl/jna/win/Kernel32$COORD;Lcom/sun/jna/ptr/IntByReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract WriteConsoleW(Lcom/sun/jna/Pointer;[CILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method
