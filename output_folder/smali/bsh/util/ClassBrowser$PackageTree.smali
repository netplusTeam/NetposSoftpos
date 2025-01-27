.class Lbsh/util/ClassBrowser$PackageTree;
.super Ljavax/swing/JTree;
.source "ClassBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/util/ClassBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageTree"
.end annotation


# instance fields
.field nodeForPackage:Ljava/util/Map;

.field root:Ljavax/swing/tree/TreeNode;

.field final synthetic this$0:Lbsh/util/ClassBrowser;

.field treeModel:Ljavax/swing/tree/DefaultTreeModel;


# direct methods
.method constructor <init>(Lbsh/util/ClassBrowser;Ljava/util/Collection;)V
    .locals 1
    .param p1, "this$0"    # Lbsh/util/ClassBrowser;
    .param p2, "packages"    # Ljava/util/Collection;

    .line 504
    iput-object p1, p0, Lbsh/util/ClassBrowser$PackageTree;->this$0:Lbsh/util/ClassBrowser;

    invoke-direct {p0}, Ljavax/swing/JTree;-><init>()V

    .line 502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->nodeForPackage:Ljava/util/Map;

    .line 505
    invoke-virtual {p0, p2}, Lbsh/util/ClassBrowser$PackageTree;->setPackages(Ljava/util/Collection;)V

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser$PackageTree;->setRootVisible(Z)V

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser$PackageTree;->setShowsRootHandles(Z)V

    .line 509
    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser$PackageTree;->setExpandsSelectedPaths(Z)V

    .line 520
    return-void
.end method


# virtual methods
.method addNodeMap(Ljavax/swing/tree/TreeNode;)V
    .locals 5
    .param p1, "node"    # Ljavax/swing/tree/TreeNode;

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 595
    .local v0, "sb":Ljava/lang/StringBuffer;
    move-object v1, p1

    .line 596
    .local v1, "tn":Ljavax/swing/tree/TreeNode;
    :goto_0
    iget-object v2, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    if-eq v1, v2, :cond_1

    .line 597
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-interface {v1}, Ljavax/swing/tree/TreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v2

    iget-object v4, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    if-eq v2, v4, :cond_0

    .line 599
    const-string v2, "."

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    :cond_0
    invoke-interface {v1}, Ljavax/swing/tree/TreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v1

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "pack":Ljava/lang/String;
    iget-object v3, p0, Lbsh/util/ClassBrowser$PackageTree;->nodeForPackage:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    return-void
.end method

.method makeNode(Ljava/util/Map;Ljava/lang/String;)Ljavax/swing/tree/MutableTreeNode;
    .locals 5
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 556
    new-instance v0, Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-direct {v0, p2}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 558
    .local v0, "root":Ljavax/swing/tree/DefaultMutableTreeNode;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 559
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 561
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 562
    .local v3, "val":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 563
    new-instance v4, Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-direct {v4, v2}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 565
    .local v4, "leaf":Ljavax/swing/tree/DefaultMutableTreeNode;
    invoke-virtual {v0, v4}, Ljavax/swing/tree/DefaultMutableTreeNode;->add(Ljavax/swing/tree/MutableTreeNode;)V

    .line 566
    .end local v4    # "leaf":Ljavax/swing/tree/DefaultMutableTreeNode;
    goto :goto_1

    .line 567
    :cond_0
    invoke-virtual {p0, v3, v2}, Lbsh/util/ClassBrowser$PackageTree;->makeNode(Ljava/util/Map;Ljava/lang/String;)Ljavax/swing/tree/MutableTreeNode;

    move-result-object v4

    .line 568
    .local v4, "node":Ljavax/swing/tree/MutableTreeNode;
    invoke-virtual {v0, v4}, Ljavax/swing/tree/DefaultMutableTreeNode;->add(Ljavax/swing/tree/MutableTreeNode;)V

    .line 570
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "val":Ljava/util/Map;
    .end local v4    # "node":Ljavax/swing/tree/MutableTreeNode;
    :goto_1
    goto :goto_0

    .line 571
    :cond_1
    return-object v0
