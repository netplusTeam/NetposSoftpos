.class Lorg/jpos/transaction/gui/TMMonitor$1;
.super Ljavax/swing/table/AbstractTableModel;
.source "TMMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/transaction/gui/TMMonitor;->createModel()Ljavax/swing/table/AbstractTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field columnClass:[Ljava/lang/Class;

.field columnName:[Ljava/lang/String;

.field final synthetic this$0:Lorg/jpos/transaction/gui/TMMonitor;


# direct methods
.method constructor <init>(Lorg/jpos/transaction/gui/TMMonitor;)V
    .locals 4
    .param p1, "this$0"    # Lorg/jpos/transaction/gui/TMMonitor;

    .line 151
    iput-object p1, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->this$0:Lorg/jpos/transaction/gui/TMMonitor;

    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 152
    const-string v0, "#"

    const-string v1, "id"

    const-string v2, "State"

    const-string v3, "Info"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->columnName:[Ljava/lang/String;

    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->columnClass:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getColumnClass(I)Ljava/lang/Class;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 169
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->columnClass:[Ljava/lang/Class;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 159
    const/4 v0, 0x4

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 166
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->columnName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->this$0:Lorg/jpos/transaction/gui/TMMonitor;

    iget-object v0, v0, Lorg/jpos/transaction/gui/TMMonitor;->txnmgr:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->getActiveSessions()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 172
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->this$0:Lorg/jpos/transaction/gui/TMMonitor;

    iget-object v0, v0, Lorg/jpos/transaction/gui/TMMonitor;->events:[Lorg/jpos/transaction/TransactionStatusEvent;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 173
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->this$0:Lorg/jpos/transaction/gui/TMMonitor;

    iget-object v0, v0, Lorg/jpos/transaction/gui/TMMonitor;->events:[Lorg/jpos/transaction/TransactionStatusEvent;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionStatusEvent;->getInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->this$0:Lorg/jpos/transaction/gui/TMMonitor;

    iget-object v0, v0, Lorg/jpos/transaction/gui/TMMonitor;->events:[Lorg/jpos/transaction/TransactionStatusEvent;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionStatusEvent;->getStateAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lorg/jpos/transaction/gui/TMMonitor$1;->this$0:Lorg/jpos/transaction/gui/TMMonitor;

    iget-object v0, v0, Lorg/jpos/transaction/gui/TMMonitor;->events:[Lorg/jpos/transaction/TransactionStatusEvent;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionStatusEvent;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 175
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    :goto_0
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
