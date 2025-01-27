.class public Lorg/jpos/transaction/gui/TMMonitor;
.super Ljavax/swing/JPanel;
.source "TMMonitor.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionStatusListener;
.implements Ljavax/swing/SwingConstants;
.implements Ljava/awt/event/ActionListener;
.implements Ljavax/swing/event/AncestorListener;


# static fields
.field static final LARGE:Ljava/awt/Font;

.field static final SMALL:Ljava/awt/Font;


# instance fields
.field color:[Ljava/awt/Color;

.field events:[Lorg/jpos/transaction/TransactionStatusEvent;

.field inTransit:Ljavax/swing/JLabel;

.field model:Ljavax/swing/table/AbstractTableModel;

.field outstanding:Ljavax/swing/JLabel;

.field table:Ljavax/swing/JTable;

.field timer:Ljavax/swing/Timer;

.field tps:Ljavax/swing/JLabel;

.field tpsAvg:Ljavax/swing/JLabel;

.field tpsPeak:Ljavax/swing/JLabel;

.field txnmgr:Lorg/jpos/transaction/TransactionManager;

.field ui:Lorg/jpos/ui/UI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "terminal-plain-8"

    invoke-static {v0}, Ljava/awt/Font;->decode(Ljava/lang/String;)Ljava/awt/Font;

    move-result-object v0

    sput-object v0, Lorg/jpos/transaction/gui/TMMonitor;->SMALL:Ljava/awt/Font;

    .line 54
    const-string v0, "terminal-plain-18"

    invoke-static {v0}, Ljava/awt/Font;->decode(Ljava/lang/String;)Ljava/awt/Font;

    move-result-object v0

    sput-object v0, Lorg/jpos/transaction/gui/TMMonitor;->LARGE:Ljava/awt/Font;

    return-void
.end method

.method public constructor <init>(Lorg/jpos/ui/UI;Lorg/jpos/transaction/TransactionManager;)V
    .locals 5
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "tmmgr"    # Lorg/jpos/transaction/TransactionManager;

    .line 67
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 46
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->tps:Ljavax/swing/JLabel;

    .line 47
    new-instance v0, Ljavax/swing/JLabel;

    const-string v2, "0.00"

    invoke-direct {v0, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->tpsAvg:Ljavax/swing/JLabel;

    .line 48
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->tpsPeak:Ljavax/swing/JLabel;

    .line 49
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->inTransit:Ljavax/swing/JLabel;

    .line 50
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->outstanding:Ljavax/swing/JLabel;

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/awt/Color;

    sget-object v1, Ljava/awt/Color;->white:Ljava/awt/Color;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/awt/Color;

    const/16 v2, 0xb3

    const/16 v3, 0xff

    invoke-direct {v1, v2, v2, v3}, Ljava/awt/Color;-><init>(III)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/awt/Color;

    const/16 v2, 0xa3

    invoke-direct {v1, v3, v2, v2}, Ljava/awt/Color;-><init>(III)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Ljava/awt/Color;

    const/16 v4, 0xd1

    invoke-direct {v1, v4, v3, v4}, Ljava/awt/Color;-><init>(III)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Ljava/awt/Color;

    invoke-direct {v1, v3, v2, v2}, Ljava/awt/Color;-><init>(III)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/Color;->white:Ljava/awt/Color;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/awt/Color;

    const/16 v2, 0x7f

    const/16 v4, 0x50

    invoke-direct {v1, v3, v2, v4}, Ljava/awt/Color;-><init>(III)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->color:[Ljava/awt/Color;

    .line 68
    iput-object p1, p0, Lorg/jpos/transaction/gui/TMMonitor;->ui:Lorg/jpos/ui/UI;

    .line 69
    iput-object p2, p0, Lorg/jpos/transaction/gui/TMMonitor;->txnmgr:Lorg/jpos/transaction/TransactionManager;

    .line 70
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jpos/transaction/gui/TMMonitor;->setLayout(Ljava/awt/LayoutManager;)V

    .line 71
    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/transaction/gui/TMMonitor;->setBorder(Ljavax/swing/border/Border;)V

    .line 72
    invoke-direct {p0}, Lorg/jpos/transaction/gui/TMMonitor;->createModel()Ljavax/swing/table/AbstractTableModel;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->model:Ljavax/swing/table/AbstractTableModel;

    .line 74
    invoke-direct {p0, v0}, Lorg/jpos/transaction/gui/TMMonitor;->createTable(Ljavax/swing/table/TableModel;)Ljavax/swing/JTable;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->table:Ljavax/swing/JTable;

    .line 75
    new-instance v0, Ljavax/swing/JScrollPane;

    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->table:Ljavax/swing/JTable;

    invoke-direct {v0, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 77
    .local v0, "scrollPane":Ljavax/swing/JScrollPane;
    invoke-direct {p0}, Lorg/jpos/transaction/gui/TMMonitor;->createTPSPanel()Ljavax/swing/JComponent;

    move-result-object v1

    const-string v2, "East"

    invoke-virtual {p0, v1, v2}, Lorg/jpos/transaction/gui/TMMonitor;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 78
    const-string v1, "Center"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/transaction/gui/TMMonitor;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p2, p0}, Lorg/jpos/transaction/TransactionManager;->addListener(Lorg/jpos/transaction/TransactionStatusListener;)V

    .line 80
    invoke-virtual {p0, p0}, Lorg/jpos/transaction/gui/TMMonitor;->addAncestorListener(Ljavax/swing/event/AncestorListener;)V

    .line 81
    return-void
.end method

.method private add(Ljavax/swing/JPanel;Ljavax/swing/JLabel;Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljavax/swing/JPanel;
    .param p2, "l"    # Ljavax/swing/JLabel;
    .param p3, "description"    # Ljava/lang/String;

    .line 134
    sget-object v0, Lorg/jpos/transaction/gui/TMMonitor;->LARGE:Ljava/awt/Font;

    const/4 v1, 0x4

    invoke-direct {p0, p2, v0, v1}, Lorg/jpos/transaction/gui/TMMonitor;->setLabelStyle(Ljavax/swing/JLabel;Ljava/awt/Font;I)Ljavax/swing/JLabel;

    .line 135
    invoke-virtual {p1, p2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 136
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, p3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jpos/transaction/gui/TMMonitor;->SMALL:Ljava/awt/Font;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/transaction/gui/TMMonitor;->setLabelStyle(Ljavax/swing/JLabel;Ljava/awt/Font;I)Ljavax/swing/JLabel;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 137
    return-void
.end method

.method private createModel()Ljavax/swing/table/AbstractTableModel;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->txnmgr:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->getActiveSessions()I

    move-result v0

    new-array v0, v0, [Lorg/jpos/transaction/TransactionStatusEvent;

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->events:[Lorg/jpos/transaction/TransactionStatusEvent;

    .line 151
    new-instance v0, Lorg/jpos/transaction/gui/TMMonitor$1;

    invoke-direct {v0, p0}, Lorg/jpos/transaction/gui/TMMonitor$1;-><init>(Lorg/jpos/transaction/gui/TMMonitor;)V

    return-object v0
.end method

.method private createTPSPanel()Ljavax/swing/JComponent;
    .locals 6

    .line 115
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 117
    .local v0, "outer":Ljavax/swing/JPanel;
    new-instance v1, Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/GridLayout;

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/awt/GridLayout;-><init>(II)V

    invoke-direct {v1, v2}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 119
    .local v1, "p":Ljavax/swing/JPanel;
    iget-object v2, p0, Lorg/jpos/transaction/gui/TMMonitor;->tps:Ljavax/swing/JLabel;

    const-string v3, "TPS"

    invoke-direct {p0, v1, v2, v3}, Lorg/jpos/transaction/gui/TMMonitor;->add(Ljavax/swing/JPanel;Ljavax/swing/JLabel;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lorg/jpos/transaction/gui/TMMonitor;->tpsPeak:Ljavax/swing/JLabel;

    const-string v3, "Peak TPS"

    invoke-direct {p0, v1, v2, v3}, Lorg/jpos/transaction/gui/TMMonitor;->add(Ljavax/swing/JPanel;Ljavax/swing/JLabel;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lorg/jpos/transaction/gui/TMMonitor;->tpsAvg:Ljavax/swing/JLabel;

    const-string v3, "Avg TPS"

    invoke-direct {p0, v1, v2, v3}, Lorg/jpos/transaction/gui/TMMonitor;->add(Ljavax/swing/JPanel;Ljavax/swing/JLabel;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lorg/jpos/transaction/gui/TMMonitor;->inTransit:Ljavax/swing/JLabel;

    const-string v3, "InTransit"

    invoke-direct {p0, v1, v2, v3}, Lorg/jpos/transaction/gui/TMMonitor;->add(Ljavax/swing/JPanel;Ljavax/swing/JLabel;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lorg/jpos/transaction/gui/TMMonitor;->outstanding:Ljavax/swing/JLabel;

    const-string v3, "Queue"

    invoke-direct {p0, v1, v2, v3}, Lorg/jpos/transaction/gui/TMMonitor;->add(Ljavax/swing/JPanel;Ljavax/swing/JLabel;Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljavax/swing/JPanel;

    invoke-direct {v2}, Ljavax/swing/JPanel;-><init>()V

    .line 126
    .local v2, "blackFiller":Ljavax/swing/JPanel;
    const-string v3, "North"

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 127
    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 128
    const-string v3, "Center"

    invoke-virtual {v0, v2, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 129
    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0xaa

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 130
    return-object v0
.end method

.method private createTable(Ljavax/swing/table/TableModel;)Ljavax/swing/JTable;
    .locals 5
    .param p1, "model"    # Ljavax/swing/table/TableModel;

    .line 100
    new-instance v0, Ljavax/swing/JTable;

    invoke-direct {v0, p1}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    .line 101
    .local v0, "table":Ljavax/swing/JTable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setSurrendersFocusOnKeystroke(Z)V

    .line 102
    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setFillsViewportHeight(Z)V

    .line 103
    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setShowVerticalLines(Z)V

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/swing/JTable;->setCellSelectionEnabled(Z)V

    .line 105
    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setDoubleBuffered(Z)V

    .line 106
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v3

    .line 108
    .local v3, "tcm":Ljavax/swing/table/TableColumnModel;
    invoke-interface {v3, v2}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 109
    invoke-interface {v3, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 110
    const/4 v1, 0x2

    invoke-interface {v3, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 111
    const/4 v1, 0x3

    invoke-interface {v3, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 112
    return-object v0
.end method

.method private setBackgroundColor(ILjava/awt/Color;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "color"    # Ljava/awt/Color;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->model:Ljavax/swing/table/AbstractTableModel;

    invoke-virtual {v1}, Ljavax/swing/table/AbstractTableModel;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->table:Ljavax/swing/JTable;

    invoke-virtual {v1, p1, v0}, Ljavax/swing/JTable;->getCellRenderer(II)Ljavax/swing/table/TableCellRenderer;

    move-result-object v1

    check-cast v1, Ljavax/swing/table/DefaultTableCellRenderer;

    invoke-virtual {v1, p2}, Ljavax/swing/table/DefaultTableCellRenderer;->setBackground(Ljava/awt/Color;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setLabelStyle(Ljavax/swing/JLabel;Ljava/awt/Font;I)Ljavax/swing/JLabel;
    .locals 1
    .param p1, "l"    # Ljavax/swing/JLabel;
    .param p2, "f"    # Ljava/awt/Font;
    .param p3, "alignment"    # I

    .line 139
    invoke-static {}, Ljavax/swing/BorderFactory;->createLoweredBevelBorder()Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setBorder(Ljavax/swing/border/Border;)V

    .line 140
    invoke-virtual {p1, p2}, Ljavax/swing/JLabel;->setFont(Ljava/awt/Font;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setOpaque(Z)V

    .line 142
    sget-object v0, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    .line 143
    sget-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setBackground(Ljava/awt/Color;)V

    .line 145
    invoke-virtual {p1, p3}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 146
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setVerticalAlignment(I)V

    .line 147
    return-object p1
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 5
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 190
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->txnmgr:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->getTPS()Lorg/jpos/util/TPS;

    move-result-object v0

    .line 191
    .local v0, "t":Lorg/jpos/util/TPS;
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->tps:Ljavax/swing/JLabel;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->tpsAvg:Ljavax/swing/JLabel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->getAvg()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->tpsPeak:Ljavax/swing/JLabel;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->getPeak()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public ancestorAdded(Ljavax/swing/event/AncestorEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/swing/event/AncestorEvent;

    .line 197
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->timer:Ljavax/swing/Timer;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljavax/swing/Timer;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1, p0}, Ljavax/swing/Timer;-><init>(ILjava/awt/event/ActionListener;)V

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->timer:Ljavax/swing/Timer;

    .line 199
    invoke-virtual {v0}, Ljavax/swing/Timer;->start()V

    .line 201
    :cond_0
    return-void
.end method

.method public ancestorMoved(Ljavax/swing/event/AncestorEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/swing/event/AncestorEvent;

    .line 210
    return-void
.end method

.method public ancestorRemoved(Ljavax/swing/event/AncestorEvent;)V
    .locals 1
    .param p1, "event"    # Ljavax/swing/event/AncestorEvent;

    .line 204
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->timer:Ljavax/swing/Timer;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Ljavax/swing/Timer;->stop()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->timer:Ljavax/swing/Timer;

    .line 208
    :cond_0
    return-void
.end method

.method public update(Lorg/jpos/transaction/TransactionStatusEvent;)V
    .locals 4
    .param p1, "e"    # Lorg/jpos/transaction/TransactionStatusEvent;

    .line 83
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v0}, Lorg/jpos/ui/UI;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lorg/jpos/transaction/TransactionStatusEvent;->getSession()I

    move-result v0

    .line 87
    .local v0, "row":I
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->events:[Lorg/jpos/transaction/TransactionStatusEvent;

    aput-object p1, v1, v0

    .line 88
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->model:Ljavax/swing/table/AbstractTableModel;

    invoke-virtual {v1, v0, v0}, Ljavax/swing/table/AbstractTableModel;->fireTableRowsUpdated(II)V

    .line 90
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->color:[Ljava/awt/Color;

    invoke-virtual {p1}, Lorg/jpos/transaction/TransactionStatusEvent;->getState()Lorg/jpos/transaction/TransactionStatusEvent$State;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/transaction/TransactionStatusEvent$State;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/jpos/transaction/gui/TMMonitor;->setBackgroundColor(ILjava/awt/Color;)V

    .line 91
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->inTransit:Ljavax/swing/JLabel;

    iget-object v2, p0, Lorg/jpos/transaction/gui/TMMonitor;->txnmgr:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v2}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lorg/jpos/transaction/gui/TMMonitor;->outstanding:Ljavax/swing/JLabel;

    iget-object v2, p0, Lorg/jpos/transaction/gui/TMMonitor;->txnmgr:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v2}, Lorg/jpos/transaction/TransactionManager;->getOutstandingTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 93
    return-void
.end method
