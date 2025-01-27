.class public Lcom/dspread/xpos/otg/c$a;
.super Lcom/dspread/xpos/otg/d;
.source "Ch34xSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/otg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final G:I = 0x1388


# instance fields
.field private final A:I

.field private B:Z

.field private C:Z

.field private D:Landroid/hardware/usb/UsbEndpoint;

.field private E:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic F:Lcom/dspread/xpos/otg/c;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/otg/c;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/otg/c$a;->F:Lcom/dspread/xpos/otg/c;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/dspread/xpos/otg/d;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 3
    const/16 p1, 0x2580

    iput p1, p0, Lcom/dspread/xpos/otg/c$a;->A:I

    .line 5
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dspread/xpos/otg/c$a;->B:Z

    .line 6
    iput-boolean p1, p0, Lcom/dspread/xpos/otg/c$a;->C:Z

    return-void
.end method

.method private a(III)I
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x41

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private a(III[B)I
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v6, p4

    const/16 v1, 0xc0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;II[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    array-length v0, p4

    new-array v0, v0, [B

    .line 60
    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/dspread/xpos/otg/c$a;->a(III[B)I

    move-result p2

    const-string p3, "]"

    if-ltz p2, :cond_4

    .line 66
    array-length v2, p4

    const-string v3, " ["

    if-ne p2, v2, :cond_3

    .line 70
    :goto_0
    array-length p2, p4

    if-ge v1, p2, :cond_2

    .line 71
    aget p2, p4, v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    if-ne p2, v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p4, p4, v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " bytes, but get 0x"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-void

    .line 78
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p4, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, " bytes, but get "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Faild send cmd ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x3

    .line 6
    aget v3, v0, v2

    if-ne v3, p1, :cond_2

    add-int/lit8 p1, v2, 0x1

    .line 7
    aget p1, v0, p1

    const/16 v1, 0x1312

    const/16 v3, 0x9a

    invoke-direct {p0, v3, v1, p1}, Lcom/dspread/xpos/otg/c$a;->a(III)I

    move-result p1

    const-string v1, "Error setting baud rate. #1"

    if-ltz p1, :cond_1

    add-int/lit8 v2, v2, 0x2

    .line 11
    aget p1, v0, v2

    const/16 v0, 0xf2c

    invoke-direct {p0, v3, v0, p1}, Lcom/dspread/xpos/otg/c$a;->a(III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Baud rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " currently not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x960
        0xd901
        0x38
        0x12c0
        0x6402
        0x1f
        0x2580
        0xb202
        0x13
        0x4b00
        0xd902
        0xd
        0x9600
        0x6403
        0xa
        0x1c200
        0xcc03
        0x8
    .end array-data
.end method

.method private k()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-string v2, "init #1"

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/dspread/xpos/otg/c$a;->a(Ljava/lang/String;II[I)V

    .line 3
    const/16 v1, 0xa1

    invoke-direct {p0, v1, v4, v4}, Lcom/dspread/xpos/otg/c$a;->a(III)I

    move-result v2

    if-ltz v2, :cond_2

    .line 7
    const/16 v2, 0x2580

    invoke-direct {p0, v2}, Lcom/dspread/xpos/otg/c$a;->c(I)V

    .line 9
    new-array v3, v0, [I

    fill-array-data v3, :array_1

    const-string v4, "init #4"

    const/16 v5, 0x95

    const/16 v6, 0x2518

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/dspread/xpos/otg/c$a;->a(Ljava/lang/String;II[I)V

    const/16 v3, 0x9a

    const/16 v4, 0x50

    .line 11
    invoke-direct {p0, v3, v6, v4}, Lcom/dspread/xpos/otg/c$a;->a(III)I

    move-result v3

    if-ltz v3, :cond_1

    .line 15
    new-array v3, v0, [I

    fill-array-data v3, :array_2

    const-string v4, "init #6"

    const/16 v6, 0x706

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/dspread/xpos/otg/c$a;->a(Ljava/lang/String;II[I)V

    const/16 v3, 0x501f

    const v4, 0xd90a

    .line 17
    invoke-direct {p0, v1, v3, v4}, Lcom/dspread/xpos/otg/c$a;->a(III)I

    move-result v1

    if-ltz v1, :cond_0

    .line 21
    invoke-direct {p0, v2}, Lcom/dspread/xpos/otg/c$a;->c(I)V

    .line 23
    invoke-direct {p0}, Lcom/dspread/xpos/otg/c$a;->l()V

    .line 25
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const-string v1, "init #10"

    invoke-direct {p0, v1, v5, v6, v0}, Lcom/dspread/xpos/otg/c$a;->a(Ljava/lang/String;II[I)V

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #7"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xee
    .end array-data

    :array_3
    .array-data 4
        -0x1
        0xee
    .end array-data
.end method

.method private l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/c$a;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/dspread/xpos/otg/c$a;->C:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    not-int v0, v0

    const/16 v2, 0xa4

    invoke-direct {p0, v2, v0, v1}, Lcom/dspread/xpos/otg/c$a;->a(III)I

    move-result v0

    if-ltz v0, :cond_2

    return-void

    .line 2
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Faild to set handshake byte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/dspread/xpos/otg/c$a;->D:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 53
    monitor-exit v0

    return v1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-static {v2, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/c$a;->c(I)V

    return-void
.end method

.method public a(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_5

    .line 5
    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 p1, 0x0

    move v0, p1

    .line 8
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v3, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "claimInterface "

    if-eqz v1, :cond_0

    .line 11
    :try_start_1
    invoke-static {}, Lcom/dspread/xpos/otg/c;->c()Ljava/lang/String;

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

    .line 13
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/otg/c;->c()Ljava/lang/String;

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

    .line 11
    :goto_1
    nop

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 18
    :goto_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 19
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 21
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2

    .line 22
    iput-object v1, p0, Lcom/dspread/xpos/otg/c$a;->D:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_3

    .line 24
    :cond_2
    iput-object v1, p0, Lcom/dspread/xpos/otg/c$a;->E:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 30
    :cond_4
    invoke-direct {p0}, Lcom/dspread/xpos/otg/c$a;->k()V

    const/16 p1, 0x2580

    .line 31
    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/c$a;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 37
    :try_start_2
    invoke-virtual {p0}, Lcom/dspread/xpos/otg/c$a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 42
    :goto_4
    throw p1

    .line 43
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

    .line 81
    iput-boolean p1, p0, Lcom/dspread/xpos/otg/c$a;->B:Z

    .line 82
    invoke-direct {p0}, Lcom/dspread/xpos/otg/c$a;->l()V

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    iget-object v6, p0, Lcom/dspread/xpos/otg/c$a;->E:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v3, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    .line 25
    invoke-static {}, Lcom/dspread/xpos/otg/c;->c()Ljava/lang/String;

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

    .line 29
    iput-boolean p1, p0, Lcom/dspread/xpos/otg/c$a;->C:Z

    .line 30
    invoke-direct {p0}, Lcom/dspread/xpos/otg/c$a;->l()V

    return-void
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/c$a;->C:Z

    return v0
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/c$a;->B:Z

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

    .line 8
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-object v1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 11
    throw v0

    .line 12
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/dspread/xpos/otg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/c$a;->F:Lcom/dspread/xpos/otg/c;

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
