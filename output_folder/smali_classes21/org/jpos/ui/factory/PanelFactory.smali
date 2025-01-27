.class public Lorg/jpos/ui/factory/PanelFactory;
.super Ljava/lang/Object;
.source "PanelFactory.java"

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
    .locals 2
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 46
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 47
    .local v0, "p":Ljavax/swing/JPanel;
    invoke-virtual {p2}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    invoke-virtual {p1, p2}, Lorg/jpos/ui/UI;->create(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 49
    :cond_0
    return-object v0
.end method
