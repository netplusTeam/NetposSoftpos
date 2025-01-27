.class public Lorg/jline/terminal/impl/DumbTerminal;
.super Lorg/jline/terminal/impl/AbstractTerminal;
.source "DumbTerminal.java"


# instance fields
.field private final attributes:Lorg/jline/terminal/Attributes;

.field private final input:Lorg/jline/utils/NonBlockingInputStream;

.field private final output:Ljava/io/OutputStream;

.field private final reader:Lorg/jline/utils/NonBlockingReader;

.field private final size:Lorg/jline/terminal/Size;

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const-string v1, "dumb"

    const-string v2, "dumb"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/DumbTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    sget-object v6, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/jline/terminal/impl/DumbTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "encoding"    # Ljava/nio/charset/Charset;
    .param p6, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p5, p6}, Lorg/jline/terminal/impl/AbstractTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 44
    invoke-virtual {p0}, Lorg/jline/terminal/impl/DumbTerminal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/jline/utils/NonBlocking;->nonBlocking(Ljava/lang/String;Ljava/io/InputStream;)Lorg/jline/utils/NonBlockingInputStream;

    move-result-object v0

    .line 45
    .local v0, "nbis":Lorg/jline/utils/NonBlockingInputStream;
    new-instance v1, Lorg/jline/terminal/impl/DumbTerminal$1;

    invoke-direct {v1, p0, v0}, Lorg/jline/terminal/impl/DumbTerminal$1;-><init>(Lorg/jline/terminal/impl/DumbTerminal;Lorg/jline/utils/NonBlockingInputStream;)V

    iput-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    .line 79
    iput-object p4, p0, Lorg/jline/terminal/impl/DumbTerminal;->output:Ljava/io/OutputStream;

    .line 80
    invoke-virtual {p0}, Lorg/jline/terminal/impl/DumbTerminal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jline/terminal/impl/DumbTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/jline/utils/NonBlocking;->nonBlocking(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/jline/utils/NonBlockingReader;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    .line 81
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/DumbTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal;->writer:Ljava/io/PrintWriter;

    .line 82
    new-instance v1, Lorg/jline/terminal/Attributes;

    invoke-direct {v1}, Lorg/jline/terminal/Attributes;-><init>()V

    iput-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal;->attributes:Lorg/jline/terminal/Attributes;

    .line 83
    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    const/16 v3, 0x7f

    invoke-virtual {v1, v2, v3}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 84
    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 85
    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    const/16 v3, 0x15

    invoke-virtual {v1, v2, v3}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 86
    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 87
    new-instance v1, Lorg/jline/terminal/Size;

    invoke-direct {v1}, Lorg/jline/terminal/Size;-><init>()V

    iput-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal;->size:Lorg/jline/terminal/Size;

    .line 88
    invoke-virtual {p0}, Lorg/jline/terminal/impl/DumbTerminal;->parseInfoCmp()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;
    .locals 1
    .param p0, "x0"    # Lorg/jline/terminal/impl/DumbTerminal;

    .line 25
    iget-object v0, p0, Lorg/jline/terminal/impl/DumbTerminal;->attributes:Lorg/jline/terminal/Attributes;

    return-object v0
.end method


# virtual methods
.method public getAttributes()Lorg/jline/terminal/Attributes;
    .locals 2

    .line 110
    new-instance v0, Lorg/jline/terminal/Attributes;

    invoke-direct {v0}, Lorg/jline/terminal/Attributes;-><init>()V

    .line 111
    .local v0, "attr":Lorg/jline/terminal/Attributes;
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal;->attributes:Lorg/jline/terminal/Attributes;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->copy(Lorg/jline/terminal/Attributes;)V

    .line 112
    return-object v0
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 2

    .line 120
    new-instance v0, Lorg/jline/terminal/Size;

    invoke-direct {v0}, Lorg/jline/terminal/Size;-><init>()V

    .line 121
    .local v0, "sz":Lorg/jline/terminal/Size;
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 122
    return-object v0
.end method

.method public input()Ljava/io/InputStream;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/jline/terminal/impl/DumbTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    return-object v0
.end method

.method public output()Ljava/io/OutputStream;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jline/terminal/impl/DumbTerminal;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public reader()Lorg/jline/utils/NonBlockingReader;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/jline/terminal/impl/DumbTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    return-object v0
.end method

.method public setAttributes(Lorg/jline/terminal/Attributes;)V
    .locals 1
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;

    .line 116
    iget-object v0, p0, Lorg/jline/terminal/impl/DumbTerminal;->attributes:Lorg/jline/terminal/Attributes;

    invoke-virtual {v0, p1}, Lorg/jline/terminal/Attributes;->copy(Lorg/jline/terminal/Attributes;)V

    .line 117
    return-void
.end method

.method public setSize(Lorg/jline/terminal/Size;)V
    .locals 1
    .param p1, "sz"    # Lorg/jline/terminal/Size;

    .line 126
    iget-object v0, p0, Lorg/jline/terminal/impl/DumbTerminal;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0, p1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 127
    return-void
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/jline/terminal/impl/DumbTerminal;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method
