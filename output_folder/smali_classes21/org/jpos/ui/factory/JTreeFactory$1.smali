.class Lorg/jpos/ui/factory/JTreeFactory$1;
.super Ljava/lang/Object;
.source "JTreeFactory.java"

# interfaces
.implements Ljavax/swing/event/TreeSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/ui/factory/JTreeFactory;->create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/ui/factory/JTreeFactory;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$parentUI:Lorg/jpos/ui/UI;

.field final synthetic val$tree:Ljavax/swing/JTree;


# direct methods
.method constructor <init>(Lorg/jpos/ui/factory/JTreeFactory;Ljavax/swing/JTree;Ljava/util/Map;Lorg/jpos/ui/UI;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/ui/factory/JTreeFactory;

    .line 68
    iput-object p1, p0, Lorg/jpos/ui/factory/JTreeFactory$1;->this$0:Lorg/jpos/ui/factory/JTreeFactory;

    iput-object p2, p0, Lorg/jpos/ui/factory/JTreeFactory$1;->val$tree:Ljavax/swing/JTree;

    iput-object p3, p0, Lorg/jpos/ui/factory/JTreeFactory$1;->val$map:Ljava/util/Map;

    iput-object p4, p0, Lorg/jpos/ui/factory/JTreeFactory$1;->val$parentUI:Lorg/jpos/ui/UI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .locals 8
    .param p1, "evt"    # Ljavax/swing/event/TreeSelectionEvent;

    .line 70
    iget-object v0, p0, Lorg/jpos/ui/factory/JTreeFactory$1;->val$tree:Ljavax/swing/JTree;

    .line 72
    invoke-virtual {v0}, Ljavax/swing/JTree;->getLastSelectedPathComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 73
    .local v0, "node":Ljavax/swing/tree/DefaultMutableTreeNode;
    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lorg/jpos/ui/factory/JTreeFactory$1;->val$map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 76
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, "command":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 82
    :cond_0
    iget-object v5, p0, Lorg/jpos/ui/factory/JTreeFactory$1;->val$parentUI:Lorg/jpos/ui/UI;

    .line 83
    invoke-virtual {v5, v3}, Lorg/jpos/ui/UI;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/awt/event/ActionListener;

    .line 84
    .local v5, "al":Ljava/awt/event/ActionListener;
    if-eqz v5, :cond_1

    .line 85
    new-instance v6, Ljava/awt/event/ActionEvent;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 93
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "command":Ljava/lang/String;
    .end local v5    # "al":Ljava/awt/event/ActionListener;
    :cond_1
    return-void
.end method
