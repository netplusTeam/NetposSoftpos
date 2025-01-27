.class public Lorg/jpos/ui/factory/JTreeFactory;
.super Ljava/lang/Object;
.source "JTreeFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNode(Lorg/jdom2/Element;Ljava/util/Map;)Ljavax/swing/tree/DefaultMutableTreeNode;
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;
    .param p2, "map"    # Ljava/util/Map;

    .line 100
    new-instance v0, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 101
    invoke-virtual {p1}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 103
    .local v0, "node":Ljavax/swing/tree/DefaultMutableTreeNode;
    const-string v1, "action"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "action":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 105
    const-string v2, "command"

    invoke-virtual {p1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "command":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_0
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v2    # "command":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Element;

    invoke-direct {p0, v3, p2}, Lorg/jpos/ui/factory/JTreeFactory;->getNode(Lorg/jdom2/Element;Ljava/util/Map;)Ljavax/swing/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/swing/tree/DefaultMutableTreeNode;->add(Ljavax/swing/tree/MutableTreeNode;)V

    goto :goto_0

    .line 115
    :cond_2
    return-object v0
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 5
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 59
    move-object v0, p1

    .line 60
    .local v0, "parentUI":Lorg/jpos/ui/UI;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v1, "map":Ljava/util/Map;
    new-instance v2, Ljavax/swing/JTree;

    invoke-direct {p0, p2, v1}, Lorg/jpos/ui/factory/JTreeFactory;->getNode(Lorg/jdom2/Element;Ljava/util/Map;)Ljavax/swing/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeNode;)V

    .line 62
    .local v2, "tree":Ljavax/swing/JTree;
    const-string v3, "font"

    invoke-virtual {p2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "font":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 64
    invoke-static {v3}, Ljava/awt/Font;->decode(Ljava/lang/String;)Ljava/awt/Font;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/swing/JTree;->setFont(Ljava/awt/Font;)V

    .line 65
    :cond_0
    invoke-virtual {p2}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Ljavax/swing/JTree;->setRootVisible(Z)V

    .line 67
    new-instance v4, Lorg/jpos/ui/factory/JTreeFactory$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lorg/jpos/ui/factory/JTreeFactory$1;-><init>(Lorg/jpos/ui/factory/JTreeFactory;Ljavax/swing/JTree;Ljava/util/Map;Lorg/jpos/ui/UI;)V

    invoke-virtual {v2, v4}, Ljavax/swing/JTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    .line 96
    return-object v2
.end method
