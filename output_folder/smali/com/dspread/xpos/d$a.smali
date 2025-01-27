.class Lcom/dspread/xpos/d$a;
.super Landroid/content/BroadcastReceiver;
.source "BlueToothConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/d;->a(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/d;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->a(Lcom/dspread/xpos/d;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    const-string/jumbo v0, "use cancel"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->b(Lcom/dspread/xpos/d;)V

    .line 6
    invoke-static {}, Lcom/dspread/xpos/d;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/dspread/xpos/d;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->A1()V

    .line 8
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/d;->c()Lcom/dspread/xpos/DspFingerPrint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {v0, v1}, Lcom/dspread/xpos/d;->a(Lcom/dspread/xpos/d;Z)Z

    .line 14
    :cond_1
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const/4 p2, 0x0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdk device = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->e(Lcom/dspread/xpos/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 21
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 20
    :cond_3
    move v1, p2

    .line 21
    :goto_0
    if-nez v1, :cond_8

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 31
    iget-object p2, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {p2}, Lcom/dspread/xpos/d;->e(Lcom/dspread/xpos/d;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_4
    invoke-static {}, Lcom/dspread/xpos/d;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 34
    invoke-static {}, Lcom/dspread/xpos/d;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 36
    :cond_5
    invoke-static {}, Lcom/dspread/xpos/d;->c()Lcom/dspread/xpos/DspFingerPrint;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 37
    invoke-static {}, Lcom/dspread/xpos/d;->c()Lcom/dspread/xpos/DspFingerPrint;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 43
    :cond_6
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 44
    const-string p1, "ACTION_DISCOVERY_FINISHED"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {p1}, Lcom/dspread/xpos/d;->b(Lcom/dspread/xpos/d;)V

    .line 47
    invoke-static {}, Lcom/dspread/xpos/d;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 48
    iget-object p1, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {p1}, Lcom/dspread/xpos/d;->f(Lcom/dspread/xpos/d;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 49
    invoke-static {}, Lcom/dspread/xpos/d;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->A1()V

    .line 50
    iget-object p1, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {p1}, Lcom/dspread/xpos/d;->f(Lcom/dspread/xpos/d;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/dspread/xpos/d;->b(Lcom/dspread/xpos/d;Z)Z

    .line 53
    :cond_7
    invoke-static {}, Lcom/dspread/xpos/d;->c()Lcom/dspread/xpos/DspFingerPrint;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 54
    iget-object p1, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {p1, v1}, Lcom/dspread/xpos/d;->a(Lcom/dspread/xpos/d;Z)Z

    .line 55
    iget-object p1, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {p1}, Lcom/dspread/xpos/d;->f(Lcom/dspread/xpos/d;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 56
    invoke-static {}, Lcom/dspread/xpos/d;->c()Lcom/dspread/xpos/DspFingerPrint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dspread/xpos/DspFingerPrint;->p()V

    .line 57
    iget-object p1, p0, Lcom/dspread/xpos/d$a;->a:Lcom/dspread/xpos/d;

    invoke-static {p1}, Lcom/dspread/xpos/d;->f(Lcom/dspread/xpos/d;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/dspread/xpos/d;->b(Lcom/dspread/xpos/d;Z)Z

    :cond_8
    :goto_1
    return-void
.end method
