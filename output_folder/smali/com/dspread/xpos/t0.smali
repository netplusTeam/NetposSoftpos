.class public Lcom/dspread/xpos/t0;
.super Lcom/dspread/xpos/Vpos;
.source "VPosOTG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/t0$c;,
        Lcom/dspread/xpos/t0$d;
    }
.end annotation


# static fields
.field private static k0:Lcom/dspread/xpos/otg/k; = null

.field private static final l0:I = 0x2800

.field private static m0:Z = false

.field private static n0:Lcom/dspread/xpos/t0;


# instance fields
.field private P:Ljava/lang/Object;

.field private Q:Lcom/dspread/xpos/otg/SerialInputOutputManager;

.field private R:[B

.field private S:I

.field private T:Z

.field private U:Landroid/hardware/usb/UsbManager;

.field private V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

.field private final W:Lcom/dspread/xpos/otg/SerialInputOutputManager$a;

.field private X:Z

.field private Y:Ljava/lang/String;

.field Z:Z

.field private a0:I

.field private b0:I

.field private c0:[B

.field private d0:Z

.field private e0:Lcom/dspread/xpos/otg/j;

.field private f0:Lcom/dspread/xpos/otg/a;

.field private g0:Z

.field private h0:Lcom/dspread/xpos/t0$c;

.field private i0:Landroid/hardware/usb/UsbDevice;

.field private j0:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/t0;->P:Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/t0;->Q:Lcom/dspread/xpos/otg/SerialInputOutputManager;

    .line 6
    const/16 v0, 0x2800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/t0;->R:[B

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/t0;->S:I

    .line 9
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->T:Z

    .line 32
    new-instance v1, Lcom/dspread/xpos/t0$a;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/t0$a;-><init>(Lcom/dspread/xpos/t0;)V

    iput-object v1, p0, Lcom/dspread/xpos/t0;->W:Lcom/dspread/xpos/otg/SerialInputOutputManager$a;

    .line 64
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->X:Z

    .line 73
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->Z:Z

    .line 105
    iput v0, p0, Lcom/dspread/xpos/t0;->a0:I

    .line 106
    iput v0, p0, Lcom/dspread/xpos/t0;->b0:I

    .line 107
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/t0;->c0:[B

    .line 345
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->d0:Z

    .line 487
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->g0:Z

    .line 789
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/t0;->j0:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic F()Lcom/dspread/xpos/t0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/t0;->n0:Lcom/dspread/xpos/t0;

    return-object v0
.end method

.method static synthetic G()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/dspread/xpos/t0;->m0:Z

    return v0
.end method

.method private H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    sget-object v1, Lcom/dspread/xpos/QPOSService$UsbOTGDriver;->CH34XU:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/t0;->f0:Lcom/dspread/xpos/otg/a;

    if-nez v0, :cond_0

    .line 3
    sput-boolean v2, Lcom/dspread/xpos/t0;->m0:Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/dspread/xpos/otg/a;->a()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->S()V

    .line 12
    :try_start_0
    sget-object v0, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    if-nez v0, :cond_2

    .line 13
    sput-boolean v2, Lcom/dspread/xpos/t0;->m0:Z

    return-void

    .line 16
    :cond_2
    invoke-interface {v0}, Lcom/dspread/xpos/otg/k;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    .line 22
    sput-boolean v2, Lcom/dspread/xpos/t0;->m0:Z

    return-void
.end method

.method public static J()Lcom/dspread/xpos/t0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/t0;->n0:Lcom/dspread/xpos/t0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/t0;

    invoke-direct {v0}, Lcom/dspread/xpos/t0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/t0;->n0:Lcom/dspread/xpos/t0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/t0;->n0:Lcom/dspread/xpos/t0;

    return-object v0
.end method

.method private K()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->S()V

    .line 2
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->R()V

    return-void
.end method

.method private L()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/dspread/xpos/t0$b;->a:[I

    iget-object v2, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 23
    new-instance v0, Lcom/dspread/xpos/otg/b;

    iget-object v2, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v2}, Lcom/dspread/xpos/otg/b;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/t0;->e0:Lcom/dspread/xpos/otg/j;

    goto :goto_0

    .line 24
    :pswitch_0
    new-instance v0, Lcom/dspread/xpos/otg/h;

    iget-object v2, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v2}, Lcom/dspread/xpos/otg/h;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/t0;->e0:Lcom/dspread/xpos/otg/j;

    goto :goto_0

    .line 25
    :pswitch_1
    new-instance v0, Lcom/dspread/xpos/otg/e;

    iget-object v2, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v2}, Lcom/dspread/xpos/otg/e;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/t0;->e0:Lcom/dspread/xpos/otg/j;

    goto :goto_0

    .line 26
    :pswitch_2
    new-instance v0, Lcom/dspread/xpos/otg/b;

    iget-object v2, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v2}, Lcom/dspread/xpos/otg/b;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/t0;->e0:Lcom/dspread/xpos/otg/j;

    goto :goto_0

    .line 27
    :pswitch_3
    new-instance v0, Lcom/dspread/xpos/otg/c;

    iget-object v2, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v2}, Lcom/dspread/xpos/otg/c;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/t0;->e0:Lcom/dspread/xpos/otg/j;

    goto :goto_0

    .line 28
    :pswitch_4
    new-instance v0, Lcom/dspread/xpos/otg/FtdiSerialDriver;

    iget-object v2, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v2}, Lcom/dspread/xpos/otg/FtdiSerialDriver;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/t0;->e0:Lcom/dspread/xpos/otg/j;

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/t0;->e0:Lcom/dspread/xpos/otg/j;

    invoke-interface {v0}, Lcom/dspread/xpos/otg/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dspread/xpos/otg/k;

    sput-object v0, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sPort"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====device:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    invoke-interface {v2}, Lcom/dspread/xpos/otg/k;->d()Lcom/dspread/xpos/otg/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/dspread/xpos/otg/j;->b()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/dspread/xpos/t0;->U:Landroid/hardware/usb/UsbManager;

    sget-object v2, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    invoke-interface {v2}, Lcom/dspread/xpos/otg/k;->d()Lcom/dspread/xpos/otg/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/dspread/xpos/otg/j;->b()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "Opening device failed==="

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return v1

    .line 64
    :cond_1
    :try_start_0
    sget-object v2, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    invoke-interface {v2, v0}, Lcom/dspread/xpos/otg/k;->a(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 65
    sget-object v0, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    const v2, 0x1c200

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/dspread/xpos/otg/k;->a(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->K()V

    return v4

    :catch_0
    move-exception v0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTG USB OPEN EXC e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    if-eqz v0, :cond_2

    .line 100
    :try_start_1
    invoke-interface {v0}, Lcom/dspread/xpos/otg/k;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private M()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/dspread/xpos/otg/a;

    iget-object v3, p0, Lcom/dspread/xpos/t0;->U:Landroid/hardware/usb/UsbManager;

    .line 8
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/dspread/xpos/otg/a;-><init>(Landroid/hardware/usb/UsbManager;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dspread/xpos/t0;->f0:Lcom/dspread/xpos/otg/a;

    .line 11
    iget-object v1, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/otg/a;->a(Landroid/hardware/usb/UsbDevice;)V

    .line 13
    iget-object v1, p0, Lcom/dspread/xpos/t0;->f0:Lcom/dspread/xpos/otg/a;

    iget-object v2, v1, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/dspread/xpos/otg/a;->e()Z

    .line 17
    iget-object v3, p0, Lcom/dspread/xpos/t0;->f0:Lcom/dspread/xpos/otg/a;

    const v4, 0x1c200

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/dspread/xpos/otg/a;->a(IBBBB)Z

    .line 19
    new-instance v1, Lcom/dspread/xpos/t0$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dspread/xpos/t0$d;-><init>(Lcom/dspread/xpos/t0;Lcom/dspread/xpos/t0$a;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    nop

    :goto_0
    return v0
.end method

.method private N()[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-boolean v2, p0, Lcom/dspread/xpos/t0;->T:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move v2, v0

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    sget-object v4, Lcom/dspread/xpos/QPOSService$UsbOTGDriver;->CH34XU:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    if-eq v3, v4, :cond_1

    .line 13
    sget-object v3, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    if-nez v3, :cond_1

    .line 14
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 16
    new-array v0, v0, [B

    return-object v0

    .line 20
    :cond_1
    iget v3, p0, Lcom/dspread/xpos/t0;->S:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    new-array v5, v3, [B

    if-lez v3, :cond_3

    if-eq v3, v2, :cond_3

    .line 26
    iget-object v2, p0, Lcom/dspread/xpos/t0;->R:[B

    invoke-static {v2, v0, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    const/4 v2, 0x3

    if-le v3, v2, :cond_7

    .line 31
    iget-object v2, p0, Lcom/dspread/xpos/t0;->R:[B

    aget-byte v6, v2, v0

    const/16 v7, 0x4d

    if-eq v6, v7, :cond_4

    aget-byte v5, v5, v0

    if-eq v5, v7, :cond_4

    .line 32
    iget v1, p0, Lcom/dspread/xpos/t0;->S:I

    new-array v3, v1, [B

    .line 33
    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    .line 36
    aget-byte v5, v2, v5

    if-gez v5, :cond_5

    add-int/lit16 v5, v5, 0x100

    .line 40
    :cond_5
    aget-byte v4, v2, v4

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x4

    if-ne v5, v3, :cond_6

    .line 44
    new-array v1, v3, [B

    .line 45
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    if-ge v5, v3, :cond_7

    :goto_1
    goto :goto_2

    .line 51
    :cond_7
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 52
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 53
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_8
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    new-array v1, v0, [B

    .line 68
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-object v1
.end method

.method private O()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-boolean v2, p0, Lcom/dspread/xpos/t0;->T:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move v2, v0

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    sget-object v4, Lcom/dspread/xpos/QPOSService$UsbOTGDriver;->CH34XU:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    if-eq v3, v4, :cond_1

    .line 13
    sget-object v3, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    if-nez v3, :cond_1

    .line 14
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 16
    new-array v0, v0, [B

    return-object v0

    .line 20
    :cond_1
    iget v3, p0, Lcom/dspread/xpos/t0;->S:I

    if-lez v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 22
    new-array v2, v3, [B

    .line 23
    iget-object v4, p0, Lcom/dspread/xpos/t0;->R:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 28
    iget-object v2, p0, Lcom/dspread/xpos/t0;->R:[B

    aget-byte v4, v2, v0

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    .line 31
    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit16 v4, v4, 0x100

    :cond_4
    const/4 v5, 0x1

    .line 35
    aget-byte v5, v2, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    if-ne v4, v3, :cond_5

    .line 39
    new-array v1, v3, [B

    .line 40
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    if-ge v4, v3, :cond_6

    goto :goto_1

    .line 46
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 48
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_7
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    new-array v1, v0, [B

    .line 61
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-object v1
.end method

.method private P()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    sget-object v2, Lcom/dspread/xpos/QPOSService$UsbOTGDriver;->CH34XU:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    if-eq v1, v2, :cond_0

    .line 2
    sget-object v1, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    if-nez v1, :cond_0

    .line 3
    const-string v1, "mConnService is null"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    iget v1, p0, Lcom/dspread/xpos/t0;->S:I

    if-lez v1, :cond_1

    .line 8
    iget v2, p0, Lcom/dspread/xpos/t0;->b0:I

    if-eq v1, v2, :cond_1

    .line 9
    new-array v2, v1, [B

    .line 10
    iget-object v3, p0, Lcom/dspread/xpos/t0;->R:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :cond_1
    iput v1, p0, Lcom/dspread/xpos/t0;->b0:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    .line 15
    iget-object v2, p0, Lcom/dspread/xpos/t0;->R:[B

    aget-byte v3, v2, v0

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    .line 16
    iget-object v0, p0, Lcom/dspread/xpos/t0;->c0:[B

    return-object v0

    :cond_2
    const/4 v3, 0x2

    .line 18
    aget-byte v3, v2, v3

    iput v3, p0, Lcom/dspread/xpos/t0;->a0:I

    if-gez v3, :cond_3

    add-int/lit16 v3, v3, 0x100

    .line 20
    iput v3, p0, Lcom/dspread/xpos/t0;->a0:I

    .line 22
    :cond_3
    iget v3, p0, Lcom/dspread/xpos/t0;->a0:I

    const/4 v4, 0x1

    aget-byte v5, v2, v4

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    .line 23
    iput v3, p0, Lcom/dspread/xpos/t0;->a0:I

    if-ne v3, v1, :cond_4

    .line 26
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/dspread/xpos/t0;->c0:[B

    .line 27
    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    if-ge v3, v1, :cond_5

    .line 29
    new-array v0, v4, [B

    return-object v0

    .line 32
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 34
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/t0;->c0:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 37
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/t0;->c0:[B

    .line 40
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/t0;->c0:[B

    return-object v0
.end method

.method private Q()[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/t0;->T:Z

    if-nez v2, :cond_0

    .line 4
    const-string v2, "Read:!isWrite"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x2

    .line 7
    new-array v3, v2, [B

    move v4, v0

    .line 11
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    sget-object v6, Lcom/dspread/xpos/QPOSService$UsbOTGDriver;->CH34XU:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    if-eq v5, v6, :cond_2

    .line 12
    sget-object v5, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    if-nez v5, :cond_2

    .line 13
    const-string v2, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    new-array v0, v0, [B

    return-object v0

    .line 22
    :cond_3
    iget v5, p0, Lcom/dspread/xpos/t0;->S:I

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x6

    if-lt v5, v6, :cond_9

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "head[0]  == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/t0;->R:[B

    aget-byte v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 29
    iget-object v4, p0, Lcom/dspread/xpos/t0;->R:[B

    aget-byte v5, v4, v0

    const/16 v6, 0x44

    if-eq v5, v6, :cond_5

    .line 30
    const-string v1, "head[0] != \'D\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 31
    new-array v0, v0, [B

    return-object v0

    :cond_5
    nop

    .line 34
    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x50

    if-eq v4, v5, :cond_6

    .line 35
    const-string v1, "head[1] != \'P\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 36
    new-array v0, v0, [B

    return-object v0

    :cond_6
    const/4 v4, 0x4

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_8

    .line 41
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 42
    const-string/jumbo v1, "\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f66"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 43
    new-array v0, v0, [B

    return-object v0

    .line 45
    :cond_7
    iget-object v6, p0, Lcom/dspread/xpos/t0;->R:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_1

    .line 47
    :cond_8
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 51
    :cond_9
    iget v5, p0, Lcom/dspread/xpos/t0;->S:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_a

    if-nez v4, :cond_1

    :cond_a
    add-int/lit8 v6, v4, 0xc

    if-ne v5, v6, :cond_1

    .line 55
    new-array v1, v6, [B

    .line 56
    iget-object v2, p0, Lcom/dspread/xpos/t0;->R:[B

    invoke-static {v2, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v2, v0

    move v3, v2

    :goto_2
    const/16 v4, 0xb

    if-ge v2, v6, :cond_c

    if-eq v2, v4, :cond_b

    .line 62
    aget-byte v4, v1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 67
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crc: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", check: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 68
    aget-byte v2, v1, v4

    if-eq v3, v2, :cond_d

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------crc error------------- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 70
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_d
    return-object v1

    :catch_0
    move-exception v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 81
    new-array v1, v0, [B

    :goto_3
    return-object v1
.end method

.method private R()V
    .locals 3

    .line 1
    sget-object v0, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "Starting io manager .."

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/dspread/xpos/otg/SerialInputOutputManager;

    sget-object v1, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    iget-object v2, p0, Lcom/dspread/xpos/t0;->W:Lcom/dspread/xpos/otg/SerialInputOutputManager$a;

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/otg/SerialInputOutputManager;-><init>(Lcom/dspread/xpos/otg/k;Lcom/dspread/xpos/otg/SerialInputOutputManager$a;)V

    iput-object v0, p0, Lcom/dspread/xpos/t0;->Q:Lcom/dspread/xpos/otg/SerialInputOutputManager;

    .line 6
    iget-object v1, p0, Lcom/dspread/xpos/t0;->j0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/t0;->Q:Lcom/dspread/xpos/otg/SerialInputOutputManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/dspread/xpos/otg/SerialInputOutputManager;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/dspread/xpos/t0;->Q:Lcom/dspread/xpos/otg/SerialInputOutputManager;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/t0;I)I
    .locals 1

    .line 4
    iget v0, p0, Lcom/dspread/xpos/t0;->S:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dspread/xpos/t0;->S:I

    return v0
.end method

.method static synthetic a(Lcom/dspread/xpos/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->H()V

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/t0;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/dspread/xpos/t0;->g([B)V

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/t0;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/t0;->X:Z

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/t0;)Lcom/dspread/xpos/t0$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/t0;->h0:Lcom/dspread/xpos/t0$c;

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/t0;)Lcom/dspread/xpos/otg/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/t0;->f0:Lcom/dspread/xpos/otg/a;

    return-object p0
.end method

.method static synthetic d(Lcom/dspread/xpos/t0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/t0;->S:I

    return p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 12
    invoke-virtual {p0}, Lcom/dspread/xpos/t0;->c()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->T:Z

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    sget-object v2, Lcom/dspread/xpos/QPOSService$UsbOTGDriver;->CH34XU:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 17
    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/dspread/xpos/t0;->f0:Lcom/dspread/xpos/otg/a;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Lcom/dspread/xpos/otg/a;->b([BI)I

    move-result p1

    if-gez p1, :cond_0

    .line 20
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->T:Z

    goto :goto_0

    :cond_0
    nop

    .line 23
    iput-boolean v3, p0, Lcom/dspread/xpos/t0;->T:Z

    goto :goto_0

    .line 28
    :cond_1
    sget-object v1, Lcom/dspread/xpos/t0;->k0:Lcom/dspread/xpos/otg/k;

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v2, 0x1388

    invoke-interface {v1, p1, v2}, Lcom/dspread/xpos/otg/k;->b([BI)I

    move-result p1

    if-gez p1, :cond_2

    .line 33
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->T:Z

    goto :goto_0

    :cond_2
    nop

    .line 36
    iput-boolean v3, p0, Lcom/dspread/xpos/t0;->T:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->T:Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/dspread/xpos/t0;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/t0;->R:[B

    return-object p0
.end method

.method static synthetic f(Lcom/dspread/xpos/t0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/t0;->Y:Ljava/lang/String;

    return-object p0
.end method

.method private g([B)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-lez v0, :cond_1

    .line 2
    array-length v0, p1

    .line 3
    iget v1, p0, Lcom/dspread/xpos/t0;->S:I

    add-int v2, v1, v0

    const/16 v3, 0x2800

    if-gt v2, v3, :cond_1

    .line 4
    iget-object v2, p0, Lcom/dspread/xpos/t0;->R:[B

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Lcom/dspread/xpos/t0;->S:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/dspread/xpos/t0;->S:I

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/t0;->Y:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/dspread/xpos/t0;->R:[B

    iget v0, p0, Lcom/dspread/xpos/t0;->S:I

    invoke-static {p1, v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([BI)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/t0;->Y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dspread/xpos/t0;->X:Z

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p0, v3}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/dspread/xpos/t0;->I()V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 4

    .line 1
    const-string v0, "dsp open+++"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->m(Z)V

    .line 3
    sget-boolean v1, Lcom/dspread/xpos/t0;->m0:Z

    if-eqz v1, :cond_0

    return v1

    .line 7
    :cond_0
    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->d0:Z

    .line 8
    iget-object v1, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usbdevice======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    iput-boolean v2, p0, Lcom/dspread/xpos/t0;->d0:Z

    .line 11
    sput-boolean v2, Lcom/dspread/xpos/t0;->m0:Z

    return v2

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbdevice 22======"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "getmContext: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "usb"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/dspread/xpos/t0;->U:Landroid/hardware/usb/UsbManager;

    .line 17
    iget-object v1, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    sget-object v3, Lcom/dspread/xpos/QPOSService$UsbOTGDriver;->CH34XU:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    if-ne v1, v3, :cond_2

    .line 18
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->M()Z

    move-result v1

    goto :goto_0

    .line 20
    :cond_2
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->L()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_3

    return v2

    .line 24
    :cond_3
    sput-boolean v0, Lcom/dspread/xpos/t0;->m0:Z

    return v0
.end method

.method public B()[B
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Read:readUpdateResponse"

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->Q()[B

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/dspread/xpos/t0;->Z:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->N()[B

    move-result-object v0

    return-object v0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->O()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [B

    return-object v0
.end method

.method public I()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->P()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "\u6ca1\u6709\u8fde\u63a5"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/t0;->c()V

    return-void

    .line 8
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 9
    const-string v0, "b.length == 0"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/dspread/xpos/t0;->c()V

    return-void

    .line 12
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 13
    const-string v0, "b.length ==1"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/dspread/xpos/t0;->c()V

    return-void

    :cond_2
    nop

    .line 18
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 19
    const-string v3, "doTrade()setReceiver(false);"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 20
    iput v1, p0, Lcom/dspread/xpos/t0;->a0:I

    .line 21
    iput v1, p0, Lcom/dspread/xpos/t0;->b0:I

    .line 22
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->a([B)Lcom/dspread/xpos/j;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    .line 26
    invoke-virtual {v1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    const/4 v4, 0x3

    .line 27
    invoke-virtual {v1, v4, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 28
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v6

    .line 29
    invoke-virtual {v1, v4, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v6

    add-int/2addr v4, v2

    .line 30
    invoke-virtual {v1, v4, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mod:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 33
    iget-object v4, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v4, :cond_4

    .line 34
    invoke-virtual {v4, v3, v5, v1}, Lcom/dspread/xpos/QPOSService;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_READ:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->l(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected a(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/dspread/xpos/t0;->d()V

    .line 10
    const-string v0, "close+++"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/dspread/xpos/t0;->i0:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method public a(Lcom/dspread/xpos/QPOSService$UsbOTGDriver;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/dspread/xpos/t0;->V:Lcom/dspread/xpos/QPOSService$UsbOTGDriver;

    return-void
.end method

.method public a(Lcom/dspread/xpos/t0$c;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/dspread/xpos/t0;->h0:Lcom/dspread/xpos/t0$c;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/dspread/xpos/t0;->Y:Ljava/lang/String;

    .line 7
    iget-boolean p1, p0, Lcom/dspread/xpos/t0;->X:Z

    return p1
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/t0;->Z:Z

    return-void
.end method

.method protected c()V
    .locals 3

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/t0;->S:I

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/dspread/xpos/t0;->R:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    const-string v0, "[VPosOTG] close()"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/t0;->g0:Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/t0;->P:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->H()V

    const/4 v1, 0x0

    .line 10
    sput-boolean v1, Lcom/dspread/xpos/t0;->m0:Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected e()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/dspread/xpos/t0;->H()V

    return-void
.end method

.method public f([B)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 11
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/t0;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->o(Z)V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/dspread/xpos/t0;->m0:Z

    return v0
.end method
