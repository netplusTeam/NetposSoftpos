.class Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothIBridgeGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge4/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 3
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 2
    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 5
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConnectionStateChange:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 4
    invoke-static {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    if-ne p3, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    iget-object p1, p1, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->l:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a(Lcom/dspread/xpos/bt2mode/dbridge4/d;)Lcom/dspread/xpos/bt2mode/dbridge4/d$b;

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 7
    invoke-static {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->b(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)V

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 9
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c()V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    move-result-object p1

    .line 13
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 15
    iget-object p3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    iget-object p3, p3, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    invoke-virtual {p3, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b(Z)V

    .line 18
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-static {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 22
    invoke-static {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 24
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    iget-object p2, p2, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 30
    invoke-virtual {p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b(Z)V

    .line 31
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-static {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 2
    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;->a:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 6
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e()Ljava/util/List;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Ljava/util/List;)V

    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "onGattServicesDiscoveredFailed"

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
