.class Lorg/jpos/iso/gui/ISOMsgPanel$1;
.super Ljavax/swing/table/AbstractTableModel;
.source "ISOMsgPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/gui/ISOMsgPanel;->createISOMsgTable()Ljavax/swing/JComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7bbfa761cf80b737L


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/gui/ISOMsgPanel;


# direct methods
.method constructor <init>(Lorg/jpos/iso/gui/ISOMsgPanel;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/gui/ISOMsgPanel;

    .line 74
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOMsgPanel$1;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .line 80
    const/4 v0, 0x3

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 90
    packed-switch p1, :pswitch_data_0

    .line 98
    const-string v0, ""

    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "Description"

    return-object v0

    .line 94
    :pswitch_1
    const-string v0, "Content"

    return-object v0

    .line 92
    :pswitch_2
    const-string v0, "#"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRowCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMsgPanel$1;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v0, v0, Lorg/jpos/iso/gui/ISOMsgPanel;->validFields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 104
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 130
    :pswitch_0
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMsgPanel$1;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v0, v0, Lorg/jpos/iso/gui/ISOMsgPanel;->validFields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    .local v0, "i":I
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMsgPanel$1;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v1, v1, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsg;->getPackager()Lorg/jpos/iso/ISOPackager;

    move-result-object v1

    .line 132
    .local v1, "p":Lorg/jpos/iso/ISOPackager;
    iget-object v2, p0, Lorg/jpos/iso/gui/ISOMsgPanel$1;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v2, v2, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-interface {v1, v2, v0}, Lorg/jpos/iso/ISOPackager;->getFieldDescription(Lorg/jpos/iso/ISOComponent;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 108
    .end local v0    # "i":I
    .end local v1    # "p":Lorg/jpos/iso/ISOPackager;
    :pswitch_1
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMsgPanel$1;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v0, v0, Lorg/jpos/iso/gui/ISOMsgPanel;->validFields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    .local v0, "index":I
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOMsgPanel$1;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v1, v1, Lorg/jpos/iso/gui/ISOMsgPanel;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v1, v0}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "s":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 120
    :sswitch_0
    const-string v2, "----"

    goto :goto_0

    .line 117
    :sswitch_1
    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    nop

    .line 122
    :goto_0
    return-object v2

    .line 124
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 125
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 126
    :cond_1
    instance-of v2, v1, Lorg/jpos/iso/ISOMsg;

    if-eqz v2, :cond_2

    .line 127
    const-string v2, "<ISOMsg>"

    return-object v2

    .line 106
    .end local v0    # "index":I
    .end local v1    # "obj":Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMsgPanel$1;->this$0:Lorg/jpos/iso/gui/ISOMsgPanel;

    iget-object v0, v0, Lorg/jpos/iso/gui/ISOMsgPanel;->validFields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 134
    :cond_2
    :goto_1
    const-string v0, "<???>"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0x23 -> :sswitch_1
        0x2d -> :sswitch_1
    .end sparse-switch
.end method
