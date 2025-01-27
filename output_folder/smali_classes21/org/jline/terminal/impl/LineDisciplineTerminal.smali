.class public Lorg/jline/terminal/impl/LineDisciplineTerminal;
.super Lorg/jline/terminal/impl/AbstractTerminal;
.source "LineDisciplineTerminal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_TERMINAL_ATTRIBUTES:Ljava/lang/String; = "speed 9600 baud; 24 rows; 80 columns;\nlflags: icanon isig iexten echo echoe -echok echoke -echonl echoctl\n\t-echoprt -altwerase -noflsh -tostop -flusho pendin -nokerninfo\n\t-extproc\niflags: -istrip icrnl -inlcr -igncr ixon -ixoff ixany imaxbel iutf8\n\t-ignbrk brkint -inpck -ignpar -parmrk\noflags: opost onlcr -oxtabs -onocr -onlret\ncflags: cread cs8 -parenb -parodd hupcl -clocal -cstopb -crtscts -dsrflow\n\t-dtrflow -mdmbuf\ncchars: discard = ^O; dsusp = ^Y; eof = ^D; eol = <undef>;\n\teol2 = <undef>; erase = ^?; intr = ^C; kill = ^U; lnext = ^V;\n\tmin = 1; quit = ^\\; reprint = ^R; start = ^Q; status = ^T;\n\tstop = ^S; susp = ^Z; time = 0; werase = ^W;\n"

.field private static final PIPE_SIZE:I = 0x400


# instance fields
.field protected final attributes:Lorg/jline/terminal/Attributes;

.field protected final masterOutput:Ljava/io/OutputStream;

.field protected final size:Lorg/jline/terminal/Size;

.field protected final slaveInput:Lorg/jline/utils/NonBlockingPumpInputStream;

.field protected final slaveInputPipe:Ljava/io/OutputStream;

.field protected final slaveOutput:Ljava/io/OutputStream;

.field protected final slaveReader:Lorg/jline/utils/NonBlockingReader;

