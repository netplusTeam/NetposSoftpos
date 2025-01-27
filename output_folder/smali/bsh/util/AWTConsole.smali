.class public Lbsh/util/AWTConsole;
.super Ljava/awt/TextArea;
.source "AWTConsole.java"

# interfaces
.implements Lbsh/ConsoleInterface;
.implements Ljava/lang/Runnable;
.implements Ljava/awt/event/KeyListener;


# instance fields
.field private histLine:I

.field private history:Ljava/util/Vector;

.field private in:Ljava/io/InputStream;

.field private inPipe:Ljava/io/InputStream;

.field private line:Ljava/lang/StringBuffer;

.field private out:Ljava/io/PrintStream;

.field private outPipe:Ljava/io/OutputStream;

.field private startedLine:Ljava/lang/String;

.field private textLength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 127
    const/16 v0, 0xc

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lbsh/util/AWTConsole;-><init>(IILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    return-void
.end method

.method public constructor <init>(IILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "cin"    # Ljava/io/InputStream;
    .param p4, "cout"    # Ljava/io/OutputStream;

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/awt/TextArea;-><init>(II)V

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    .line 95
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    .line 96
    iput v0, p0, Lbsh/util/AWTConsole;->histLine:I

    .line 100
    new-instance v1, Ljava/awt/Font;

    const-string v2, "Monospaced"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v0, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->setFont(Ljava/awt/Font;)V

    .line 101
    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->setEditable(Z)V

    .line 102
    invoke-virtual {p0, p0}, Lbsh/util/AWTConsole;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 104
    iput-object p4, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    .line 105
    if-nez p4, :cond_0

    .line 106
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    .line 108
    :try_start_0
    new-instance v0, Ljava/io/PipedInputStream;

    iget-object v1, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/PipedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v0, p0, Lbsh/util/AWTConsole;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Console internal error..."

    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iput-object p3, p0, Lbsh/util/AWTConsole;->inPipe:Ljava/io/InputStream;

    .line 116
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    invoke-virtual {p0}, Lbsh/util/AWTConsole;->requestFocus()V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 130
    const/16 v0, 0xc

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1, p1, p2}, Lbsh/util/AWTConsole;-><init>(IILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 131
    return-void
.end method

.method private acceptLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 266
    const-string v0, "Console internal error..."

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 270
    iget-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    nop

    .line 275
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    .line 273
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Console pipe broken..."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private countNLs()I
    .locals 5

    .line 226
    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 228
    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 228
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private doChar(C)V
    .locals 1
    .param p1, "ch"    # C

    .line 186
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    .line 191
    :cond_0
    return-void
.end method

.method private enter()V
    .locals 4

    .line 195
    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, "\n"

    if-nez v0, :cond_0

    .line 196
    const-string v0, ";\n"

    .local v0, "s":Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0    # "s":Ljava/lang/String;
    iget-object v2, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    iget-object v3, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 201
    :goto_0
    iget-object v2, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 202
    iput v3, p0, Lbsh/util/AWTConsole;->histLine:I

    .line 203
    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lbsh/util/AWTConsole;->textLength:I

    .line 205
    invoke-direct {p0, v0}, Lbsh/util/AWTConsole;->acceptLine(Ljava/lang/String;)V

    .line 207
    iget v1, p0, Lbsh/util/AWTConsole;->textLength:I

    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->setCaretPosition(I)V

    .line 208
    return-void
.end method

.method private historyDown()V
    .locals 1

    .line 245
    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/util/AWTConsole;->histLine:I

    .line 249
    invoke-direct {p0}, Lbsh/util/AWTConsole;->showHistoryLine()V

    .line 250
    return-void
.end method

.method private historyUp()V
    .locals 2

    .line 235
    iget-object v0, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 237
    :cond_0
    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/AWTConsole;->startedLine:Ljava/lang/String;

    .line 239
    :cond_1
    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    iget-object v1, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 240
    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/util/AWTConsole;->histLine:I

    .line 241
    invoke-direct {p0}, Lbsh/util/AWTConsole;->showHistoryLine()V

    .line 243
    :cond_2
    return-void
.end method

.method private inPipeWatcher()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lbsh/util/AWTConsole;->inPipe:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    .line 298
    .local v0, "pout":Ljava/io/PipedOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lbsh/util/AWTConsole;->out:Ljava/io/PrintStream;

    .line 299
    new-instance v1, Ljava/io/PipedInputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v1, p0, Lbsh/util/AWTConsole;->inPipe:Ljava/io/InputStream;

    .line 301
    .end local v0    # "pout":Ljava/io/PipedOutputStream;
    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 303
    .local v0, "ba":[B
    :goto_0
    iget-object v1, p0, Lbsh/util/AWTConsole;->inPipe:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 304
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :cond_1
    const-string v1, "Console: Input closed..."

    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->println(Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 318
    new-instance v0, Lbsh/util/AWTConsole;

    invoke-direct {v0}, Lbsh/util/AWTConsole;-><init>()V

    .line 319
    .local v0, "console":Lbsh/util/AWTConsole;
    new-instance v1, Ljava/awt/Frame;

    const-string v2, "Bsh Console"

    invoke-direct {v1, v2}, Ljava/awt/Frame;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, "f":Ljava/awt/Frame;
    const-string v2, "Center"

    invoke-virtual {v1, v0, v2}, Ljava/awt/Frame;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v1}, Ljava/awt/Frame;->pack()V

    .line 322
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/awt/Frame;->setVisible(Z)V

    .line 323
    new-instance v2, Lbsh/util/AWTConsole$1;

    invoke-direct {v2, v1}, Lbsh/util/AWTConsole$1;-><init>(Ljava/awt/Frame;)V

    invoke-virtual {v1, v2}, Ljava/awt/Frame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 329
    new-instance v2, Lbsh/Interpreter;

    invoke-direct {v2, v0}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;)V

    .line 330
    .local v2, "interpreter":Lbsh/Interpreter;
    invoke-virtual {v2}, Lbsh/Interpreter;->run()V

    .line 331
    return-void
.end method

.method private showHistoryLine()V
    .locals 3

    .line 254
    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lbsh/util/AWTConsole;->startedLine:Ljava/lang/String;

    .local v0, "showline":Ljava/lang/String;
    goto :goto_0

    .line 257
    .end local v0    # "showline":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lbsh/util/AWTConsole;->histLine:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    .restart local v0    # "showline":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lbsh/util/AWTConsole;->textLength:I

    iget-object v2, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lbsh/util/AWTConsole;->textLength:I

    invoke-virtual {p0, v0, v1, v2}, Lbsh/util/AWTConsole;->replaceRange(Ljava/lang/String;II)V

    .line 260
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lbsh/util/AWTConsole;->textLength:I

    .line 262
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 282
    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, p1, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    .line 283
    return-void
.end method

.method public getErr()Ljava/io/PrintStream;
    .locals 1

    .line 90
    iget-object v0, p0, Lbsh/util/AWTConsole;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .locals 2

    .line 88
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lbsh/util/AWTConsole;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .locals 1

    .line 89
    iget-object v0, p0, Lbsh/util/AWTConsole;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 122
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyChar()C

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getModifiers()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lbsh/util/AWTConsole;->type(ICI)V

    .line 123
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    .line 124
    return-void
.end method

.method public keyReleased(Ljava/awt/event/KeyEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 339
    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 338
    return-void
.end method

.method public declared-synchronized print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    monitor-enter p0

    .line 291
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 290
    .end local p0    # "this":Lbsh/util/AWTConsole;
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public print(Ljava/lang/Object;Ljava/awt/Color;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "c"    # Ljava/awt/Color;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public run()V
    .locals 2

    .line 311
    :try_start_0
    invoke-direct {p0}, Lbsh/util/AWTConsole;->inPipeWatcher()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Console: I/O Error..."

    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->println(Ljava/lang/Object;)V

    .line 315
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public setCaretPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 217
    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getPeer()Ljava/awt/peer/ComponentPeer;

    move-result-object v0

    check-cast v0, Ljava/awt/peer/TextComponentPeer;

    .line 218
    invoke-direct {p0}, Lbsh/util/AWTConsole;->countNLs()I

    move-result v1

    add-int/2addr v1, p1

    .line 217
    invoke-interface {v0, v1}, Ljava/awt/peer/TextComponentPeer;->setCaretPosition(I)V

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 334
    const-string v0, "BeanShell AWTConsole"

    return-object v0
.end method

.method public type(ICI)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "ch"    # C
    .param p3, "modifiers"    # I

    .line 134
    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    .line 181
    invoke-direct {p0, p2}, Lbsh/util/AWTConsole;->doChar(C)V

    goto/16 :goto_0

    .line 146
    :sswitch_0
    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_0

    .line 147
    iget-object v1, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 148
    .local v1, "len":I
    iget v2, p0, Lbsh/util/AWTConsole;->textLength:I

    sub-int v3, v2, v1

    invoke-virtual {p0, v0, v3, v2}, Lbsh/util/AWTConsole;->replaceRange(Ljava/lang/String;II)V

    .line 149
    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 150
    iput v2, p0, Lbsh/util/AWTConsole;->histLine:I

    .line 151
    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    .line 152
    .end local v1    # "len":I
    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, p2}, Lbsh/util/AWTConsole;->doChar(C)V

    .line 154
    goto :goto_0

    .line 173
    :sswitch_1
    and-int/lit8 v0, p3, 0x2

    if-lez v0, :cond_1

    .line 174
    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    const-string v1, "^C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0, p2}, Lbsh/util/AWTConsole;->doChar(C)V

    .line 179
    goto :goto_0

    .line 159
    :sswitch_2
    invoke-direct {p0}, Lbsh/util/AWTConsole;->historyDown()V

    .line 160
    goto :goto_0

    .line 156
    :sswitch_3
    invoke-direct {p0}, Lbsh/util/AWTConsole;->historyUp()V

    .line 157
    goto :goto_0

    .line 143
    :sswitch_4
    invoke-direct {p0}, Lbsh/util/AWTConsole;->enter()V

    .line 144
    goto :goto_0

    .line 162
    :sswitch_5
    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    .line 165
    goto :goto_0

    .line 136
    :sswitch_6
    iget-object v1, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 137
    iget-object v1, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 138
    iget v1, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lbsh/util/AWTConsole;->replaceRange(Ljava/lang/String;II)V

    .line 139
    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    .line 183
    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0x26 -> :sswitch_3
        0x28 -> :sswitch_2
        0x43 -> :sswitch_1
        0x55 -> :sswitch_0
    .end sparse-switch
.end method
