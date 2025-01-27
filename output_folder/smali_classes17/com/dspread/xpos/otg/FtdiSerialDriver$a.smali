.class Lcom/dspread/xpos/otg/FtdiSerialDriver$a;
.super Lcom/dspread/xpos/otg/d;
.source "FtdiSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/otg/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field public static final F:I = 0x0

.field public static final G:I = 0x0

.field public static final H:I = 0x0

.field public static final I:I = 0x0

.field public static final J:I = 0x0

.field public static final K:I = 0x1

.field public static final L:I = 0x2

.field public static final M:I = 0x3

.field public static final N:I = 0x80

.field public static final O:I = 0x0

.field public static final P:I = 0x1388

.field public static final Q:I = 0x1388

.field private static final R:I = 0x0

.field private static final S:I = 0x1

.field private static final T:I = 0x2

.field private static final U:I = 0x3

.field private static final V:I = 0x4

.field private static final W:I = 0x0

.field private static final X:I = 0x1

.field private static final Y:I = 0x2

.field public static final Z:I = 0x40

.field public static final a0:I = 0xc0

.field private static final b0:I = 0x2

.field private static final c0:Z = false


# instance fields
.field private final A:Ljava/lang/String;

.field private B:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

.field private C:I

.field private D:I

.field final synthetic E:Lcom/dspread/xpos/otg/FtdiSerialDriver;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/otg/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->E:Lcom/dspread/xpos/otg/FtdiSerialDriver;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/dspread/xpos/otg/d;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 3
    const-class p1, Lcom/dspread/xpos/otg/FtdiSerialDriver;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->A:Ljava/lang/String;

    .line 7
    const/4 p1, 0x0

    iput p1, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->C:I

    .line 9
    const/16 p1, 0x40

    iput p1, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->D:I

    return-void
.end method

