.class public Lbsh/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static splashScreen:Ljava/awt/Window;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endSplashScreen()V
    .locals 1

    .line 83
    sget-object v0, Lbsh/util/Util;->splashScreen:Ljava/awt/Window;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/awt/Window;->dispose()V

    .line 85
    :cond_0
    return-void
.end method

.method public static startSplashScreen()V
    .locals 10

    .line 60
    const/16 v0, 0x113

    .local v0, "width":I
    const/16 v1, 0x94

    .line 61
    .local v1, "height":I
    new-instance v2, Ljava/awt/Window;

    new-instance v3, Ljava/awt/Frame;

    invoke-direct {v3}, Ljava/awt/Frame;-><init>()V

    invoke-direct {v2, v3}, Ljava/awt/Window;-><init>(Ljava/awt/Frame;)V

    .line 62
    .local v2, "win":Ljava/awt/Window;
    invoke-virtual {v2}, Ljava/awt/Window;->pack()V

    .line 63
    new-instance v3, Lbsh/util/BshCanvas;

    invoke-direct {v3}, Lbsh/util/BshCanvas;-><init>()V

    .line 64
    .local v3, "can":Lbsh/util/BshCanvas;
    invoke-virtual {v3, v0, v1}, Lbsh/util/BshCanvas;->setSize(II)V

    .line 65
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v4

    .line 66
    .local v4, "tk":Ljava/awt/Toolkit;
    invoke-virtual {v4}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v5

    .line 67
    .local v5, "dim":Ljava/awt/Dimension;
    iget v6, v5, Ljava/awt/Dimension;->width:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    iget v7, v5, Ljava/awt/Dimension;->height:I

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v1, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v2, v6, v7, v0, v1}, Ljava/awt/Window;->setBounds(IIII)V

    .line 69
    const-string v6, "Center"

    invoke-virtual {v2, v6, v3}, Ljava/awt/Window;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 70
    const-class v6, Lbsh/Interpreter;

    .line 71
    const-string v7, "/bsh/util/lib/splash.gif"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 70
    invoke-virtual {v4, v6}, Ljava/awt/Toolkit;->getImage(Ljava/net/URL;)Ljava/awt/Image;

    move-result-object v6

    .line 72
    .local v6, "img":Ljava/awt/Image;
    new-instance v7, Ljava/awt/MediaTracker;

    invoke-direct {v7, v3}, Ljava/awt/MediaTracker;-><init>(Ljava/awt/Component;)V

    .line 73
    .local v7, "mt":Ljava/awt/MediaTracker;
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Ljava/awt/MediaTracker;->addImage(Ljava/awt/Image;I)V

    .line 74
    :try_start_0
    invoke-virtual {v7}, Ljava/awt/MediaTracker;->waitForAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .line 75
    :goto_0
    invoke-virtual {v3}, Lbsh/util/BshCanvas;->getBufferedGraphics()Ljava/awt/Graphics;

    move-result-object v9

    .line 76
    .local v9, "gr":Ljava/awt/Graphics;
    invoke-virtual {v9, v6, v8, v8, v3}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 77
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/awt/Window;->setVisible(Z)V

    .line 78
    invoke-virtual {v2}, Ljava/awt/Window;->toFront()V

    .line 79
    sput-object v2, Lbsh/util/Util;->splashScreen:Ljava/awt/Window;

    .line 80
    return-void
.end method
