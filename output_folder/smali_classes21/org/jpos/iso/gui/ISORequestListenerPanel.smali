.class public Lorg/jpos/iso/gui/ISORequestListenerPanel;
.super Ljavax/swing/JPanel;
.source "ISORequestListenerPanel.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final LOG_CAPACITY:I = 0xfa

.field private static final serialVersionUID:J = -0x18c951d86b0e80f5L


# instance fields
.field log:Ljavax/swing/DefaultListModel;

.field symbolicName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jpos/iso/ISORequestListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestListener"    # Lorg/jpos/iso/ISORequestListener;
    .param p2, "symbolicName"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 51
    iput-object p2, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->symbolicName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/awt/FlowLayout;

    invoke-direct {v0}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISORequestListenerPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 53
    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISORequestListenerPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 54
    new-instance v0, Ljavax/swing/DefaultListModel;

    invoke-direct {v0}, Ljavax/swing/DefaultListModel;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->log:Ljavax/swing/DefaultListModel;

    .line 55
    invoke-direct {p0}, Lorg/jpos/iso/gui/ISORequestListenerPanel;->createPanel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISORequestListenerPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 56
    instance-of v0, p1, Ljava/util/Observable;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/util/Observable;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 58
    :cond_0
    return-void
.end method

.method private createPanel()Ljavax/swing/JPanel;
    .locals 8

    .line 76
    new-instance v0, Lorg/jpos/iso/gui/ISORequestListenerPanel$1;

    invoke-direct {v0, p0}, Lorg/jpos/iso/gui/ISORequestListenerPanel$1;-><init>(Lorg/jpos/iso/gui/ISORequestListenerPanel;)V

    .line 85
    .local v0, "A":Ljavax/swing/JPanel;
    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 87
    new-instance v1, Ljavax/swing/JLabel;

    iget-object v2, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->symbolicName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "l":Ljavax/swing/JLabel;
    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 90
    new-instance v2, Ljavax/swing/JList;

    iget-object v3, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->log:Ljavax/swing/DefaultListModel;

    invoke-direct {v2, v3}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    .line 91
    .local v2, "logList":Ljavax/swing/JList;
    const-string v3, "9999 99999999 999999"

    invoke-virtual {v2, v3}, Ljavax/swing/JList;->setPrototypeCellValue(Ljava/lang/Object;)V

    .line 93
    new-instance v3, Lorg/jpos/iso/gui/ISORequestListenerPanel$2;

    invoke-direct {v3, p0, v2}, Lorg/jpos/iso/gui/ISORequestListenerPanel$2;-><init>(Lorg/jpos/iso/gui/ISORequestListenerPanel;Ljavax/swing/JList;)V

    .line 105
    .local v3, "mouseListener":Ljava/awt/event/MouseListener;
    invoke-virtual {v2, v3}, Ljavax/swing/JList;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 107
    new-instance v4, Ljavax/swing/JScrollPane;

    invoke-direct {v4, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 108
    .local v4, "scrollPane":Ljavax/swing/JScrollPane;
    new-instance v5, Ljava/awt/Dimension;

    const/16 v6, 0xaa

    const/16 v7, 0xc8

    invoke-direct {v5, v6, v7}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v4, v5}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 109
    const-string v5, "South"

    invoke-virtual {v0, v4, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 110
    return-object v0
.end method


# virtual methods
.method public final getLog()Ljavax/swing/ListModel;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->log:Ljavax/swing/DefaultListModel;

    return-object v0
.end method

.method public final getSymbolicName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->symbolicName:Ljava/lang/String;

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 67
    if-eqz p2, :cond_0

    instance-of v0, p2, Lorg/jpos/iso/ISOMsg;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 69
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v1, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->log:Ljavax/swing/DefaultListModel;

    invoke-virtual {v1, v0}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->log:Ljavax/swing/DefaultListModel;

    invoke-virtual {v1}, Ljavax/swing/DefaultListModel;->getSize()I

    move-result v1

    const/16 v2, 0xfa

    if-le v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel;->log:Ljavax/swing/DefaultListModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/DefaultListModel;->remove(I)Ljava/lang/Object;

    .line 73
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_0
    return-void
.end method
