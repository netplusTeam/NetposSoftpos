.class public abstract Lorg/jline/terminal/impl/AbstractTerminal;
.super Ljava/lang/Object;
.source "AbstractTerminal.java"

# interfaces
.implements Lorg/jline/terminal/Terminal;


# instance fields
.field protected final bools:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jline/utils/InfoCmp$Capability;",
            ">;"
        }
    .end annotation
.end field

.field protected final encoding:Ljava/nio/charset/Charset;

.field protected final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/terminal/Terminal$Signal;",
            "Lorg/jline/terminal/Terminal$SignalHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final ints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/utils/InfoCmp$Capability;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastMouseEvent:Lorg/jline/terminal/MouseEvent;

.field protected final name:Ljava/lang/String;

.field protected onClose:Ljava/lang/Runnable;

.field protected final palette:Lorg/jline/utils/ColorPalette;

.field protected status:Lorg/jline/utils/Status;

.field protected final strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/utils/InfoCmp$Capability;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/jline/terminal/impl/AbstractTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .param p4, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->handlers:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->bools:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->ints:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->strings:Ljava/util/Map;

    .line 47
    new-instance v0, Lorg/jline/utils/ColorPalette;

    invoke-direct {v0, p0}, Lorg/jline/utils/ColorPalette;-><init>(Lorg/jline/terminal/Terminal;)V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->palette:Lorg/jline/utils/ColorPalette;

    .line 221
    new-instance v0, Lorg/jline/terminal/MouseEvent;

    sget-object v2, Lorg/jline/terminal/MouseEvent$Type;->Moved:Lorg/jline/terminal/MouseEvent$Type;

    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->NoButton:Lorg/jline/terminal/MouseEvent$Button;

    const-class v1, Lorg/jline/terminal/MouseEvent$Modifier;

    .line 223
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jline/terminal/MouseEvent;-><init>(Lorg/jline/terminal/MouseEvent$Type;Lorg/jline/terminal/MouseEvent$Button;Ljava/util/EnumSet;II)V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->lastMouseEvent:Lorg/jline/terminal/MouseEvent;

    .line 56
    iput-object p1, p0, Lorg/jline/terminal/impl/AbstractTerminal;->name:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/jline/terminal/impl/AbstractTerminal;->type:Ljava/lang/String;

    .line 58
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->encoding:Ljava/nio/charset/Charset;

    .line 59
    invoke-static {}, Lorg/jline/terminal/Terminal$Signal;->values()[Lorg/jline/terminal/Terminal$Signal;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    .local v3, "signal":Lorg/jline/terminal/Terminal$Signal;
    iget-object v4, p0, Lorg/jline/terminal/impl/AbstractTerminal;->handlers:Ljava/util/Map;

    invoke-interface {v4, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v3    # "signal":Lorg/jline/terminal/Terminal$Signal;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method public canPauseResume()Z
    .locals 1

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method protected checkInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 262
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->onClose:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    :cond_0
    return-void

    .line 100
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractTerminal;->onClose:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractTerminal;->onClose:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 103
    :cond_1
    throw v0
.end method

.method protected doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->status:Lorg/jline/utils/Status;

    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    .line 109
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->flush()V

    .line 111
    :cond_0
    return-void
.end method

.method public echo()Z
    .locals 2

    .line 146
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v0

    sget-object v1, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v0

    return v0
.end method

.method public echo(Z)Z
    .locals 3
    .param p1, "echo"    # Z

    .line 150
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v0

    .line 151
    .local v0, "attr":Lorg/jline/terminal/Attributes;
    sget-object v1, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v1

    .line 152
    .local v1, "prev":Z
    if-eq v1, p1, :cond_0

    .line 153
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v0, v2, p1}, Lorg/jline/terminal/Attributes;->setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V

    .line 154
    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/AbstractTerminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 156
    :cond_0
    return v1
.end method

.method protected echoSignal(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 8
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "cc":Lorg/jline/terminal/Attributes$ControlChar;
    sget-object v1, Lorg/jline/terminal/impl/AbstractTerminal$1;->$SwitchMap$org$jline$terminal$Terminal$Signal:[I

    invoke-virtual {p1}, Lorg/jline/terminal/Terminal$Signal;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    sget-object v0, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    goto :goto_0

    .line 120
    :pswitch_1
    sget-object v0, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    .line 121
    goto :goto_0

    .line 117
    :pswitch_2
    sget-object v0, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    .line 118
    nop

    .line 126
    :goto_0
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    .line 128
    .local v1, "vcc":I
    if-lez v1, :cond_0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->writer()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [C

    const/16 v5, 0x5e

    const/4 v6, 0x0

    aput-char v5, v4, v6

    const/4 v5, 0x1

    add-int/lit8 v7, v1, 0x40

    int-to-char v7, v7

    aput-char v7, v4, v5

    invoke-virtual {v2, v4, v6, v3}, Ljava/io/PrintWriter;->write([CII)V

    .line 132
    .end local v1    # "vcc":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->encoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public enterRawMode()Lorg/jline/terminal/Attributes;
    .locals 6

    .line 135
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v0

    .line 136
    .local v0, "prvAttr":Lorg/jline/terminal/Attributes;
    new-instance v1, Lorg/jline/terminal/Attributes;

    invoke-direct {v1, v0}, Lorg/jline/terminal/Attributes;-><init>(Lorg/jline/terminal/Attributes;)V

    .line 137
    .local v1, "newAttr":Lorg/jline/terminal/Attributes;
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    sget-object v3, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jline/terminal/Attributes;->setLocalFlags(Ljava/util/EnumSet;Z)V

    .line 138
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v2, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/jline/terminal/Attributes;->setInputFlags(Ljava/util/EnumSet;Z)V

    .line 139
    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v2, v3}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 140
    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 141
    invoke-virtual {p0, v1}, Lorg/jline/terminal/impl/AbstractTerminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 142
    return-object v0
.end method

.method public flush()V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 178
    return-void
.end method

.method public getBooleanCapability(Lorg/jline/utils/InfoCmp$Capability;)Z
    .locals 1
    .param p1, "capability"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 190
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->bools:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCursorPosition(Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;
    .locals 1
    .param p1, "discarded"    # Ljava/util/function/IntConsumer;

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumericCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/Integer;
    .locals 1
    .param p1, "capability"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 194
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->ints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPalette()Lorg/jline/utils/ColorPalette;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->palette:Lorg/jline/utils/ColorPalette;

    return-object v0
.end method

.method public getStatus()Lorg/jline/utils/Status;
    .locals 1

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/AbstractTerminal;->getStatus(Z)Lorg/jline/utils/Status;

    move-result-object v0

    return-object v0
.end method

.method public getStatus(Z)Lorg/jline/utils/Status;
    .locals 1
    .param p1, "create"    # Z

    .line 73
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->status:Lorg/jline/utils/Status;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lorg/jline/utils/Status;

    invoke-direct {v0, p0}, Lorg/jline/utils/Status;-><init>(Lorg/jline/terminal/impl/AbstractTerminal;)V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->status:Lorg/jline/utils/Status;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->status:Lorg/jline/utils/Status;

    return-object v0
.end method

.method public getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;
    .locals 1
    .param p1, "capability"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 198
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->type:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;
    .locals 1
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;
    .param p2, "handler"    # Lorg/jline/terminal/Terminal$SignalHandler;

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Terminal$SignalHandler;

    return-object v0
.end method

.method public hasFocusSupport()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "xterm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMouseSupport()Z
    .locals 1

    .line 227
    invoke-static {p0}, Lorg/jline/terminal/impl/MouseSupport;->hasMouseSupport(Lorg/jline/terminal/Terminal;)Z

    move-result v0

    return v0
.end method

.method protected parseInfoCmp()V
    .locals 6

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "capabilities":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractTerminal;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    invoke-static {v1}, Lorg/jline/utils/InfoCmp;->getInfoCmp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 208
    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve infocmp for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jline/terminal/impl/AbstractTerminal;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 211
    const-string v1, "ansi"

    invoke-static {v1}, Lorg/jline/utils/InfoCmp;->getLoadedInfoCmp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_1
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractTerminal;->bools:Ljava/util/Set;

    iget-object v2, p0, Lorg/jline/terminal/impl/AbstractTerminal;->ints:Ljava/util/Map;

    iget-object v3, p0, Lorg/jline/terminal/impl/AbstractTerminal;->strings:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lorg/jline/utils/InfoCmp;->parseInfoCmp(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V

    .line 214
    return-void
.end method

.method public pause()V
    .locals 0

    .line 274
    return-void
.end method

.method public pause(Z)V
    .locals 0
    .param p1, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 278
    return-void
.end method

.method public paused()Z
    .locals 1

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public varargs puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "capability"    # Lorg/jline/utils/InfoCmp$Capability;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 181
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/AbstractTerminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    return v1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->writer()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    const/4 v1, 0x1

    return v1
.end method

.method public raise(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 2
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Terminal$SignalHandler;

    .line 88
    .local v0, "handler":Lorg/jline/terminal/Terminal$SignalHandler;
    sget-object v1, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_IGN:Lorg/jline/terminal/Terminal$SignalHandler;

    if-eq v0, v1, :cond_0

    .line 89
    invoke-interface {v0, p1}, Lorg/jline/terminal/Terminal$SignalHandler;->handle(Lorg/jline/terminal/Terminal$Signal;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractTerminal;->status:Lorg/jline/utils/Status;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    if-ne p1, v1, :cond_1

    .line 92
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractTerminal;->status:Lorg/jline/utils/Status;

    invoke-virtual {v1}, Lorg/jline/utils/Status;->resize()V

    .line 94
    :cond_1
    return-void
.end method

.method public readMouseEvent()Lorg/jline/terminal/MouseEvent;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->lastMouseEvent:Lorg/jline/terminal/MouseEvent;

    invoke-static {p0, v0}, Lorg/jline/terminal/impl/MouseSupport;->readMouse(Lorg/jline/terminal/Terminal;Lorg/jline/terminal/MouseEvent;)Lorg/jline/terminal/MouseEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->lastMouseEvent:Lorg/jline/terminal/MouseEvent;

    return-object v0
.end method

.method public readMouseEvent(Ljava/util/function/IntSupplier;)Lorg/jline/terminal/MouseEvent;
    .locals 1
    .param p1, "reader"    # Ljava/util/function/IntSupplier;

    .line 242
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->lastMouseEvent:Lorg/jline/terminal/MouseEvent;

    invoke-static {p1, v0}, Lorg/jline/terminal/impl/MouseSupport;->readMouse(Ljava/util/function/IntSupplier;Lorg/jline/terminal/MouseEvent;)Lorg/jline/terminal/MouseEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;->lastMouseEvent:Lorg/jline/terminal/MouseEvent;

    return-object v0
.end method

.method public resume()V
    .locals 0

    .line 282
    return-void
.end method

.method public setOnClose(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onClose"    # Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lorg/jline/terminal/impl/AbstractTerminal;->onClose:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method public trackFocus(Z)Z
    .locals 2
    .param p1, "tracking"    # Z

    .line 252
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->hasFocusSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "\u001b[?1004h"

    goto :goto_0

    :cond_0
    const-string v1, "\u001b[?1004l"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractTerminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 255
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z
    .locals 1
    .param p1, "tracking"    # Lorg/jline/terminal/Terminal$MouseTracking;

    .line 232
    invoke-static {p0, p1}, Lorg/jline/terminal/impl/MouseSupport;->trackMouse(Lorg/jline/terminal/Terminal;Lorg/jline/terminal/Terminal$MouseTracking;)Z

    move-result v0

    return v0
.end method
