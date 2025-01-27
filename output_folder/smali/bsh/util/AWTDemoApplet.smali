.class public Lbsh/util/AWTDemoApplet;
.super Ljava/applet/Applet;
.source "AWTDemoApplet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/applet/Applet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 42
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lbsh/util/AWTDemoApplet;->setLayout(Ljava/awt/LayoutManager;)V

    .line 43
    new-instance v0, Lbsh/util/AWTConsole;

    invoke-direct {v0}, Lbsh/util/AWTConsole;-><init>()V

    .line 44
    .local v0, "console":Lbsh/ConsoleInterface;
    move-object v1, v0

    check-cast v1, Ljava/awt/Component;

    const-string v2, "Center"

    invoke-virtual {p0, v2, v1}, Lbsh/util/AWTDemoApplet;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 45
    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1, v0}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;)V

    .line 46
    .local v1, "interpreter":Lbsh/Interpreter;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method
