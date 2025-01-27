.class Lcom/dspread/xpos/VPosBluetoothBLE$b;
.super Ljava/lang/Object;
.source "VPosBluetoothBLE.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/VPosBluetoothBLE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/VPosBluetoothBLE;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/VPosBluetoothBLE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$b;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$b;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p2}, Lcom/dspread/xpos/VPosBluetoothBLE;->g(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$b;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p2}, Lcom/dspread/xpos/VPosBluetoothBLE;->g(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$b;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p2}, Lcom/dspread/xpos/VPosBluetoothBLE;->f(Lcom/dspread/xpos/VPosBluetoothBLE;)Lcom/dspread/xpos/QPOSService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method
