.class public abstract Lorg/jline/terminal/impl/AbstractWindowsTerminal;
.super Lorg/jline/terminal/impl/AbstractTerminal;
.source "AbstractWindowsTerminal.java"


# static fields
.field static final ALT_FLAG:I = 0x2

.field static final CAPSLOCK_ON:I = 0x80

.field static final CTRL_FLAG:I = 0x4

.field protected static final ENABLE_ECHO_INPUT:I = 0x4

.field protected static final ENABLE_INSERT_MODE:I = 0x20

.field protected static final ENABLE_LINE_INPUT:I = 0x2

.field protected static final ENABLE_MOUSE_INPUT:I = 0x10

.field protected static final ENABLE_PROCESSED_INPUT:I = 0x1

.field protected static final ENABLE_QUICK_EDIT_MODE:I = 0x40

.field public static final ENABLE_VIRTUAL_TERMINAL_PROCESSING:I = 0x4

.field protected static final ENABLE_WINDOW_INPUT:I = 0x8

.field static final LEFT_ALT_PRESSED:I = 0x2

.field static final LEFT_CTRL_PRESSED:I = 0x8

.field static final NUMLOCK_ON:I = 0x20

.field static final RIGHT_ALT_PRESSED:I = 0x1

.field static final RIGHT_CTRL_PRESSED:I = 0x4

.field static final SCROLLLOCK_ON:I = 0x40

.field static final SHIFT_FLAG:I = 0x1

.field static final SHIFT_PRESSED:I = 0x10

.field public static final TYPE_WINDOWS:Ljava/lang/String; = "windows"

.field public static final TYPE_WINDOWS_256_COLOR:Ljava/lang/String; = "windows-256color"

.field public static final TYPE_WINDOWS_CONEMU:Ljava/lang/String; = "windows-conemu"

.field public static final TYPE_WINDOWS_VTP:Ljava/lang/String; = "windows-vtp"

.field private static final UTF8_CODE_PAGE:I = 0xfde9


# instance fields
.field protected final attributes:Lorg/jline/terminal/Attributes;

.field protected final closer:Lorg/jline/utils/ShutdownHooks$Task;

.field private volatile closing:Z

.field protected focusTracking:Z

.field protected final input:Lorg/jline/utils/NonBlockingInputStream;

.field protected final lock:Ljava/lang/Object;

.field protected final nativeHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/terminal/Terminal$Signal;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final originalConsoleMode:I

.field protected final output:Ljava/io/OutputStream;

.field protected paused:Z

.field protected pump:Ljava/lang/Thread;

.field protected final reader:Lorg/jline/utils/NonBlockingReader;

.field protected final slaveInputPipe:Ljava/io/Writer;

.field protected tracking:Lorg/jline/terminal/Terminal$MouseTracking;

