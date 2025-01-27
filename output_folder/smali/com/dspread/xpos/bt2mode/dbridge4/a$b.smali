.class Lcom/dspread/xpos/bt2mode/dbridge4/a$b;
.super Ljava/lang/Object;
.source "BluetoothIBridgeAdapter.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$b;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/c;->a()Lcom/dspread/xpos/bt2mode/dbridge4/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/c;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object p1

    .line 3
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a(Z)V

    .line 4
    sget-object p2, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;)V

    .line 6
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$b;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->c(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    move-result-object p2

    .line 7
    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 9
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a$b;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->c(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
