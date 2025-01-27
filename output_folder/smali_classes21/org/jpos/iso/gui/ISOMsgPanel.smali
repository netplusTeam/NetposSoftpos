.class public Lorg/jpos/iso/gui/ISOMsgPanel;
.super Ljavax/swing/JPanel;
.source "ISOMsgPanel.java"


# static fields
.field private static final serialVersionUID:J = 0x6bf7b032cd480cc8L


# instance fields
.field m:Lorg/jpos/iso/ISOMsg;

.field validFields:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/jpos/iso/ISOMsg;)V
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jpos/iso/gui/ISOMsgPanel;-><init>(Lorg/jpos/iso/ISOMsg;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOMsg;Z)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "withDump"    # Z

    .line 55
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    .line 57
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOMsgPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 58
    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOMsgPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 59
    invoke-direct {p0}, Lorg/jpos/iso/gui/ISOMsgPanel;->setValidFields()V

    .line 60
    invoke-direct {p0}, Lorg/jpos/iso/gui/ISOMsgPanel;->createISOMsgTable()Ljavax/swing/JComponent;

    move-result-object v0

    const-string v1, "Center"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/iso/gui/ISOMsgPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/jpos/iso/gui/ISOMsgPanel;->createISOMsgDumpPanel()Ljavax/swing/JComponent;

    move-result-object v0

    const-string v1, "South"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/iso/gui/ISOMsgPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-void
.end method

.method private createISOMsgTable()Ljavax/swing/JComponent;
    .locals 6

    .line 74
    new-instance v0, Lorg/jpos/iso/gui/ISOMsgPanel$1;

    invoke-direct {v0, p0}, Lorg/jpos/iso/gui/ISOMsgPanel$1;-><init>(Lorg/jpos/iso/gui/ISOMsgPanel;)V

    .line 137
    .local v0, "dataModel":Ljavax/swing/table/TableModel;
    new-instance v1, Ljavax/swing/JTable;

    invoke-direct {v1, v0}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    .line 138
    .local v1, "table":Ljavax/swing/JTable;
    invoke-virtual {v1}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 139
    new-instance v2, Ljava/awt/Dimension;

    .line 140
    invoke-virtual {v1}, Ljavax/swing/JTable;->getRowCount()I

    move-result v4

    invoke-virtual {v1}, Ljavax/swing/JTable;->getRowHeight()I

    move-result v5

    mul-int/2addr v4, v5

    const/16 v5, 0x1f4

    invoke-direct {v2, v5, v4}, Ljava/awt/Dimension;-><init>(II)V

    .line 139
    invoke-virtual {v1, v2}, Ljavax/swing/JTable;->setPreferredScrollableViewportSize(Ljava/awt/Dimension;)V

    .line 141
    invoke-virtual {v1, v3}, Ljavax/swing/JTable;->setSelectionMode(I)V

    .line 143
    invoke-virtual {v1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v2

    .line 144
    .local v2, "rowSM":Ljavax/swing/ListSelectionModel;
    new-instance v3, Lorg/jpos/iso/gui/ISOMsgPanel$2;

    invoke-direct {v3, p0}, Lorg/jpos/iso/gui/ISOMsgPanel$2;-><init>(Lorg/jpos/iso/gui/ISOMsgPanel;)V

    invoke-interface {v2, v3}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 169
    new-instance v3, Ljavax/swing/JScrollPane;

    invoke-direct {v3, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    return-object v3
.end method

.method private setValidFields()V
    .locals 3

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOMsgPanel;->validFields:Ljava/util/Vector;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMsgPanel;->validFields:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method createISOMsgDumpPanel()Ljavax/swing/JComponent;
    .locals 6

    .line 172
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 173
    .local v0, "p":Ljavax/swing/JPanel;
    new-instance v1, Ljavax/swing/JTextArea;

    const/4 v2, 0x3

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Ljavax/swing/JTextArea;-><init>(II)V

    .line 175
    .local v1, "t":Ljavax/swing/JTextArea;
    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 176
    sget-object v2, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 177
    invoke-static {}, Ljavax/swing/BorderFactory;->createLoweredBevelBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 178
    new-instance v2, Ljavax/swing/JLabel;

    const-string v3, "Dump"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;I)V

    const-string v3, "North"

    invoke-virtual {v0, v2, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 180
    new-instance v2, Ljava/awt/Font;

    const-string v3, "Helvetica"

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 181
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    .line 183
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v2, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v3}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 185
    const-string v3, "--[Header]--\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v3}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v3, "\n--[Msg]--\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v3}, Lorg/jpos/iso/ISOMsg;->pack()[B

    move-result-object v3

    .line 190
    .local v3, "b":[B
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "b":[B
    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v2}, Lorg/jpos/iso/ISOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 194
    sget-object v3, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v1, v3}, Ljavax/swing/JTextArea;->setForeground(Ljava/awt/Color;)V

    .line 196
    .end local v2    # "e":Lorg/jpos/iso/ISOException;
    :goto_0
    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 197
    return-object v0
.end method
