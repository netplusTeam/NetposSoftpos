.class public Lorg/jpos/ui/factory/GridLayoutFactory;
.super Ljava/lang/Object;
.source "GridLayoutFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 5
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 49
    const-string v0, "1"

    :try_start_0
    const-string v1, "rows"

    invoke-virtual {p2, v1, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "rows":I
    const-string v2, "columns"

    invoke-virtual {p2, v2, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "cols":I
    new-instance v2, Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/GridLayout;

    invoke-direct {v3, v1, v0}, Ljava/awt/GridLayout;-><init>(II)V

    invoke-direct {v2, v3}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 52
    .local v2, "p":Ljavax/swing/JComponent;
    const-string v3, "cell"

    invoke-virtual {p2, v3}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 53
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Element;

    invoke-virtual {p1, v4}, Lorg/jpos/ui/UI;->create(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/swing/JComponent;->add(Ljava/awt/Component;)Ljava/awt/Component;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "cols":I
    .end local v1    # "rows":I
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_0
    goto :goto_1

    .line 55
    .end local v2    # "p":Ljavax/swing/JComponent;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/swing/JLabel;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 58
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "p":Ljavax/swing/JComponent;
    :goto_1
    return-object v2
.end method
