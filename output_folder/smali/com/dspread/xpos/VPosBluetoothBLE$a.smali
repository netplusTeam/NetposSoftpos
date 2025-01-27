.class Lcom/dspread/xpos/VPosBluetoothBLE$a;
.super Ljava/lang/Object;
.source "VPosBluetoothBLE.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v0}, Lcom/dspread/xpos/VPosBluetoothBLE;->b(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v0}, Lcom/dspread/xpos/VPosBluetoothBLE;->f(Lcom/dspread/xpos/VPosBluetoothBLE;)Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->A1()V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$a;->a:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-virtual {v0}, Lcom/dspread/xpos/VPosBluetoothBLE;->F()V

    return-void
.end method