.end method

.method makeTreeModel(Ljava/util/Collection;)Ljavax/swing/tree/DefaultTreeModel;
    .locals 9
    .param p1, "packages"    # Ljava/util/Collection;

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 531
    .local v0, "packageTree":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 532
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    .line 534
    .local v2, "pack":Ljava/lang/String;
    const-string v3, "."

    invoke-static {v2, v3}, Lbsh/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "sa":[Ljava/lang/String;
    move-object v4, v0

    .line 536
    .local v4, "level":Ljava/util/Map;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 537
    aget-object v6, v3, v5

    .line 538
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 540
    .local v7, "map":Ljava/util/Map;
    if-nez v7, :cond_0

    .line 541
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v7, v8

    .line 542
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_0
    move-object v4, v7

    .line 536
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "map":Ljava/util/Map;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 546
    .end local v2    # "pack":Ljava/lang/String;
    .end local v3    # "sa":[Ljava/lang/String;
    .end local v4    # "level":Ljava/util/Map;
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 548
    :cond_2
    const-string/jumbo v2, "root"

    invoke-virtual {p0, v0, v2}, Lbsh/util/ClassBrowser$PackageTree;->makeNode(Ljava/util/Map;Ljava/lang/String;)Ljavax/swing/tree/MutableTreeNode;

    move-result-object v2

    iput-object v2, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    .line 549
    invoke-virtual {p0, v2}, Lbsh/util/ClassBrowser$PackageTree;->mapNodes(Ljavax/swing/tree/TreeNode;)V

    .line 550
    new-instance v2, Ljavax/swing/tree/DefaultTreeModel;

    iget-object v3, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    invoke-direct {v2, v3}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    return-object v2
.end method

.method mapNodes(Ljavax/swing/tree/TreeNode;)V
    .locals 2
    .param p1, "node"    # Ljavax/swing/tree/TreeNode;

    .line 580
    invoke-virtual {p0, p1}, Lbsh/util/ClassBrowser$PackageTree;->addNodeMap(Ljavax/swing/tree/TreeNode;)V

    .line 582
    invoke-interface {p1}, Ljavax/swing/tree/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v0

    .line 583
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/tree/TreeNode;

    .line 585
    .local v1, "tn":Ljavax/swing/tree/TreeNode;
    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser$PackageTree;->mapNodes(Ljavax/swing/tree/TreeNode;)V

    .line 586
    .end local v1    # "tn":Ljavax/swing/tree/TreeNode;
    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method public setPackages(Ljava/util/Collection;)V
    .locals 1
    .param p1, "packages"    # Ljava/util/Collection;

    .line 523
    invoke-virtual {p0, p1}, Lbsh/util/ClassBrowser$PackageTree;->makeTreeModel(Ljava/util/Collection;)Ljavax/swing/tree/DefaultTreeModel;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    .line 524
    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser$PackageTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 525
    return-void
.end method

.method setSelectedPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pack"    # Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->nodeForPackage:Ljava/util/Map;

    .line 609
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 610
    .local v0, "node":Ljavax/swing/tree/DefaultMutableTreeNode;
    if-nez v0, :cond_0

    .line 611
    return-void

    .line 613
    :cond_0
    new-instance v1, Ljavax/swing/tree/TreePath;

    iget-object v2, p0, Lbsh/util/ClassBrowser$PackageTree;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {v2, v0}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    .line 614
    .local v1, "tp":Ljavax/swing/tree/TreePath;
    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser$PackageTree;->setSelectionPath(Ljavax/swing/tree/TreePath;)V

    .line 615
    iget-object v2, p0, Lbsh/util/ClassBrowser$PackageTree;->this$0:Lbsh/util/ClassBrowser;

    invoke-virtual {v2, p1}, Lbsh/util/ClassBrowser;->setClist(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser$PackageTree;->scrollPathToVisible(Ljavax/swing/tree/TreePath;)V

    .line 618
    return-void
.end method
