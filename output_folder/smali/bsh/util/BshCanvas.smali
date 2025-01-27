.class public Lbsh/util/BshCanvas;
.super Ljavax/swing/JComponent;
.source "BshCanvas.java"


# instance fields
.field imageBuffer:Ljava/awt/Image;

.field ths:Lbsh/This;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljavax/swing/JComponent;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbsh/This;)V
    .locals 0
    .param p1, "ths"    # Lbsh/This;

    .line 50
    invoke-direct {p0}, Ljavax/swing/JComponent;-><init>()V

    .line 51
    iput-object p1, p0, Lbsh/util/BshCanvas;->ths:Lbsh/This;

    .line 52
    return-void
.end method


# virtual methods
.method public getBufferedGraphics()Ljava/awt/Graphics;
    .locals 3

    .line 74
    invoke-virtual {p0}, Lbsh/util/BshCanvas;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 75
    .local v0, "dim":Ljava/awt/Dimension;
    iget v1, v0, Ljava/awt/Dimension;->width:I

    iget v2, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p0, v1, v2}, Lbsh/util/BshCanvas;->createImage(II)Ljava/awt/Image;

    move-result-object v1

    iput-object v1, p0, Lbsh/util/BshCanvas;->imageBuffer:Ljava/awt/Image;

    .line 76
    invoke-virtual {v1}, Ljava/awt/Image;->getGraphics()Ljava/awt/Graphics;

    move-result-object v1

    return-object v1
.end method

.method public paintComponent(Ljava/awt/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljava/awt/Graphics;

    .line 56
    iget-object v0, p0, Lbsh/util/BshCanvas;->imageBuffer:Ljava/awt/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1, v0, v1, v1, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 60
    :cond_0
    iget-object v0, p0, Lbsh/util/BshCanvas;->ths:Lbsh/This;

    if-eqz v0, :cond_1

    .line 62
    :try_start_0
    const-string/jumbo v2, "paint"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lbsh/EvalError;
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BshCanvas: method invocation error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 68
    .end local v0    # "e":Lbsh/EvalError;
    :cond_1
    :goto_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 80
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p3, p4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lbsh/util/BshCanvas;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 81
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p3, p4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lbsh/util/BshCanvas;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Ljavax/swing/JComponent;->setBounds(IIII)V

    .line 83
    return-void
.end method
