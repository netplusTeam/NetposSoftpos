.class public Lbsh/util/JConsole;
.super Ljavax/swing/JScrollPane;
.source "JConsole.java"

# interfaces
.implements Lbsh/util/GUIConsoleInterface;
.implements Ljava/lang/Runnable;
.implements Ljava/awt/event/KeyListener;
.implements Ljava/awt/event/MouseListener;
.implements Ljava/awt/event/ActionListener;
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/util/JConsole$BlockingPipedInputStream;
    }
.end annotation


# static fields
.field private static final COPY:Ljava/lang/String; = "Copy"

.field private static final CUT:Ljava/lang/String; = "Cut"

.field private static final PASTE:Ljava/lang/String; = "Paste"


# instance fields
.field final SHOW_AMBIG_MAX:I

.field ZEROS:Ljava/lang/String;

.field private cmdStart:I

.field private doc:Ljavax/swing/text/DefaultStyledDocument;

.field private gotUp:Z

.field private histLine:I

.field private history:Ljava/util/Vector;

.field private in:Ljava/io/InputStream;

.field private inPipe:Ljava/io/InputStream;

.field private menu:Ljavax/swing/JPopupMenu;

.field nameCompletion:Lbsh/util/NameCompletion;

.field private out:Ljava/io/PrintStream;

.field private outPipe:Ljava/io/OutputStream;

.field private startedLine:Ljava/lang/String;

