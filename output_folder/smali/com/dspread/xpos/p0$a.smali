.class Lcom/dspread/xpos/p0$a;
.super Landroid/content/BroadcastReceiver;
.source "VPosBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/p0;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/p0$a;->a:Lcom/dspread/xpos/p0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===-------===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 3
    const-string v0, "ACTION_CONNECT_SUCCESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    const-string/jumbo p1, "\u84dd\u7259\u5df2\u8fde\u63a5"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {p1}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "ACTION_DATA_TO_GAME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    const/16 p1, 0x3e8

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 28
    const-string p1, "BlueToothError \u84dd\u7259\u72b6\u6001\u672a\u77e5"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :pswitch_0
    const-string/jumbo p1, "\u84dd\u7259\u6b63\u5728\u5173\u95ed"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :pswitch_1
    const-string/jumbo p1, "\u84dd\u7259\u5df2\u5f00\u542f"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :pswitch_2
    const-string/jumbo p1, "\u84dd\u7259\u6b63\u5728\u6253\u5f00"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :pswitch_3
    const-string/jumbo p1, "\u84dd\u7259\u5df2\u5173\u95ed"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/dspread/xpos/p0$a;->a:Lcom/dspread/xpos/p0;

    invoke-static {p1}, Lcom/dspread/xpos/p0;->e(Lcom/dspread/xpos/p0;)V

    .line 36
    iget-object p1, p0, Lcom/dspread/xpos/p0$a;->a:Lcom/dspread/xpos/p0;

    iget-object p1, p1, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
