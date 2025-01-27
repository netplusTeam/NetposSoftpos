.class Lcom/dspread/xpos/otg/h$a;
.super Lcom/dspread/xpos/otg/d;
.source "ProlificSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/otg/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static final P:I = 0x3e8

.field private static final Q:I = 0x1388

.field private static final R:I = 0x1

.field private static final S:I = 0x1

.field private static final T:I = 0x1

.field private static final U:I = 0x40

.field private static final V:I = 0xc0

.field private static final W:I = 0x21

.field private static final X:I = 0x2

.field private static final Y:I = 0x83

.field private static final Z:I = 0x81

.field private static final a0:I = 0x8

.field private static final b0:I = 0x9

.field private static final c0:I = 0x20

.field private static final d0:I = 0x22

.field private static final e0:I = 0x1

.field private static final f0:I = 0x2

.field private static final g0:I = 0x1

.field private static final h0:I = 0x2

.field private static final i0:I = 0x8

.field private static final j0:I = 0x80

.field private static final k0:I = 0xa

.field private static final l0:I = 0x8

.field private static final m0:I = 0x0

.field private static final n0:I = 0x1

.field private static final o0:I = 0x2


# instance fields
.field private A:I

.field private B:Landroid/hardware/usb/UsbEndpoint;

.field private C:Landroid/hardware/usb/UsbEndpoint;

.field private D:Landroid/hardware/usb/UsbEndpoint;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private volatile K:Ljava/lang/Thread;

.field private final L:Ljava/lang/Object;

.field M:Z

.field private N:Ljava/io/IOException;

.field final synthetic O:Lcom/dspread/xpos/otg/h;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/otg/h;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/otg/h$a;->O:Lcom/dspread/xpos/otg/h;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/dspread/xpos/otg/d;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 3
    const/4 p1, 0x0

    iput p1, p0, Lcom/dspread/xpos/otg/h$a;->A:I

    .line 9
    iput p1, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    .line 11
    const/4 p2, -0x1

    iput p2, p0, Lcom/dspread/xpos/otg/h$a;->F:I

    iput p2, p0, Lcom/dspread/xpos/otg/h$a;->G:I

    iput p2, p0, Lcom/dspread/xpos/otg/h$a;->H:I

    iput p2, p0, Lcom/dspread/xpos/otg/h$a;->I:I

    .line 13
    iput p1, p0, Lcom/dspread/xpos/otg/h$a;->J:I

    .line 14
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/dspread/xpos/otg/h$a;->K:Ljava/lang/Thread;

    .line 15
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/dspread/xpos/otg/h$a;->L:Ljava/lang/Object;

    .line 16
    iput-boolean p1, p0, Lcom/dspread/xpos/otg/h$a;->M:Z

    .line 17
    iput-object p2, p0, Lcom/dspread/xpos/otg/h$a;->N:Ljava/io/IOException;

    return-void
.end method