.field private text:Ljavax/swing/JTextPane;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lbsh/util/JConsole;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "cin"    # Ljava/io/InputStream;
    .param p2, "cout"    # Ljava/io/OutputStream;

    .line 96
    invoke-direct {p0}, Ljavax/swing/JScrollPane;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lbsh/util/JConsole;->cmdStart:I

    .line 76
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    .line 78
    iput v0, p0, Lbsh/util/JConsole;->histLine:I

    .line 85
    const/16 v1, 0xa

    iput v1, p0, Lbsh/util/JConsole;->SHOW_AMBIG_MAX:I

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbsh/util/JConsole;->gotUp:Z

    .line 452
    const-string v1, "000"

    iput-object v1, p0, Lbsh/util/JConsole;->ZEROS:Ljava/lang/String;

    .line 100
    new-instance v1, Lbsh/util/JConsole$1;

    new-instance v2, Ljavax/swing/text/DefaultStyledDocument;

    invoke-direct {v2}, Ljavax/swing/text/DefaultStyledDocument;-><init>()V

    iput-object v2, p0, Lbsh/util/JConsole;->doc:Ljavax/swing/text/DefaultStyledDocument;

    invoke-direct {v1, p0, v2}, Lbsh/util/JConsole$1;-><init>(Lbsh/util/JConsole;Ljavax/swing/text/StyledDocument;)V

    iput-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    .line 116
    new-instance v1, Ljava/awt/Font;

    const-string v2, "Monospaced"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v0, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 117
    .local v0, "font":Ljava/awt/Font;
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JTextPane;->setFont(Ljava/awt/Font;)V

    .line 119
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    new-instance v2, Ljava/awt/Insets;

    const/4 v3, 0x7

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v3, v4}, Ljava/awt/Insets;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setMargin(Ljava/awt/Insets;)V

    .line 120
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, p0}, Ljavax/swing/JTextPane;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 121
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {p0, v1}, Lbsh/util/JConsole;->setViewportView(Ljava/awt/Component;)V

    .line 124
    new-instance v1, Ljavax/swing/JPopupMenu;

    const-string v2, "JConsole\tMenu"

    invoke-direct {v1, v2}, Ljavax/swing/JPopupMenu;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    .line 125
    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v3, "Cut"

    invoke-direct {v2, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 126
    iget-object v1, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v3, "Copy"

    invoke-direct {v2, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 127
    iget-object v1, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v3, "Paste"

    invoke-direct {v2, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 129
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, p0}, Ljavax/swing/JTextPane;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 132
    invoke-static {p0}, Ljavax/swing/UIManager;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 134
    iput-object p2, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    .line 135
    if-nez p2, :cond_0

    .line 136
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v1, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    .line 138
    :try_start_0
    new-instance v1, Ljava/io/PipedInputStream;

    iget-object v2, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    check-cast v2, Ljava/io/PipedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v1, p0, Lbsh/util/JConsole;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    const-string v3, "Console internal\terror (1)..."

    invoke-virtual {p0, v3, v2}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iput-object p1, p0, Lbsh/util/JConsole;->inPipe:Ljava/io/InputStream;

    .line 145
    if-nez p1, :cond_1

    .line 146
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    .line 147
    .local v1, "pout":Ljava/io/PipedOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lbsh/util/JConsole;->out:Ljava/io/PrintStream;

    .line 149
    :try_start_1
    new-instance v2, Lbsh/util/JConsole$BlockingPipedInputStream;

    invoke-direct {v2, v1}, Lbsh/util/JConsole$BlockingPipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v2, p0, Lbsh/util/JConsole;->inPipe:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    goto :goto_1

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Console internal error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    .line 153
    .end local v1    # "pout":Ljava/io/PipedOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 155
    invoke-virtual {p0}, Lbsh/util/JConsole;->requestFocus()V

    .line 156
    return-void
.end method

.method private acceptLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;

    .line 458
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 459
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 460
    .local v1, "lineLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 461
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 462
    .local v3, "c":C
    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    .line 463
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, "val":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbsh/util/JConsole;->ZEROS:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    .end local v4    # "val":Ljava/lang/String;
    goto :goto_1

    .line 467
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 460
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 474
    iget-object v2, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    if-nez v2, :cond_2

    .line 475
    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    const-string v3, "Console internal\terror: cannot output ..."

    invoke-virtual {p0, v3, v2}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    goto :goto_2

    .line 478
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 479
    iget-object v2, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    nop

    .line 485
    :goto_2
    return-void

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lbsh/util/JConsole;->outPipe:Ljava/io/OutputStream;

    .line 482
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Console pipe broken..."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;
    .locals 1
    .param p0, "x0"    # Lbsh/util/JConsole;

    .line 57
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    return-object v0
.end method

.method static synthetic access$100(Lbsh/util/JConsole;)I
    .locals 1
    .param p0, "x0"    # Lbsh/util/JConsole;

    .line 57
    iget v0, p0, Lbsh/util/JConsole;->cmdStart:I

    return v0
.end method

.method static synthetic access$200(Lbsh/util/JConsole;)V
    .locals 0
    .param p0, "x0"    # Lbsh/util/JConsole;

    .line 57
    invoke-direct {p0}, Lbsh/util/JConsole;->forceCaretMoveToEnd()V

    return-void
.end method

.method static synthetic access$300(Lbsh/util/JConsole;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbsh/util/JConsole;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lbsh/util/JConsole;)V
    .locals 0
    .param p0, "x0"    # Lbsh/util/JConsole;

    .line 57
    invoke-direct {p0}, Lbsh/util/JConsole;->resetCommandStart()V

    return-void
.end method

.method static synthetic access$500(Lbsh/util/JConsole;)Ljavax/swing/text/AttributeSet;
    .locals 1
    .param p0, "x0"    # Lbsh/util/JConsole;

    .line 57
    invoke-direct {p0}, Lbsh/util/JConsole;->getStyle()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lbsh/util/JConsole;Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;
    .locals 1
    .param p0, "x0"    # Lbsh/util/JConsole;
    .param p1, "x1"    # Ljava/awt/Font;
    .param p2, "x2"    # Ljava/awt/Color;

    .line 57
    invoke-direct {p0, p1, p2}, Lbsh/util/JConsole;->setStyle(Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lbsh/util/JConsole;Ljavax/swing/text/AttributeSet;Z)V
    .locals 0
    .param p0, "x0"    # Lbsh/util/JConsole;
    .param p1, "x1"    # Ljavax/swing/text/AttributeSet;
    .param p2, "x2"    # Z

    .line 57
    invoke-direct {p0, p1, p2}, Lbsh/util/JConsole;->setStyle(Ljavax/swing/text/AttributeSet;Z)V

    return-void
.end method

.method static synthetic access$800(Lbsh/util/JConsole;Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;
    .locals 1
    .param p0, "x0"    # Lbsh/util/JConsole;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/awt/Color;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .line 57
    invoke-direct/range {p0 .. p6}, Lbsh/util/JConsole;->setStyle(Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 365
    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v0

    .line 366
    .local v0, "slen":I
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v0, v0}, Ljavax/swing/JTextPane;->select(II)V

    .line 367
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, p1}, Ljavax/swing/JTextPane;->replaceSelection(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private doCommandCompletion(Ljava/lang/String;)V
    .locals 10
    .param p1, "part"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lbsh/util/JConsole;->nameCompletion:Lbsh/util/NameCompletion;

    if-nez v0, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 312
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 317
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 319
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 322
    return-void

    .line 327
    :cond_3
    iget-object v2, p0, Lbsh/util/JConsole;->nameCompletion:Lbsh/util/NameCompletion;

    invoke-interface {v2, p1}, Lbsh/util/NameCompletion;->completeName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "complete":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_4

    .line 329
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->beep()V

    .line 330
    return-void

    .line 334
    :cond_4
    array-length v3, v2

    if-ne v3, v1, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 335
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "append":Ljava/lang/String;
    invoke-direct {p0, v1}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    .line 337
    return-void

    .line 342
    .end local v1    # "append":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Ljavax/swing/JTextPane;->getText()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "line":Ljava/lang/String;
    iget v3, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "command":Ljava/lang/String;
    iget v0, p0, Lbsh/util/JConsole;->cmdStart:I

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 346
    :cond_6
    add-int/lit8 v4, v0, 0x1

    iget v6, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "prompt":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 350
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    :goto_2
    array-length v8, v2

    if-ge v0, v8, :cond_7

    if-ge v0, v5, :cond_7

    .line 351
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 352
    :cond_7
    if-ne v0, v5, :cond_8

    .line 353
    const-string v5, "...\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    :cond_8
    sget-object v5, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {p0, v6, v5}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    .line 356
    invoke-virtual {p0, v4}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    .line 357
    invoke-direct {p0, v3}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private enter()V
    .locals 3

    .line 395
    invoke-direct {p0}, Lbsh/util/JConsole;->getCmd()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "\n"

    if-nez v1, :cond_0

    .line 398
    const-string v0, ";\n"

    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_0
    invoke-direct {p0, v2}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x0

    iput v1, p0, Lbsh/util/JConsole;->histLine:I

    .line 406
    invoke-direct {p0, v0}, Lbsh/util/JConsole;->acceptLine(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Ljavax/swing/JTextPane;->repaint()V

    .line 408
    return-void
.end method

.method private forceCaretMoveToEnd()V
    .locals 2

    .line 379
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    if-ge v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    .line 384
    return-void
.end method

.method private forceCaretMoveToStart()V
    .locals 1

    .line 387
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    .line 390
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    .line 391
    return-void
.end method

.method private getCmd()Ljava/lang/String;
    .locals 5

    .line 411
    const-string v0, ""

    .line 413
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    iget v2, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v3

    iget v4, p0, Lbsh/util/JConsole;->cmdStart:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljavax/swing/JTextPane;->getText(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 417
    goto :goto_0

    .line 414
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljavax/swing/text/BadLocationException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal JConsole Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    .end local v1    # "e":Ljavax/swing/text/BadLocationException;
    :goto_0
    return-object v0
.end method

.method private getStyle()Ljavax/swing/text/AttributeSet;
    .locals 1

    .line 654
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCharacterAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private historyDown()V
    .locals 1

    .line 433
    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 436
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/util/JConsole;->histLine:I

    .line 437
    invoke-direct {p0}, Lbsh/util/JConsole;->showHistoryLine()V

    .line 438
    return-void
.end method

.method private historyUp()V
    .locals 2

    .line 422
    iget-object v0, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 423
    return-void

    .line 424
    :cond_0
    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    if-nez v0, :cond_1

    .line 425
    invoke-direct {p0}, Lbsh/util/JConsole;->getCmd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/JConsole;->startedLine:Ljava/lang/String;

    .line 426
    :cond_1
    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    iget-object v1, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 427
    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/util/JConsole;->histLine:I

    .line 428
    invoke-direct {p0}, Lbsh/util/JConsole;->showHistoryLine()V

    .line 430
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

    .line 665
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 667
    .local v0, "ba":[B
    :goto_0
    iget-object v1, p0, Lbsh/util/JConsole;->inPipe:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 668
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 672
    :cond_0
    const-string v1, "Console: Input\tclosed..."

    invoke-virtual {p0, v1}, Lbsh/util/JConsole;->println(Ljava/lang/Object;)V

    .line 673
    return-void
.end method

.method private invokeAndWait(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .line 733
    invoke-static {}, Ljavax/swing/SwingUtilities;->isEventDispatchThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    :try_start_0
    invoke-static {p1}, Ljavax/swing/SwingUtilities;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    goto :goto_1

    .line 736
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 741
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 743
    :goto_1
    return-void
.end method

.method private replaceRange(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "st":Ljava/lang/String;
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, p2, p3}, Ljavax/swing/JTextPane;->select(II)V

    .line 373
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JTextPane;->replaceSelection(Ljava/lang/String;)V

    .line 375
    return-object v0
.end method

.method private resetCommandStart()V
    .locals 1

    .line 361
    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v0

    iput v0, p0, Lbsh/util/JConsole;->cmdStart:I

    .line 362
    return-void
.end method

.method private setStyle(Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;
    .locals 1
    .param p1, "color"    # Ljava/awt/Color;

    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lbsh/util/JConsole;->setStyle(Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private setStyle(Ljava/awt/Font;)Ljavax/swing/text/AttributeSet;
    .locals 1
    .param p1, "font"    # Ljava/awt/Font;

    .line 587
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsh/util/JConsole;->setStyle(Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private setStyle(Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;
    .locals 7
    .param p1, "font"    # Ljava/awt/Font;
    .param p2, "color"    # Ljava/awt/Color;

    .line 596
    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p1}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v2

    .line 598
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v4

    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result v5

    .line 599
    invoke-direct {p0}, Lbsh/util/JConsole;->getStyle()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    invoke-static {v0}, Ljavax/swing/text/StyleConstants;->isUnderline(Ljavax/swing/text/AttributeSet;)Z

    move-result v6

    .line 597
    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lbsh/util/JConsole;->setStyle(Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p2}, Lbsh/util/JConsole;->setStyle(Ljava/lang/String;ILjava/awt/Color;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private setStyle(Ljava/lang/String;ILjava/awt/Color;)Ljavax/swing/text/AttributeSet;
    .locals 2
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "color"    # Ljava/awt/Color;

    .line 607
    new-instance v0, Ljavax/swing/text/SimpleAttributeSet;

    invoke-direct {v0}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    .line 608
    .local v0, "attr":Ljavax/swing/text/MutableAttributeSet;
    if-eqz p3, :cond_0

    .line 609
    invoke-static {v0, p3}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 610
    :cond_0
    if-eqz p1, :cond_1

    .line 611
    invoke-static {v0, p1}, Ljavax/swing/text/StyleConstants;->setFontFamily(Ljavax/swing/text/MutableAttributeSet;Ljava/lang/String;)V

    .line 612
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 613
    invoke-static {v0, p2}, Ljavax/swing/text/StyleConstants;->setFontSize(Ljavax/swing/text/MutableAttributeSet;I)V

    .line 615
    :cond_2
    invoke-direct {p0, v0}, Lbsh/util/JConsole;->setStyle(Ljavax/swing/text/AttributeSet;)V

    .line 617
    invoke-direct {p0}, Lbsh/util/JConsole;->getStyle()Ljavax/swing/text/AttributeSet;

    move-result-object v1

    return-object v1
.end method

.method private setStyle(Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;
    .locals 2
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "color"    # Ljava/awt/Color;
    .param p4, "bold"    # Z
    .param p5, "italic"    # Z
    .param p6, "underline"    # Z

    .line 629
    new-instance v0, Ljavax/swing/text/SimpleAttributeSet;

    invoke-direct {v0}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    .line 630
    .local v0, "attr":Ljavax/swing/text/MutableAttributeSet;
    if-eqz p3, :cond_0

    .line 631
    invoke-static {v0, p3}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 632
    :cond_0
    if-eqz p1, :cond_1

    .line 633
    invoke-static {v0, p1}, Ljavax/swing/text/StyleConstants;->setFontFamily(Ljavax/swing/text/MutableAttributeSet;Ljava/lang/String;)V

    .line 634
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 635
    invoke-static {v0, p2}, Ljavax/swing/text/StyleConstants;->setFontSize(Ljavax/swing/text/MutableAttributeSet;I)V

    .line 636
    :cond_2
    invoke-static {v0, p4}, Ljavax/swing/text/StyleConstants;->setBold(Ljavax/swing/text/MutableAttributeSet;Z)V

    .line 637
    invoke-static {v0, p5}, Ljavax/swing/text/StyleConstants;->setItalic(Ljavax/swing/text/MutableAttributeSet;Z)V

    .line 638
    invoke-static {v0, p6}, Ljavax/swing/text/StyleConstants;->setUnderline(Ljavax/swing/text/MutableAttributeSet;Z)V

    .line 640
    invoke-direct {p0, v0}, Lbsh/util/JConsole;->setStyle(Ljavax/swing/text/AttributeSet;)V

    .line 642
    invoke-direct {p0}, Lbsh/util/JConsole;->getStyle()Ljavax/swing/text/AttributeSet;

    move-result-object v1

    return-object v1
.end method

.method private setStyle(Ljavax/swing/text/AttributeSet;)V
    .locals 1
    .param p1, "attributes"    # Ljavax/swing/text/AttributeSet;

    .line 646
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsh/util/JConsole;->setStyle(Ljavax/swing/text/AttributeSet;Z)V

    .line 647
    return-void
.end method

.method private setStyle(Ljavax/swing/text/AttributeSet;Z)V
    .locals 1
    .param p1, "attributes"    # Ljavax/swing/text/AttributeSet;
    .param p2, "overWrite"    # Z

    .line 650
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0, p1, p2}, Ljavax/swing/JTextPane;->setCharacterAttributes(Ljavax/swing/text/AttributeSet;Z)V

    .line 651
    return-void
.end method

.method private showHistoryLine()V
    .locals 3

    .line 442
    iget v0, p0, Lbsh/util/JConsole;->histLine:I

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lbsh/util/JConsole;->startedLine:Ljava/lang/String;

    .local v0, "showline":Ljava/lang/String;
    goto :goto_0

    .line 445
    .end local v0    # "showline":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lbsh/util/JConsole;->history:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lbsh/util/JConsole;->histLine:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    .restart local v0    # "showline":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lbsh/util/JConsole;->replaceRange(Ljava/lang/Object;II)Ljava/lang/String;

    .line 448
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 449
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Ljavax/swing/JTextPane;->repaint()V

    .line 450
    return-void
.end method

.method private textLength()I
    .locals 1

    .line 801
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getDocument()Ljavax/swing/text/Document;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/text/Document;->getLength()I

    move-result v0

    return v0
.end method

.method private declared-synchronized type(Ljava/awt/event/KeyEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x191

    sparse-switch v0, :sswitch_data_0

    .line 280
    .end local p0    # "this":Lbsh/util/JConsole;
    nop

    .line 281
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getModifiers()I

    move-result v0

    goto/16 :goto_0

    .line 227
    .restart local p0    # "this":Lbsh/util/JConsole;
    :sswitch_0
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_6

    .line 228
    const-string v0, ""

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-direct {p0}, Lbsh/util/JConsole;->textLength()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lbsh/util/JConsole;->replaceRange(Ljava/lang/Object;II)Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lbsh/util/JConsole;->histLine:I

    .line 230
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto/16 :goto_1

    .line 262
    .end local p0    # "this":Lbsh/util/JConsole;
    :sswitch_1
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 263
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 264
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 265
    const-string v0, "^C"

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->append(Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto/16 :goto_1

    .line 201
    :sswitch_2
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 202
    invoke-direct {p0}, Lbsh/util/JConsole;->historyDown()V

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    .line 205
    goto/16 :goto_1

    .line 218
    :sswitch_3
    invoke-direct {p0}, Lbsh/util/JConsole;->forceCaretMoveToStart()V

    .line 219
    goto/16 :goto_1

    .line 194
    :sswitch_4
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 195
    invoke-direct {p0}, Lbsh/util/JConsole;->historyUp()V

    .line 197
    :cond_2
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    .line 198
    goto/16 :goto_1

    .line 222
    :sswitch_5
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 223
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    .line 224
    goto :goto_1

    .line 258
    :sswitch_6
    goto :goto_1

    .line 182
    :sswitch_7
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 183
    iget-boolean v0, p0, Lbsh/util/JConsole;->gotUp:Z

    if-eqz v0, :cond_3

    .line 184
    invoke-direct {p0}, Lbsh/util/JConsole;->enter()V

    .line 185
    invoke-direct {p0}, Lbsh/util/JConsole;->resetCommandStart()V

    .line 186
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 189
    :cond_3
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    .line 190
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    .line 191
    goto :goto_1

    .line 272
    :sswitch_8
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    const/16 v1, 0x192

    if-ne v0, v1, :cond_4

    .line 273
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "part":Ljava/lang/String;
    invoke-direct {p0, v0}, Lbsh/util/JConsole;->doCommandCompletion(Ljava/lang/String;)V

    .line 276
    .end local v0    # "part":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    .line 277
    goto :goto_1

    .line 210
    :sswitch_9
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    if-gt v0, v1, :cond_6

    .line 213
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_1

    .line 281
    :goto_0
    and-int/lit8 v0, v0, 0xe

    if-nez v0, :cond_5

    .line 286
    invoke-direct {p0}, Lbsh/util/JConsole;->forceCaretMoveToEnd()V

    .line 293
    :cond_5
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->paramString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Backspace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 295
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lbsh/util/JConsole;->cmdStart:I

    if-gt v0, v1, :cond_6

    .line 296
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    .line 178
    .end local p1    # "e":Ljava/awt/event/KeyEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0x10 -> :sswitch_6
        0x11 -> :sswitch_6
        0x12 -> :sswitch_6
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x1b -> :sswitch_6
        0x24 -> :sswitch_5
        0x25 -> :sswitch_9
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x28 -> :sswitch_2
        0x43 -> :sswitch_1
        0x55 -> :sswitch_0
        0x70 -> :sswitch_6
        0x71 -> :sswitch_6
        0x72 -> :sswitch_6
        0x73 -> :sswitch_6
        0x74 -> :sswitch_6
        0x75 -> :sswitch_6
        0x76 -> :sswitch_6
        0x77 -> :sswitch_6
        0x78 -> :sswitch_6
        0x79 -> :sswitch_6
        0x7a -> :sswitch_6
        0x7b -> :sswitch_6
        0x7f -> :sswitch_9
        0x91 -> :sswitch_6
        0x9a -> :sswitch_6
        0x9b -> :sswitch_6
        0x9d -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "event"    # Ljava/awt/event/ActionEvent;

    .line 719
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "Cut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Ljavax/swing/JTextPane;->cut()V

    goto :goto_0

    .line 722
    :cond_0
    const-string v1, "Copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Ljavax/swing/JTextPane;->copy()V

    goto :goto_0

    .line 724
    :cond_1
    const-string v1, "Paste"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    iget-object v1, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Ljavax/swing/JTextPane;->paste()V

    .line 727
    :cond_2
    :goto_0
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 511
    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, p1, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    .line 512
    return-void
.end method

.method public getErr()Ljava/io/PrintStream;
    .locals 1

    .line 73
    iget-object v0, p0, Lbsh/util/JConsole;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .locals 2

    .line 71
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lbsh/util/JConsole;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 70
    iget-object v0, p0, Lbsh/util/JConsole;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .locals 1

    .line 72
    iget-object v0, p0, Lbsh/util/JConsole;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 165
    invoke-direct {p0, p1}, Lbsh/util/JConsole;->type(Ljava/awt/event/KeyEvent;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/util/JConsole;->gotUp:Z

    .line 167
    return-void
.end method

.method public keyReleased(Ljava/awt/event/KeyEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/util/JConsole;->gotUp:Z

    .line 175
    invoke-direct {p0, p1}, Lbsh/util/JConsole;->type(Ljava/awt/event/KeyEvent;)V

    .line 176
    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 170
    invoke-direct {p0, p1}, Lbsh/util/JConsole;->type(Ljava/awt/event/KeyEvent;)V

    .line 171
    return-void
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "event"    # Ljava/awt/event/MouseEvent;

    .line 689
    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "event"    # Ljava/awt/event/MouseEvent;

    .line 706
    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "event"    # Ljava/awt/event/MouseEvent;

    .line 708
    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 4
    .param p1, "event"    # Ljava/awt/event/MouseEvent;

    .line 692
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    .line 694
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Component;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v3

    .line 693
    invoke-virtual {v0, v1, v2, v3}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    .line 696
    :cond_0
    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 4
    .param p1, "event"    # Ljava/awt/event/MouseEvent;

    .line 699
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Component;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v2

    .line 701
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v3

    .line 700
    invoke-virtual {v0, v1, v2, v3}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    .line 703
    :cond_0
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    .line 704
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 493
    new-instance v0, Lbsh/util/JConsole$2;

    invoke-direct {v0, p0, p1}, Lbsh/util/JConsole$2;-><init>(Lbsh/util/JConsole;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/awt/Color;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/Object;
    .param p2, "color"    # Ljava/awt/Color;

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Font;Ljava/awt/Color;)V

    .line 539
    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/awt/Font;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/Object;
    .param p2, "font"    # Ljava/awt/Font;

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Font;Ljava/awt/Color;)V

    .line 535
    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/awt/Font;Ljava/awt/Color;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "font"    # Ljava/awt/Font;
    .param p3, "color"    # Ljava/awt/Color;

    .line 542
    new-instance v0, Lbsh/util/JConsole$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lbsh/util/JConsole$4;-><init>(Lbsh/util/JConsole;Ljava/awt/Font;Ljava/awt/Color;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/lang/String;ILjava/awt/Color;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/Object;
    .param p2, "fontFamilyName"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "color"    # Ljava/awt/Color;

    .line 561
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/lang/String;ILjava/awt/Color;ZZZ)V

    .line 562
    return-void
.end method

.method public print(Ljava/lang/Object;Ljava/lang/String;ILjava/awt/Color;ZZZ)V
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "fontFamilyName"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "color"    # Ljava/awt/Color;
    .param p5, "bold"    # Z
    .param p6, "italic"    # Z
    .param p7, "underline"    # Z

    .line 574
    new-instance v9, Lbsh/util/JConsole$5;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lbsh/util/JConsole$5;-><init>(Lbsh/util/JConsole;Ljava/lang/String;ILjava/awt/Color;ZZZLjava/lang/Object;)V

    move-object v0, p0

    invoke-direct {p0, v9}, Lbsh/util/JConsole;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method public print(Ljavax/swing/Icon;)V
    .locals 1
    .param p1, "icon"    # Ljavax/swing/Icon;

    .line 521
    if-nez p1, :cond_0

    .line 522
    return-void

    .line 524
    :cond_0
    new-instance v0, Lbsh/util/JConsole$3;

    invoke-direct {v0, p0, p1}, Lbsh/util/JConsole$3;-><init>(Lbsh/util/JConsole;Ljavax/swing/Icon;)V

    invoke-direct {p0, v0}, Lbsh/util/JConsole;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 531
    return-void
.end method

.method public println()V
    .locals 1

    .line 506
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    .line 508
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 488
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

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->print(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    .line 490
    return-void
.end method

.method public println(Ljavax/swing/Icon;)V
    .locals 1
    .param p1, "icon"    # Ljavax/swing/Icon;

    .line 515
    invoke-virtual {p0, p1}, Lbsh/util/JConsole;->print(Ljavax/swing/Icon;)V

    .line 516
    invoke-virtual {p0}, Lbsh/util/JConsole;->println()V

    .line 517
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->repaint()V

    .line 518
    return-void
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 712
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookAndFeel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lbsh/util/JConsole;->menu:Ljavax/swing/JPopupMenu;

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->updateComponentTreeUI(Ljava/awt/Component;)V

    .line 715
    :cond_0
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .line 160
    invoke-super {p0}, Ljavax/swing/JScrollPane;->requestFocus()V

    .line 161
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->requestFocus()V

    .line 162
    return-void
.end method

.method public run()V
    .locals 3

    .line 677
    :try_start_0
    invoke-direct {p0}, Lbsh/util/JConsole;->inPipeWatcher()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Console: I/O Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, v1, v2}, Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    .line 681
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 1
    .param p1, "font"    # Ljava/awt/Font;

    .line 658
    invoke-super {p0, p1}, Ljavax/swing/JScrollPane;->setFont(Ljava/awt/Font;)V

    .line 660
    iget-object v0, p0, Lbsh/util/JConsole;->text:Ljavax/swing/JTextPane;

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0, p1}, Ljavax/swing/JTextPane;->setFont(Ljava/awt/Font;)V

    .line 662
    :cond_0
    return-void
.end method

.method public setNameCompletion(Lbsh/util/NameCompletion;)V
    .locals 0
    .param p1, "nc"    # Lbsh/util/NameCompletion;

    .line 791
    iput-object p1, p0, Lbsh/util/JConsole;->nameCompletion:Lbsh/util/NameCompletion;

    .line 792
    return-void
.end method

.method public setWaitFeedback(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 795
    if-eqz p1, :cond_0

    .line 796
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/awt/Cursor;->getPredefinedCursor(I)Ljava/awt/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->setCursor(Ljava/awt/Cursor;)V

    goto :goto_0

    .line 798
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/awt/Cursor;->getPredefinedCursor(I)Ljava/awt/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/JConsole;->setCursor(Ljava/awt/Cursor;)V

    .line 799
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 684
    const-string v0, "BeanShell console"

    return-object v0
.end method
