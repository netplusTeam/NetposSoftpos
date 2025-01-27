.class public Lbsh/util/ClassBrowser;
.super Ljavax/swing/JSplitPane;
.source "ClassBrowser.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;
.implements Lbsh/classpath/ClassPathListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/util/ClassBrowser$PackageTree;
    }
.end annotation


# static fields
.field private static final LIGHT_BLUE:Ljava/awt/Color;


# instance fields
.field classManager:Lbsh/BshClassManager;

.field classPath:Lbsh/classpath/BshClassPath;

.field classesList:[Ljava/lang/String;

.field classlist:Ljavax/swing/JList;

.field consList:[Ljava/lang/reflect/Constructor;

.field conslist:Ljavax/swing/JList;

.field fieldList:[Ljava/lang/reflect/Field;

.field fieldlist:Ljavax/swing/JList;

.field frame:Ljavax/swing/JFrame;

.field iframe:Ljavax/swing/JInternalFrame;

.field methodLine:Ljavax/swing/JTextArea;

.field methodList:[Ljava/lang/reflect/Method;

.field mlist:Ljavax/swing/JList;

.field packagesList:[Ljava/lang/String;

.field ptree:Lbsh/util/ClassBrowser$PackageTree;

.field selectedClass:Ljava/lang/Class;

.field selectedPackage:Ljava/lang/String;

.field tree:Ljavax/swing/JTree;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xf5

    const/16 v2, 0xff

    invoke-direct {v0, v1, v1, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Lbsh/util/ClassBrowser;->LIGHT_BLUE:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-static {v0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/util/ClassBrowser;-><init>(Lbsh/BshClassManager;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;)V
    .locals 3
    .param p1, "classManager"    # Lbsh/BshClassManager;

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljavax/swing/JSplitPane;-><init>(IZ)V

    .line 84
    iput-object p1, p0, Lbsh/util/ClassBrowser;->classManager:Lbsh/BshClassManager;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setBorder(Ljavax/swing/border/Border;)V

    .line 87
    invoke-virtual {p0}, Lbsh/util/ClassBrowser;->getUI()Ljavax/swing/plaf/SplitPaneUI;

    move-result-object v1

    .line 88
    .local v1, "ui":Ljavax/swing/plaf/SplitPaneUI;
    instance-of v2, v1, Ljavax/swing/plaf/basic/BasicSplitPaneUI;

    if-eqz v2, :cond_0

    .line 89
    move-object v2, v1

    check-cast v2, Ljavax/swing/plaf/basic/BasicSplitPaneUI;

    invoke-virtual {v2}, Ljavax/swing/plaf/basic/BasicSplitPaneUI;->getDivider()Ljavax/swing/plaf/basic/BasicSplitPaneDivider;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v0}, Ljavax/swing/plaf/basic/BasicSplitPaneDivider;->setBorder(Ljavax/swing/border/Border;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    new-instance v0, Lbsh/util/ClassBrowser;

    invoke-direct {v0}, Lbsh/util/ClassBrowser;-><init>()V

    .line 400
    .local v0, "cb":Lbsh/util/ClassBrowser;
    invoke-virtual {v0}, Lbsh/util/ClassBrowser;->init()V

    .line 402
    new-instance v1, Ljavax/swing/JFrame;

    const-string v2, "BeanShell Class Browser v1.0"

    invoke-direct {v1, v2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, "f":Ljavax/swing/JFrame;
    invoke-virtual {v1}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v3, v0}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 404
    invoke-virtual {v0, v1}, Lbsh/util/ClassBrowser;->setFrame(Ljavax/swing/JFrame;)V

    .line 405
    invoke-virtual {v1}, Ljavax/swing/JFrame;->pack()V

    .line 406
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JFrame;->setVisible(Z)V

    .line 407
    return-void
.end method

.method private splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "redraw"    # Z
    .param p3, "c1"    # Ljavax/swing/JComponent;
    .param p4, "c2"    # Ljavax/swing/JComponent;

    .line 386
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0, p1, p2, p3, p4}, Ljavax/swing/JSplitPane;-><init>(IZLjava/awt/Component;Ljava/awt/Component;)V

    .line 387
    .local v0, "sp":Ljavax/swing/JSplitPane;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 388
    invoke-virtual {v0}, Ljavax/swing/JSplitPane;->getUI()Ljavax/swing/plaf/SplitPaneUI;

    move-result-object v2

    .line 389
    .local v2, "ui":Ljavax/swing/plaf/SplitPaneUI;
    instance-of v3, v2, Ljavax/swing/plaf/basic/BasicSplitPaneUI;

    if-eqz v3, :cond_0

    .line 390
    move-object v3, v2

    check-cast v3, Ljavax/swing/plaf/basic/BasicSplitPaneUI;

    invoke-virtual {v3}, Ljavax/swing/plaf/basic/BasicSplitPaneUI;->getDivider()Ljavax/swing/plaf/basic/BasicSplitPaneDivider;

    move-result-object v3

    .line 391
    invoke-virtual {v3, v1}, Ljavax/swing/plaf/basic/BasicSplitPaneDivider;->setBorder(Ljavax/swing/border/Border;)V

    .line 393
    :cond_0
    return-object v0
.end method


# virtual methods
.method public classPathChanged()V
    .locals 2

    .line 623
    iget-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->getPackagesSet()Ljava/util/Set;

    move-result-object v0

    .line 624
    .local v0, "pset":Ljava/util/Set;
    iget-object v1, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    invoke-virtual {v1, v0}, Lbsh/util/ClassBrowser$PackageTree;->setPackages(Ljava/util/Collection;)V

    .line 625
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->setClist(Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method public driveToClass(Ljava/lang/String;)V
    .locals 6
    .param p1, "classname"    # Ljava/lang/String;

    .line 471
    invoke-static {p1}, Lbsh/classpath/BshClassPath;->splitClassname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "sa":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 473
    .local v1, "packn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 476
    .local v2, "classn":Ljava/lang/String;
    iget-object v3, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v3, v1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 477
    return-void

    .line 479
    :cond_0
    iget-object v3, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    invoke-virtual {v3, v1}, Lbsh/util/ClassBrowser$PackageTree;->setSelectedPackage(Ljava/lang/String;)V

    .line 481
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lbsh/util/ClassBrowser;->classesList:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 482
    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    iget-object v4, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-virtual {v4, v3}, Ljavax/swing/JList;->setSelectedIndex(I)V

    .line 484
    iget-object v4, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-virtual {v4, v3}, Ljavax/swing/JList;->ensureIndexIsVisible(I)V

    .line 485
    goto :goto_1

    .line 481
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method getPublicConstructors([Ljava/lang/reflect/Constructor;)[Ljava/lang/reflect/Constructor;
    .locals 3
    .param p1, "constructors"    # [Ljava/lang/reflect/Constructor;

    .line 151
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 152
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 153
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    .line 157
    .local v1, "ca":[Ljava/lang/reflect/Constructor;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 158
    return-object v1
.end method

.method getPublicFields([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fields"    # [Ljava/lang/reflect/Field;

    .line 173
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 174
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 175
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 174
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    .line 179
    .local v1, "fa":[Ljava/lang/reflect/Field;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 180
    return-object v1
.end method

.method getPublicMethods([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methods"    # [Ljava/lang/reflect/Method;

    .line 162
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 163
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 164
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    .line 168
    .local v1, "ma":[Ljava/lang/reflect/Method;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 169
    return-object v1
.end method

.method public init()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lbsh/util/ClassBrowser;->classManager:Lbsh/BshClassManager;

    check-cast v0, Lbsh/classpath/ClassManagerImpl;

    invoke-virtual {v0}, Lbsh/classpath/ClassManagerImpl;->getClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    .line 296
    invoke-virtual {v0, p0}, Lbsh/classpath/BshClassPath;->addListener(Lbsh/classpath/ClassPathListener;)V

    .line 298
    iget-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->getPackagesSet()Ljava/util/Set;

    move-result-object v0

    .line 300
    .local v0, "pset":Ljava/util/Set;
    new-instance v1, Lbsh/util/ClassBrowser$PackageTree;

    invoke-direct {v1, p0, v0}, Lbsh/util/ClassBrowser$PackageTree;-><init>(Lbsh/util/ClassBrowser;Ljava/util/Collection;)V

    iput-object v1, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    .line 301
    new-instance v2, Lbsh/util/ClassBrowser$1;

    invoke-direct {v2, p0}, Lbsh/util/ClassBrowser$1;-><init>(Lbsh/util/ClassBrowser;)V

    invoke-virtual {v1, v2}, Lbsh/util/ClassBrowser$PackageTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    .line 315
    new-instance v1, Ljavax/swing/JList;

    invoke-direct {v1}, Ljavax/swing/JList;-><init>()V

    iput-object v1, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    .line 316
    sget-object v2, Lbsh/util/ClassBrowser;->LIGHT_BLUE:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljavax/swing/JList;->setBackground(Ljava/awt/Color;)V

    .line 317
    iget-object v1, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-virtual {v1, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 319
    new-instance v1, Ljavax/swing/JList;

    invoke-direct {v1}, Ljavax/swing/JList;-><init>()V

    iput-object v1, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    .line 320
    invoke-virtual {v1, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 322
    new-instance v1, Ljavax/swing/JList;

    invoke-direct {v1}, Ljavax/swing/JList;-><init>()V

    iput-object v1, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    .line 323
    invoke-virtual {v1, v2}, Ljavax/swing/JList;->setBackground(Ljava/awt/Color;)V

    .line 324
    iget-object v1, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    invoke-virtual {v1, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 326
    new-instance v1, Ljavax/swing/JList;

    invoke-direct {v1}, Ljavax/swing/JList;-><init>()V

    iput-object v1, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    .line 327
    invoke-virtual {v1, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 329
    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v3, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    invoke-direct {v1, v3}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 331
    const-string v3, "Constructors"

    invoke-virtual {p0, v1, v3}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v1

    new-instance v3, Ljavax/swing/JScrollPane;

    iget-object v4, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    invoke-direct {v3, v4}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 332
    const-string v4, "Methods"

    invoke-virtual {p0, v3, v4}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v3

    .line 329
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v1, v3}, Lbsh/util/ClassBrowser;->splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;

    move-result-object v1

    .line 335
    .local v1, "methodConsPane":Ljavax/swing/JSplitPane;
    new-instance v3, Ljavax/swing/JScrollPane;

    iget-object v6, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    invoke-direct {v3, v6}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 337
    const-string v6, "Fields"

    invoke-virtual {p0, v3, v6}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v3

    .line 335
    invoke-direct {p0, v4, v5, v1, v3}, Lbsh/util/ClassBrowser;->splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;

    move-result-object v3

    .line 340
    .local v3, "rightPane":Ljavax/swing/JSplitPane;
    new-instance v6, Ljavax/swing/JScrollPane;

    iget-object v7, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-direct {v6, v7}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 342
    const-string v7, "Classes"

    invoke-virtual {p0, v6, v7}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v6

    .line 340
    invoke-direct {p0, v5, v5, v6, v3}, Lbsh/util/ClassBrowser;->splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;

    move-result-object v6

    .line 344
    .local v6, "sp":Ljavax/swing/JSplitPane;
    new-instance v7, Ljavax/swing/JScrollPane;

    iget-object v8, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    invoke-direct {v7, v8}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 346
    const-string v8, "Packages"

    invoke-virtual {p0, v7, v8}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v7

    .line 344
    invoke-direct {p0, v5, v5, v7, v6}, Lbsh/util/ClassBrowser;->splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;

    move-result-object v6

    .line 348
    new-instance v7, Ljavax/swing/JPanel;

    new-instance v8, Ljava/awt/BorderLayout;

    invoke-direct {v8}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v7, v8}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 349
    .local v7, "bottompanel":Ljavax/swing/JPanel;
    new-instance v8, Ljavax/swing/JTextArea;

    const/16 v9, 0x3c

    invoke-direct {v8, v5, v9}, Ljavax/swing/JTextArea;-><init>(II)V

    iput-object v8, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    .line 350
    invoke-virtual {v8, v2}, Ljavax/swing/JTextArea;->setBackground(Ljava/awt/Color;)V

    .line 351
    iget-object v8, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    invoke-virtual {v8, v4}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 352
    iget-object v4, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    invoke-virtual {v4, v5}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    .line 353
    iget-object v4, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    invoke-virtual {v4, v5}, Ljavax/swing/JTextArea;->setWrapStyleWord(Z)V

    .line 354
    iget-object v4, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    new-instance v8, Ljava/awt/Font;

    const-string v9, "Monospaced"

    const/16 v10, 0xe

    invoke-direct {v8, v9, v5, v10}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v4, v8}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 355
    iget-object v4, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    new-instance v5, Ljava/awt/Insets;

    const/4 v8, 0x5

    invoke-direct {v5, v8, v8, v8, v8}, Ljava/awt/Insets;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljavax/swing/JTextArea;->setMargin(Ljava/awt/Insets;)V

    .line 356
    iget-object v4, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    new-instance v5, Ljavax/swing/border/MatteBorder;

    .line 357
    invoke-virtual {v2}, Ljava/awt/Color;->darker()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Color;->darker()Ljava/awt/Color;

    move-result-object v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Ljavax/swing/border/MatteBorder;-><init>(IIIILjava/awt/Color;)V

    .line 356
    invoke-virtual {v4, v5}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    .line 358
    iget-object v2, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    const-string v4, "North"

    invoke-virtual {v7, v4, v2}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 359
    new-instance v2, Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/BorderLayout;

    invoke-direct {v4}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v2, v4}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 361
    .local v2, "p":Ljavax/swing/JPanel;
    new-instance v4, Ljavax/swing/JTree;

    invoke-direct {v4}, Ljavax/swing/JTree;-><init>()V

    iput-object v4, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    .line 362
    new-instance v5, Lbsh/util/ClassBrowser$2;

    invoke-direct {v5, p0}, Lbsh/util/ClassBrowser$2;-><init>(Lbsh/util/ClassBrowser;)V

    invoke-virtual {v4, v5}, Ljavax/swing/JTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    .line 368
    iget-object v4, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JTree;->setBorder(Ljavax/swing/border/Border;)V

    .line 369
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lbsh/util/ClassBrowser;->setClassTree(Ljava/lang/Class;)V

    .line 370
    iget-object v4, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    const-string v5, "Center"

    invoke-virtual {v2, v5, v4}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 371
    invoke-virtual {v7, v5, v2}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 374
    new-instance v4, Ljava/awt/Dimension;

    const/16 v5, 0x96

    invoke-direct {v4, v5, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v7, v4}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 376
    invoke-virtual {p0, v6}, Lbsh/util/ClassBrowser;->setTopComponent(Ljava/awt/Component;)V

    .line 377
    invoke-virtual {p0, v7}, Lbsh/util/ClassBrowser;->setBottomComponent(Ljava/awt/Component;)V

    .line 378
    return-void
.end method

.method labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;
    .locals 3
    .param p1, "comp"    # Ljavax/swing/JComponent;
    .param p2, "label"    # Ljava/lang/String;

    .line 268
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 269
    .local v0, "jp":Ljavax/swing/JPanel;
    const-string v1, "Center"

    invoke-virtual {v0, v1, p1}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 270
    new-instance v1, Ljavax/swing/JLabel;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;I)V

    const-string v2, "North"

    invoke-virtual {v0, v2, v1}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 271
    return-object v0
.end method

.method parseConstructors([Ljava/lang/reflect/Constructor;)[Ljava/lang/String;
    .locals 5
    .param p1, "constructors"    # [Ljava/lang/reflect/Constructor;

    .line 122
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 123
    .local v0, "sa":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 124
    aget-object v2, p1, v1

    .line 125
    .local v2, "con":Ljava/lang/reflect/Constructor;
    nop

    .line 126
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 125
    invoke-static {v3, v4}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 123
    .end local v2    # "con":Ljava/lang/reflect/Constructor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method parseFields([Ljava/lang/reflect/Field;)[Ljava/lang/String;
    .locals 4
    .param p1, "fields"    # [Ljava/lang/reflect/Field;

    .line 142
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 143
    .local v0, "sa":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 144
    aget-object v2, p1, v1

    .line 145
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 143
    .end local v2    # "f":Ljava/lang/reflect/Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method parseMethods([Ljava/lang/reflect/Method;)[Ljava/lang/String;
    .locals 4
    .param p1, "methods"    # [Ljava/lang/reflect/Method;

    .line 133
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 134
    .local v0, "sa":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 135
    aget-object v2, p1, v1

    .line 136
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 135
    invoke-static {v2, v3}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method setClassTree(Ljava/lang/Class;)V
    .locals 6
    .param p1, "clas"    # Ljava/lang/Class;

    .line 242
    if-nez p1, :cond_0

    .line 243
    iget-object v0, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 244
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    .local v0, "bottom":Ljavax/swing/tree/MutableTreeNode;
    const/4 v1, 0x0

    .line 250
    .local v1, "top":Ljavax/swing/tree/MutableTreeNode;
    :goto_0
    new-instance v2, Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 251
    .local v2, "up":Ljavax/swing/tree/DefaultMutableTreeNode;
    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v2, v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->add(Ljavax/swing/tree/MutableTreeNode;)V

    goto :goto_1

    .line 254
    :cond_1
    move-object v0, v2

    .line 255
    :goto_1
    move-object v1, v2

    .line 256
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object p1, v3

    if-nez v3, :cond_3

    .line 257
    iget-object v3, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    new-instance v4, Ljavax/swing/tree/DefaultTreeModel;

    invoke-direct {v4, v1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    invoke-virtual {v3, v4}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 259
    invoke-interface {v0}, Ljavax/swing/tree/MutableTreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v3

    .line 260
    .local v3, "tn":Ljavax/swing/tree/TreeNode;
    if-eqz v3, :cond_2

    .line 261
    new-instance v4, Ljavax/swing/tree/TreePath;

    iget-object v5, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    .line 262
    invoke-virtual {v5}, Ljavax/swing/JTree;->getModel()Ljavax/swing/tree/TreeModel;

    move-result-object v5

    check-cast v5, Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {v5, v3}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    .line 263
    .local v4, "tp":Ljavax/swing/tree/TreePath;
    iget-object v5, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    invoke-virtual {v5, v4}, Ljavax/swing/JTree;->expandPath(Ljavax/swing/tree/TreePath;)V

    .line 265
    .end local v4    # "tp":Ljavax/swing/tree/TreePath;
    :cond_2
    return-void

    .line 256
    .end local v3    # "tn":Ljavax/swing/tree/TreeNode;
    :cond_3
    goto :goto_0
.end method

.method setClist(Ljava/lang/String;)V
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 104
    .local v0, "set":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 105
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 108
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 110
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "cname":Ljava/lang/String;
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 113
    invoke-static {v3}, Lbsh/classpath/BshClassPath;->splitClassname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v3    # "cname":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->toSortedStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbsh/util/ClassBrowser;->classesList:[Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-virtual {v4, v3}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method setConslist(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clas"    # Ljava/lang/Class;

    .line 184
    if-nez p1, :cond_0

    .line 185
    iget-object v0, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 186
    return-void

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->getPublicConstructors([Ljava/lang/reflect/Constructor;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->consList:[Ljava/lang/reflect/Constructor;

    .line 190
    iget-object v1, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->parseConstructors([Ljava/lang/reflect/Constructor;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method setFieldList(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clas"    # Ljava/lang/Class;

    .line 228
    if-nez p1, :cond_0

    .line 229
    iget-object v0, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 230
    return-void

    .line 233
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->getPublicFields([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->fieldList:[Ljava/lang/reflect/Field;

    .line 234
    iget-object v1, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->parseFields([Ljava/lang/reflect/Field;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public setFrame(Ljavax/swing/JFrame;)V
    .locals 0
    .param p1, "frame"    # Ljavax/swing/JFrame;

    .line 410
    iput-object p1, p0, Lbsh/util/ClassBrowser;->frame:Ljavax/swing/JFrame;

    .line 411
    return-void
.end method

.method public setFrame(Ljavax/swing/JInternalFrame;)V
    .locals 0
    .param p1, "frame"    # Ljavax/swing/JInternalFrame;

    .line 413
    iput-object p1, p0, Lbsh/util/ClassBrowser;->iframe:Ljavax/swing/JInternalFrame;

    .line 414
    return-void
.end method

.method setMethodLine(Ljava/lang/Object;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method setMlist(Ljava/lang/String;)V
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;

    .line 195
    if-nez p1, :cond_0

    .line 197
    iget-object v0, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setConslist(Ljava/lang/Class;)V

    .line 199
    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setClassTree(Ljava/lang/Class;)V

    .line 200
    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    const-string v1, "<unpackaged>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lbsh/util/ClassBrowser;->classManager:Lbsh/BshClassManager;

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lbsh/util/ClassBrowser;->classManager:Lbsh/BshClassManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    nop

    .line 214
    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 216
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    return-void

    .line 219
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->getPublicMethods([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->methodList:[Ljava/lang/reflect/Method;

    .line 220
    iget-object v1, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->parseMethods([Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setClassTree(Ljava/lang/Class;)V

    .line 223
    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setConslist(Ljava/lang/Class;)V

    .line 224
    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setFieldList(Ljava/lang/Class;)V

    .line 225
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public toFront()V
    .locals 1

    .line 491
    iget-object v0, p0, Lbsh/util/ClassBrowser;->frame:Ljavax/swing/JFrame;

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Ljavax/swing/JFrame;->toFront()V

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lbsh/util/ClassBrowser;->iframe:Ljavax/swing/JInternalFrame;

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Ljavax/swing/JInternalFrame;->toFront()V

    .line 496
    :cond_1
    :goto_0
    return-void
.end method

.method toSortedStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .local v0, "l":Ljava/util/List;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 97
    .local v1, "sa":[Ljava/lang/String;
    invoke-static {v1}, Lbsh/StringUtil;->bubbleSort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 4
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .line 418
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    if-ne v0, v1, :cond_2

    .line 420
    invoke-virtual {v1}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    .local v0, "classname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setMlist(Ljava/lang/String;)V

    .line 426
    if-nez v0, :cond_0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "methodLineString":Ljava/lang/String;
    goto :goto_1

    .line 430
    .end local v1    # "methodLineString":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    .line 431
    const-string v2, "<unpackaged>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "fullClassName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    .line 435
    invoke-virtual {v3, v1}, Lbsh/classpath/BshClassPath;->getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 438
    .local v1, "methodLineString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    .line 439
    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "methodLineString":Ljava/lang/String;
    goto :goto_4

    .line 441
    :cond_2
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v1, :cond_4

    .line 443
    invoke-virtual {v1}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v0

    .line 444
    .local v0, "i":I
    if-ne v0, v3, :cond_3

    .line 445
    invoke-virtual {p0, v2}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto :goto_2

    .line 447
    :cond_3
    iget-object v1, p0, Lbsh/util/ClassBrowser;->methodList:[Ljava/lang/reflect/Method;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    .line 448
    .end local v0    # "i":I
    :goto_2
    goto :goto_4

    .line 450
    :cond_4
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    if-ne v0, v1, :cond_6

    .line 452
    invoke-virtual {v1}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v0

    .line 453
    .restart local v0    # "i":I
    if-ne v0, v3, :cond_5

    .line 454
    invoke-virtual {p0, v2}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto :goto_3

    .line 456
    :cond_5
    iget-object v1, p0, Lbsh/util/ClassBrowser;->consList:[Ljava/lang/reflect/Constructor;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    .line 457
    .end local v0    # "i":I
    :goto_3
    goto :goto_4

    .line 459
    :cond_6
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    if-ne v0, v1, :cond_8

    .line 461
    invoke-virtual {v1}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v0

    .line 462
    .restart local v0    # "i":I
    if-ne v0, v3, :cond_7

    .line 463
    invoke-virtual {p0, v2}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto :goto_4

    .line 465
    :cond_7
    iget-object v1, p0, Lbsh/util/ClassBrowser;->fieldList:[Ljava/lang/reflect/Field;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    .line 467
    .end local v0    # "i":I
    :cond_8
    :goto_4
    return-void
.end method
