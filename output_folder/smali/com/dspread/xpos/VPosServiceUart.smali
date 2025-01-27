.class public final Lcom/dspread/xpos/VPosServiceUart;
.super Lcom/dspread/xpos/Vpos;
.source "VPosServiceUart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    }
.end annotation


# static fields
.field private static volatile g0:Lcom/dspread/xpos/VPosServiceUart;

.field private static volatile h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

.field private static final i0:[B

.field private static volatile j0:I


# instance fields
.field private P:Landroid/content/Context;

.field public Q:Landroid_serialport_api/SerialPort;

.field private R:Ljava/lang/String;

.field private S:I

.field private T:Lcom/dspread/sp/b;

.field private U:Z

.field private V:I

.field private W:Landroid/content/ServiceConnection;

.field private X:Lcom/dspread/sp/a$b;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private a0:Z

.field private b0:Ljava/lang/String;

.field c0:Z

.field private d0:Z

.field private e0:Z

.field private volatile f0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 283
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    .line 284
    const/4 v0, 0x0

    sput v0, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->Q:Landroid_serialport_api/SerialPort;

    .line 6
    const-string v0, "/dev/ttyS1"

    iput-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->R:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/dspread/xpos/VPosServiceUart$a;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/VPosServiceUart$a;-><init>(Lcom/dspread/xpos/VPosServiceUart;)V

    iput-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->W:Landroid/content/ServiceConnection;

    .line 36
    new-instance v0, Lcom/dspread/xpos/VPosServiceUart$b;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/VPosServiceUart$b;-><init>(Lcom/dspread/xpos/VPosServiceUart;)V

    iput-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->X:Lcom/dspread/sp/a$b;

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/VPosServiceUart;->a0:Z

    .line 290
    iput-boolean v0, p0, Lcom/dspread/xpos/VPosServiceUart;->c0:Z

    .line 522
    iput-boolean v0, p0, Lcom/dspread/xpos/VPosServiceUart;->d0:Z

    .line 523
    iput-boolean v0, p0, Lcom/dspread/xpos/VPosServiceUart;->e0:Z

    .line 524
    iput v0, p0, Lcom/dspread/xpos/VPosServiceUart;->f0:I

    return-void
.end method

.method static synthetic F()I
    .locals 1

    .line 1
    sget v0, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    return v0
.end method

.method static synthetic G()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    return-object v0
.end method

.method private J()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "initService; mContext is null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "android.intent.action.REMOTE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string v1, "com.dspread.spdaemon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    const-string/jumbo v1, "start initService"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->W:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initService; SecurityException e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private L()Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-nez v2, :cond_1

    const-wide/16 v2, 0x32

    .line 2
    invoke-direct {p0, v2, v3}, Lcom/dspread/xpos/VPosServiceUart;->a(J)Z

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ispManager == null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-eqz v1, :cond_8

    .line 10
    const-string v1, "ispManager  != null"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->Z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 15
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->Z:Ljava/lang/String;

    .line 17
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ispManager  packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 19
    iput v1, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    .line 21
    const-string v1, "com.dspread.new"

    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 23
    iput v2, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    goto :goto_2

    .line 24
    :cond_3
    const-string v1, "com.android.settings"

    iget-object v3, p0, Lcom/dspread/xpos/VPosServiceUart;->Z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    .line 26
    iput v1, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    goto :goto_2

    .line 27
    :cond_4
    iget-boolean v1, p0, Lcom/dspread/xpos/VPosServiceUart;->U:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 28
    iput v1, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    :cond_5
    :goto_2
    nop

    .line 30
    iput-boolean v0, p0, Lcom/dspread/xpos/VPosServiceUart;->U:Z

    .line 31
    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    iget v3, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    iget-object v4, p0, Lcom/dspread/xpos/VPosServiceUart;->Z:Ljava/lang/String;

    iget-object v5, p0, Lcom/dspread/xpos/VPosServiceUart;->X:Lcom/dspread/sp/a$b;

    invoke-interface {v1, v3, v4, v5}, Lcom/dspread/sp/b;->a(ILjava/lang/String;Lcom/dspread/sp/a;)I

    move-result v1

    .line 32
    iget v3, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    if-ne v3, v2, :cond_6

    if-ne v1, v2, :cond_6

    move v0, v2

    .line 33
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ispManager userType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isDemo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    .line 35
    const-string v0, "The port is occupied."

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    invoke-interface {v0}, Lcom/dspread/sp/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->Y:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ispManager currentUsedPackageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->BUSY:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 47
    :cond_7
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->OPENED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    return-object v0

    .line 48
    :cond_8
    const-string v0, "ispManager2  == null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    return-object v0
.end method

.method private M()[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-boolean v2, p0, Lcom/dspread/xpos/VPosServiceUart;->d0:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    nop

    .line 9
    invoke-direct {p0, v0}, Lcom/dspread/xpos/VPosServiceUart;->k(I)V

    .line 10
    sget v1, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-lt v1, v2, :cond_1

    .line 11
    invoke-direct {p0, v3}, Lcom/dspread/xpos/VPosServiceUart;->k(I)V

    .line 12
    sget v1, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    new-array v1, v1, [B

    .line 13
    sget-object v2, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    sget v3, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
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

    return-object v1

    .line 18
    :cond_1
    iget v1, p0, Lcom/dspread/xpos/VPosServiceUart;->S:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dspread/xpos/VPosServiceUart;->S:I

    .line 19
    div-int/lit16 v1, v1, 0x9c4

    if-ne v1, v3, :cond_2

    .line 20
    iput v0, p0, Lcom/dspread/xpos/VPosServiceUart;->S:I

    .line 21
    const-string/jumbo v1, "pos"

    const-string/jumbo v2, "readFlashReadResponse> readFlashReadResponse>\u8fd0\u884c\u4e2d"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 26
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 32
    new-array v0, v0, [B

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-object v0
.end method

.method private N()[B
    .locals 10

    .line 1
    const-string v0, " len = "

    const-string/jumbo v1, "readNormalResponse start"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-boolean v3, p0, Lcom/dspread/xpos/VPosServiceUart;->d0:Z

    if-nez v3, :cond_0

    .line 7
    const-string/jumbo v0, "retutn =="

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-object v2

    :cond_0
    move v3, v1

    .line 18
    :goto_0
    sget v4, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    if-lez v4, :cond_1

    if-eq v4, v3, :cond_1

    .line 20
    new-array v3, v4, [B

    .line 21
    sget-object v5, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    invoke-static {v5, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x3

    if-le v4, v3, :cond_6

    .line 25
    sget-object v3, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_2

    goto/16 :goto_2

    .line 28
    :cond_2
    const/4 v5, 0x2

    aget-byte v5, v3, v5

    if-gez v5, :cond_3

    add-int/lit16 v5, v5, 0x100

    .line 32
    :cond_3
    const/4 v7, 0x1

    aget-byte v8, v3, v7

    mul-int/lit16 v8, v8, 0x100

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x4

    .line 34
    iput-boolean v1, p0, Lcom/dspread/xpos/Vpos;->x:Z

    if-ne v5, v4, :cond_4

    .line 36
    const-string v0, "need read len"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 37
    new-array v2, v4, [B

    .line 38
    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    :cond_4
    if-ge v5, v4, :cond_6

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6536\u5230\u7684\u6570\u636e\u6bd4\u9700\u6c42\u591a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 43
    aget-byte v8, v3, v5

    if-ne v8, v6, :cond_8

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 45
    iput-boolean v7, p0, Lcom/dspread/xpos/VPosServiceUart;->e0:Z

    .line 46
    iput-boolean v7, p0, Lcom/dspread/xpos/Vpos;->x:Z

    add-int/lit8 v6, v5, 0x2

    .line 47
    aget-byte v6, v3, v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteToInt(B)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    sub-int v5, v4, v5

    if-le v6, v5, :cond_5

    goto :goto_1

    .line 50
    :cond_5
    new-array v2, v4, [B

    .line 51
    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 57
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 58
    const-string/jumbo v0, "uart read >> isNeedQuit"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 59
    new-array v0, v1, [B

    return-object v0

    :cond_7
    const-wide/16 v5, 0x1

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 67
    new-array v2, v1, [B

    .line 73
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "read normal uart read= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-object v2
.end method

.method private O()[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/VPosServiceUart;->d0:Z

    if-nez v2, :cond_0

    .line 4
    const-string v2, "Read:!isWrite"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [B

    move v3, v0

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    new-array v0, v0, [B

    return-object v0

    .line 13
    :cond_2
    sget v4, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    if-nez v4, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    sget v4, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    const/4 v5, 0x6

    if-lt v4, v5, :cond_8

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "head[0]  == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    aget-byte v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 17
    aget-byte v3, v4, v0

    const/16 v5, 0x44

    if-eq v3, v5, :cond_4

    .line 18
    const-string v1, "head[0] != \'D\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 19
    new-array v0, v0, [B

    return-object v0

    :cond_4
    nop

    .line 21
    const/4 v3, 0x1

    aget-byte v3, v4, v3

    const/16 v4, 0x50

    if-eq v3, v4, :cond_5

    .line 22
    const-string v1, "head[1] != \'P\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 23
    new-array v0, v0, [B

    return-object v0

    :cond_5
    const/4 v3, 0x4

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_7

    .line 27
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 28
    new-array v0, v0, [B

    return-object v0

    .line 30
    :cond_6
    sget-object v5, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_1

    .line 32
    :cond_7
    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 35
    :cond_8
    sget v4, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_9

    if-nez v3, :cond_1

    .line 37
    :cond_9
    sget v4, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    add-int/lit8 v5, v3, 0xc

    if-ne v4, v5, :cond_1

    .line 39
    new-array v1, v5, [B

    .line 40
    sget-object v2, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    invoke-static {v2, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
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

    if-ge v2, v5, :cond_b

    if-eq v2, v4, :cond_a

    .line 46
    aget-byte v4, v1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    :cond_b
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

    .line 50
    aget-byte v2, v1, v4

    if-eq v3, v2, :cond_c

    .line 51
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

    .line 52
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_c
    return-object v1

    :catch_0
    move-exception v1

    .line 59
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

    .line 60
    new-array v0, v0, [B

    return-object v0
.end method

.method private Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    const-string/jumbo v0, "startActivityMethod; mContext is null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.dspread.spdaemon"

    const-string v3, "com.dspread.spdaemon.TransparentActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    const-string/jumbo v0, "start TransparentActivity"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosServiceUart;Lcom/dspread/sp/b;)Lcom/dspread/sp/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    return-object p1
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosServiceUart$UartServiceState;)Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    .locals 0

    .line 2
    sput-object p0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosServiceUart;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/dspread/xpos/VPosServiceUart;->Z:Ljava/lang/String;

    return-object p0
.end method

.method private a(J)Z
    .locals 0

    .line 7
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    const/4 p1, 0x1

    return p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 10
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v2, :cond_0

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 13
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosServiceUart;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/dspread/xpos/VPosServiceUart;->a0:Z

    return p1
.end method

.method static b(Landroid/content/Context;)Lcom/dspread/xpos/VPosServiceUart;
    .locals 2

    .line 2
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->g0:Lcom/dspread/xpos/VPosServiceUart;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/dspread/xpos/VPosServiceUart;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/dspread/xpos/VPosServiceUart;->g0:Lcom/dspread/xpos/VPosServiceUart;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/dspread/xpos/VPosServiceUart;

    invoke-direct {v1}, Lcom/dspread/xpos/VPosServiceUart;-><init>()V

    sput-object v1, Lcom/dspread/xpos/VPosServiceUart;->g0:Lcom/dspread/xpos/VPosServiceUart;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->g0:Lcom/dspread/xpos/VPosServiceUart;

    iput-object p0, v0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    .line 10
    const-string v0, "com.dspread.spdaemon"

    invoke-static {p0, v0}, Lcom/dspread/xpos/VPosServiceUart;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 11
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->g0:Lcom/dspread/xpos/VPosServiceUart;

    iget-object v0, v0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-eqz v0, :cond_2

    if-nez p0, :cond_3

    .line 12
    :cond_2
    sget-object p0, Lcom/dspread/xpos/VPosServiceUart;->g0:Lcom/dspread/xpos/VPosServiceUart;

    invoke-direct {p0}, Lcom/dspread/xpos/VPosServiceUart;->J()V

    .line 14
    :cond_3
    sget-object p0, Lcom/dspread/xpos/VPosServiceUart;->g0:Lcom/dspread/xpos/VPosServiceUart;

    return-object p0
.end method

.method static synthetic b(Lcom/dspread/xpos/VPosServiceUart;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/VPosServiceUart;->J()V

    return-void
.end method

.method static synthetic c(Lcom/dspread/xpos/VPosServiceUart;)Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/VPosServiceUart;->L()Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/dspread/xpos/VPosServiceUart;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosServiceUart;->b0:Ljava/lang/String;

    return-object p0
.end method

.method private k(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method static synthetic l(I)I
    .locals 1

    .line 1
    sget v0, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    add-int/2addr v0, p0

    sput v0, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->OPENING:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sget-object v3, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->OPENED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    sput-object v1, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-nez v0, :cond_1

    .line 7
    const-string/jumbo v0, "open ispManager:ispManager == null,initService"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/dspread/xpos/VPosServiceUart;->J()V

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/dspread/xpos/VPosServiceUart;->L()Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v2, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unprocessed open uartState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    sput-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 24
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ispManager [VPosServiceUart] open uartState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 26
    :cond_4
    :goto_2
    const-string v0, "ispManager the serial port has been opened"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return v2
.end method

.method public B()[B
    .locals 4

    .line 1
    const-string v0, "[VPosServiceUart] read"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/VPosServiceUart;->e0:Z

    .line 3
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->x:Z

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    const-string v1, "Read uart:readUpdateResponse"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/dspread/xpos/VPosServiceUart;->O()[B

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/dspread/xpos/VPosServiceUart;->c0:Z

    if-eqz v1, :cond_1

    .line 9
    const-string v1, "Read uart:readFlashReadResponse"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/dspread/xpos/VPosServiceUart;->M()[B

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    const-string v1, "Read uart: readNormalResponse"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/dspread/xpos/VPosServiceUart;->N()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read() uart exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 19
    new-array v0, v0, [B

    return-object v0
.end method

.method public H()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    return-object v0
.end method

.method public I()Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    return-object v0
.end method

.method protected K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/VPosServiceUart;->U:Z

    return v0
.end method

.method protected P()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/dspread/xpos/VPosServiceUart;->b0:Ljava/lang/String;

    .line 6
    iget-boolean p1, p0, Lcom/dspread/xpos/VPosServiceUart;->a0:Z

    return p1
.end method

.method public b(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/dspread/xpos/VPosServiceUart;->c0:Z

    return-void
.end method

.method protected c()V
    .locals 8

    .line 2
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 3
    sget v5, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v1, 0x8

    const/4 v7, 0x0

    if-le v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/dspread/xpos/VPosServiceUart;->e0:Z

    if-nez v5, :cond_0

    .line 4
    sget v5, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    mul-int/lit8 v5, v5, 0x2

    sget v6, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x8

    sub-int/2addr v5, v6

    .line 5
    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 6
    array-length v5, v1

    invoke-static {v1, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    goto :goto_1

    :cond_0
    nop

    .line 9
    sput v7, Lcom/dspread/xpos/VPosServiceUart;->j0:I

    move v0, v7

    :goto_0
    if-ge v0, v2, :cond_1

    .line 11
    sget-object v1, Lcom/dspread/xpos/VPosServiceUart;->i0:[B

    aput-byte v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosServiceUart setBluetoothAddress +++ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/dspread/xpos/VPosServiceUart;->R:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 3

    .line 2
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSING:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sget-object v2, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    sput-object v1, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 8
    const-string v0, "[VPosServiceUart] close"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close; ispManager finish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    iget v1, p0, Lcom/dspread/xpos/VPosServiceUart;->V:I

    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->Z:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dspread/sp/b;->a(ILjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    invoke-interface {v0}, Lcom/dspread/sp/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->Y:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->Y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->Y:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_2
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->BUSY:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 24
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosServiceUart] close end, uartState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_3
    :goto_2
    const-string v0, "[VPosServiceUart] closing or closed"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosServiceUart;->d()V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->P:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart;->W:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public f([B)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write normal uart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write isUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", byte length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/VPosServiceUart;->d0:Z

    .line 4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/VPosServiceUart;->e0:Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosServiceUart;->c()V

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MP600"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "D60"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-eqz v2, :cond_1

    .line 26
    const-string v2, "Write array  normal uart start"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    invoke-interface {v2, p1}, Lcom/dspread/sp/b;->a([B)V

    .line 28
    iget-object p1, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    invoke-interface {p1}, Lcom/dspread/sp/b;->flush()V

    .line 29
    const-string p1, "Write array normal uart end"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    return-void

    .line 36
    :cond_2
    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/dspread/xpos/VPosServiceUart;->h0:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sget-object v3, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->OPENED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    if-ne v2, v3, :cond_3

    .line 37
    const-string v2, "Write normal uart start"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    array-length v3, p1

    invoke-interface {v2, p1, v0, v3}, Lcom/dspread/sp/b;->write([BII)V

    .line 44
    iget-object p1, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    invoke-interface {p1}, Lcom/dspread/sp/b;->flush()V

    .line 45
    const-string p1, "Write normal uart end"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    return-void

    .line 48
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-eqz v2, :cond_5

    .line 49
    const-string v2, "Write data start"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/16 v2, 0x800

    .line 50
    new-array v3, v2, [B

    const/4 v4, -0x1

    .line 51
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 52
    array-length v4, p1

    invoke-static {p1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object p1, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    invoke-interface {p1, v3, v0, v2}, Lcom/dspread/sp/b;->write([BII)V

    .line 54
    iget-object p1, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    invoke-interface {p1}, Lcom/dspread/sp/b;->flush()V

    .line 55
    const-string p1, "Write data end"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_5
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    return-void

    .line 90
    :cond_6
    iget-object v2, p0, Lcom/dspread/xpos/VPosServiceUart;->T:Lcom/dspread/sp/b;

    if-eqz v2, :cond_7

    .line 91
    array-length v3, p1

    invoke-interface {v2, p1, v0, v3}, Lcom/dspread/sp/b;->write([BII)V

    :goto_1
    nop

    .line 98
    iput v0, p0, Lcom/dspread/xpos/VPosServiceUart;->f0:I

    .line 99
    iput-boolean v1, p0, Lcom/dspread/xpos/VPosServiceUart;->d0:Z

    .line 100
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->o(Z)V

    goto :goto_2

    .line 101
    :cond_7
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write IOException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "VPosServiceUart getBluetoothAddress +++"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->R:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart;->Y:Ljava/lang/String;

    return-object v0
.end method

.method protected p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/VPosServiceUart;->U:Z

    return-void
.end method
