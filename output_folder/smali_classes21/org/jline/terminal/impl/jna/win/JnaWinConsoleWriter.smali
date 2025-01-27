.class Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;
.super Lorg/jline/terminal/impl/AbstractWindowsConsoleWriter;
.source "JnaWinConsoleWriter.java"


# instance fields
.field private final consoleHandle:Lcom/sun/jna/Pointer;

.field private final writtenChars:Lcom/sun/jna/ptr/IntByReference;


# direct methods
.method constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1
    .param p1, "consoleHandle"    # Lcom/sun/jna/Pointer;

    .line 23
    invoke-direct {p0}, Lorg/jline/terminal/impl/AbstractWindowsConsoleWriter;-><init>()V

    .line 21
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;->writtenChars:Lcom/sun/jna/ptr/IntByReference;

    .line 24
    iput-object p1, p0, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;->consoleHandle:Lcom/sun/jna/Pointer;

    .line 25
    return-void
.end method


# virtual methods
.method protected writeConsole([CI)V
    .locals 6
    .param p1, "text"    # [C
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    :try_start_0
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32;->INSTANCE:Lorg/jline/terminal/impl/jna/win/Kernel32;

    iget-object v1, p0, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;->consoleHandle:Lcom/sun/jna/Pointer;

    iget-object v4, p0, Lorg/jline/terminal/impl/jna/win/JnaWinConsoleWriter;->writtenChars:Lcom/sun/jna/ptr/IntByReference;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/win/Kernel32;->WriteConsoleW(Lcom/sun/jna/Pointer;[CILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;)V
    :try_end_0
    .catch Lcom/sun/jna/LastErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    nop

    .line 34
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lcom/sun/jna/LastErrorException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to write to console"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