.method private final a([B[BII)I
    .locals 6

    .line 1
    div-int v0, p3, p4

    rem-int v1, p3, p4

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v0, v3

    :goto_1
    if-ge v2, v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v3, v1, -0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v3, p4, -0x2

    :goto_2
    if-lez v3, :cond_2

    mul-int v4, v2, p4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, p4, -0x2

    mul-int/2addr v5, v2

    .line 7
    invoke-static {p1, v4, p2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    return p3
.end method

.method private c(I)[J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x16e3600

    div-int v3, v2, v1

    .line 5
    const/16 v4, 0x8

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x10

    const/4 v12, 0x2

    if-ge v7, v12, :cond_9

    add-int v13, v3, v7

    const v14, 0x1ffff

    const/16 v15, 0xc

    if-gt v13, v4, :cond_0

    move v13, v4

    goto :goto_1

    .line 17
    :cond_0
    iget-object v12, v0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->B:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

    sget-object v6, Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

    if-eq v12, v6, :cond_1

    if-ge v13, v15, :cond_1

    move v13, v15

    goto :goto_1

    :cond_1
    if-ge v3, v11, :cond_2

    move v13, v11

    goto :goto_1

    :cond_2
    if-ne v12, v6, :cond_3

    goto :goto_1

    :cond_3
    if-le v13, v14, :cond_4

    move v13, v14

    :cond_4
    :goto_1
    nop

    .line 36
    div-int/lit8 v6, v13, 0x2

    add-int/2addr v6, v2

    div-int/2addr v6, v13

    if-ge v6, v1, :cond_5

    sub-int v12, v1, v6

    goto :goto_2

    :cond_5
    sub-int v12, v6, v1

    :goto_2
    if-eqz v7, :cond_6

    if-ge v12, v8, :cond_8

    :cond_6
    move v10, v6

    if-nez v12, :cond_7

    move v9, v13

    goto :goto_3

    :cond_7
    move v8, v12

    move v9, v13

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    shr-int/lit8 v1, v9, 0x3

    and-int/lit8 v2, v9, 0x7

    .line 58
    aget v2, v5, v2

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v5, 0x1

    cmp-long v3, v1, v5

    const-wide/16 v7, 0x0

    if-nez v3, :cond_a

    move-wide v1, v7

    goto :goto_4

    :cond_a
    const-wide/16 v12, 0x4001

    cmp-long v3, v1, v12

    if-nez v3, :cond_b

    move-wide v1, v5

    :cond_b
    :goto_4
    const-wide/32 v5, 0xffff

    and-long v12, v1, v5

    .line 69
    iget-object v3, v0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->B:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

    sget-object v9, Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

    if-eq v3, v9, :cond_d

    sget-object v9, Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

    if-eq v3, v9, :cond_d

    sget-object v9, Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;->TYPE_4232H:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

    if-ne v3, v9, :cond_c

    goto :goto_5

    :cond_c
    shr-long/2addr v1, v11

    and-long/2addr v1, v5

    goto :goto_6

    :cond_d
    :goto_5
    shr-long/2addr v1, v4

    and-long/2addr v1, v5

    const-wide/32 v3, 0xff00

    and-long/2addr v1, v3

    or-long/2addr v1, v7

    .line 79
    :goto_6
    const/4 v3, 0x3

    new-array v3, v3, [J

    int-to-long v4, v10

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    aput-wide v1, v3, v4

    const/4 v1, 0x2

    aput-wide v12, v3, v1

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x2
        0x4
        0x1
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private d(I)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->c(I)[J

    move-result-object p1

    .line 3
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    .line 4
    const/4 v2, 0x1

    aget-wide v2, p1, v2

    .line 5
    const/4 v4, 0x2

    aget-wide v4, p1, v4

    .line 6
    iget-object v6, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    long-to-int v9, v4

    long-to-int v10, v2

    const/16 v7, 0x40

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1388

    invoke-virtual/range {v6 .. v13}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_0

    long-to-int p1, v0

    return p1

    .line 10
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting baudrate failed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 31
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    array-length v2, p1

    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->w:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 65
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-virtual {v3, v0, v4, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    invoke-direct {p0, v2, p1, p2, v0}, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->a([B[BII)I

    move-result p1

    monitor-exit v1

    return p1

    .line 73
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Expected at least 2 bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->d(I)I

    packed-switch p4, :pswitch_data_0

    .line 99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown parity value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    or-int/lit16 p1, p2, 0x400

    goto :goto_0

    :pswitch_1
    or-int/lit16 p1, p2, 0x300

    goto :goto_0

    :pswitch_2
    or-int/lit16 p1, p2, 0x200

    goto :goto_0

    :pswitch_3
    or-int/lit16 p1, p2, 0x100

    goto :goto_0

    :pswitch_4
    or-int/lit8 p1, p2, 0x0

    :goto_0
    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    const/4 p2, 0x3

    if-ne p3, p2, :cond_0

    or-int/lit16 p1, p1, 0x800

    move v3, p1

    goto :goto_2

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown stopBits value: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    or-int/lit16 p1, p1, 0x1000

    goto :goto_1

    :cond_2
    or-int/lit8 p1, p1, 0x0

    :goto_1
    move v3, p1

    .line 116
    :goto_2
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 120
    :cond_3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Setting parameters failed: result="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_2

    .line 11
    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v0, 0x0

    .line 15
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "claimInterface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error claiming interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 26
    invoke-virtual {p0}, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->close()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 29
    throw p1

    .line 30
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already open"

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Flushing RX failed: result="

    if-eqz p1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 129
    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public b([BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    move v2, v1

    .line 4
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 8
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->v:Ljava/lang/Object;

    monitor-enter v3

    .line 11
    :try_start_0
    array-length v4, p1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/dspread/xpos/otg/d;->x:[B

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-nez v2, :cond_0

    move-object v5, p1

    goto :goto_1

    .line 16
    :cond_0
    iget-object v5, p0, Lcom/dspread/xpos/otg/d;->x:[B

    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v5, p0, Lcom/dspread/xpos/otg/d;->x:[B

    .line 20
    :goto_1
    iget-object v6, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v6, v0, v5, v4, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v5

    .line 22
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_1

    .line 29
    iget-object v3, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->A:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrote amtWritten="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attempted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v5

    goto :goto_0

    .line 30
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 31
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return v2
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

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

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
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput-object v1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 8
    throw v0

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/dspread/xpos/otg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->E:Lcom/dspread/xpos/otg/FtdiSerialDriver;

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

.method public k()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    sget-object v0, Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;->TYPE_R:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

    iput-object v0, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;->B:Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;

    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset failed: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
