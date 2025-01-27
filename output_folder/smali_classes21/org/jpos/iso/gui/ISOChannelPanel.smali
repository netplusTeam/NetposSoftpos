.class public Lorg/jpos/iso/gui/ISOChannelPanel;
.super Ljavax/swing/JPanel;
.source "ISOChannelPanel.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final LOG_CAPACITY:I = 0xfa

.field private static final serialVersionUID:J = -0x6ffc9646e8d749ddL


# instance fields
.field log:Ljavax/swing/DefaultListModel;

.field meter:Lorg/jpos/iso/gui/ISOMeter;

.field private protectFields:[I

.field symbolicName:Ljava/lang/String;

.field private wipeFields:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "symbolicName"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->protectFields:[I

    .line 53
    iput-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->wipeFields:[I

    .line 76
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->symbolicName:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/awt/FlowLayout;

    invoke-direct {v0}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 78
    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 79
    new-instance v0, Ljavax/swing/DefaultListModel;

    invoke-direct {v0}, Ljavax/swing/DefaultListModel;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->log:Ljavax/swing/DefaultListModel;

    .line 80
    invoke-direct {p0}, Lorg/jpos/iso/gui/ISOChannelPanel;->createCountersPanel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 81
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jpos/iso/gui/ISOMeter;->setConnected(Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOChannel;Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "symbolicName"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->protectFields:[I

    .line 53
    iput-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->wipeFields:[I

    .line 60
    iput-object p2, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->symbolicName:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/awt/FlowLayout;

    invoke-direct {v0}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 62
    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 63
    new-instance v0, Ljavax/swing/DefaultListModel;

    invoke-direct {v0}, Ljavax/swing/DefaultListModel;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->log:Ljavax/swing/DefaultListModel;

    .line 64
    invoke-direct {p0}, Lorg/jpos/iso/gui/ISOChannelPanel;->createCountersPanel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 65
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    invoke-interface {p1}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jpos/iso/gui/ISOMeter;->setConnected(Z)V

    .line 66
    instance-of v0, p1, Ljava/util/Observable;

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p1

    check-cast v0, Ljava/util/Observable;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 68
    :cond_0
    return-void
.end method

.method private checkHidden(Lorg/jpos/iso/ISOMsg;)V
    .locals 5
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->wipeFields:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 188
    .local v3, "f":I
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const-string v4, "[WIPED]"

    invoke-virtual {p1, v3, v4}, Lorg/jpos/iso/ISOMsg;->set(ILjava/lang/String;)V

    .line 187
    .end local v3    # "f":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    return-void
.end method

.method private checkProtected(Lorg/jpos/iso/ISOMsg;)V
    .locals 5
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->protectFields:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 182
    .local v3, "f":I
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/jpos/iso/ISOMsg;->set(ILjava/lang/String;)V

    .line 181
    .end local v3    # "f":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method

.method private createCountersPanel()Ljavax/swing/JPanel;
    .locals 4

    .line 153
    new-instance v0, Lorg/jpos/iso/gui/ISOChannelPanel$2;

    invoke-direct {v0, p0}, Lorg/jpos/iso/gui/ISOChannelPanel$2;-><init>(Lorg/jpos/iso/gui/ISOChannelPanel;)V

    .line 162
    .local v0, "A":Ljavax/swing/JPanel;
    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 164
    new-instance v1, Lorg/jpos/iso/gui/ISOMeter;

    invoke-direct {v1, p0}, Lorg/jpos/iso/gui/ISOMeter;-><init>(Lorg/jpos/iso/gui/ISOChannelPanel;)V

    iput-object v1, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    .line 166
    new-instance v1, Ljavax/swing/JLabel;

    iget-object v2, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->symbolicName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "l":Ljavax/swing/JLabel;
    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 168
    iget-object v2, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    const-string v3, "Center"

    invoke-virtual {v0, v2, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 170
    return-object v0
.end method

.method private getProtectedClone(Lorg/jpos/iso/ISOMsg;)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 174
    .local v0, "pm":Lorg/jpos/iso/ISOMsg;
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->protectFields:[I

    if-eqz v1, :cond_0

    .line 175
    invoke-direct {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->checkProtected(Lorg/jpos/iso/ISOMsg;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->wipeFields:[I

    if-eqz v1, :cond_1

    .line 177
    invoke-direct {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->checkHidden(Lorg/jpos/iso/ISOMsg;)V

    .line 178
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getISOMeter()Lorg/jpos/iso/gui/ISOMeter;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    return-object v0
.end method

.method public final getLog()Ljavax/swing/ListModel;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->log:Ljavax/swing/DefaultListModel;

    return-object v0
.end method

.method public final getSymbolicName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->symbolicName:Ljava/lang/String;

    return-object v0
.end method

.method public setProtectFields([I)V
    .locals 0
    .param p1, "fields"    # [I

    .line 147
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->protectFields:[I

    .line 148
    return-void
.end method

.method public setWipeFields([I)V
    .locals 0
    .param p1, "fields"    # [I

    .line 150
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->wipeFields:[I

    .line 151
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 92
    if-eqz p2, :cond_2

    instance-of v0, p2, Lorg/jpos/iso/ISOMsg;

    if-eqz v0, :cond_2

    .line 93
    move-object v0, p2

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 95
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    const/16 v1, 0x1e

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, "mti":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 97
    .local v4, "imti":I
    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    iget-object v5, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    neg-int v6, v4

    invoke-virtual {v5, v6, v3}, Lorg/jpos/iso/gui/ISOMeter;->setValue(ILjava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v5, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    invoke-virtual {v5, v4, v3}, Lorg/jpos/iso/gui/ISOMeter;->setValue(ILjava/lang/String;)V

    .line 103
    :goto_0
    iget-object v5, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->log:Ljavax/swing/DefaultListModel;

    invoke-direct {p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel;->getProtectedClone(Lorg/jpos/iso/ISOMsg;)Lorg/jpos/iso/ISOMsg;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    .line 104
    iget-object v5, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->log:Ljavax/swing/DefaultListModel;

    invoke-virtual {v5}, Ljavax/swing/DefaultListModel;->getSize()I

    move-result v5

    const/16 v6, 0xfa

    if-le v5, v6, :cond_1

    .line 105
    iget-object v5, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->log:Ljavax/swing/DefaultListModel;

    invoke-virtual {v5, v2}, Ljavax/swing/DefaultListModel;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v3    # "mti":Ljava/lang/String;
    .end local v4    # "imti":I
    :cond_1
    goto :goto_1

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Lorg/jpos/iso/ISOException;
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    const-string v4, "ERROR"

    invoke-virtual {v3, v1, v4}, Lorg/jpos/iso/gui/ISOMeter;->setValue(ILjava/lang/String;)V

    .line 110
    .end local v2    # "e":Lorg/jpos/iso/ISOException;
    :goto_1
    iget-object v2, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    invoke-virtual {v2, v1}, Lorg/jpos/iso/gui/ISOMeter;->setValue(I)V

    .line 112
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_2
    instance-of v0, p1, Lorg/jpos/iso/BaseChannel;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 113
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/BaseChannel;

    .line 114
    .local v0, "c":Lorg/jpos/iso/BaseChannel;
    iget-object v2, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    invoke-virtual {v0}, Lorg/jpos/iso/BaseChannel;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jpos/iso/gui/ISOMeter;->setConnected(Z)V

    .line 115
    invoke-virtual {v0}, Lorg/jpos/iso/BaseChannel;->getCounters()[I

    move-result-object v2

    .line 117
    .local v2, "cnt":[I
    :try_start_1
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    aget v1, v2, v1

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    invoke-static {v1, v4}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v3, v1}, Lorg/jpos/iso/gui/ISOMeter;->setPositiveCounter(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    const/4 v3, 0x2

    aget v3, v2, v3

    const v5, 0x3b9aca00

    rem-int/2addr v3, v5

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v1, v3}, Lorg/jpos/iso/gui/ISOMeter;->setNegativeCounter(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 123
    :catch_1
    move-exception v1

    :goto_2
    nop

    .line 124
    .end local v0    # "c":Lorg/jpos/iso/BaseChannel;
    .end local v2    # "cnt":[I
    goto :goto_3

    :cond_3
    instance-of v0, p1, Lorg/jpos/iso/ISOServer;

    if-eqz v0, :cond_4

    .line 125
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/ISOServer;

    .line 126
    .local v0, "server":Lorg/jpos/iso/ISOServer;
    new-instance v1, Lorg/jpos/iso/gui/ISOChannelPanel$1;

    invoke-direct {v1, p0, v0}, Lorg/jpos/iso/gui/ISOChannelPanel$1;-><init>(Lorg/jpos/iso/gui/ISOChannelPanel;Lorg/jpos/iso/ISOServer;)V

    .line 139
    .local v1, "updateIt":Ljava/lang/Runnable;
    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 140
    .end local v0    # "server":Lorg/jpos/iso/ISOServer;
    .end local v1    # "updateIt":Ljava/lang/Runnable;
    goto :goto_3

    .line 141
    :cond_4
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    invoke-virtual {v0, v1}, Lorg/jpos/iso/gui/ISOMeter;->setConnected(Z)V

    .line 142
    :goto_3
    return-void
.end method
