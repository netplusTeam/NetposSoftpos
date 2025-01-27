.class Lorg/jpos/iso/gui/ISORequestListenerPanel$2;
.super Ljava/awt/event/MouseAdapter;
.source "ISORequestListenerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/gui/ISORequestListenerPanel;->createPanel()Ljavax/swing/JPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/gui/ISORequestListenerPanel;

.field final synthetic val$logList:Ljavax/swing/JList;


# direct methods
.method constructor <init>(Lorg/jpos/iso/gui/ISORequestListenerPanel;Ljavax/swing/JList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/gui/ISORequestListenerPanel;

    .line 93
    iput-object p1, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel$2;->this$0:Lorg/jpos/iso/gui/ISORequestListenerPanel;

    iput-object p2, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel$2;->val$logList:Ljavax/swing/JList;

    invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 4
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .line 95
    iget-object v0, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel$2;->val$logList:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 96
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Ljavax/swing/JFrame;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "f":Ljavax/swing/JFrame;
    new-instance v2, Lorg/jpos/iso/gui/ISOMsgPanel;

    invoke-direct {v2, v0}, Lorg/jpos/iso/gui/ISOMsgPanel;-><init>(Lorg/jpos/iso/ISOMsg;)V

    .line 99
    .local v2, "p":Lorg/jpos/iso/gui/ISOMsgPanel;
    invoke-virtual {v1}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 100
    invoke-virtual {v1}, Ljavax/swing/JFrame;->pack()V

    .line 101
    invoke-virtual {v1}, Ljavax/swing/JFrame;->show()V

    .line 103
    .end local v1    # "f":Ljavax/swing/JFrame;
    .end local v2    # "p":Lorg/jpos/iso/gui/ISOMsgPanel;
    :cond_0
    return-void
.end method
