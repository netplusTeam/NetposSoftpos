.class public Lorg/jline/terminal/impl/MouseSupport;
.super Ljava/lang/Object;
.source "MouseSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMouseSupport(Lorg/jline/terminal/Terminal;)Z
    .locals 1
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 26
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->key_mouse:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p0, v0}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$readMouse$0(Lorg/jline/terminal/Terminal;)I
    .locals 1
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 53
    invoke-static {p0}, Lorg/jline/terminal/impl/MouseSupport;->readExt(Lorg/jline/terminal/Terminal;)I

    move-result v0

    return v0
.end method

.method private static readExt(Lorg/jline/terminal/Terminal;)I
    .locals 3
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 124
    :try_start_0
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Lorg/jline/utils/InputStreamReader;

    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->input()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/jline/utils/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0}, Lorg/jline/utils/InputStreamReader;->read()I

    move-result v0

    .local v0, "c":I
    goto :goto_0

    .line 127
    .end local v0    # "c":I
    :cond_0
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingReader;->read()I

    move-result v0

    .line 129
    .restart local v0    # "c":I
    :goto_0
    if-ltz v0, :cond_1

    .line 132
    return v0

    .line 130
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .end local p0    # "terminal":Lorg/jline/terminal/Terminal;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "c":I
    .restart local p0    # "terminal":Lorg/jline/terminal/Terminal;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readMouse(Ljava/util/function/IntSupplier;Lorg/jline/terminal/MouseEvent;)Lorg/jline/terminal/MouseEvent;
    .locals 13
    .param p0, "reader"    # Ljava/util/function/IntSupplier;
    .param p1, "last"    # Lorg/jline/terminal/MouseEvent;

    .line 57
    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x20

    .line 58
    .local v0, "cb":I
    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 59
    .local v1, "cx":I
    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x20

    add-int/lit8 v9, v3, -0x1

    .line 62
    .local v9, "cy":I
    const-class v3, Lorg/jline/terminal/MouseEvent$Modifier;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v10

    .line 63
    .local v10, "modifiers":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/MouseEvent$Modifier;>;"
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 64
    sget-object v3, Lorg/jline/terminal/MouseEvent$Modifier;->Shift:Lorg/jline/terminal/MouseEvent$Modifier;

    invoke-virtual {v10, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 67
    sget-object v3, Lorg/jline/terminal/MouseEvent$Modifier;->Alt:Lorg/jline/terminal/MouseEvent$Modifier;

    invoke-virtual {v10, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 70
    sget-object v3, Lorg/jline/terminal/MouseEvent$Modifier;->Control:Lorg/jline/terminal/MouseEvent$Modifier;

    invoke-virtual {v10, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 73
    sget-object v3, Lorg/jline/terminal/MouseEvent$Type;->Wheel:Lorg/jline/terminal/MouseEvent$Type;

    .line 74
    .local v3, "type":Lorg/jline/terminal/MouseEvent$Type;
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v2, :cond_3

    sget-object v2, Lorg/jline/terminal/MouseEvent$Button;->WheelDown:Lorg/jline/terminal/MouseEvent$Button;

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/jline/terminal/MouseEvent$Button;->WheelUp:Lorg/jline/terminal/MouseEvent$Button;

    :goto_0
    move-object v11, v3

    .local v2, "button":Lorg/jline/terminal/MouseEvent$Button;
    goto/16 :goto_2

    .line 76
    .end local v2    # "button":Lorg/jline/terminal/MouseEvent$Button;
    .end local v3    # "type":Lorg/jline/terminal/MouseEvent$Type;
    :cond_4
    and-int/lit8 v2, v0, 0x3

    .line 77
    .local v2, "b":I
    packed-switch v2, :pswitch_data_0

    .line 106
    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v3

    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Pressed:Lorg/jline/terminal/MouseEvent$Type;

    if-eq v3, v4, :cond_c

    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v3

    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Dragged:Lorg/jline/terminal/MouseEvent$Type;

    if-ne v3, v4, :cond_b

    goto/16 :goto_1

    .line 97
    :pswitch_0
    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->Button3:Lorg/jline/terminal/MouseEvent$Button;

    .line 98
    .local v3, "button":Lorg/jline/terminal/MouseEvent$Button;
    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getButton()Lorg/jline/terminal/MouseEvent$Button;

    move-result-object v4

    if-ne v4, v3, :cond_6

    .line 99
    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v4

    sget-object v5, Lorg/jline/terminal/MouseEvent$Type;->Pressed:Lorg/jline/terminal/MouseEvent$Type;

    if-eq v4, v5, :cond_5

    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v4

    sget-object v5, Lorg/jline/terminal/MouseEvent$Type;->Dragged:Lorg/jline/terminal/MouseEvent$Type;

    if-ne v4, v5, :cond_6

    .line 100
    :cond_5
    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Dragged:Lorg/jline/terminal/MouseEvent$Type;

    move-object v2, v3

    move-object v11, v4

    .local v4, "type":Lorg/jline/terminal/MouseEvent$Type;
    goto/16 :goto_2

    .line 102
    .end local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    :cond_6
    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Pressed:Lorg/jline/terminal/MouseEvent$Type;

    .line 104
    .restart local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    move-object v2, v3

    move-object v11, v4

    goto :goto_2

    .line 88
    .end local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    .end local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    :pswitch_1
    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->Button2:Lorg/jline/terminal/MouseEvent$Button;

    .line 89
    .restart local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getButton()Lorg/jline/terminal/MouseEvent$Button;

    move-result-object v4

    if-ne v4, v3, :cond_8

    .line 90
    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v4

    sget-object v5, Lorg/jline/terminal/MouseEvent$Type;->Pressed:Lorg/jline/terminal/MouseEvent$Type;

    if-eq v4, v5, :cond_7

    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v4

    sget-object v5, Lorg/jline/terminal/MouseEvent$Type;->Dragged:Lorg/jline/terminal/MouseEvent$Type;

    if-ne v4, v5, :cond_8

    .line 91
    :cond_7
    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Dragged:Lorg/jline/terminal/MouseEvent$Type;

    move-object v2, v3

    move-object v11, v4

    .restart local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    goto :goto_2

    .line 93
    .end local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    :cond_8
    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Pressed:Lorg/jline/terminal/MouseEvent$Type;

    .line 95
    .restart local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    move-object v2, v3

    move-object v11, v4

    goto :goto_2

    .line 79
    .end local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    .end local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    :pswitch_2
    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->Button1:Lorg/jline/terminal/MouseEvent$Button;

    .line 80
    .restart local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getButton()Lorg/jline/terminal/MouseEvent$Button;

    move-result-object v4

    if-ne v4, v3, :cond_a

    .line 81
    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v4

    sget-object v5, Lorg/jline/terminal/MouseEvent$Type;->Pressed:Lorg/jline/terminal/MouseEvent$Type;

    if-eq v4, v5, :cond_9

    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v4

    sget-object v5, Lorg/jline/terminal/MouseEvent$Type;->Dragged:Lorg/jline/terminal/MouseEvent$Type;

    if-ne v4, v5, :cond_a

    .line 82
    :cond_9
    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Dragged:Lorg/jline/terminal/MouseEvent$Type;

    move-object v2, v3

    move-object v11, v4

    .restart local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    goto :goto_2

    .line 84
    .end local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    :cond_a
    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Pressed:Lorg/jline/terminal/MouseEvent$Type;

    .line 86
    .restart local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    move-object v2, v3

    move-object v11, v4

    goto :goto_2

    .line 110
    .end local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    .end local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    :cond_b
    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->NoButton:Lorg/jline/terminal/MouseEvent$Button;

    .line 111
    .restart local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Moved:Lorg/jline/terminal/MouseEvent$Type;

    move-object v2, v3

    move-object v11, v4

    .restart local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    goto :goto_2

    .line 107
    .end local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    .end local v4    # "type":Lorg/jline/terminal/MouseEvent$Type;
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lorg/jline/terminal/MouseEvent;->getButton()Lorg/jline/terminal/MouseEvent$Button;

    move-result-object v3

    .line 108
    .restart local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    sget-object v4, Lorg/jline/terminal/MouseEvent$Type;->Released:Lorg/jline/terminal/MouseEvent$Type;

    move-object v2, v3

    move-object v11, v4

    .line 116
    .end local v3    # "button":Lorg/jline/terminal/MouseEvent$Button;
    .local v2, "button":Lorg/jline/terminal/MouseEvent$Button;
    .local v11, "type":Lorg/jline/terminal/MouseEvent$Type;
    :goto_2
    new-instance v12, Lorg/jline/terminal/MouseEvent;

    move-object v3, v12

    move-object v4, v11

    move-object v5, v2

    move-object v6, v10

    move v7, v1

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lorg/jline/terminal/MouseEvent;-><init>(Lorg/jline/terminal/MouseEvent$Type;Lorg/jline/terminal/MouseEvent$Button;Ljava/util/EnumSet;II)V

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readMouse(Lorg/jline/terminal/Terminal;Lorg/jline/terminal/MouseEvent;)Lorg/jline/terminal/MouseEvent;
    .locals 1
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "last"    # Lorg/jline/terminal/MouseEvent;

    .line 53
    new-instance v0, Lorg/jline/terminal/impl/MouseSupport$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/jline/terminal/impl/MouseSupport$$ExternalSyntheticLambda0;-><init>(Lorg/jline/terminal/Terminal;)V

    invoke-static {v0, p1}, Lorg/jline/terminal/impl/MouseSupport;->readMouse(Ljava/util/function/IntSupplier;Lorg/jline/terminal/MouseEvent;)Lorg/jline/terminal/MouseEvent;

    move-result-object v0

    return-object v0
.end method

.method public static trackMouse(Lorg/jline/terminal/Terminal;Lorg/jline/terminal/Terminal$MouseTracking;)Z
    .locals 2
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "tracking"    # Lorg/jline/terminal/Terminal$MouseTracking;

    .line 30
    invoke-static {p0}, Lorg/jline/terminal/impl/MouseSupport;->hasMouseSupport(Lorg/jline/terminal/Terminal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lorg/jline/terminal/impl/MouseSupport$1;->$SwitchMap$org$jline$terminal$Terminal$MouseTracking:[I

    invoke-virtual {p1}, Lorg/jline/terminal/Terminal$MouseTracking;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\u001b[?1005h\u001b[?1003h"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\u001b[?1005h\u001b[?1002h"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 40
    goto :goto_0

    .line 36
    :pswitch_2
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\u001b[?1005h\u001b[?1000h"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 33
    :pswitch_3
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\u001b[?1000l"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 34
    nop

    .line 45
    :goto_0
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->flush()V

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
