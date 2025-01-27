.class public Lorg/jpos/ui/factory/JTabbedPaneFactory;
.super Ljava/lang/Object;
.source "JTabbedPaneFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;
.implements Ljavax/swing/event/ChangeListener;


# instance fields
.field actions:Ljava/util/List;

.field p:Ljavax/swing/JTabbedPane;

.field ui:Lorg/jpos/ui/UI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->actions:Ljava/util/List;

    return-void
.end method

.method private add(Ljavax/swing/JTabbedPane;Lorg/jdom2/Element;)V
    .locals 5
    .param p1, "p"    # Ljavax/swing/JTabbedPane;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 74
    if-eqz p2, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "icon":Ljavax/swing/Icon;
    const-string v1, "icon"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "iconFile":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 78
    new-instance v2, Ljavax/swing/ImageIcon;

    invoke-direct {v2, v1}, Ljavax/swing/ImageIcon;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 79
    :cond_0
    const-string v2, "title"

    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v3, p2}, Lorg/jpos/ui/UI;->create(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;)V

    .line 81
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 82
    .local v2, "action":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "command"

    invoke-virtual {p2, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    const/4 v3, 0x1

    const-string v4, "action"

    invoke-virtual {p2, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 84
    iget-object v3, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->actions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v0    # "icon":Ljavax/swing/Icon;
    .end local v1    # "iconFile":Ljava/lang/String;
    .end local v2    # "action":[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 4
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 58
    iput-object p1, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->ui:Lorg/jpos/ui/UI;

    .line 59
    new-instance v0, Ljavax/swing/JTabbedPane;

    invoke-direct {v0}, Ljavax/swing/JTabbedPane;-><init>()V

    iput-object v0, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->p:Ljavax/swing/JTabbedPane;

    .line 61
    const-string v0, "font"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "font":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->p:Ljavax/swing/JTabbedPane;

    invoke-static {v0}, Ljava/awt/Font;->decode(Ljava/lang/String;)Ljava/awt/Font;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JTabbedPane;->setFont(Ljava/awt/Font;)V

    .line 65
    :cond_0
    const-string v1, "pane"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->p:Ljavax/swing/JTabbedPane;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Element;

    invoke-direct {p0, v2, v3}, Lorg/jpos/ui/factory/JTabbedPaneFactory;->add(Ljavax/swing/JTabbedPane;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->p:Ljavax/swing/JTabbedPane;

    invoke-virtual {v2, p0}, Ljavax/swing/JTabbedPane;->addChangeListener(Ljavax/swing/event/ChangeListener;)V

    .line 70
    iget-object v2, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->p:Ljavax/swing/JTabbedPane;

    return-object v2
.end method

.method public stateChanged(Ljavax/swing/event/ChangeEvent;)V
    .locals 5
    .param p1, "e"    # Ljavax/swing/event/ChangeEvent;

    .line 90
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 91
    .local v0, "action":[Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->actions:Ljava/util/List;

    iget-object v2, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->p:Ljavax/swing/JTabbedPane;

    invoke-virtual {v2}, Ljavax/swing/JTabbedPane;->getSelectedIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .line 92
    iget-object v1, p0, Lorg/jpos/ui/factory/JTabbedPaneFactory;->ui:Lorg/jpos/ui/UI;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/jpos/ui/UI;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, "al":Ljava/lang/Object;
    instance-of v2, v1, Ljava/awt/event/ActionListener;

    if-eqz v2, :cond_0

    .line 94
    new-instance v2, Ljava/awt/event/ActionEvent;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-direct {v2, p0, v3, v4}, Ljava/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 95
    .local v2, "ae":Ljava/awt/event/ActionEvent;
    move-object v3, v1

    check-cast v3, Ljava/awt/event/ActionListener;

    invoke-interface {v3, v2}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "action":[Ljava/lang/String;
    .end local v1    # "al":Ljava/lang/Object;
    .end local v2    # "ae":Ljava/awt/event/ActionEvent;
    :cond_0
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "f":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v0    # "f":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
