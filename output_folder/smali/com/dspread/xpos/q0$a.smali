.class Lcom/dspread/xpos/q0$a;
.super Landroid/content/BroadcastReceiver;
.source "VPosBluetooth_2mode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/q0;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/q0$a;->a:Lcom/dspread/xpos/q0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string p2, "ACTION_CONNECT_SUCCESS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    sget-object p1, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {p1}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    goto :goto_0

    .line 6
    :cond_0
    const-string p2, "ACTION_DATA_TO_GAME"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
