.class Lcom/dspread/xpos/VPosBluetoothBLE$c$a;
.super Ljava/lang/Object;
.source "VPosBluetoothBLE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/VPosBluetoothBLE$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/VPosBluetoothBLE$c;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/VPosBluetoothBLE$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    invoke-static {v2}, Lcom/dspread/xpos/VPosBluetoothBLE$c;->a(Lcom/dspread/xpos/VPosBluetoothBLE$c;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    goto :goto_2

    :cond_0
    const-wide/16 v4, 0x1

    .line 7
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x3a98

    if-lt v1, v4, :cond_3

    :goto_2
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    iget-object v0, v0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-virtual {v0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 14
    const-string/jumbo v0, "set MTU 182"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    iget-object v0, v0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v0}, Lcom/dspread/xpos/VPosBluetoothBLE;->h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 16
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    iget-object v0, v0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    const/16 v1, 0xb6

    invoke-static {v0, v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;I)I

    goto :goto_3

    .line 18
    :cond_1
    const-string/jumbo v0, "set MTU 20"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    iget-object v0, v0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;I)I

    .line 20
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    iget-object v0, v0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v0}, Lcom/dspread/xpos/VPosBluetoothBLE;->h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    invoke-static {v1}, Lcom/dspread/xpos/VPosBluetoothBLE$c;->b(Lcom/dspread/xpos/VPosBluetoothBLE$c;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 21
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE$c;

    iget-object v0, v0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    invoke-static {v0, v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;)Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    :cond_2
    :goto_3
    return-void

    .line 7
    :cond_3
    move v1, v2

    goto :goto_0
.end method
