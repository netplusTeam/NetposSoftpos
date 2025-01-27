.class public Lcom/dspread/xpos/u0;
.super Lcom/dspread/xpos/Vpos;
.source "VPosUart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/u0$b;
    }
.end annotation


# static fields
.field private static j0:Lcom/dspread/xpos/u0;


# instance fields
.field public P:Landroid_serialport_api/SerialPort;

.field public Q:Ljava/io/InputStream;

.field public volatile R:Ljava/io/OutputStream;

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:I

.field private volatile V:Z

.field W:[B

.field X:I

.field private Y:Z

.field private Z:Ljava/lang/String;

.field private a0:[B

.field private b0:I

.field private c0:Z

.field private d0:I

.field e0:Z

.field private f0:Z

.field private g0:Z

.field private volatile h0:I

.field private volatile i0:Z


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
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/u0;->P:Landroid_serialport_api/SerialPort;

    .line 3
    iput-object v0, p0, Lcom/dspread/xpos/u0;->Q:Ljava/io/InputStream;

    .line 4
    iput-object v0, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->S:Z

    .line 6
    const-string v1, "/dev/ttyS1"

    iput-object v1, p0, Lcom/dspread/xpos/u0;->T:Ljava/lang/String;

    .line 163
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/u0;->W:[B

    .line 164
    iput v0, p0, Lcom/dspread/xpos/u0;->X:I

    .line 279
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->Y:Z

    .line 288
    const/16 v1, 0x800

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/u0;->a0:[B

    .line 289
    iput v0, p0, Lcom/dspread/xpos/u0;->b0:I

    .line 290
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/u0;->c0:Z

    .line 291
    iput v0, p0, Lcom/dspread/xpos/u0;->d0:I

    .line 338
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->e0:Z

    .line 608
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->f0:Z

    .line 609
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->g0:Z

    .line 610
    iput v0, p0, Lcom/dspread/xpos/u0;->h0:I

    .line 611
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->i0:Z

    return-void
.end method

.method private F()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/u0;->M()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "\u6ca1\u6709\u8fde\u63a5"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/u0;->c()V

    return-void

    .line 8
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 9
    const-string v0, "b.length == 0"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/dspread/xpos/u0;->c()V

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
    invoke-virtual {p0}, Lcom/dspread/xpos/u0;->c()V

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 19
    const-string v1, "doTrade()setReceiver(false);"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->a([B)Lcom/dspread/xpos/j;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 25
    :cond_3
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/4 v4, 0x2

    .line 26
    invoke-virtual {v1, v4, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    const/4 v5, 0x3

    .line 27
    invoke-virtual {v1, v5, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v5

    .line 28
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v7

    .line 29
    invoke-virtual {v1, v5, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v7

    add-int/2addr v5, v2

    .line 30
    invoke-virtual {v1, v5, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mod:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "commandID:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 33
    iget-object v5, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v5, :cond_6

    const/16 v7, 0x33

    if-ne v3, v7, :cond_4

    .line 35
    invoke-virtual {v5}, Lcom/dspread/xpos/QPOSService;->K1()V

    .line 36
    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->T0()V

    goto :goto_0

    :cond_4
    const/16 v7, 0x28

    if-ne v3, v7, :cond_5

    .line 38
    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v5, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    goto :goto_0

    .line 40
    :cond_5
    invoke-virtual {v5, v4, v6, v1}, Lcom/dspread/xpos/QPOSService;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_6
    :goto_0
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

    .line 44
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->l(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static G()Lcom/dspread/xpos/u0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/u0;->j0:Lcom/dspread/xpos/u0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/u0;

    invoke-direct {v0}, Lcom/dspread/xpos/u0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/u0;->j0:Lcom/dspread/xpos/u0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/u0;->j0:Lcom/dspread/xpos/u0;

    return-object v0
.end method

.method private I()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPosUart uart_s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/u0;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xf4240

    goto :goto_0

    :cond_0
    const v1, 0x1c200

    :goto_0
    move v6, v1

    .line 4
    new-instance v1, Landroid_serialport_api/SerialPort;

    const/4 v3, 0x1

    const-string v4, "/system/xbin/su"

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/dspread/xpos/u0;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid_serialport_api/SerialPort;-><init>(ZLjava/lang/String;Ljava/io/File;II)V

    iput-object v1, p0, Lcom/dspread/xpos/u0;->P:Landroid_serialport_api/SerialPort;

    .line 6
    invoke-virtual {v1}, Landroid_serialport_api/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/u0;->Q:Ljava/io/InputStream;

    .line 7
    iget-object v1, p0, Lcom/dspread/xpos/u0;->P:Landroid_serialport_api/SerialPort;

    invoke-virtual {v1}, Landroid_serialport_api/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    .line 8
    const-string v1, "VPosUart uart_s: start"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/dspread/xpos/utils/i;->a()Lcom/dspread/xpos/utils/i;

    move-result-object v1

    new-instance v2, Lcom/dspread/xpos/u0$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dspread/xpos/u0$b;-><init>(Lcom/dspread/xpos/u0;Lcom/dspread/xpos/u0$a;)V

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/utils/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 20
    const-string v1, "UART SerialPort IOException"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception v1

    .line 21
    const-string v1, "UART SerialPort SecurityException"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0
.end method

.method private J()[B
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/u0;->L()[B

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string v0, "[VPosUart] read need exit"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [B

    return-object v0

    .line 7
    :cond_0
    array-length v1, v0

    if-lez v1, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    const-string v1, "[VPosUart] UART read frame failed"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private K()[B
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
    iget-boolean v2, p0, Lcom/dspread/xpos/u0;->f0:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    nop

    .line 9
    invoke-direct {p0, v0}, Lcom/dspread/xpos/u0;->k(I)V

    .line 11
    iget v1, p0, Lcom/dspread/xpos/u0;->b0:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-lt v1, v2, :cond_1

    .line 12
    invoke-direct {p0, v3}, Lcom/dspread/xpos/u0;->k(I)V

    .line 14
    iget v1, p0, Lcom/dspread/xpos/u0;->b0:I

    new-array v2, v1, [B

    .line 15
    iget-object v3, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v2

    .line 20
    :cond_1
    iget v1, p0, Lcom/dspread/xpos/u0;->U:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dspread/xpos/u0;->U:I

    .line 21
    div-int/lit16 v1, v1, 0x9c4

    if-ne v1, v3, :cond_2

    .line 22
    iput v0, p0, Lcom/dspread/xpos/u0;->U:I

    .line 23
    const-string/jumbo v1, "readFlashReadResponse> readFlashReadResponse>\u8fd0\u884c\u4e2d"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 28
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 36
    new-array v0, v0, [B

    .line 43
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

.method private L()[B
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
    iget-boolean v2, p0, Lcom/dspread/xpos/u0;->f0:Z

    if-nez v2, :cond_0

    .line 6
    const-string/jumbo v2, "retutn =="

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v0

    .line 14
    :goto_0
    iget v3, p0, Lcom/dspread/xpos/u0;->b0:I

    if-lez v3, :cond_1

    if-eq v3, v2, :cond_1

    .line 16
    new-array v2, v3, [B

    .line 17
    iget-object v4, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 22
    iget-object v2, p0, Lcom/dspread/xpos/u0;->a0:[B

    aget-byte v4, v2, v0

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_2

    goto/16 :goto_2

    .line 25
    :cond_2
    const/4 v4, 0x2

    aget-byte v4, v2, v4

    if-gez v4, :cond_3

    add-int/lit16 v4, v4, 0x100

    .line 29
    :cond_3
    const/4 v6, 0x1

    aget-byte v2, v2, v6

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x4

    .line 31
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->x:Z

    if-ne v4, v3, :cond_4

    .line 33
    const-string v1, "need read len"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 34
    new-array v1, v3, [B

    .line 35
    iget-object v2, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    if-ge v4, v3, :cond_6

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5230\u7684\u6570\u636e\u6bd4\u9700\u6c42\u591a"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " len = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/dspread/xpos/u0;->a0:[B

    aget-byte v7, v2, v4

    if-ne v7, v5, :cond_8

    .line 41
    iput-boolean v6, p0, Lcom/dspread/xpos/u0;->g0:Z

    .line 42
    iput-boolean v6, p0, Lcom/dspread/xpos/Vpos;->x:Z

    add-int/lit8 v5, v4, 0x2

    .line 43
    aget-byte v2, v2, v5

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteToInt(B)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    sub-int v4, v3, v4

    if-le v2, v4, :cond_5

    goto :goto_1

    .line 46
    :cond_5
    new-array v1, v3, [B

    .line 47
    iget-object v2, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 53
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 54
    const-string/jumbo v1, "uart read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 55
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_7
    :goto_1
    move v2, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 62
    new-array v1, v0, [B

    .line 68
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read normal uart = "

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

.method private M()[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/dspread/xpos/u0;->b0:I

    if-lez v1, :cond_0

    .line 2
    iget v2, p0, Lcom/dspread/xpos/u0;->d0:I

    if-eq v1, v2, :cond_0

    .line 3
    new-array v2, v1, [B

    .line 4
    iget-object v3, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_0
    iput v1, p0, Lcom/dspread/xpos/u0;->d0:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 8
    const-string/jumbo v2, "\u90e8\u5206\u6570\u636e\u5224\u65ad"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/dspread/xpos/u0;->a0:[B

    aget-byte v3, v2, v0

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_1

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/u0;->W:[B

    return-object v0

    :cond_1
    const/4 v3, 0x2

    .line 12
    aget-byte v2, v2, v3

    iput v2, p0, Lcom/dspread/xpos/u0;->X:I

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5e94\u8be5\u8bfb\u53d6\u7684\u6570\u636e\u957f\u5ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dspread/xpos/u0;->X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 15
    iget v2, p0, Lcom/dspread/xpos/u0;->X:I

    if-gez v2, :cond_2

    add-int/lit16 v2, v2, 0x100

    .line 16
    iput v2, p0, Lcom/dspread/xpos/u0;->X:I

    .line 18
    :cond_2
    iget v2, p0, Lcom/dspread/xpos/u0;->X:I

    iget-object v3, p0, Lcom/dspread/xpos/u0;->a0:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    .line 19
    iput v2, p0, Lcom/dspread/xpos/u0;->X:I

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dotrade() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dspread/xpos/u0;->X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 21
    iget v2, p0, Lcom/dspread/xpos/u0;->X:I

    if-ne v2, v1, :cond_3

    .line 22
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/dspread/xpos/u0;->W:[B

    .line 23
    iget-object v3, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    if-ge v2, v1, :cond_4

    .line 25
    new-array v1, v4, [B

    iput-object v1, p0, Lcom/dspread/xpos/u0;->W:[B

    .line 29
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 31
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/u0;->W:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 37
    const-string/jumbo v1, "\u5f02\u5e38\u8fd4\u56de\u6570\u636e\u4f4d0"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 39
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/u0;->W:[B

    .line 43
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/u0;->W:[B

    return-object v0
.end method

.method private N()[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/u0;->f0:Z

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

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    new-array v0, v0, [B

    return-object v0

    .line 17
    :cond_2
    iget v4, p0, Lcom/dspread/xpos/u0;->b0:I

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    if-lt v4, v5, :cond_8

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "head[0]  == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dspread/xpos/u0;->a0:[B

    aget-byte v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/dspread/xpos/u0;->a0:[B

    aget-byte v4, v3, v0

    const/16 v5, 0x44

    if-eq v4, v5, :cond_4

    .line 24
    const-string v1, "head[0] != \'D\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    new-array v0, v0, [B

    return-object v0

    :cond_4
    nop

    .line 28
    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_5

    .line 29
    const-string v1, "head[1] != \'P\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 30
    new-array v0, v0, [B

    return-object v0

    :cond_5
    const/4 v3, 0x4

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_7

    .line 35
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 36
    const-string/jumbo v1, "\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f66"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 37
    new-array v0, v0, [B

    return-object v0

    .line 39
    :cond_6
    iget-object v5, p0, Lcom/dspread/xpos/u0;->a0:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_1

    .line 41
    :cond_7
    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 45
    :cond_8
    iget v4, p0, Lcom/dspread/xpos/u0;->b0:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_9

    if-nez v3, :cond_1

    :cond_9
    add-int/lit8 v5, v3, 0xc

    if-ne v4, v5, :cond_1

    .line 49
    new-array v1, v5, [B

    .line 50
    iget-object v2, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v2, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
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

    .line 56
    aget-byte v4, v1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 61
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

    .line 62
    aget-byte v2, v1, v4

    if-eq v3, v2, :cond_c

    .line 63
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

    .line 64
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_c
    return-object v1

    :catch_0
    move-exception v1

    .line 74
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

    .line 75
    new-array v0, v0, [B

    return-object v0
.end method

.method static synthetic a(Lcom/dspread/xpos/u0;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/u0;->b0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dspread/xpos/u0;->b0:I

    return v0
.end method

.method static synthetic a(Lcom/dspread/xpos/u0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/u0;->S:Z

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/u0;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/u0;->Y:Z

    return p1
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/u0;->b0:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 8
    new-array v1, v0, [B

    .line 10
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->c0:Z

    .line 11
    iput v0, p0, Lcom/dspread/xpos/u0;->d0:I

    .line 12
    :goto_0
    iget-boolean v2, p0, Lcom/dspread/xpos/u0;->c0:Z

    if-nez v2, :cond_4

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    const/16 v1, 0x400

    new-array v3, v1, [B

    .line 17
    invoke-virtual {p1, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 18
    iget-object v4, p0, Lcom/dspread/xpos/u0;->a0:[B

    iget v5, p0, Lcom/dspread/xpos/u0;->b0:I

    invoke-static {v3, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v3, p0, Lcom/dspread/xpos/u0;->b0:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/dspread/xpos/u0;->b0:I

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", read_buf_len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dspread/xpos/u0;->b0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUpdate() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/dspread/xpos/u0;->N()[B

    move-result-object v1

    goto :goto_1

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/u0;->J()[B

    move-result-object v1

    .line 30
    :goto_1
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 33
    array-length v2, v1

    if-lez v2, :cond_2

    return-object v1

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    const-wide/16 v2, 0xa

    .line 41
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static synthetic b(Lcom/dspread/xpos/u0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/u0;->b0:I

    return p0
.end method

.method static synthetic b(Lcom/dspread/xpos/u0;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/u0;->k(I)V

    return-void
.end method

.method static synthetic c(Lcom/dspread/xpos/u0;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/u0;->a0:[B

    return-object p0
.end method

.method static synthetic d(Lcom/dspread/xpos/u0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/u0;->Z:Ljava/lang/String;

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


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/u0;->S:Z

    if-eqz v0, :cond_0

    .line 2
    const-string/jumbo v0, "the serial port has been opened"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/dspread/xpos/u0;->S:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->V:Z

    .line 6
    invoke-direct {p0}, Lcom/dspread/xpos/u0;->I()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->S:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosUart] open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dspread/xpos/u0;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p0, Lcom/dspread/xpos/u0;->S:Z

    return v0
.end method

.method public B()[B
    .locals 4

    .line 1
    const-string v0, "[VPosUart] read"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->g0:Z

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    const-string v1, "Read uart:readUpdateResponse"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/dspread/xpos/u0;->N()[B

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/dspread/xpos/u0;->e0:Z

    if-eqz v1, :cond_1

    .line 9
    const-string v1, "Read uart:readFlashReadResponse"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/dspread/xpos/u0;->K()[B

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    const-string v1, "Read uart: readNormalResponse"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/dspread/xpos/u0;->L()[B

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
    iget-object v0, p0, Lcom/dspread/xpos/u0;->a0:[B

    return-object v0
.end method

.method protected O()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/dspread/xpos/u0;->Z:Ljava/lang/String;

    .line 5
    iget-boolean p1, p0, Lcom/dspread/xpos/u0;->Y:Z

    return p1
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/u0;->e0:Z

    return-void
.end method

.method protected c()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 4
    iget v4, p0, Lcom/dspread/xpos/u0;->b0:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-le v4, v5, :cond_0

    iget-boolean v5, p0, Lcom/dspread/xpos/u0;->g0:Z

    if-nez v5, :cond_0

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, -0x8

    sub-int/2addr v4, v0

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 7
    iget-object v4, p0, Lcom/dspread/xpos/u0;->a0:[B

    array-length v5, v0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/u0;->a0:[B

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dspread/xpos/u0;->b0:I

    goto :goto_1

    :cond_0
    nop

    .line 10
    iput v6, p0, Lcom/dspread/xpos/u0;->b0:I

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_1

    .line 12
    iget-object v2, p0, Lcom/dspread/xpos/u0;->a0:[B

    aput-byte v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosUart setBluetoothAddress +++ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/dspread/xpos/u0;->T:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    const-string v0, "[VPosUart] close"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    const-string v0, "[VPosUart] close   satrt"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 5
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->c0:Z

    .line 6
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->V:Z

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/u0;->P:Landroid_serialport_api/SerialPort;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/u0;->Q:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :goto_0
    iput-object v1, p0, Lcom/dspread/xpos/u0;->Q:Ljava/io/InputStream;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 20
    :goto_1
    iput-object v1, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    .line 23
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/dspread/xpos/u0;->P:Landroid_serialport_api/SerialPort;

    invoke-virtual {v0}, Landroid_serialport_api/SerialPort;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 27
    :goto_2
    iput-object v1, p0, Lcom/dspread/xpos/u0;->P:Landroid_serialport_api/SerialPort;

    :cond_2
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->S:Z

    .line 43
    const-string v0, "[VPosUart] close   end"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/u0;->d()V

    return-void
.end method

.method public f([B)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosUart write:"

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
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->f0:Z

    .line 3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/u0;->g0:Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/dspread/xpos/u0;->c()V

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 9
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "0"

    if-nez v2, :cond_0

    .line 10
    :try_start_1
    invoke-static {v0}, Lcom/dspread/xpos/QPOSService;->d20Rst(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v4, 0x5

    .line 13
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 14
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->d20RstRead()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {v1}, Lcom/dspread/xpos/QPOSService;->d20Rst(I)V

    const-wide/16 v4, 0x14

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 22
    :cond_0
    :goto_0
    :try_start_3
    const-string v2, "D60"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "MP600"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 45
    :cond_1
    const-string v2, "VPosUart start write:"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v2, v0

    .line 47
    :cond_2
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 48
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/dspread/xpos/QPOSService;->d20CtsStateRead()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    :cond_3
    iget-object v4, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    if-eqz v4, :cond_4

    .line 50
    iget-object v4, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    .line 53
    const-string p1, "VPosUart outwrite ==NULL"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_5
    const-string p1, "VPosUart end write:"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    :goto_2
    nop

    .line 61
    const/16 v2, 0x800

    new-array v4, v2, [B

    .line 62
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->d20CtsStateRead()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v6, v0

    :goto_3
    if-nez v5, :cond_9

    .line 65
    invoke-direct {p0, v1}, Lcom/dspread/xpos/u0;->k(I)V

    .line 66
    const-string v5, "cts ==1 delayed"

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->d20CtsStateRead()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v6, 0x1

    const/16 v8, 0x14

    if-ne v6, v8, :cond_8

    :goto_4
    goto :goto_5

    :cond_8
    move v6, v7

    goto :goto_3

    :cond_9
    :goto_5
    if-eqz v5, :cond_c

    move v3, v0

    :goto_6
    if-ge v3, v2, :cond_a

    const/4 v5, -0x1

    .line 77
    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    nop

    .line 79
    array-length v2, p1

    invoke-static {p1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object p1, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7

    .line 102
    :cond_b
    iget-object v2, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    if-eqz v2, :cond_e

    .line 103
    iget-object v2, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 109
    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    if-eqz p1, :cond_d

    .line 110
    iget-object p1, p0, Lcom/dspread/xpos/u0;->R:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 115
    iput-boolean v0, p0, Lcom/dspread/xpos/u0;->i0:Z

    .line 116
    iput v0, p0, Lcom/dspread/xpos/u0;->h0:I

    .line 117
    iput-boolean v1, p0, Lcom/dspread/xpos/u0;->f0:Z

    .line 118
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->o(Z)V

    goto :goto_8

    .line 119
    :cond_d
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    return-void

    .line 120
    :cond_e
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NullPointerException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    goto :goto_8

    :catch_2
    move-exception p1

    .line 138
    const-string/jumbo p1, "write IOException"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "VPosUart getBluetoothAddress +++"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/u0;->T:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
