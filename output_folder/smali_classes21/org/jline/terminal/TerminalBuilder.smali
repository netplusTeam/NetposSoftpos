.class public final Lorg/jline/terminal/TerminalBuilder;
.super Ljava/lang/Object;
.source "TerminalBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;
    }
.end annotation


# static fields
.field public static final PROP_CODEPAGE:Ljava/lang/String; = "org.jline.terminal.codepage"

.field public static final PROP_COLOR_DISTANCE:Ljava/lang/String; = "org.jline.utils.colorDistance"

.field public static final PROP_DISABLE_ALTERNATE_CHARSET:Ljava/lang/String; = "org.jline.utils.disableAlternateCharset"

.field public static final PROP_DUMB:Ljava/lang/String; = "org.jline.terminal.dumb"

.field public static final PROP_DUMB_COLOR:Ljava/lang/String; = "org.jline.terminal.dumb.color"

.field public static final PROP_ENCODING:Ljava/lang/String; = "org.jline.terminal.encoding"

.field public static final PROP_EXEC:Ljava/lang/String; = "org.jline.terminal.exec"

.field public static final PROP_JANSI:Ljava/lang/String; = "org.jline.terminal.jansi"

.field public static final PROP_JNA:Ljava/lang/String; = "org.jline.terminal.jna"

.field public static final PROP_NON_BLOCKING_READS:Ljava/lang/String; = "org.jline.terminal.pty.nonBlockingReads"

.field public static final PROP_TYPE:Ljava/lang/String; = "org.jline.terminal.type"

.field private static final SYSTEM_TERMINAL:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/jline/terminal/Terminal;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINAL_OVERRIDE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/jline/terminal/Terminal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributes:Lorg/jline/terminal/Attributes;

.field private codepage:I

.field private dumb:Ljava/lang/Boolean;

.field private encoding:Ljava/nio/charset/Charset;

.field private exec:Ljava/lang/Boolean;

.field private in:Ljava/io/InputStream;

.field private jansi:Ljava/lang/Boolean;

.field private jna:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private nativeSignals:Z

.field private out:Ljava/io/OutputStream;

.field private paused:Z

.field private signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

.field private size:Lorg/jline/terminal/Size;

.field private system:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/jline/terminal/TerminalBuilder;->SYSTEM_TERMINAL:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/jline/terminal/TerminalBuilder;->TERMINAL_OVERRIDE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/terminal/TerminalBuilder;->nativeSignals:Z

    .line 106
    sget-object v1, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    iput-object v1, p0, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    .line 107
    iput-boolean v0, p0, Lorg/jline/terminal/TerminalBuilder;->paused:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .line 40
    invoke-static {p0}, Lorg/jline/terminal/TerminalBuilder;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/jline/terminal/TerminalBuilder;
    .locals 1

    .line 86
    new-instance v0, Lorg/jline/terminal/TerminalBuilder;

    invoke-direct {v0}, Lorg/jline/terminal/TerminalBuilder;-><init>()V

    return-object v0
.end method

