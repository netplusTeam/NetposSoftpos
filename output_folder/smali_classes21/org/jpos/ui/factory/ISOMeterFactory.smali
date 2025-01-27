.class public Lorg/jpos/ui/factory/ISOMeterFactory;
.super Ljava/lang/Object;
.source "ISOMeterFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 7
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "icp":Lorg/jpos/iso/gui/ISOChannelPanel;
    :try_start_0
    const-string v1, "idref"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jpos/iso/ISOChannel;

    if-eqz v2, :cond_0

    .line 51
    new-instance v2, Lorg/jpos/iso/gui/ISOChannelPanel;

    move-object v3, v1

    check-cast v3, Lorg/jpos/iso/ISOChannel;

    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/gui/ISOChannelPanel;-><init>(Lorg/jpos/iso/ISOChannel;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 52
    :cond_0
    instance-of v2, v1, Ljava/util/Observable;

    if-eqz v2, :cond_1

    .line 53
    new-instance v2, Lorg/jpos/iso/gui/ISOChannelPanel;

    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/gui/ISOChannelPanel;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 54
    move-object v2, v1

    check-cast v2, Ljava/util/Observable;

    invoke-virtual {v2, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->getISOMeter()Lorg/jpos/iso/gui/ISOMeter;

    move-result-object v2

    .line 57
    .local v2, "meter":Lorg/jpos/iso/gui/ISOMeter;
    const-string v3, "false"

    const-string v4, "scroll"

    invoke-virtual {p2, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jpos/iso/gui/ISOMeter;->setScroll(Z)V

    .line 60
    :cond_2
    const-string v3, "protect"

    invoke-virtual {p2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "protect":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 62
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->toIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/iso/gui/ISOChannelPanel;->setProtectFields([I)V

    .line 63
    :cond_3
    const-string v4, "wipe"

    invoke-virtual {p2, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "wipe":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 65
    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->toIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jpos/iso/gui/ISOChannelPanel;->setWipeFields([I)V

    .line 67
    :cond_4
    const-string v5, "refresh"

    invoke-virtual {p2, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "refresh":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/jpos/iso/gui/ISOMeter;->setRefresh(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "meter":Lorg/jpos/iso/gui/ISOMeter;
    .end local v3    # "protect":Ljava/lang/String;
    .end local v4    # "wipe":Ljava/lang/String;
    .end local v5    # "refresh":Ljava/lang/String;
    :cond_5
    nop

    .line 74
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    new-instance v2, Ljavax/swing/JLabel;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    return-object v2
.end method
