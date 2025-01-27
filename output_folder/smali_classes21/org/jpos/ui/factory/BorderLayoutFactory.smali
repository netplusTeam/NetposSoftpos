.class public Lorg/jpos/ui/factory/BorderLayoutFactory;
.super Ljava/lang/Object;
.source "BorderLayoutFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# instance fields
.field ui:Lorg/jpos/ui/UI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private add(Ljavax/swing/JPanel;Lorg/jdom2/Element;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljavax/swing/JPanel;
    .param p2, "e"    # Lorg/jdom2/Element;
    .param p3, "location"    # Ljava/lang/String;

    .line 61
    if-eqz p2, :cond_0

    .line 62
    iget-object v0, p0, Lorg/jpos/ui/factory/BorderLayoutFactory;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v0, p2}, Lorg/jpos/ui/UI;->create(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 3
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 48
    iput-object p1, p0, Lorg/jpos/ui/factory/BorderLayoutFactory;->ui:Lorg/jpos/ui/UI;

    .line 49
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 51
    .local v0, "p":Ljavax/swing/JPanel;
    const-string v1, "north"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "North"

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/ui/factory/BorderLayoutFactory;->add(Ljavax/swing/JPanel;Lorg/jdom2/Element;Ljava/lang/String;)V

    .line 52
    const-string v1, "south"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "South"

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/ui/factory/BorderLayoutFactory;->add(Ljavax/swing/JPanel;Lorg/jdom2/Element;Ljava/lang/String;)V

    .line 53
    const-string v1, "east"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "East"

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/ui/factory/BorderLayoutFactory;->add(Ljavax/swing/JPanel;Lorg/jdom2/Element;Ljava/lang/String;)V

    .line 54
    const-string v1, "west"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "West"

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/ui/factory/BorderLayoutFactory;->add(Ljavax/swing/JPanel;Lorg/jdom2/Element;Ljava/lang/String;)V

    .line 55
    const-string v1, "center"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "Center"

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/ui/factory/BorderLayoutFactory;->add(Ljavax/swing/JPanel;Lorg/jdom2/Element;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method
