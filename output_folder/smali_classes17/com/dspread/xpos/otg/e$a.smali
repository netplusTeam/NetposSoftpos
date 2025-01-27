.class public Lcom/dspread/xpos/otg/e$a;
.super Lcom/dspread/xpos/otg/d;
.source "Cp21xxSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/otg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final D:I = 0x2580

.field private static final E:I = 0x1388

.field private static final F:I = 0x41

.field private static final G:I = 0x0

.field private static final H:I = 0x1

.field private static final I:I = 0x3

.field private static final J:I = 0x7

.field private static final K:I = 0x1e

.field private static final L:I = 0x12

.field private static final M:I = 0xa

.field private static final N:I = 0x5

.field private static final O:I = 0x1

.field private static final P:I = 0x0

.field private static final Q:I = 0x384000

.field private static final R:I = 0x1

.field private static final S:I = 0x2

.field private static final T:I = 0x3

.field private static final U:I = 0x100

.field private static final V:I = 0x200


# instance fields
.field private A:Landroid/hardware/usb/UsbEndpoint;

.field private B:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic C:Lcom/dspread/xpos/otg/e;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/otg/e;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/otg/e$a;->C:Lcom/dspread/xpos/otg/e;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/dspread/xpos/otg/d;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method private a(II)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x41

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private c(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    new-array v6, v0, [B

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v6, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, v6, v0

    .line 7
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x41

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting baud rate."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/dspread/xpos/otg/e$a;->A:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 54
    monitor-exit v0

    return v1

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-static {v2, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/e$a;->c(I)V

    packed-switch p2, :pswitch_data_0

    const/16 p1, 0x800

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x700

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x600

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x500

    :goto_0
    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p4, p2, :cond_1

    if-eq p4, v0, :cond_0

    goto :goto_1

    :cond_0
    or-int/lit8 p1, p1, 0x20

    goto :goto_1

    :cond_1
    or-int/lit8 p1, p1, 0x10

    :goto_1
    if-eq p3, p2, :cond_3

    if-eq p3, v0, :cond_2

    goto :goto_2

    :cond_2
    or-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_3
    or-int/lit8 p1, p1, 0x0

    :goto_2
    const/4 p2, 0x3

    .line 96
    invoke-direct {p0, p2, p1}, Lcom/dspread/xpos/otg/e$a;->a(II)I

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_5

    .line 6
    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 p1, 0x0

    move v0, p1

    .line 9
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 11
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v3, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "claimInterface "

    if-eqz v1, :cond_0

    .line 12
    :try_start_1
    invoke-static {}, Lcom/dspread/xpos/otg/e;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 14
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/otg/e;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FAIL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_1
    nop

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    move v1, p1

    .line 19
    :goto_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 20
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 22
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 23
    iput-object v3, p0, Lcom/dspread/xpos/otg/e$a;->A:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_3

    .line 25
    :cond_2
    iput-object v3, p0, Lcom/dspread/xpos/otg/e$a;->B:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 30
    invoke-direct {p0, p1, v2}, Lcom/dspread/xpos/otg/e$a;->a(II)I

    const/4 p1, 0x7

    const/16 v0, 0x303

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/dspread/xpos/otg/e$a;->a(II)I

    const/16 p1, 0x180

    .line 32
    invoke-direct {p0, v2, p1}, Lcom/dspread/xpos/otg/e$a;->a(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 38
    :try_start_2
    invoke-virtual {p0}, Lcom/dspread/xpos/otg/e$a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 43
    :goto_4
    throw p1

    .line 44
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already opened."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public a(ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x5

    :cond_1
    or-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/16 p2, 0x12

    .line 97
    invoke-direct {p0, p2, p1}, Lcom/dspread/xpos/otg/e$a;->a(II)I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->v:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_0
    array-length v3, p1

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->x:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_0

    move-object v4, p1

    goto :goto_1

    .line 13
    :cond_0
    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->x:[B

    invoke-static {p1, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->x:[B

    .line 17
    :goto_1
    iget-object v5, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/dspread/xpos/otg/e$a;->B:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v3, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    .line 25
    invoke-static {}, Lcom/dspread/xpos/otg/e;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote amt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v1, v4

    goto :goto_0

    .line 26
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return v1
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v1}, Lcom/dspread/xpos/otg/e$a;->a(II)I

    .line 6
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    throw v1

    .line 10
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/dspread/xpos/otg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/e$a;->C:Lcom/dspread/xpos/otg/e;

    return-object v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
