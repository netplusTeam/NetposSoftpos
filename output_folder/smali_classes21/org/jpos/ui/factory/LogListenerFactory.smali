.class public Lorg/jpos/ui/factory/LogListenerFactory;
.super Ljava/lang/Object;
.source "LogListenerFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/ui/factory/LogListenerFactory$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 11
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 48
    new-instance v0, Ljavax/swing/JTextArea;

    const/16 v1, 0x19

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Ljavax/swing/JTextArea;-><init>(II)V

    .line 49
    .local v0, "textArea":Ljavax/swing/JTextArea;
    const-string v1, "font"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "font":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 51
    invoke-static {v1}, Ljava/awt/Font;->decode(Ljava/lang/String;)Ljava/awt/Font;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 52
    :cond_0
    sget-object v2, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setBackground(Ljava/awt/Color;)V

    .line 53
    sget-object v2, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setForeground(Ljava/awt/Color;)V

    .line 54
    const-string v2, "logger"

    const-string v3, "Q2"

    invoke-virtual {p2, v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "logId":Ljava/lang/String;
    :try_start_0
    const-string v3, "max-events"

    const-string v4, "100"

    .line 57
    invoke-virtual {p2, v3, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 59
    .local v7, "maxEvents":I
    const-string v3, "max-lines"

    const-string v4, "1000"

    .line 60
    invoke-virtual {p2, v3, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 62
    .local v8, "maxLines":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logger."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/util/LogProducer;

    move-object v9, v3

    .line 63
    .local v9, "logger":Lorg/jpos/util/LogProducer;
    new-instance v10, Lorg/jpos/ui/factory/LogListenerFactory$Listener;

    move-object v3, v10

    move-object v4, v9

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lorg/jpos/ui/factory/LogListenerFactory$Listener;-><init>(Lorg/jpos/util/LogProducer;Lorg/jpos/ui/UI;Ljavax/swing/JTextArea;II)V

    invoke-interface {v9, v10}, Lorg/jpos/util/LogProducer;->addListener(Lorg/jpos/util/LogListener;)V
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v7    # "maxEvents":I
    .end local v8    # "maxLines":I
    .end local v9    # "logger":Lorg/jpos/util/LogProducer;
    goto :goto_0

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, "ex":Lorg/jpos/util/NameRegistrar$NotFoundException;
    invoke-virtual {v3}, Lorg/jpos/util/NameRegistrar$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 69
    .end local v3    # "ex":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :goto_0
    return-object v0
.end method
