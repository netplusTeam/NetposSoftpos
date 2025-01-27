.class Lcom/dspread/xpos/bt2mode/dbridge/a$a;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDBridgeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/bt2mode/dbridge/a;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

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

    .line 4
    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 13
    iget-object v4, p0, Lcom/dspread/xpos/bt2mode/dbridge/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge/a;

    .line 14
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge/c;->a()Lcom/dspread/xpos/bt2mode/dbridge/c;

    move-result-object v5

    .line 15
    invoke-virtual {v5, v2}, Lcom/dspread/xpos/bt2mode/dbridge/c;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    move-result-object v2

    const/16 v5, 0x8

    .line 16
    invoke-static {v4, v5, v2, v0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a;ILcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;Ljava/lang/String;)V

    .line 22
    :cond_2
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 23
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge/a;

    const/16 v4, 0x10

    invoke-static {v2, v4, v1, v0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a;ILcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;Ljava/lang/String;)V

    .line 27
    :cond_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_4

    .line 30
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge/a;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a;Z)Z

    .line 31
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-static {v2}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a;)Lcom/dspread/xpos/bt2mode/dbridge/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/b;->b()V

    .line 33
    :cond_4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 35
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a;Z)Z

    .line 36
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a;)Lcom/dspread/xpos/bt2mode/dbridge/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 37
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/a$a;->a:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a;)Lcom/dspread/xpos/bt2mode/dbridge/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b;->c()V

    .line 42
    :cond_5
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 44
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 47
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge/c;->a()Lcom/dspread/xpos/bt2mode/dbridge/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/bt2mode/dbridge/c;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 50
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->l()V

    :cond_6
    return-void
.end method
