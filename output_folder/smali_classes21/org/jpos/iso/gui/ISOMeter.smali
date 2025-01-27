.class public Lorg/jpos/iso/gui/ISOMeter;
.super Ljavax/swing/JComponent;
.source "ISOMeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final MAX_VALUE:I = 0x3e8

.field static final height:I = 0x3c

.field static final mass:I = 0x1e

.field private static final serialVersionUID:J = -0x189232a031d34432L

.field static final width:I = 0xc8


# instance fields
.field color:Ljava/awt/Color;

.field connected:Z

.field continueScroll:I

.field fontBig:Ljava/awt/Font;

.field fontSmall:Ljava/awt/Font;

.field im:Ljava/awt/Image;

.field private imb:Ljava/awt/Image;

.field img:Ljava/awt/Graphics;

.field lastNegative:I

.field lastPositive:I

.field negativeCounter:Ljava/lang/String;

.field negativeText:Ljava/lang/String;

.field parent:Lorg/jpos/iso/gui/ISOChannelPanel;

.field positiveCounter:Ljava/lang/String;

.field positiveText:Ljava/lang/String;

.field refreshPanel:I

.field private repaintThread:Ljava/lang/Thread;

.field scroll:Z

.field ti:Ljavax/swing/Timer;

.field xPoints:[I

.field yPoints:[I


# direct methods
.method public constructor <init>(Lorg/jpos/iso/gui/ISOChannelPanel;)V
    .locals 5
    .param p1, "parent"    # Lorg/jpos/iso/gui/ISOChannelPanel;

    .line 125
    invoke-direct {p0}, Ljavax/swing/JComponent;-><init>()V

    .line 43
    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1}, Ljava/awt/Color;-><init>(III)V

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->color:Ljava/awt/Color;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/gui/ISOMeter;->scroll:Z

    .line 119
    const/16 v0, 0x32

    iput v0, p0, Lorg/jpos/iso/gui/ISOMeter;->refreshPanel:I

    .line 126
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOMeter;->parent:Lorg/jpos/iso/gui/ISOChannelPanel;

    .line 128
    new-instance v0, Ljava/awt/Font;

    const-string v1, "Helvetica"

    const/4 v2, 0x2

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->fontBig:Ljava/awt/Font;

    .line 129
    new-instance v0, Ljava/awt/Font;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->fontSmall:Ljava/awt/Font;

    .line 130
    const/16 v0, 0xc8

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jpos/iso/gui/ISOMeter;->yPoints:[I

    .line 131
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jpos/iso/gui/ISOMeter;->xPoints:[I

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMeter;->xPoints:[I

    aput v1, v3, v1

    .line 134
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMeter;->yPoints:[I

    const/16 v4, 0x1e

    aput v4, v3, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->positiveText:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->negativeText:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->negativeCounter:Ljava/lang/String;

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->positiveCounter:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lorg/jpos/iso/gui/ISOMeter;->connected:Z

    .line 141
    new-instance v0, Lorg/jpos/iso/gui/ISOMeter$1;

    invoke-direct {v0, p0}, Lorg/jpos/iso/gui/ISOMeter$1;-><init>(Lorg/jpos/iso/gui/ISOMeter;)V

    .line 146
    .local v0, "mouseListener":Ljava/awt/event/MouseListener;
    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOMeter;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 147
    return-void
.end method

.method private plotCounters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    sget-object v1, Ljava/awt/Color;->lightGray:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 292
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMeter;->fontSmall:Ljava/awt/Font;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics;->setFont(Ljava/awt/Font;)V

    .line 293
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    const/16 v1, 0x91

    const/16 v2, 0xd

    invoke-virtual {v0, p1, v1, v2}, Ljava/awt/Graphics;->drawString(Ljava/lang/String;II)V

    .line 294
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    const/16 v2, 0x39

    invoke-virtual {v0, p2, v1, v2}, Ljava/awt/Graphics;->drawString(Ljava/lang/String;II)V

    .line 295
    return-void
.end method

.method private plotGrid()V
    .locals 5

    .line 274
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    sget-object v1, Ljava/awt/Color;->blue:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_1

    .line 276
    rem-int/lit8 v2, v0, 0x14

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    const/16 v3, 0x3c

    invoke-virtual {v2, v0, v1, v0, v3}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    :cond_1
    const/16 v0, -0x3e8

    .restart local v0    # "i":I
    :goto_1
    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_2

    .line 279
    mul-int/lit8 v3, v0, 0x3c

    div-int/lit16 v3, v3, 0x7d0

    add-int/lit8 v3, v3, 0x1e

    .line 280
    .local v3, "y":I
    iget-object v4, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    invoke-virtual {v4, v1, v3, v2, v3}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 278
    .end local v3    # "y":I
    add-int/lit16 v0, v0, 0xc8

    goto :goto_1

    .line 282
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private plotText(Ljava/lang/String;III)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "l"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 284
    if-eqz p1, :cond_0

    const/16 v0, 0x14

    if-ge p2, v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    sget-object v1, Ljava/awt/Color;->lightGray:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 286
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMeter;->fontBig:Ljava/awt/Font;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics;->setFont(Ljava/awt/Font;)V

    .line 287
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    invoke-virtual {v0, p1, p3, p4}, Ljava/awt/Graphics;->drawString(Ljava/lang/String;II)V

    .line 289
    :cond_0
    return-void
.end method

.method private scroll()V
    .locals 4

    .line 246
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->yPoints:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc7

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget v0, p0, Lorg/jpos/iso/gui/ISOMeter;->continueScroll:I

    if-lez v0, :cond_0

    .line 248
    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jpos/iso/gui/ISOMeter;->continueScroll:I

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public createLogList()Ljavax/swing/JComponent;
    .locals 5

    .line 168
    new-instance v0, Ljavax/swing/JList;

    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMeter;->parent:Lorg/jpos/iso/gui/ISOChannelPanel;

    invoke-virtual {v1}, Lorg/jpos/iso/gui/ISOChannelPanel;->getLog()Ljavax/swing/ListModel;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    .line 169
    .local v0, "logList":Ljavax/swing/JList;
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    .line 170
    .local v1, "A":Ljavax/swing/JPanel;
    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 172
    new-instance v2, Lorg/jpos/iso/gui/ISOMeter$2;

    invoke-direct {v2, p0, v0}, Lorg/jpos/iso/gui/ISOMeter$2;-><init>(Lorg/jpos/iso/gui/ISOMeter;Ljavax/swing/JList;)V

    .line 186
    .local v2, "mouseListener":Ljava/awt/event/MouseListener;
    invoke-virtual {v0, v2}, Ljavax/swing/JList;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 188
    const-string v3, "9999 99999999 999999"

    invoke-virtual {v0, v3}, Ljavax/swing/JList;->setPrototypeCellValue(Ljava/lang/Object;)V

    .line 189
    new-instance v3, Ljavax/swing/JScrollPane;

    invoke-direct {v3, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 190
    .local v3, "scrollPane":Ljavax/swing/JScrollPane;
    const-string v4, "Center"

    invoke-virtual {v1, v3, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 191
    return-object v1
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 3

    .line 243
    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0xc8

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljava/awt/Graphics;

    .line 237
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->repaintThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lorg/jpos/iso/gui/ISOMeter;->start()V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/gui/ISOMeter;->plot()V

    .line 240
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->im:Ljava/awt/Image;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 241
    return-void
.end method

.method public plot()V
    .locals 12

    .line 251
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->im:Ljava/awt/Image;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 252
    const/16 v0, 0x3c

    invoke-virtual {p0, v1, v0}, Lorg/jpos/iso/gui/ISOMeter;->createImage(II)Ljava/awt/Image;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/iso/gui/ISOMeter;->im:Ljava/awt/Image;

    .line 253
    invoke-virtual {v3}, Ljava/awt/Image;->getGraphics()Ljava/awt/Graphics;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    .line 254
    sget-object v4, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 255
    iget-object v5, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    const/16 v9, 0x3c

    const/16 v10, 0xa

    const/16 v11, 0xa

    invoke-virtual/range {v5 .. v11}, Ljava/awt/Graphics;->fillRoundRect(IIIIII)V

    .line 256
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    invoke-virtual {v3, v2, v2, v1, v0}, Ljava/awt/Graphics;->clipRect(IIII)V

    .line 257
    invoke-direct {p0}, Lorg/jpos/iso/gui/ISOMeter;->plotGrid()V

    .line 260
    invoke-virtual {p0, v1, v0}, Lorg/jpos/iso/gui/ISOMeter;->createImage(II)Ljava/awt/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->imb:Ljava/awt/Image;

    .line 261
    invoke-virtual {v0}, Ljava/awt/Image;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    .line 262
    .local v0, "imbCopy":Ljava/awt/Graphics;
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMeter;->im:Ljava/awt/Image;

    invoke-virtual {v0, v3, v2, v2, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 264
    .end local v0    # "imbCopy":Ljava/awt/Graphics;
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMeter;->imb:Ljava/awt/Image;

    invoke-virtual {v0, v3, v2, v2, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 265
    iget v0, p0, Lorg/jpos/iso/gui/ISOMeter;->continueScroll:I

    if-lez v0, :cond_1

    .line 266
    invoke-direct {p0}, Lorg/jpos/iso/gui/ISOMeter;->scroll()V

    .line 267
    :cond_1
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->positiveText:Ljava/lang/String;

    iget v2, p0, Lorg/jpos/iso/gui/ISOMeter;->lastPositive:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jpos/iso/gui/ISOMeter;->lastPositive:I

    const/16 v3, 0x1b

    const/4 v4, 0x3

    invoke-direct {p0, v0, v2, v4, v3}, Lorg/jpos/iso/gui/ISOMeter;->plotText(Ljava/lang/String;III)V

    .line 268
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->negativeText:Ljava/lang/String;

    iget v2, p0, Lorg/jpos/iso/gui/ISOMeter;->lastNegative:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jpos/iso/gui/ISOMeter;->lastNegative:I

    const/16 v3, 0x39

    invoke-direct {p0, v0, v2, v4, v3}, Lorg/jpos/iso/gui/ISOMeter;->plotText(Ljava/lang/String;III)V

    .line 269
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->positiveCounter:Ljava/lang/String;

    iget-object v2, p0, Lorg/jpos/iso/gui/ISOMeter;->negativeCounter:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/jpos/iso/gui/ISOMeter;->plotCounters(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    iget-boolean v2, p0, Lorg/jpos/iso/gui/ISOMeter;->connected:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 271
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->img:Ljava/awt/Graphics;

    iget-object v2, p0, Lorg/jpos/iso/gui/ISOMeter;->xPoints:[I

    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMeter;->yPoints:[I

    invoke-virtual {v0, v2, v3, v1}, Ljava/awt/Graphics;->drawPolyline([I[II)V

    .line 272
    return-void
.end method

.method public run()V
    .locals 2

    .line 297
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/iso/gui/ISOMeter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget v0, p0, Lorg/jpos/iso/gui/ISOMeter;->continueScroll:I

    if-lez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/jpos/iso/gui/ISOMeter;->repaint()V

    .line 301
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/jpos/iso/gui/ISOMeter;->refreshPanel:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 302
    :catch_0
    move-exception v0

    .line 304
    :goto_1
    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->repaintThread:Ljava/lang/Thread;

    .line 307
    return-void
.end method

.method public setConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .line 209
    iget-boolean v0, p0, Lorg/jpos/iso/gui/ISOMeter;->connected:Z

    if-eq v0, p1, :cond_2

    .line 210
    iget-boolean v0, p0, Lorg/jpos/iso/gui/ISOMeter;->scroll:Z

    if-nez v0, :cond_1

    .line 211
    if-eqz p1, :cond_0

    .line 212
    const/16 v0, 0xc8

    iput v0, p0, Lorg/jpos/iso/gui/ISOMeter;->continueScroll:I

    goto :goto_0

    .line 214
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/jpos/iso/gui/ISOMeter;->continueScroll:I

    .line 215
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/iso/gui/ISOMeter;->repaint()V

    .line 217
    :cond_2
    iput-boolean p1, p0, Lorg/jpos/iso/gui/ISOMeter;->connected:Z

    .line 218
    return-void
.end method

.method public setNegativeCounter(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOMeter;->negativeCounter:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setPositiveCounter(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOMeter;->positiveCounter:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setRefresh(I)V
    .locals 0
    .param p1, "refreshPanel"    # I

    .line 205
    if-lez p1, :cond_0

    .line 206
    iput p1, p0, Lorg/jpos/iso/gui/ISOMeter;->refreshPanel:I

    .line 207
    :cond_0
    return-void
.end method

.method public setScroll(Z)V
    .locals 0
    .param p1, "scroll"    # Z

    .line 202
    iput-boolean p1, p0, Lorg/jpos/iso/gui/ISOMeter;->scroll:Z

    .line 203
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .param p1, "val"    # I

    .line 195
    rem-int/lit16 v0, p1, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    div-int/lit16 v0, v0, 0x7d0

    rsub-int/lit8 v0, v0, 0x1e

    .line 196
    .local v0, "y":I
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMeter;->yPoints:[I

    const/16 v2, 0xc7

    aput v0, v1, v2

    .line 197
    const/16 v1, 0xc8

    iput v1, p0, Lorg/jpos/iso/gui/ISOMeter;->continueScroll:I

    .line 198
    invoke-direct {p0}, Lorg/jpos/iso/gui/ISOMeter;->scroll()V

    .line 199
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 1
    .param p1, "val"    # I
    .param p2, "textString"    # Ljava/lang/String;

    .line 226
    invoke-virtual {p0, p1}, Lorg/jpos/iso/gui/ISOMeter;->setValue(I)V

    .line 227
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 228
    iput-object p2, p0, Lorg/jpos/iso/gui/ISOMeter;->negativeText:Ljava/lang/String;

    .line 229
    iput v0, p0, Lorg/jpos/iso/gui/ISOMeter;->lastNegative:I

    goto :goto_0

    .line 232
    :cond_0
    iput-object p2, p0, Lorg/jpos/iso/gui/ISOMeter;->positiveText:Ljava/lang/String;

    .line 233
    iput v0, p0, Lorg/jpos/iso/gui/ISOMeter;->lastPositive:I

    .line 235
    :goto_0
    return-void
.end method

.method public showLogList()V
    .locals 3

    .line 158
    new-instance v0, Ljavax/swing/JFrame;

    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMeter;->parent:Lorg/jpos/iso/gui/ISOChannelPanel;

    invoke-virtual {v1}, Lorg/jpos/iso/gui/ISOChannelPanel;->getSymbolicName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "f":Ljavax/swing/JFrame;
    invoke-virtual {v0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/iso/gui/ISOMeter;->createLogList()Ljavax/swing/JComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 160
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    .line 161
    invoke-virtual {v0}, Ljavax/swing/JFrame;->validate()V

    .line 162
    invoke-virtual {v0}, Ljavax/swing/JFrame;->pack()V

    .line 163
    const/16 v1, 0xc8

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JFrame;->setSize(II)V

    .line 164
    invoke-virtual {v0}, Ljavax/swing/JFrame;->show()V

    .line 165
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->repaintThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ISOMeter"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->repaintThread:Ljava/lang/Thread;

    .line 152
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 153
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter;->repaintThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local p0    # "this":Lorg/jpos/iso/gui/ISOMeter;
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(Ljava/awt/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljava/awt/Graphics;

    .line 309
    invoke-virtual {p0, p1}, Lorg/jpos/iso/gui/ISOMeter;->paint(Ljava/awt/Graphics;)V

    .line 310
    return-void
.end method