.method private doBuild()Lorg/jline/terminal/Terminal;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->name:Ljava/lang/String;

    .line 278
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 279
    const-string v0, "JLine terminal"

    move-object v12, v0

    goto :goto_0

    .line 278
    :cond_0
    move-object v12, v0

    .line 281
    .end local v0    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->encoding:Ljava/nio/charset/Charset;

    .line 282
    .local v0, "encoding":Ljava/nio/charset/Charset;
    if-nez v0, :cond_1

    .line 283
    const-string v2, "org.jline.terminal.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "charsetName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    .line 288
    .end local v2    # "charsetName":Ljava/lang/String;
    :cond_1
    move-object v13, v0

    .end local v0    # "encoding":Ljava/nio/charset/Charset;
    .local v13, "encoding":Ljava/nio/charset/Charset;
    :goto_1
    iget v0, v1, Lorg/jline/terminal/TerminalBuilder;->codepage:I

    .line 289
    .local v0, "codepage":I
    if-gtz v0, :cond_2

    .line 290
    const-string v2, "org.jline.terminal.codepage"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    goto :goto_2

    .line 295
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    move v14, v0

    .end local v0    # "codepage":I
    .local v14, "codepage":I
    :goto_2
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->type:Ljava/lang/String;

    .line 296
    .local v0, "type":Ljava/lang/String;
    const-string v2, "org.jline.terminal.type"

    if-nez v0, :cond_3

    .line 297
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_3
    const-string v11, "TERM"

    if-nez v0, :cond_4

    .line 300
    invoke-static {v11}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_3

    .line 299
    :cond_4
    move-object v15, v0

    .line 302
    .end local v0    # "type":Ljava/lang/String;
    .local v15, "type":Ljava/lang/String;
    :goto_3
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->jna:Ljava/lang/Boolean;

    .line 303
    .local v0, "jna":Ljava/lang/Boolean;
    const/4 v10, 0x1

    if-nez v0, :cond_5

    .line 304
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "org.jline.terminal.jna"

    invoke-static {v4, v3}, Lorg/jline/terminal/TerminalBuilder;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4

    .line 303
    :cond_5
    move-object/from16 v16, v0

    .line 306
    .end local v0    # "jna":Ljava/lang/Boolean;
    .local v16, "jna":Ljava/lang/Boolean;
    :goto_4
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->jansi:Ljava/lang/Boolean;

    .line 307
    .local v0, "jansi":Ljava/lang/Boolean;
    if-nez v0, :cond_6

    .line 308
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "org.jline.terminal.jansi"

    invoke-static {v4, v3}, Lorg/jline/terminal/TerminalBuilder;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_5

    .line 307
    :cond_6
    move-object/from16 v17, v0

    .line 310
    .end local v0    # "jansi":Ljava/lang/Boolean;
    .local v17, "jansi":Ljava/lang/Boolean;
    :goto_5
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->exec:Ljava/lang/Boolean;

    .line 311
    .local v0, "exec":Ljava/lang/Boolean;
    if-nez v0, :cond_7

    .line 312
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "org.jline.terminal.exec"

    invoke-static {v4, v3}, Lorg/jline/terminal/TerminalBuilder;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_6

    .line 311
    :cond_7
    move-object/from16 v18, v0

    .line 314
    .end local v0    # "exec":Ljava/lang/Boolean;
    .local v18, "exec":Ljava/lang/Boolean;
    :goto_6
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->dumb:Ljava/lang/Boolean;

    .line 315
    .local v0, "dumb":Ljava/lang/Boolean;
    const/4 v9, 0x0

    if-nez v0, :cond_8

    .line 316
    const-string v3, "org.jline.terminal.dumb"

    invoke-static {v3, v9}, Lorg/jline/terminal/TerminalBuilder;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_7

    .line 315
    :cond_8
    move-object/from16 v19, v0

    .line 318
    .end local v0    # "dumb":Ljava/lang/Boolean;
    .local v19, "dumb":Ljava/lang/Boolean;
    :goto_7
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->system:Ljava/lang/Boolean;

    const-string v20, "Error creating JANSI based terminal: "

    const-string v21, "Error creating JNA based terminal: "

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v22, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->system:Ljava/lang/Boolean;

    if-nez v0, :cond_28

    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->in:Ljava/io/InputStream;

    if-nez v0, :cond_28

    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_28

    .line 319
    :cond_a
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->system:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_d

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    .line 320
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a system terminal using non System streams"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_d
    :goto_8
    const/16 v23, 0x0

    .line 323
    .local v23, "terminal":Lorg/jline/terminal/Terminal;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to create a system terminal"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 324
    .local v6, "exception":Ljava/lang/IllegalStateException;
    new-instance v0, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;-><init>(ZZ)V

    move-object/from16 v24, v0

    .line 325
    .local v24, "tbs":Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;
    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->isConsoleInput()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->isConsoleOutput()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 326
    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->attributes:Lorg/jline/terminal/Attributes;

    if-nez v0, :cond_e

    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->size:Lorg/jline/terminal/Size;

    if-eqz v0, :cond_f

    .line 327
    :cond_e
    new-array v0, v10, [Ljava/lang/Object;

    const-string v3, "Attributes and size fields are ignored when creating a system terminal"

    aput-object v3, v0, v22

    invoke-static {v0}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 329
    :cond_f
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    const-string v25, "Error creating EXEC based terminal: "

    if-eqz v0, :cond_15

    .line 330
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_CYGWIN:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_MSYSTEM:Z

    if-nez v0, :cond_11

    .line 331
    sget-boolean v25, Lorg/jline/utils/OSUtils;->IS_CONEMU:Z

    .line 332
    .local v25, "ansiPassThrough":Z
    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->hasJnaSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 334
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->getJnaSupport()Lorg/jline/terminal/spi/JnaSupport;

    move-result-object v2

    iget-boolean v0, v1, Lorg/jline/terminal/TerminalBuilder;->nativeSignals:Z

    iget-object v5, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    iget-boolean v4, v1, Lorg/jline/terminal/TerminalBuilder;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v12

    move/from16 v26, v4

    move-object v4, v15

    move-object/from16 v27, v5

    move/from16 v5, v25

    move-object/from16 v28, v11

    move-object v11, v6

    .end local v6    # "exception":Ljava/lang/IllegalStateException;
    .local v11, "exception":Ljava/lang/IllegalStateException;
    move-object v6, v13

    move-object/from16 v29, v13

    move v13, v7

    .end local v13    # "encoding":Ljava/nio/charset/Charset;
    .local v29, "encoding":Ljava/nio/charset/Charset;
    move v7, v14

    move v13, v8

    move v8, v0

    move-object/from16 v9, v27

    move/from16 v10, v26

    :try_start_1
    invoke-interface/range {v2 .. v10}, Lorg/jline/terminal/spi/JnaSupport;->winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/Terminal;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v23, v0

    .line 339
    const/4 v10, 0x1

    goto :goto_a

    .line 336
    :catchall_0
    move-exception v0

    goto :goto_9

    .end local v11    # "exception":Ljava/lang/IllegalStateException;
    .end local v29    # "encoding":Ljava/nio/charset/Charset;
    .restart local v6    # "exception":Ljava/lang/IllegalStateException;
    .restart local v13    # "encoding":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v29, v13

    move-object v11, v6

    move v13, v8

    .line 337
    .end local v6    # "exception":Ljava/lang/IllegalStateException;
    .end local v13    # "encoding":Ljava/nio/charset/Charset;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v11    # "exception":Ljava/lang/IllegalStateException;
    .restart local v29    # "encoding":Ljava/nio/charset/Charset;
    :goto_9
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v21, v2, v22

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    aput-object v3, v2, v10

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 338
    invoke-virtual {v11, v0}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 332
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v11    # "exception":Ljava/lang/IllegalStateException;
    .end local v29    # "encoding":Ljava/nio/charset/Charset;
    .restart local v6    # "exception":Ljava/lang/IllegalStateException;
    .restart local v13    # "encoding":Ljava/nio/charset/Charset;
    :cond_10
    move-object/from16 v28, v11

    move-object/from16 v29, v13

    move-object v11, v6

    move v13, v8

    .line 341
    .end local v6    # "exception":Ljava/lang/IllegalStateException;
    .end local v13    # "encoding":Ljava/nio/charset/Charset;
    .restart local v11    # "exception":Ljava/lang/IllegalStateException;
    .restart local v29    # "encoding":Ljava/nio/charset/Charset;
    :goto_a
    if-nez v23, :cond_13

    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->hasJansiSupport()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 343
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->getJansiSupport()Lorg/jline/terminal/spi/JansiSupport;

    move-result-object v2

    iget-boolean v8, v1, Lorg/jline/terminal/TerminalBuilder;->nativeSignals:Z

    iget-object v9, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    iget-boolean v0, v1, Lorg/jline/terminal/TerminalBuilder;->paused:Z

    move-object v3, v12

    move-object v4, v15

    move/from16 v5, v25

    move-object/from16 v6, v29

    move v7, v14

    move v10, v0

    invoke-interface/range {v2 .. v10}, Lorg/jline/terminal/spi/JansiSupport;->winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/Terminal;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 348
    .end local v23    # "terminal":Lorg/jline/terminal/Terminal;
    .local v0, "terminal":Lorg/jline/terminal/Terminal;
    move-object/from16 v23, v0

    const/4 v10, 0x1

    goto :goto_b

    .line 345
    .end local v0    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local v23    # "terminal":Lorg/jline/terminal/Terminal;
    :catchall_2
    move-exception v0

    .line 346
    .local v0, "t":Ljava/lang/Throwable;
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v20, v2, v22

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    aput-object v3, v2, v10

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 347
    invoke-virtual {v11, v0}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 330
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v11    # "exception":Ljava/lang/IllegalStateException;
    .end local v25    # "ansiPassThrough":Z
    .end local v29    # "encoding":Ljava/nio/charset/Charset;
    .restart local v6    # "exception":Ljava/lang/IllegalStateException;
    .restart local v13    # "encoding":Ljava/nio/charset/Charset;
    :cond_11
    move-object/from16 v28, v11

    move-object/from16 v29, v13

    move-object v11, v6

    move v13, v8

    .line 350
    .end local v6    # "exception":Ljava/lang/IllegalStateException;
    .end local v13    # "encoding":Ljava/nio/charset/Charset;
    .restart local v11    # "exception":Ljava/lang/IllegalStateException;
    .restart local v29    # "encoding":Ljava/nio/charset/Charset;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 357
    :try_start_3
    const-string v0, "xterm"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lorg/jline/terminal/TerminalBuilder;->type:Ljava/lang/String;

    if-nez v0, :cond_12

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 358
    const-string v0, "xterm-256color"

    move-object v15, v0

    .line 360
    :cond_12
    new-instance v0, Lorg/jline/terminal/impl/PosixSysTerminal;

    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->getExecPty()Lorg/jline/terminal/spi/Pty;

    move-result-object v5

    iget-boolean v7, v1, Lorg/jline/terminal/TerminalBuilder;->nativeSignals:Z

    iget-object v8, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v2, v0

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v6, v29

    invoke-direct/range {v2 .. v8}, Lorg/jline/terminal/impl/PosixSysTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;ZLorg/jline/terminal/Terminal$SignalHandler;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v23, v0

    .line 365
    goto :goto_c

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v25, v2, v22

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 364
    invoke-virtual {v11, v0}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 350
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13
    :goto_b
    nop

    .line 367
    :goto_c
    if-nez v23, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz v19, :cond_14

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_f

    .line 368
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create a system terminal. On windows, either JNA or JANSI library is required.  Make sure to add one of those in the classpath."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    .end local v11    # "exception":Ljava/lang/IllegalStateException;
    .end local v29    # "encoding":Ljava/nio/charset/Charset;
    .restart local v6    # "exception":Ljava/lang/IllegalStateException;
    .restart local v13    # "encoding":Ljava/nio/charset/Charset;
    :cond_15
    move-object/from16 v28, v11

    move-object/from16 v29, v13

    move-object v11, v6

    move v13, v8

    .end local v6    # "exception":Ljava/lang/IllegalStateException;
    .end local v13    # "encoding":Ljava/nio/charset/Charset;
    .restart local v11    # "exception":Ljava/lang/IllegalStateException;
    .restart local v29    # "encoding":Ljava/nio/charset/Charset;
    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->hasJnaSupport()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 374
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->getJnaSupport()Lorg/jline/terminal/spi/JnaSupport;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/terminal/spi/JnaSupport;->current()Lorg/jline/terminal/spi/Pty;

    move-result-object v5

    .line 375
    .local v5, "pty":Lorg/jline/terminal/spi/Pty;
    new-instance v0, Lorg/jline/terminal/impl/PosixSysTerminal;

    iget-boolean v7, v1, Lorg/jline/terminal/TerminalBuilder;->nativeSignals:Z

    iget-object v8, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v2, v0

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v6, v29

    invoke-direct/range {v2 .. v8}, Lorg/jline/terminal/impl/PosixSysTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;ZLorg/jline/terminal/Terminal$SignalHandler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v23, v0

    .line 380
    .end local v5    # "pty":Lorg/jline/terminal/spi/Pty;
    goto :goto_d

    .line 376
    :catchall_3
    move-exception v0

    .line 378
    .local v0, "t":Ljava/lang/Throwable;
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v21, v2, v22

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 379
    invoke-virtual {v11, v0}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 382
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_16
    :goto_d
    if-nez v23, :cond_17

    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->hasJansiSupport()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 384
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->getJansiSupport()Lorg/jline/terminal/spi/JansiSupport;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/terminal/spi/JansiSupport;->current()Lorg/jline/terminal/spi/Pty;

    move-result-object v5

    .line 385
    .restart local v5    # "pty":Lorg/jline/terminal/spi/Pty;
    new-instance v0, Lorg/jline/terminal/impl/PosixSysTerminal;

    iget-boolean v7, v1, Lorg/jline/terminal/TerminalBuilder;->nativeSignals:Z

    iget-object v8, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v2, v0

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v6, v29

    invoke-direct/range {v2 .. v8}, Lorg/jline/terminal/impl/PosixSysTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;ZLorg/jline/terminal/Terminal$SignalHandler;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v23, v0

    .line 389
    .end local v5    # "pty":Lorg/jline/terminal/spi/Pty;
    goto :goto_e

    .line 386
    :catchall_4
    move-exception v0

    .line 387
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v20, v2, v22

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 388
    invoke-virtual {v11, v0}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 391
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_17
    :goto_e
    if-nez v23, :cond_18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 393
    :try_start_6
    new-instance v0, Lorg/jline/terminal/impl/PosixSysTerminal;

    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->getExecPty()Lorg/jline/terminal/spi/Pty;

    move-result-object v5

    iget-boolean v7, v1, Lorg/jline/terminal/TerminalBuilder;->nativeSignals:Z

    iget-object v8, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v2, v0

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v6, v29

    invoke-direct/range {v2 .. v8}, Lorg/jline/terminal/impl/PosixSysTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;ZLorg/jline/terminal/Terminal$SignalHandler;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 398
    .end local v23    # "terminal":Lorg/jline/terminal/Terminal;
    .local v0, "terminal":Lorg/jline/terminal/Terminal;
    goto :goto_10

    .line 394
    .end local v0    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local v23    # "terminal":Lorg/jline/terminal/Terminal;
    :catchall_5
    move-exception v0

    .line 396
    .local v0, "t":Ljava/lang/Throwable;
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v25, v2, v22

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v11, v0}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 401
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_18
    :goto_f
    move-object/from16 v0, v23

    .end local v23    # "terminal":Lorg/jline/terminal/Terminal;
    .local v0, "terminal":Lorg/jline/terminal/Terminal;
    :goto_10
    instance-of v2, v0, Lorg/jline/terminal/impl/AbstractTerminal;

    if-eqz v2, :cond_1a

    .line 402
    move-object v2, v0

    check-cast v2, Lorg/jline/terminal/impl/AbstractTerminal;

    .line 403
    .local v2, "t":Lorg/jline/terminal/impl/AbstractTerminal;
    sget-object v3, Lorg/jline/terminal/TerminalBuilder;->SYSTEM_TERMINAL:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 404
    new-instance v3, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda3;-><init>(Lorg/jline/terminal/impl/AbstractTerminal;)V

    invoke-virtual {v2, v3}, Lorg/jline/terminal/impl/AbstractTerminal;->setOnClose(Ljava/lang/Runnable;)V

    goto :goto_11

    .line 406
    :cond_19
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "A system terminal is already running. Make sure to use the created system Terminal on the LineReaderBuilder if you\'re using one or that previously created system Terminals have been correctly closed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 409
    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->close()V

    .line 410
    const/16 v23, 0x0

    .end local v0    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local v23    # "terminal":Lorg/jline/terminal/Terminal;
    goto :goto_12

    .line 414
    .end local v2    # "t":Lorg/jline/terminal/impl/AbstractTerminal;
    .end local v23    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local v0    # "terminal":Lorg/jline/terminal/Terminal;
    :cond_1a
    :goto_11
    move-object/from16 v23, v0

    goto :goto_12

    .line 325
    .end local v0    # "terminal":Lorg/jline/terminal/Terminal;
    .end local v11    # "exception":Ljava/lang/IllegalStateException;
    .end local v29    # "encoding":Ljava/nio/charset/Charset;
    .restart local v6    # "exception":Ljava/lang/IllegalStateException;
    .restart local v13    # "encoding":Ljava/nio/charset/Charset;
    .restart local v23    # "terminal":Lorg/jline/terminal/Terminal;
    :cond_1b
    move-object/from16 v28, v11

    move-object/from16 v29, v13

    move-object v11, v6

    .line 414
    .end local v6    # "exception":Ljava/lang/IllegalStateException;
    .end local v13    # "encoding":Ljava/nio/charset/Charset;
    .restart local v11    # "exception":Ljava/lang/IllegalStateException;
    .restart local v29    # "encoding":Ljava/nio/charset/Charset;
    :goto_12
    if-nez v23, :cond_26

    if-eqz v19, :cond_1c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 416
    :cond_1c
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "org.jline.terminal.dumb.color"

    invoke-static {v2, v0}, Lorg/jline/terminal/TerminalBuilder;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 418
    .local v0, "color":Z
    if-nez v0, :cond_1e

    .line 419
    const-string v2, "INSIDE_EMACS"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    move v2, v10

    goto :goto_13

    :cond_1d
    move/from16 v2, v22

    :goto_13
    move v0, v2

    .line 422
    :cond_1e
    if-nez v0, :cond_20

    .line 423
    invoke-static {}, Lorg/jline/terminal/TerminalBuilder;->getParentProcessCommand()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "command":Ljava/lang/String;
    if-eqz v2, :cond_1f

    const-string v3, "idea"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v10

    goto :goto_14

    :cond_1f
    move/from16 v3, v22

    :goto_14
    move v0, v3

    .line 426
    .end local v2    # "command":Ljava/lang/String;
    :cond_20
    if-nez v0, :cond_22

    .line 427
    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->isConsoleOutput()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static/range {v28 .. v28}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    move v2, v10

    goto :goto_15

    :cond_21
    move/from16 v2, v22

    :goto_15
    move v0, v2

    .line 429
    :cond_22
    if-nez v0, :cond_24

    if-nez v19, :cond_24

    .line 430
    invoke-static {}, Lorg/jline/utils/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 431
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "input is tty: {}"

    aput-object v4, v3, v22

    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->isConsoleInput()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v3}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 432
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "output is tty: {}"

    aput-object v4, v3, v22

    invoke-virtual/range {v24 .. v24}, Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;->isConsoleOutput()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v3}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 433
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Creating a dumb terminal"

    aput-object v3, v2, v22

    aput-object v11, v2, v10

    invoke-static {v2}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    goto :goto_16

    .line 435
    :cond_23
    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "Unable to create a system terminal, creating a dumb terminal (enable debug logging for more information)"

    aput-object v3, v2, v22

    invoke-static {v2}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 438
    :cond_24
    :goto_16
    new-instance v9, Lorg/jline/terminal/impl/DumbTerminal;

    if-eqz v0, :cond_25

    const-string v2, "dumb-color"

    goto :goto_17

    :cond_25
    const-string v2, "dumb"

    :goto_17
    move-object v4, v2

    new-instance v5, Ljava/io/FileInputStream;

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v6, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v8, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v2, v9

    move-object v3, v12

    move-object/from16 v7, v29

    invoke-direct/range {v2 .. v8}, Lorg/jline/terminal/impl/DumbTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    move-object/from16 v23, v9

    .line 443
    .end local v0    # "color":Z
    :cond_26
    if-eqz v23, :cond_27

    .line 446
    return-object v23

    .line 444
    :cond_27
    throw v11

    .line 318
    .end local v11    # "exception":Ljava/lang/IllegalStateException;
    .end local v23    # "terminal":Lorg/jline/terminal/Terminal;
    .end local v24    # "tbs":Lorg/jline/terminal/TerminalBuilder$TerminalBuilderSupport;
    .end local v29    # "encoding":Ljava/nio/charset/Charset;
    .restart local v13    # "encoding":Ljava/nio/charset/Charset;
    :cond_28
    move-object/from16 v29, v13

    move v13, v8

    .line 448
    .end local v13    # "encoding":Ljava/nio/charset/Charset;
    .restart local v29    # "encoding":Ljava/nio/charset/Charset;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 450
    :try_start_7
    const-class v0, Lorg/jline/terminal/spi/JnaSupport;

    invoke-static {v0}, Lorg/jline/terminal/TerminalBuilder;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/spi/JnaSupport;

    iget-object v2, v1, Lorg/jline/terminal/TerminalBuilder;->attributes:Lorg/jline/terminal/Attributes;

    iget-object v3, v1, Lorg/jline/terminal/TerminalBuilder;->size:Lorg/jline/terminal/Size;

    invoke-interface {v0, v2, v3}, Lorg/jline/terminal/spi/JnaSupport;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/spi/Pty;

    move-result-object v5

    .line 451
    .restart local v5    # "pty":Lorg/jline/terminal/spi/Pty;
    new-instance v0, Lorg/jline/terminal/impl/PosixPtyTerminal;

    iget-object v6, v1, Lorg/jline/terminal/TerminalBuilder;->in:Ljava/io/InputStream;

    iget-object v7, v1, Lorg/jline/terminal/TerminalBuilder;->out:Ljava/io/OutputStream;

    iget-object v9, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    iget-boolean v11, v1, Lorg/jline/terminal/TerminalBuilder;->paused:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object v2, v0

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v8, v29

    move/from16 v23, v10

    move v10, v11

    :try_start_8
    invoke-direct/range {v2 .. v10}, Lorg/jline/terminal/impl/PosixPtyTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    return-object v0

    .line 452
    .end local v5    # "pty":Lorg/jline/terminal/spi/Pty;
    :catchall_6
    move-exception v0

    goto :goto_18

    :catchall_7
    move-exception v0

    move/from16 v23, v10

    .line 453
    .local v0, "t":Ljava/lang/Throwable;
    :goto_18
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v21, v2, v22

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v23

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    goto :goto_19

    .line 448
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_29
    move/from16 v23, v10

    .line 456
    :goto_19
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 458
    :try_start_9
    const-class v0, Lorg/jline/terminal/spi/JansiSupport;

    invoke-static {v0}, Lorg/jline/terminal/TerminalBuilder;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/spi/JansiSupport;

    iget-object v2, v1, Lorg/jline/terminal/TerminalBuilder;->attributes:Lorg/jline/terminal/Attributes;

    iget-object v3, v1, Lorg/jline/terminal/TerminalBuilder;->size:Lorg/jline/terminal/Size;

    invoke-interface {v0, v2, v3}, Lorg/jline/terminal/spi/JansiSupport;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/spi/Pty;

    move-result-object v5

    .line 459
    .restart local v5    # "pty":Lorg/jline/terminal/spi/Pty;
    new-instance v0, Lorg/jline/terminal/impl/PosixPtyTerminal;

    iget-object v6, v1, Lorg/jline/terminal/TerminalBuilder;->in:Ljava/io/InputStream;

    iget-object v7, v1, Lorg/jline/terminal/TerminalBuilder;->out:Ljava/io/OutputStream;

    iget-object v9, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    iget-boolean v10, v1, Lorg/jline/terminal/TerminalBuilder;->paused:Z

    move-object v2, v0

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v8, v29

    invoke-direct/range {v2 .. v10}, Lorg/jline/terminal/impl/PosixPtyTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    return-object v0

    .line 460
    .end local v5    # "pty":Lorg/jline/terminal/spi/Pty;
    :catchall_8
    move-exception v0

    .line 461
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v20, v2, v22

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v23

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 464
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2a
    new-instance v0, Lorg/jline/terminal/impl/ExternalTerminal;

    iget-object v5, v1, Lorg/jline/terminal/TerminalBuilder;->in:Ljava/io/InputStream;

    iget-object v6, v1, Lorg/jline/terminal/TerminalBuilder;->out:Ljava/io/OutputStream;

    iget-object v8, v1, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    iget-boolean v9, v1, Lorg/jline/terminal/TerminalBuilder;->paused:Z

    iget-object v10, v1, Lorg/jline/terminal/TerminalBuilder;->attributes:Lorg/jline/terminal/Attributes;

    iget-object v11, v1, Lorg/jline/terminal/TerminalBuilder;->size:Lorg/jline/terminal/Size;

    move-object v2, v0

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v7, v29

    invoke-direct/range {v2 .. v11}, Lorg/jline/terminal/impl/ExternalTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;ZLorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)V

    return-object v0
