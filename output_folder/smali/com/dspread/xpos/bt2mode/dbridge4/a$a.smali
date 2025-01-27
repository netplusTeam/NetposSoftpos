.class Lcom/dspread/xpos/bt2mode/dbridge4/a$a;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothIBridgeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/bt2mode/dbridge4/a;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    const-string v2, "exception"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    move-object v0, v1

    .line 7
    :goto_0
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 12
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/c;->a()Lcom/dspread/xpos/bt2mode/dbridge4/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/c;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {v3}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->i()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {v3, v4, v2, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a;ILcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {v3}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 20
    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {v3, v4, v2, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a;ILcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    .line 25
    :cond_2
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    const/16 v3, 0x10

    invoke-static {v2, v3, v1, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a;ILcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    .line 30
    :cond_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 33
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a;Z)Z

    .line 34
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {v1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Lcom/dspread/xpos/bt2mode/dbridge4/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a()V

    .line 36
    :cond_4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_5

    .line 38
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a;Z)Z

    .line 39
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Lcom/dspread/xpos/bt2mode/dbridge4/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 40
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Lcom/dspread/xpos/bt2mode/dbridge4/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->b()V

    :cond_5
    return-void
.end method
