.class public abstract Lcom/dspread/xpos/otg/d;
.super Ljava/lang/Object;
.source "CommonUsbSerialPort.java"

# interfaces
.implements Lcom/dspread/xpos/otg/k;


# static fields
.field public static final y:I = 0x4000

.field public static final z:I = 0x4000


# instance fields
.field protected final r:Landroid/hardware/usb/UsbDevice;

.field protected final s:I

.field protected t:Landroid/hardware/usb/UsbDeviceConnection;

.field protected final u:Ljava/lang/Object;

.field protected final v:Ljava/lang/Object;

.field protected w:[B

.field protected x:[B


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/otg/d;->u:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/otg/d;->v:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    .line 15
    iput p2, p0, Lcom/dspread/xpos/otg/d;->s:I

    .line 17
    const/16 p1, 0x4000

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    .line 18
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->x:[B

    return-void
.end method


# virtual methods
.method public abstract a([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->w:[B

    array-length v1, v1

    if-ne p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->w:[B

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract a(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Landroid/hardware/usb/UsbDeviceConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->x:[B

    array-length v1, v1

    if-ne p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->x:[B

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract b(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/otg/d;->s:I

    return v0
.end method

.method public abstract h()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final j()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    .line 3
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/dspread/xpos/otg/d;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4
    const-string v1, "<%s device_name=%s device_id=%s port_number=%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
