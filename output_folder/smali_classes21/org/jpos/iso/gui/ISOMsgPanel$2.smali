.class Lorg/jpos/iso/gui/ISOMsgPanel$2;
.super Ljava/lang/Object;
.source "ISOMsgPanel.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/gui/ISOMsgPanel;->createISOMsgTable()Ljavax/swing/JComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/gui/ISOMsgPanel;


# direct methods
.method constructor <init>(Lorg/jpos/iso/gui/ISOMsgPanel;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/gui/ISOMsgPanel;

    .line 144
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOMsgPanel$2;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 8
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .line 146
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    nop

    .line 150
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/ListSelectionModel;

    .line 151
    .local v0, "lsm":Ljavax/swing/ListSelectionModel;
    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v1

    .line 153
    .local v1, "selectedRow":I
    iget-object v2, p0, Lorg/jpos/iso/gui/ISOMsgPanel$2;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v2, v2, Lorg/jpos/iso/gui/ISOMsgPanel;->validFields:Ljava/util/Vector;

    .line 154
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 153
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 156
    .local v2, "index":I
    iget-object v3, p0, Lorg/jpos/iso/gui/ISOMsgPanel$2;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v3, v3, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v3, v2}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 157
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_1

    .line 158
    move-object v4, v3

    check-cast v4, Lorg/jpos/iso/ISOMsg;

    .line 159
    .local v4, "sm":Lorg/jpos/iso/ISOMsg;
    new-instance v5, Ljavax/swing/JFrame;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISOMsg field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, "f":Ljavax/swing/JFrame;
    new-instance v6, Lorg/jpos/iso/gui/ISOMsgPanel;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lorg/jpos/iso/gui/ISOMsgPanel;-><init>(Lorg/jpos/iso/ISOMsg;Z)V

    .line 161
    .local v6, "p":Lorg/jpos/iso/gui/ISOMsgPanel;
    invoke-virtual {v5}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 162
    invoke-virtual {v5}, Ljavax/swing/JFrame;->pack()V

    .line 163
    invoke-virtual {v5}, Ljavax/swing/JFrame;->show()V

    .line 166
    .end local v1    # "selectedRow":I
    .end local v2    # "index":I
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "sm":Lorg/jpos/iso/ISOMsg;
    .end local v5    # "f":Ljavax/swing/JFrame;
    .end local v6    # "p":Lorg/jpos/iso/gui/ISOMsgPanel;
    :cond_1
    return-void
.end method
