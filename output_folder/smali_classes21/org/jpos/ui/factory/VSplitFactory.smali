.class public Lorg/jpos/ui/factory/VSplitFactory;
.super Ljava/lang/Object;
.source "VSplitFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 4
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 42
    new-instance v0, Ljavax/swing/JSplitPane;

    .line 44
    const-string v1, "top"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/ui/UI;->create(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v1

    .line 45
    const-string v2, "bottom"

    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/ui/UI;->create(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    .line 47
    .local v0, "splitPane":Ljavax/swing/JSplitPane;
    const-string v1, "divider"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "dividerAttr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 49
    nop

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 49
    invoke-virtual {v0, v2}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 53
    :cond_0
    return-object v0
.end method
