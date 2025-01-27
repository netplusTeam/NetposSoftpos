.class Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;
.super Lorg/jline/terminal/impl/AbstractWindowsConsoleWriter;
.source "JansiWinConsoleWriter.java"


# static fields
.field private static final console:J


# instance fields
.field private final writtenChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_OUTPUT_HANDLE:I

    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    sput-wide v0, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;->console:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lorg/jline/terminal/impl/AbstractWindowsConsoleWriter;-><init>()V

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;->writtenChars:[I

    return-void
.end method


# virtual methods
.method protected writeConsole([CI)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    sget-wide v0, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;->console:J

    iget-object v4, p0, Lorg/jline/terminal/impl/jansi/win/JansiWinConsoleWriter;->writtenChars:[I

    const-wide/16 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->WriteConsoleW(J[CI[IJ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write to console: "

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