.field protected final slaveWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "masterOutput"    # Ljava/io/OutputStream;
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v5, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/LineDisciplineTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "masterOutput"    # Ljava/io/OutputStream;
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .param p5, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/jline/terminal/impl/AbstractTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 102
    const/16 v0, 0x400

    invoke-static {v0}, Lorg/jline/utils/NonBlocking;->nonBlockingPumpInputStream(I)Lorg/jline/utils/NonBlockingPumpInputStream;

    move-result-object v0

    .line 103
    .local v0, "input":Lorg/jline/utils/NonBlockingPumpInputStream;
    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingPumpInputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInputPipe:Ljava/io/OutputStream;

    .line 104
    iput-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInput:Lorg/jline/utils/NonBlockingPumpInputStream;

    .line 105
    invoke-virtual {p0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/jline/utils/NonBlocking;->nonBlocking(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/jline/utils/NonBlockingReader;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveReader:Lorg/jline/utils/NonBlockingReader;

    .line 106
    new-instance v1, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;-><init>(Lorg/jline/terminal/impl/LineDisciplineTerminal;Lorg/jline/terminal/impl/LineDisciplineTerminal$1;)V

    iput-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveOutput:Ljava/io/OutputStream;

    .line 107
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveWriter:Ljava/io/PrintWriter;

    .line 108
    iput-object p3, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->masterOutput:Ljava/io/OutputStream;

    .line 109
    const-string v1, "speed 9600 baud; 24 rows; 80 columns;\nlflags: icanon isig iexten echo echoe -echok echoke -echonl echoctl\n\t-echoprt -altwerase -noflsh -tostop -flusho pendin -nokerninfo\n\t-extproc\niflags: -istrip icrnl -inlcr -igncr ixon -ixoff ixany imaxbel iutf8\n\t-ignbrk brkint -inpck -ignpar -parmrk\noflags: opost onlcr -oxtabs -onocr -onlret\ncflags: cread cs8 -parenb -parodd hupcl -clocal -cstopb -crtscts -dsrflow\n\t-dtrflow -mdmbuf\ncchars: discard = ^O; dsusp = ^Y; eof = ^D; eol = <undef>;\n\teol2 = <undef>; erase = ^?; intr = ^C; kill = ^U; lnext = ^V;\n\tmin = 1; quit = ^\\; reprint = ^R; start = ^Q; status = ^T;\n\tstop = ^S; susp = ^Z; time = 0; werase = ^W;\n"

    invoke-static {v1}, Lorg/jline/terminal/impl/ExecPty;->doGetAttr(Ljava/lang/String;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    .line 110
    new-instance v1, Lorg/jline/terminal/Size;

    const/16 v2, 0xa0

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lorg/jline/terminal/Size;-><init>(II)V

    iput-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->size:Lorg/jline/terminal/Size;

    .line 111
    invoke-virtual {p0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->parseInfoCmp()V

    .line 112
    return-void
.end method


# virtual methods
.method protected doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-super {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->doClose()V

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveReader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    :try_start_1
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInputPipe:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 272
    nop

    .line 273
    nop

    .line 274
    return-void

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 272
    throw v0

    .line 265
    :catchall_1
    move-exception v0

    .line 266
    :try_start_2
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInputPipe:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 272
    nop

    .line 273
    throw v0

    .line 269
    :catchall_2
    move-exception v0

    .line 270
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 272
    throw v0
.end method

.method protected doProcessInputByte(I)Z
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 205
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 206
    return v1

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 208
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->QUIT:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 209
    return v1

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 211
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 212
    return v1

    .line 213
    :cond_2
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 214
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->INFO:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 217
    :cond_3
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 218
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    return v1

    .line 221
    :cond_4
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    const/16 p1, 0xa

    goto :goto_0

    .line 224
    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    const/16 p1, 0xd

    .line 227
    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 228
    .local v0, "flushOut":Z
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 229
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->processOutputByte(I)V

    .line 230
    const/4 v0, 0x1

    .line 232
    :cond_7
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInputPipe:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 233
    return v0
.end method

.method public getAttributes()Lorg/jline/terminal/Attributes;
    .locals 2

    .line 133
    new-instance v0, Lorg/jline/terminal/Attributes;

    invoke-direct {v0}, Lorg/jline/terminal/Attributes;-><init>()V

    .line 134
    .local v0, "attr":Lorg/jline/terminal/Attributes;
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->copy(Lorg/jline/terminal/Attributes;)V

    .line 135
    return-object v0
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 2

    .line 143
    new-instance v0, Lorg/jline/terminal/Size;

    invoke-direct {v0}, Lorg/jline/terminal/Size;-><init>()V

    .line 144
    .local v0, "sz":Lorg/jline/terminal/Size;
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 145
    return-object v0
.end method

.method public input()Ljava/io/InputStream;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInput:Lorg/jline/utils/NonBlockingPumpInputStream;

    return-object v0
.end method

.method public output()Ljava/io/OutputStream;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveOutput:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected processIOException(Ljava/io/IOException;)V
    .locals 1
    .param p1, "ioException"    # Ljava/io/IOException;

    .line 257
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInput:Lorg/jline/utils/NonBlockingPumpInputStream;

    invoke-virtual {v0, p1}, Lorg/jline/utils/NonBlockingPumpInputStream;->setIoException(Ljava/io/IOException;)V

    .line 258
    return-void
.end method

.method public processInputByte(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->doProcessInputByte(I)Z

    move-result v0

    .line 181
    .local v0, "flushOut":Z
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInputPipe:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->masterOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 185
    :cond_0
    return-void
.end method

.method public processInputBytes([B)V
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->processInputBytes([BII)V

    .line 189
    return-void
.end method

.method public processInputBytes([BII)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "flushOut":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 194
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->doProcessInputByte(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveInputPipe:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 197
    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->masterOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 200
    :cond_1
    return-void
.end method

.method protected processOutputByte(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 246
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->masterOutput:Ljava/io/OutputStream;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 248
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->masterOutput:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 249
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->masterOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 254
    return-void
.end method

.method public raise(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->echoSignal(Lorg/jline/terminal/Terminal$Signal;)V

    .line 168
    invoke-super {p0, p1}, Lorg/jline/terminal/impl/AbstractTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 169
    return-void
.end method

.method public reader()Lorg/jline/utils/NonBlockingReader;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveReader:Lorg/jline/utils/NonBlockingReader;

    return-object v0
.end method

.method public setAttributes(Lorg/jline/terminal/Attributes;)V
    .locals 1
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;

    .line 139
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->attributes:Lorg/jline/terminal/Attributes;

    invoke-virtual {v0, p1}, Lorg/jline/terminal/Attributes;->copy(Lorg/jline/terminal/Attributes;)V

    .line 140
    return-void
.end method

.method public setSize(Lorg/jline/terminal/Size;)V
    .locals 1
    .param p1, "sz"    # Lorg/jline/terminal/Size;

    .line 149
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0, p1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 150
    return-void
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->slaveWriter:Ljava/io/PrintWriter;

    return-object v0
.end method
