.class public Lbsh/util/JDemoApplet;
.super Ljavax/swing/JApplet;
.source "JDemoApplet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljavax/swing/JApplet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 42
    const-string v0, "debug"

    invoke-virtual {p0, v0}, Lbsh/util/JDemoApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "debug":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x1

    sput-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    .line 46
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lbsh/util/JDemoApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "desktop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :try_start_0
    new-instance v2, Lbsh/Interpreter;

    invoke-direct {v2}, Lbsh/Interpreter;-><init>()V

    const-string v3, "desktop()"

    invoke-virtual {v2, v3}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "evalError":Lbsh/EvalError;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v2}, Lbsh/EvalError;->printStackTrace()V

    .end local v2    # "evalError":Lbsh/EvalError;
    goto :goto_0

    .line 51
    :catch_1
    move-exception v2

    .line 52
    .local v2, "te":Lbsh/TargetError;
    invoke-virtual {v2}, Lbsh/TargetError;->printStackTrace()V

    .line 53
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v2}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .end local v2    # "te":Lbsh/TargetError;
    :goto_0
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lbsh/util/JDemoApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    new-instance v3, Ljava/awt/BorderLayout;

    invoke-direct {v3}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v2, v3}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 62
    new-instance v2, Lbsh/util/JConsole;

    invoke-direct {v2}, Lbsh/util/JConsole;-><init>()V

    .line 63
    .local v2, "console":Lbsh/util/JConsole;
    invoke-virtual {p0}, Lbsh/util/JDemoApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    const-string v4, "Center"

    invoke-virtual {v3, v4, v2}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 64
    new-instance v3, Lbsh/Interpreter;

    invoke-direct {v3, v2}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;)V

    .line 65
    .local v3, "interpreter":Lbsh/Interpreter;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 67
    .end local v2    # "console":Lbsh/util/JConsole;
    .end local v3    # "interpreter":Lbsh/Interpreter;
    :goto_1
    return-void
.end method
