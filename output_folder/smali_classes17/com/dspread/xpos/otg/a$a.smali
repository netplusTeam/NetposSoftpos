.class Lcom/dspread/xpos/otg/a$a;
.super Landroid/content/BroadcastReceiver;
.source "CH34xUARTDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/otg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/otg/a;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/otg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/otg/a$a;->a:Lcom/dspread/xpos/otg/a;

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
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string p1, "CH34xAndroidDriver"

    const-string p2, "Step1!\n"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/a$a;->a:Lcom/dspread/xpos/otg/a;

    invoke-static {v0}, Lcom/dspread/xpos/otg/a;->a(Lcom/dspread/xpos/otg/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 11
    const-string p1, "CH34xAndroidDriver"

    const-string v0, "Step2!\n"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const-class v0, Lcom/dspread/xpos/otg/a;

    monitor-enter v0

    .line 16
    :try_start_0
    const-string p1, "device"

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 18
    const-string v2, "permission"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 20
    iget-object p2, p0, Lcom/dspread/xpos/otg/a$a;->a:Lcom/dspread/xpos/otg/a;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/otg/a;->a(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/otg/a$a;->a:Lcom/dspread/xpos/otg/a;

    invoke-static {p1}, Lcom/dspread/xpos/otg/a;->b(Lcom/dspread/xpos/otg/a;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Deny USB Permission"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 25
    const-string p1, "CH34xAndroidDriver"

    const-string p2, "permission denied"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 28
    :cond_2
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 29
    const-string p1, "CH34xAndroidDriver"

    const-string v0, "Step3!\n"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 36
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    .line 38
    const-string v0, "CH34xAndroidDriver"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 40
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/otg/a$a;->a:Lcom/dspread/xpos/otg/a;

    invoke-static {v0}, Lcom/dspread/xpos/otg/a;->f(Lcom/dspread/xpos/otg/a;)I

    move-result v0

    if-ge p2, v0, :cond_5

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 49
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 51
    const-string v2, "%04x:%04x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dspread/xpos/otg/a$a;->a:Lcom/dspread/xpos/otg/a;

    .line 57
    invoke-static {v2}, Lcom/dspread/xpos/otg/a;->g(Lcom/dspread/xpos/otg/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/dspread/xpos/otg/a$a;->a:Lcom/dspread/xpos/otg/a;

    invoke-static {v0}, Lcom/dspread/xpos/otg/a;->b(Lcom/dspread/xpos/otg/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "Device disconnected"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v0, p0, Lcom/dspread/xpos/otg/a$a;->a:Lcom/dspread/xpos/otg/a;

    invoke-virtual {v0}, Lcom/dspread/xpos/otg/a;->a()V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 68
    :cond_4
    const-string p1, "CH34xAndroidDriver"

    const-string p2, "......"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method
