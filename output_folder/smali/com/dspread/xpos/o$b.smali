.class Lcom/dspread/xpos/o$b;
.super Landroid/content/BroadcastReceiver;
.source "CopyOfVPosBluetooth_2mode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/o;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/o;Lcom/dspread/xpos/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/o$b;-><init>(Lcom/dspread/xpos/o;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPosBluetooth_2mode** ON RECEIVE **"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 3
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    const-string v0, "VPosBluetooth_2mode[onReceive] ACTION_STATE_CHANGED"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 5
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 22
    :pswitch_0
    const-string p2, "VPosBluetooth_2mode[onReceive] current state = TURNING_OFF"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :pswitch_1
    const-string p2, "VPosBluetooth_2mode[onReceive] current state = ON"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 33
    :pswitch_2
    const-string p2, "VPosBluetooth_2mode[onReceive] current state = TURNING_ON"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :pswitch_3
    const-string p2, "VPosBluetooth_2mode[onReceive] current state = OFF"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {p2}, Lcom/dspread/xpos/o;->d(Lcom/dspread/xpos/o;)Lcom/dspread/xpos/bluetooth2mode/a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {p2}, Lcom/dspread/xpos/o;->d(Lcom/dspread/xpos/o;)Lcom/dspread/xpos/bluetooth2mode/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dspread/xpos/bluetooth2mode/a;->k()V

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {p2, p1}, Lcom/dspread/xpos/o;->a(Lcom/dspread/xpos/o;Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/a;

    goto/16 :goto_1

    .line 49
    :cond_1
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_5

    .line 50
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 57
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {v0}, Lcom/dspread/xpos/o;->e(Lcom/dspread/xpos/o;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {v0}, Lcom/dspread/xpos/o;->f(Lcom/dspread/xpos/o;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;)V

    .line 59
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {v0}, Lcom/dspread/xpos/o;->d(Lcom/dspread/xpos/o;)Lcom/dspread/xpos/bluetooth2mode/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {v0}, Lcom/dspread/xpos/o;->d(Lcom/dspread/xpos/o;)Lcom/dspread/xpos/bluetooth2mode/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Ljava/lang/String;)V

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    iget-object v0, v0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-nez v0, :cond_3

    return-void

    .line 65
    :cond_3
    const-string v0, "onRequestQposDisconnected======================================="

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    iget-object v0, v0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->F1()V

    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {v0, v3}, Lcom/dspread/xpos/o;->a(Lcom/dspread/xpos/o;Z)Z

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosBluetooth_2modeBT connection was disconnected!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 78
    :cond_5
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 81
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {v0}, Lcom/dspread/xpos/o;->f(Lcom/dspread/xpos/o;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 82
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    iget-object v1, v0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-nez v1, :cond_7

    .line 83
    invoke-static {v0}, Lcom/dspread/xpos/o;->d(Lcom/dspread/xpos/o;)Lcom/dspread/xpos/bluetooth2mode/a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {v0}, Lcom/dspread/xpos/o;->d(Lcom/dspread/xpos/o;)Lcom/dspread/xpos/bluetooth2mode/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Ljava/lang/String;)V

    .line 86
    :cond_6
    iget-object p2, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-virtual {p2, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    return-void

    .line 89
    :cond_7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/o;->c(Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 91
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    iget-object v0, v0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->E1()V

    .line 94
    :cond_8
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    if-ne v0, v1, :cond_9

    .line 95
    iget-object v0, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {v0, v3}, Lcom/dspread/xpos/o;->b(Lcom/dspread/xpos/o;Z)Z

    .line 99
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosBluetooth_2modeBT connection was connected!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosBluetooth_2modeanother action: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 110
    iget-object p2, p0, Lcom/dspread/xpos/o$b;->a:Lcom/dspread/xpos/o;

    invoke-static {p2, p1}, Lcom/dspread/xpos/o;->a(Lcom/dspread/xpos/o;Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/a;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