.method private final a(IIII[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move v1, v0

    goto :goto_0

    .line 10
    :cond_0
    array-length v1, p5

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v9, 0x1388

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 14
    :cond_1
    new-instance p2, Ljava/io/IOException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p4, p3

    .line 17
    const-string p1, "ControlTransfer with value 0x%x failed: %d"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final a(III[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/16 v1, 0x21

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dspread/xpos/otg/h$a;->a(IIII[B)V

    return-void
.end method

.method private final a(II[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/16 v1, 0x40

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dspread/xpos/otg/h$a;->a(IIII[B)V

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/otg/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/otg/h$a;->m()V

    return-void
.end method

.method private final a(III)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    const/16 v1, 0xc0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dspread/xpos/otg/h$a;->a(IIIII)[B

    move-result-object p1

    return-object p1
.end method

.method private final a(IIIII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-array v8, p5, [B

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v7, 0x3e8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, p5, :cond_0

    return-object v8

    .line 6
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x0

    aput-object p3, p4, p5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p4, p3

    .line 9
    const-string p1, "ControlTransfer with value 0x%x failed: %d"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/dspread/xpos/otg/h$a;->a(III[B)V

    .line 2
    iput p1, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    return-void
.end method

.method private final d(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/dspread/xpos/otg/h$a;->l()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private k()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const v0, 0x8484

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/dspread/xpos/otg/h$a;->a(III)[B

    .line 2
    const/16 v3, 0x404

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/dspread/xpos/otg/h$a;->a(II[B)V

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/dspread/xpos/otg/h$a;->a(III)[B

    .line 4
    const v5, 0x8383

    invoke-direct {p0, v5, v1, v2}, Lcom/dspread/xpos/otg/h$a;->a(III)[B

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/dspread/xpos/otg/h$a;->a(III)[B

    .line 6
    invoke-direct {p0, v3, v2, v4}, Lcom/dspread/xpos/otg/h$a;->a(II[B)V

    .line 7
    invoke-direct {p0, v0, v1, v2}, Lcom/dspread/xpos/otg/h$a;->a(III)[B

    .line 8
    invoke-direct {p0, v5, v1, v2}, Lcom/dspread/xpos/otg/h$a;->a(III)[B

    .line 9
    invoke-direct {p0, v1, v2, v4}, Lcom/dspread/xpos/otg/h$a;->a(II[B)V

    .line 10
    invoke-direct {p0, v2, v1, v4}, Lcom/dspread/xpos/otg/h$a;->a(II[B)V

    .line 11
    iget v0, p0, Lcom/dspread/xpos/otg/h$a;->A:I

    if-nez v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, v4}, Lcom/dspread/xpos/otg/h$a;->a(II[B)V

    return-void
.end method

.method private final l()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/h$a;->K:Ljava/lang/Thread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dspread/xpos/otg/h$a;->N:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/otg/h$a;->L:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/h$a;->K:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 4
    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 5
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/dspread/xpos/otg/h$a;->D:Landroid/hardware/usb/UsbEndpoint;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/dspread/xpos/otg/h$a;->O:Lcom/dspread/xpos/otg/h;

    invoke-static {v1}, Lcom/dspread/xpos/otg/h;->a(Lcom/dspread/xpos/otg/h;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not read initial CTS / DSR / CD / RI status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 12
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/dspread/xpos/otg/h$a;->J:I

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/dspread/xpos/otg/h$a$a;

    invoke-direct {v2, p0}, Lcom/dspread/xpos/otg/h$a$a;-><init>(Lcom/dspread/xpos/otg/h$a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/dspread/xpos/otg/h$a;->K:Ljava/lang/Thread;

    .line 21
    iget-object v1, p0, Lcom/dspread/xpos/otg/h$a;->K:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 22
    iget-object v1, p0, Lcom/dspread/xpos/otg/h$a;->K:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 24
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/otg/h$a;->N:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 34
    iget v0, p0, Lcom/dspread/xpos/otg/h$a;->J:I

    return v0

    :cond_3
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/dspread/xpos/otg/h$a;->N:Ljava/io/IOException;

    .line 36
    throw v0
.end method

.method private final m()V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/h$a;->M:Z

    if-nez v0, :cond_2

    .line 2
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 3
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/dspread/xpos/otg/h$a;->D:Landroid/hardware/usb/UsbEndpoint;

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    if-lez v2, :cond_0

    if-ne v2, v0, :cond_1

    const/16 v0, 0x8

    .line 9
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/dspread/xpos/otg/h$a;->J:I

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid CTS / DSR / CD / RI status buffer received, expected %d bytes, but received %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    .line 15
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 22
    iput-object v0, p0, Lcom/dspread/xpos/otg/h$a;->N:Ljava/io/IOException;

    :cond_2
    return-void
.end method

.method private n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/dspread/xpos/otg/h$a;->a(ZZ)Z

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/dspread/xpos/otg/h$a;->B:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 116
    monitor-exit v0

    return v1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-static {v2, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcom/dspread/xpos/otg/h$a;->F:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/dspread/xpos/otg/h$a;->G:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/dspread/xpos/otg/h$a;->H:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/dspread/xpos/otg/h$a;->I:I

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 127
    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    .line 129
    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 130
    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 131
    const/4 v4, 0x2

    aput-byte v1, v0, v4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 132
    const/4 v5, 0x3

    aput-byte v1, v0, v5

    const/4 v1, 0x4

    if-eq p3, v3, :cond_3

    if-eq p3, v4, :cond_2

    if-ne p3, v5, :cond_1

    .line 140
    aput-byte v3, v0, v1

    goto :goto_0

    .line 148
    :cond_1
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

    :cond_2
    nop

    .line 149
    aput-byte v4, v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 150
    aput-byte v2, v0, v1

    :goto_0
    const/4 v6, 0x5

    packed-switch p4, :pswitch_data_0

    .line 187
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
    nop

    .line 188
    aput-byte v1, v0, v6

    goto :goto_1

    :pswitch_1
    nop

    .line 189
    aput-byte v5, v0, v6

    goto :goto_1

    :pswitch_2
    nop

    .line 190
    aput-byte v4, v0, v6

    goto :goto_1

    :pswitch_3
    nop

    .line 191
    aput-byte v3, v0, v6

    goto :goto_1

    :pswitch_4
    nop

    .line 192
    aput-byte v2, v0, v6

    :goto_1
    int-to-byte v1, p2

    const/4 v3, 0x6

    .line 215
    aput-byte v1, v0, v3

    const/16 v1, 0x20

    .line 217
    invoke-direct {p0, v1, v2, v2, v0}, Lcom/dspread/xpos/otg/h$a;->a(III[B)V

    .line 219
    invoke-direct {p0}, Lcom/dspread/xpos/otg/h$a;->n()V

    .line 221
    iput p1, p0, Lcom/dspread/xpos/otg/h$a;->F:I

    .line 222
    iput p2, p0, Lcom/dspread/xpos/otg/h$a;->G:I

    .line 223
    iput p3, p0, Lcom/dspread/xpos/otg/h$a;->H:I

    .line 224
    iput p4, p0, Lcom/dspread/xpos/otg/h$a;->I:I

    return-void

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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_9

    .line 25
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 27
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 31
    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    move v3, v1

    .line 34
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_3

    .line 35
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v6

    if-eq v6, v5, :cond_2

    const/16 v5, 0x81

    if-eq v6, v5, :cond_1

    const/16 v5, 0x83

    if-eq v6, v5, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    iput-object v4, p0, Lcom/dspread/xpos/otg/h$a;->B:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 47
    :cond_1
    iput-object v4, p0, Lcom/dspread/xpos/otg/h$a;->D:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 48
    :cond_2
    iput-object v4, p0, Lcom/dspread/xpos/otg/h$a;->C:Landroid/hardware/usb/UsbEndpoint;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_3
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 58
    iput v2, p0, Lcom/dspread/xpos/otg/h$a;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 61
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRawDescriptors"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    new-array v4, v1, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x7

    .line 65
    aget-byte v2, v2, v3

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    .line 67
    iput v1, p0, Lcom/dspread/xpos/otg/h$a;->A:I

    goto :goto_3

    .line 68
    :cond_5
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    .line 69
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_6

    goto :goto_2

    .line 72
    :cond_6
    iget-object v2, p0, Lcom/dspread/xpos/otg/h$a;->O:Lcom/dspread/xpos/otg/h;

    invoke-static {v2}, Lcom/dspread/xpos/otg/h;->a(Lcom/dspread/xpos/otg/h;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not detect PL2303 subtype, Assuming that it is a HX device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput v1, p0, Lcom/dspread/xpos/otg/h$a;->A:I

    goto :goto_3

    :cond_7
    :goto_2
    nop

    .line 75
    iput v5, p0, Lcom/dspread/xpos/otg/h$a;->A:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 87
    :try_start_2
    iget-object v2, p0, Lcom/dspread/xpos/otg/h$a;->O:Lcom/dspread/xpos/otg/h;

    invoke-static {v2}, Lcom/dspread/xpos/otg/h;->a(Lcom/dspread/xpos/otg/h;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "An unexpected exception occured while trying to detect PL2303 subtype"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v2

    .line 88
    iget-object v2, p0, Lcom/dspread/xpos/otg/h$a;->O:Lcom/dspread/xpos/otg/h;

    invoke-static {v2}, Lcom/dspread/xpos/otg/h;->a(Lcom/dspread/xpos/otg/h;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Method UsbDeviceConnection.getRawDescriptors, required for PL2303 subtype detection, not available! Assuming that it is a HX device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput v1, p0, Lcom/dspread/xpos/otg/h$a;->A:I

    .line 98
    :goto_3
    iget v1, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    invoke-direct {p0, v1}, Lcom/dspread/xpos/otg/h$a;->c(I)V

    .line 99
    invoke-direct {p0}, Lcom/dspread/xpos/otg/h$a;->n()V

    .line 101
    invoke-direct {p0}, Lcom/dspread/xpos/otg/h$a;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 105
    iput-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 106
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 108
    throw v1

    .line 109
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error claiming Prolific interface 0"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_9
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

    if-eqz p1, :cond_0

    .line 226
    iget p1, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iget p1, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    and-int/lit8 p1, p1, -0x2

    .line 230
    :goto_0
    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/h$a;->c(I)V

    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/dspread/xpos/otg/h$a;->d(I)Z

    move-result v0

    return v0
.end method

.method public a(ZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    .line 231
    invoke-direct {p0, v2, v1, v0}, Lcom/dspread/xpos/otg/h$a;->a(II[B)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 v2, 0x9

    .line 235
    invoke-direct {p0, v2, v1, v0}, Lcom/dspread/xpos/otg/h$a;->a(II[B)V

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
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

    iget-object v6, p0, Lcom/dspread/xpos/otg/h$a;->C:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v3, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    add-int/2addr v1, v4

    goto :goto_0

    .line 22
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

    .line 23
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

    if-eqz p1, :cond_0

    .line 25
    iget p1, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 27
    :cond_0
    iget p1, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    and-int/lit8 p1, p1, -0x3

    .line 29
    :goto_0
    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/h$a;->c(I)V

    return-void
.end method

.method public b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget v0, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/dspread/xpos/otg/h$a;->E:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/dspread/xpos/otg/h$a;->M:Z

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/otg/h$a;->L:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/dspread/xpos/otg/h$a;->K:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 9
    :try_start_2
    iget-object v3, p0, Lcom/dspread/xpos/otg/h$a;->K:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 11
    :try_start_3
    iget-object v4, p0, Lcom/dspread/xpos/otg/h$a;->O:Lcom/dspread/xpos/otg/h;

    invoke-static {v4}, Lcom/dspread/xpos/otg/h;->a(Lcom/dspread/xpos/otg/h;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "An error occured while waiting for status read thread"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    :try_start_4
    invoke-direct {p0}, Lcom/dspread/xpos/otg/h$a;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 18
    :try_start_5
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 20
    iput-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 21
    throw v0

    :catchall_1
    move-exception v3

    .line 22
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 26
    :try_start_8
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 28
    iput-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 30
    throw v0

    :catchall_3
    move-exception v0

    .line 31
    iput-object v2, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 32
    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/dspread/xpos/otg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/h$a;->O:Lcom/dspread/xpos/otg/h;

    return-object v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dspread/xpos/otg/h$a;->d(I)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/dspread/xpos/otg/h$a;->d(I)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dspread/xpos/otg/h$a;->d(I)Z

    move-result v0

    return v0
.end method