.end method

.method private static getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/Boolean;

    .line 484
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 486
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 489
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 490
    :goto_0
    return-object p1
.end method

.method private static getParentProcessCommand()Ljava/lang/String;
    .locals 10

    .line 470
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.lang.ProcessHandle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 471
    .local v1, "phClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "current"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 472
    .local v2, "current":Ljava/lang/Object;
    const-string v4, "parent"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Optional;

    invoke-virtual {v4, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 473
    .local v4, "parent":Ljava/lang/Object;
    const-string v5, "info"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 474
    .local v5, "infoMethod":Ljava/lang/reflect/Method;
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 475
    .local v6, "info":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "command"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Optional;

    invoke-virtual {v3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 476
    .local v3, "command":Ljava/lang/Object;
    move-object v7, v3

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v7

    .line 477
    .end local v1    # "phClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "current":Ljava/lang/Object;
    .end local v3    # "command":Ljava/lang/Object;
    .end local v4    # "parent":Ljava/lang/Object;
    .end local v5    # "infoMethod":Ljava/lang/reflect/Method;
    .end local v6    # "info":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 478
    .local v1, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method static synthetic lambda$build$0()Ljava/lang/String;
    .locals 1

    .line 267
    const-string v0, "Overriding terminal with global value set by TerminalBuilder.setTerminalOverride"

    return-object v0
.end method

.method static synthetic lambda$build$1(Lorg/jline/terminal/Terminal;)Ljava/lang/String;
    .locals 2
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using terminal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$build$2(Lorg/jline/terminal/Terminal;)Ljava/lang/String;
    .locals 2
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using pty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lorg/jline/terminal/impl/AbstractPosixTerminal;

    invoke-virtual {v1}, Lorg/jline/terminal/impl/AbstractPosixTerminal;->getPty()Lorg/jline/terminal/spi/Pty;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$doBuild$3(Lorg/jline/terminal/impl/AbstractTerminal;)V
    .locals 2
    .param p0, "t"    # Lorg/jline/terminal/impl/AbstractTerminal;

    .line 404
    sget-object v0, Lorg/jline/terminal/TerminalBuilder;->SYSTEM_TERMINAL:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private static load(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 494
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setTerminalOverride(Lorg/jline/terminal/Terminal;)V
    .locals 1
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    sget-object v0, Lorg/jline/terminal/TerminalBuilder;->TERMINAL_OVERRIDE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public static terminal()Lorg/jline/terminal/Terminal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {}, Lorg/jline/terminal/TerminalBuilder;->builder()Lorg/jline/terminal/TerminalBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/terminal/TerminalBuilder;->build()Lorg/jline/terminal/Terminal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attributes(Lorg/jline/terminal/Attributes;)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "attributes"    # Lorg/jline/terminal/Attributes;

    .line 217
    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder;->attributes:Lorg/jline/terminal/Attributes;

    .line 218
    return-object p0
.end method

.method public build()Lorg/jline/terminal/Terminal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lorg/jline/terminal/TerminalBuilder;->TERMINAL_OVERRIDE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Terminal;

    .line 265
    .local v0, "override":Lorg/jline/terminal/Terminal;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/jline/terminal/TerminalBuilder;->doBuild()Lorg/jline/terminal/Terminal;

    move-result-object v1

    .line 266
    .local v1, "terminal":Lorg/jline/terminal/Terminal;
    :goto_0
    if-eqz v0, :cond_1

    .line 267
    new-instance v2, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2}, Lorg/jline/utils/Log;->debug(Ljava/util/function/Supplier;)V

    .line 269
    :cond_1
    new-instance v2, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda1;-><init>(Lorg/jline/terminal/Terminal;)V

    invoke-static {v2}, Lorg/jline/utils/Log;->debug(Ljava/util/function/Supplier;)V

    .line 270
    instance-of v2, v1, Lorg/jline/terminal/impl/AbstractPosixTerminal;

    if-eqz v2, :cond_2

    .line 271
    new-instance v2, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda2;-><init>(Lorg/jline/terminal/Terminal;)V

    invoke-static {v2}, Lorg/jline/utils/Log;->debug(Ljava/util/function/Supplier;)V

    .line 273
    :cond_2
    return-object v1
.end method

.method public codepage(I)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "codepage"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    iput p1, p0, Lorg/jline/terminal/TerminalBuilder;->codepage:I

    .line 201
    return-object p0
.end method

.method public dumb(Z)Lorg/jline/terminal/TerminalBuilder;
    .locals 1
    .param p1, "dumb"    # Z

    .line 144
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder;->dumb:Ljava/lang/Boolean;

    .line 145
    return-object p0
.end method

.method public encoding(Ljava/lang/String;)Lorg/jline/terminal/TerminalBuilder;
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 169
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jline/terminal/TerminalBuilder;->encoding(Ljava/nio/charset/Charset;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoding(Ljava/nio/charset/Charset;)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .line 187
    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder;->encoding:Ljava/nio/charset/Charset;

    .line 188
    return-object p0
.end method

.method public exec(Z)Lorg/jline/terminal/TerminalBuilder;
    .locals 1
    .param p1, "exec"    # Z

    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder;->exec:Ljava/lang/Boolean;

    .line 140
    return-object p0
.end method

.method public jansi(Z)Lorg/jline/terminal/TerminalBuilder;
    .locals 1
    .param p1, "jansi"    # Z

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder;->jansi:Ljava/lang/Boolean;

    .line 135
    return-object p0
.end method

.method public jna(Z)Lorg/jline/terminal/TerminalBuilder;
    .locals 1
    .param p1, "jna"    # Z

    .line 129
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder;->jna:Ljava/lang/Boolean;

    .line 130
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder;->name:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public nativeSignals(Z)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "nativeSignals"    # Z

    .line 239
    iput-boolean p1, p0, Lorg/jline/terminal/TerminalBuilder;->nativeSignals:Z

    .line 240
    return-object p0
.end method

.method public paused(Z)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "paused"    # Z

    .line 259
    iput-boolean p1, p0, Lorg/jline/terminal/TerminalBuilder;->paused:Z

    .line 260
    return-object p0
.end method

.method public signalHandler(Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;

    .line 244
    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder;->signalHandler:Lorg/jline/terminal/Terminal$SignalHandler;

    .line 245
    return-object p0
.end method

.method public size(Lorg/jline/terminal/Size;)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "size"    # Lorg/jline/terminal/Size;

    .line 234
    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder;->size:Lorg/jline/terminal/Size;

    .line 235
    return-object p0
.end method

.method public streams(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 118
    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder;->in:Ljava/io/InputStream;

    .line 119
    iput-object p2, p0, Lorg/jline/terminal/TerminalBuilder;->out:Ljava/io/OutputStream;

    .line 120
    return-object p0
.end method

.method public system(Z)Lorg/jline/terminal/TerminalBuilder;
    .locals 1
    .param p1, "system"    # Z

    .line 124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/TerminalBuilder;->system:Ljava/lang/Boolean;

    .line 125
    return-object p0
.end method

.method public type(Ljava/lang/String;)Lorg/jline/terminal/TerminalBuilder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder;->type:Ljava/lang/String;

    .line 150
    return-object p0
.end method