.field protected final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 8
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

    .line 84
    invoke-static {p4, p5}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->selectCharset(Ljava/nio/charset/Charset;I)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p7}, Lorg/jline/terminal/impl/AbstractTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->nativeHandlers:Ljava/util/Map;

    .line 72
    new-instance v0, Lorg/jline/terminal/Attributes;

    invoke-direct {v0}, Lorg/jline/terminal/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    .line 75
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->paused:Z

    .line 79
    sget-object v2, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    iput-object v2, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    .line 80
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->focusTracking:Z

    .line 85
    invoke-static {}, Lorg/jline/utils/NonBlocking;->nonBlockingPumpReader()Lorg/jline/utils/NonBlockingPumpReader;

    move-result-object v3

    .line 86
    .local v3, "reader":Lorg/jline/utils/NonBlockingPumpReader;
    invoke-virtual {v3}, Lorg/jline/utils/NonBlockingPumpReader;->getWriter()Ljava/io/Writer;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->slaveInputPipe:Ljava/io/Writer;

    .line 87
    iput-object v3, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    .line 88
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jline/utils/NonBlocking;->nonBlockingStream(Lorg/jline/utils/NonBlockingReader;Ljava/nio/charset/Charset;)Lorg/jline/utils/NonBlockingInputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    .line 89
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->writer:Ljava/io/PrintWriter;

    .line 90
    new-instance v4, Lorg/jline/utils/WriterOutputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/jline/utils/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    iput-object v4, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->output:Ljava/io/OutputStream;

    .line 91
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->parseInfoCmp()V

    .line 93
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getConsoleMode()I

    move-result v4

    iput v4, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->originalConsoleMode:I

    .line 94
    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v0, v4, v1}, Lorg/jline/terminal/Attributes;->setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V

    .line 95
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->ctrl(C)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 96
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    const/16 v4, 0x44

    invoke-virtual {p0, v4}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->ctrl(C)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 97
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    const/16 v4, 0x5a

    invoke-virtual {p0, v4}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->ctrl(C)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 99
    if-eqz p6, :cond_1

    .line 100
    invoke-static {}, Lorg/jline/terminal/Terminal$Signal;->values()[Lorg/jline/terminal/Terminal$Signal;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 101
    .local v4, "signal":Lorg/jline/terminal/Terminal$Signal;
    sget-object v5, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    if-ne p7, v5, :cond_0

    .line 102
    iget-object v5, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->nativeHandlers:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/utils/Signals;->registerDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_0
    iget-object v5, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->nativeHandlers:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/jline/terminal/impl/AbstractWindowsTerminal$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v4}, Lorg/jline/terminal/impl/AbstractWindowsTerminal$$ExternalSyntheticLambda1;-><init>(Lorg/jline/terminal/impl/AbstractWindowsTerminal;Lorg/jline/terminal/Terminal$Signal;)V

    invoke-static {v6, v7}, Lorg/jline/utils/Signals;->register(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v4    # "signal":Lorg/jline/terminal/Terminal$Signal;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Lorg/jline/terminal/impl/AbstractWindowsTerminal$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal$$ExternalSyntheticLambda2;-><init>(Lorg/jline/terminal/impl/AbstractWindowsTerminal;)V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->closer:Lorg/jline/utils/ShutdownHooks$Task;

    .line 109
    invoke-static {v0}, Lorg/jline/utils/ShutdownHooks;->add(Lorg/jline/utils/ShutdownHooks$Task;)Lorg/jline/utils/ShutdownHooks$Task;

    .line 111
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows-conemu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string v0, "org.jline.terminal.conemu.disable-activate"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    const-string v0, "\u001b[9999E"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 116
    :cond_2
    return-void
.end method

.method private static getCodepageCharset(I)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "codepage"    # I

    .line 133
    const v0, 0xfde9

    if-ne p0, v0, :cond_0

    .line 134
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "charsetMS":Ljava/lang/String;
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "charsetCP":Ljava/lang/String;
    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    return-object v2

    .line 144
    :cond_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    return-object v2
.end method

.method private static selectCharset(Ljava/nio/charset/Charset;I)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "encoding"    # Ljava/nio/charset/Charset;
    .param p1, "codepage"    # I

    .line 119
    if-eqz p0, :cond_0

    .line 120
    return-object p0

    .line 123
    :cond_0
    if-ltz p1, :cond_1

    .line 124
    invoke-static {p1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getCodepageCharset(I)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public canPauseResume()Z
    .locals 1

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method protected ctrl(C)I
    .locals 1
    .param p1, "key"    # C

    .line 209
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method protected doClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-super {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->doClose()V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->closing:Z

    .line 219
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->closer:Lorg/jline/utils/ShutdownHooks$Task;

    invoke-static {v0}, Lorg/jline/utils/ShutdownHooks;->remove(Lorg/jline/utils/ShutdownHooks$Task;)V

    .line 223
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->nativeHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jline/terminal/Terminal$Signal;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v2}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jline/utils/Signals;->unregister(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jline/terminal/Terminal$Signal;Ljava/lang/Object;>;"
    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingReader;->close()V

    .line 227
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 228
    iget v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->originalConsoleMode:I

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->setConsoleMode(I)V

    .line 229
    return-void
.end method

.method public getAttributes()Lorg/jline/terminal/Attributes;
    .locals 4

    .line 179
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getConsoleMode()I

    move-result v0

    .line 180
    .local v0, "mode":I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v3, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v3, v2}, Lorg/jline/terminal/Attributes;->setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V

    .line 183
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v3, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v3, v2}, Lorg/jline/terminal/Attributes;->setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V

    .line 186
    :cond_1
    new-instance v1, Lorg/jline/terminal/Attributes;

    iget-object v2, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    invoke-direct {v1, v2}, Lorg/jline/terminal/Attributes;-><init>(Lorg/jline/terminal/Attributes;)V

    return-object v1
.end method

.method protected abstract getConsoleMode()I
.end method

.method protected getEscapeSequence(SI)Ljava/lang/String;
    .locals 4
    .param p1, "keyCode"    # S
    .param p2, "keyState"    # I

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "escapeSequence":Ljava/lang/String;
    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 387
    return-object v1

    .line 382
    :sswitch_0
    if-lez p2, :cond_0

    const-string v1, "\\E[24;%p1%d~"

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f12:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 383
    goto/16 :goto_13

    .line 379
    :sswitch_1
    if-lez p2, :cond_1

    const-string v1, "\\E[23;%p1%d~"

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f11:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 380
    goto/16 :goto_13

    .line 376
    :sswitch_2
    if-lez p2, :cond_2

    const-string v1, "\\E[21;%p1%d~"

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f10:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v0, v1

    .line 377
    goto/16 :goto_13

    .line 373
    :sswitch_3
    if-lez p2, :cond_3

    const-string v1, "\\E[20;%p1%d~"

    goto :goto_3

    :cond_3
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f9:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v0, v1

    .line 374
    goto/16 :goto_13

    .line 370
    :sswitch_4
    if-lez p2, :cond_4

    const-string v1, "\\E[19;%p1%d~"

    goto :goto_4

    :cond_4
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f8:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v0, v1

    .line 371
    goto/16 :goto_13

    .line 367
    :sswitch_5
    if-lez p2, :cond_5

    const-string v1, "\\E[18;%p1%d~"

    goto :goto_5

    :cond_5
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f7:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v0, v1

    .line 368
    goto/16 :goto_13

    .line 364
    :sswitch_6
    if-lez p2, :cond_6

    const-string v1, "\\E[17;%p1%d~"

    goto :goto_6

    :cond_6
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f6:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v0, v1

    .line 365
    goto/16 :goto_13

    .line 361
    :sswitch_7
    if-lez p2, :cond_7

    const-string v1, "\\E[15;%p1%d~"

    goto :goto_7

    :cond_7
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f5:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object v0, v1

    .line 362
    goto/16 :goto_13

    .line 358
    :sswitch_8
    if-lez p2, :cond_8

    const-string v1, "\\E[1;%p1%dS"

    goto :goto_8

    :cond_8
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f4:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v0, v1

    .line 359
    goto/16 :goto_13

    .line 355
    :sswitch_9
    if-lez p2, :cond_9

    const-string v1, "\\E[1;%p1%dR"

    goto :goto_9

    :cond_9
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f3:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object v0, v1

    .line 356
    goto/16 :goto_13

    .line 352
    :sswitch_a
    if-lez p2, :cond_a

    const-string v1, "\\E[1;%p1%dQ"

    goto :goto_a

    :cond_a
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f2:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    move-object v0, v1

    .line 353
    goto/16 :goto_13

    .line 349
    :sswitch_b
    if-lez p2, :cond_b

    const-string v1, "\\E[1;%p1%dP"

    goto :goto_b

    :cond_b
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_f1:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    move-object v0, v1

    .line 350
    goto/16 :goto_13

    .line 346
    :sswitch_c
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_dc:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    .line 347
    goto/16 :goto_13

    .line 343
    :sswitch_d
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_ic:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    .line 344
    goto/16 :goto_13

    .line 340
    :sswitch_e
    if-lez p2, :cond_c

    const-string v1, "\\E[1;%p1%dB"

    goto :goto_c

    :cond_c
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    move-object v0, v1

    .line 341
    goto/16 :goto_13

    .line 337
    :sswitch_f
    if-lez p2, :cond_d

    const-string v1, "\\E[1;%p1%dC"

    goto :goto_d

    :cond_d
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_d
    move-object v0, v1

    .line 338
    goto/16 :goto_13

    .line 334
    :sswitch_10
    if-lez p2, :cond_e

    const-string v1, "\\E[1;%p1%dA"

    goto :goto_e

    :cond_e
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    move-object v0, v1

    .line 335
    goto :goto_13

    .line 331
    :sswitch_11
    if-lez p2, :cond_f

    const-string v1, "\\E[1;%p1%dD"

    goto :goto_f

    :cond_f
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_f
    move-object v0, v1

    .line 332
    goto :goto_13

    .line 328
    :sswitch_12
    if-lez p2, :cond_10

    const-string v1, "\\E[1;%p1%dH"

    goto :goto_10

    :cond_10
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_home:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    move-object v0, v1

    .line 329
    goto :goto_13

    .line 325
    :sswitch_13
    if-lez p2, :cond_11

    const-string v1, "\\E[1;%p1%dF"

    goto :goto_11

    :cond_11
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_end:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    move-object v0, v1

    .line 326
    goto :goto_13

    .line 322
    :sswitch_14
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_npage:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    .line 323
    goto :goto_13

    .line 319
    :sswitch_15
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_ppage:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    .line 320
    goto :goto_13

    .line 316
    :sswitch_16
    and-int/lit8 v2, p2, 0x1

    if-lez v2, :cond_12

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_btab:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :cond_12
    move-object v0, v1

    .line 317
    goto :goto_13

    .line 313
    :sswitch_17
    and-int/lit8 v1, p2, 0x2

    if-lez v1, :cond_13

    const-string v1, "\\E^H"

    goto :goto_12

    :cond_13
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->key_backspace:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    :goto_12
    move-object v0, v1

    .line 314
    nop

    .line 389
    :goto_13
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_17
        0x9 -> :sswitch_16
        0x21 -> :sswitch_15
        0x22 -> :sswitch_14
        0x23 -> :sswitch_13
        0x24 -> :sswitch_12
        0x25 -> :sswitch_11
        0x26 -> :sswitch_10
        0x27 -> :sswitch_f
        0x28 -> :sswitch_e
        0x2d -> :sswitch_d
        0x2e -> :sswitch_c
        0x70 -> :sswitch_b
        0x71 -> :sswitch_a
        0x72 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x75 -> :sswitch_6
        0x76 -> :sswitch_5
        0x77 -> :sswitch_4
        0x78 -> :sswitch_3
        0x79 -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method protected getRawSequence(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;
    .locals 1
    .param p1, "cap"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 393
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;
    .locals 3
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;
    .param p2, "handler"    # Lorg/jline/terminal/Terminal$SignalHandler;

    .line 149
    invoke-super {p0, p1, p2}, Lorg/jline/terminal/impl/AbstractTerminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v0

    .line 150
    .local v0, "prev":Lorg/jline/terminal/Terminal$SignalHandler;
    if-eq v0, p2, :cond_1

    .line 151
    sget-object v1, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    if-ne p2, v1, :cond_0

    .line 152
    invoke-virtual {p1}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/utils/Signals;->registerDefault(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Lorg/jline/terminal/Terminal$Signal;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/jline/terminal/impl/AbstractWindowsTerminal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal$$ExternalSyntheticLambda3;-><init>(Lorg/jline/terminal/impl/AbstractWindowsTerminal;Lorg/jline/terminal/Terminal$Signal;)V

    invoke-static {v1, v2}, Lorg/jline/utils/Signals;->register(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 157
    :cond_1
    :goto_0
    return-object v0
.end method

.method public hasFocusSupport()Z
    .locals 1

    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method public input()Ljava/io/InputStream;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    return-object v0
.end method

.method synthetic lambda$handle$1$org-jline-terminal-impl-AbstractWindowsTerminal(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 154
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method

.method synthetic lambda$new$0$org-jline-terminal-impl-AbstractWindowsTerminal(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 104
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method

.method public output()Ljava/io/OutputStream;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 414
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->paused:Z

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause(Z)V
    .locals 2
    .param p1, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->paused:Z

    .line 424
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    .line 425
    .local v1, "p":Ljava/lang/Thread;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 428
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 430
    :cond_0
    return-void

    .line 425
    .end local v1    # "p":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public paused()Z
    .locals 2

    .line 446
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-boolean v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->paused:Z

    monitor-exit v0

    return v1

    .line 448
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract processConsoleInput()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public processInputChar(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 483
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 484
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 486
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->QUIT:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 487
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 489
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 490
    return-void

    .line 491
    :cond_2
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 492
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->INFO:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 495
    :cond_3
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 496
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 497
    return-void

    .line 499
    :cond_4
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    const/16 p1, 0xa

    goto :goto_0

    .line 502
    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v1, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 503
    const/16 p1, 0xd

    .line 509
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->slaveInputPipe:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 510
    return-void
.end method

.method protected processKeyEvent(ZSCI)V
    .locals 8
    .param p1, "isKeyDown"    # Z
    .param p2, "virtualKeyCode"    # S
    .param p3, "ch"    # C
    .param p4, "controlKeyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    and-int/lit8 v0, p4, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 246
    .local v0, "isCtrl":Z
    :goto_0
    and-int/lit8 v3, p4, 0x3

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 247
    .local v3, "isAlt":Z
    :goto_1
    and-int/lit8 v4, p4, 0x10

    if-lez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 249
    .local v4, "isShift":Z
    :goto_2
    const/4 v5, 0x3

    if-eqz p1, :cond_11

    if-eq p3, v5, :cond_11

    .line 252
    if-eqz p3, :cond_3

    and-int/lit8 v5, p4, 0x1f

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 255
    invoke-virtual {p0, p3}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    goto/16 :goto_a

    .line 257
    :cond_3
    if-eqz v0, :cond_4

    const/4 v5, 0x4

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    if-eqz v3, :cond_5

    const/4 v6, 0x2

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    add-int/2addr v5, v6

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    add-int/2addr v5, v1

    invoke-virtual {p0, p2, v5}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->getEscapeSequence(SI)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "keySeq":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    :goto_6
    if-ge v2, v6, :cond_7

    aget-char v7, v5, v2

    .line 260
    .local v7, "c":C
    invoke-virtual {p0, v7}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    .line 259
    .end local v7    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 262
    :cond_7
    return-void

    .line 272
    :cond_8
    const/16 v2, 0x1b

    if-lez p3, :cond_c

    .line 273
    if-eqz v3, :cond_9

    .line 274
    invoke-virtual {p0, v2}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    .line 276
    :cond_9
    if-eqz v0, :cond_b

    const/16 v2, 0x20

    if-eq p3, v2, :cond_b

    const/16 v2, 0xa

    if-eq p3, v2, :cond_b

    const/16 v2, 0x7f

    if-eq p3, v2, :cond_b

    .line 277
    const/16 v5, 0x3f

    if-ne p3, v5, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    :goto_7
    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    goto :goto_9

    .line 279
    :cond_b
    invoke-virtual {p0, p3}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    goto :goto_9

    .line 281
    :cond_c
    if-eqz v0, :cond_10

    .line 282
    const/16 v5, 0x41

    if-lt p2, v5, :cond_d

    const/16 v5, 0x5a

    if-gt p2, v5, :cond_d

    .line 283
    add-int/lit8 v5, p2, -0x40

    int-to-char p3, v5

    goto :goto_8

    .line 284
    :cond_d
    const/16 v5, 0xbf

    if-ne p2, v5, :cond_e

    .line 285
    const/16 p3, 0x7f

    .line 287
    :cond_e
    :goto_8
    if-lez p3, :cond_10

    .line 288
    if-eqz v3, :cond_f

    .line 289
    invoke-virtual {p0, v2}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    .line 291
    :cond_f
    invoke-virtual {p0, p3}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    .line 294
    .end local v1    # "keySeq":Ljava/lang/String;
    :cond_10
    :goto_9
    goto :goto_a

    .line 295
    :cond_11
    if-eqz p1, :cond_12

    if-ne p3, v5, :cond_12

    .line 296
    invoke-virtual {p0, v5}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    goto :goto_a

    .line 301
    :cond_12
    const/16 v1, 0x12

    if-ne p2, v1, :cond_13

    if-lez p3, :cond_13

    .line 302
    invoke-virtual {p0, p3}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processInputChar(C)V

    .line 305
    :cond_13
    :goto_a
    return-void
.end method

.method protected pump()V
    .locals 7

    .line 453
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->closing:Z

    if-nez v1, :cond_2

    .line 454
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 455
    :try_start_1
    iget-boolean v2, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->paused:Z

    if-eqz v2, :cond_1

    .line 456
    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    .line 457
    monitor-exit v1

    goto :goto_1

    .line 459
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :try_start_2
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->processConsoleInput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->slaveInputPipe:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 474
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_5
    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    .line 476
    monitor-exit v1

    .line 477
    :goto_2
    goto :goto_4

    .line 476
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 474
    :catchall_2
    move-exception v1

    goto :goto_5

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    iget-boolean v2, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->closing:Z

    if-nez v2, :cond_3

    .line 466
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Error in WindowsStreamPump"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 468
    :try_start_7
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 471
    goto :goto_3

    .line 469
    :catch_1
    move-exception v3

    .line 470
    .local v3, "e1":Ljava/io/IOException;
    :try_start_8
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Error closing terminal"

    aput-object v6, v2, v5

    aput-object v1, v2, v4

    invoke-static {v2}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 474
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_9
    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    .line 476
    monitor-exit v1

    goto :goto_2

    .line 478
    :goto_4
    return-void

    .line 476
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 474
    :goto_5
    iget-object v2, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 475
    :try_start_a
    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    .line 476
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 477
    throw v1

    .line 476
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method

.method public reader()Lorg/jline/utils/NonBlockingReader;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    return-object v0
.end method

.method public resume()V
    .locals 4

    .line 434
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->paused:Z

    .line 436
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 437
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/jline/terminal/impl/AbstractWindowsTerminal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal$$ExternalSyntheticLambda0;-><init>(Lorg/jline/terminal/impl/AbstractWindowsTerminal;)V

    const-string v3, "WindowsStreamPump"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    .line 438
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 439
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->pump:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 441
    :cond_0
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAttributes(Lorg/jline/terminal/Attributes;)V
    .locals 1
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;

    .line 190
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    invoke-virtual {v0, p1}, Lorg/jline/terminal/Attributes;->copy(Lorg/jline/terminal/Attributes;)V

    .line 191
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->updateConsoleMode()V

    .line 192
    return-void
.end method

.method protected abstract setConsoleMode(I)V
.end method

.method public setSize(Lorg/jline/terminal/Size;)V
    .locals 2
    .param p1, "size"    # Lorg/jline/terminal/Size;

    .line 213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not resize windows terminal"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public trackFocus(Z)Z
    .locals 1
    .param p1, "tracking"    # Z

    .line 403
    iput-boolean p1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->focusTracking:Z

    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z
    .locals 1
    .param p1, "tracking"    # Lorg/jline/terminal/Terminal$MouseTracking;

    .line 514
    iput-object p1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    .line 515
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->updateConsoleMode()V

    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method protected updateConsoleMode()V
    .locals 3

    .line 195
    const/16 v0, 0x8

    .line 196
    .local v0, "mode":I
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    or-int/lit8 v0, v0, 0x4

    .line 199
    :cond_0
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->attributes:Lorg/jline/terminal/Attributes;

    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    or-int/lit8 v0, v0, 0x2

    .line 202
    :cond_1
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->tracking:Lorg/jline/terminal/Terminal$MouseTracking;

    sget-object v2, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    if-eq v1, v2, :cond_2

    .line 203
    or-int/lit8 v0, v0, 0x10

    .line 205
    :cond_2
    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->setConsoleMode(I)V

    .line 206
    return-void
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractWindowsTerminal;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method
